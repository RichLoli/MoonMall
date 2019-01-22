package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.CartListItem;
import cn.lumoon.moonmall.model.User;
import cn.lumoon.moonmall.service.CartService;
import cn.lumoon.moonmall.vo.CartPage;
import com.fasterxml.jackson.core.JsonParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * @author loligafeo
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    /**
     *
     */
    @Resource
    private CartService cartService;

    @RequestMapping("/settle")
    public ModelAndView cart() {
        ModelAndView view = new ModelAndView("cart");
        return view;
    }

    /**
     * @param
     * @return
     */
    @RequestMapping("/getAll")
    @ResponseBody
    public List<CartListItem> getCartList(HttpServletRequest request,HttpServletResponse response) {
        List<CartListItem> list = null;
        Map<String, CartListItem> map = new HashMap<>();
        Cookie[] cookies = request.getCookies();
        //遍历cookie
        for (Cookie cookie : cookies) {
            if (cookie.getName().startsWith("cartItem")) {
                String skuId = cookie.getValue();
                //判断是否包含这个sku 如果包含就增加数量
                if (map.containsKey(skuId)) {
                    CartListItem cartListItem = map.get(skuId);
                    cartListItem.setCount(cartListItem.getCount() + 1);
                } else {
                    CartListItem cartListItem = cartService.getInfoBySku(Integer.parseInt(cookie.getValue()));
                    cartListItem.setCartId(-1);
                    cartListItem.setSkuId(Integer.parseInt(cookie.getValue()));
                    cartListItem.setCount(1);
                    map.put(skuId, cartListItem);
                }
            }
        }
        list = new ArrayList<>(map.values());
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            String userId = user.getId();
            for (CartListItem item : list) {
                int skuId = item.getSkuId();
                int count = item.getCount();
                Integer id = cartService.findDuplicateItem(skuId, userId);
                //判断是否有相同的商品 如果有则进行更新
                if (id != null) {
                    cartService.updateCartItem(id);
                } else {
                    cartService.addItem(skuId, userId, count);
                }
            }
            for (Cookie cookie : cookies) {
                if (cookie.getName().startsWith("cartItem")) {
                    Cookie cookie1 = new Cookie(cookie.getName(), null);
                    cookie1.setMaxAge(0);
                    response.addCookie(cookie1);
                }
            }
            list = cartService.getAll(user.getId());
        }
        return list;
    }


    /**
     * 添加商品到购物车
     *
     * @param skuId
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/add")
    public ModelAndView addItem(String skuId, String count, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView view = new ModelAndView("addItem");
        User user = (User) request.getSession().getAttribute("user");
        int skid = Integer.parseInt(skuId);
        int c = Integer.parseInt(count);
        //判断是否登录
        if (user != null) {
            String userId = user.getId();
            Integer id = cartService.findDuplicateItem(skid, userId);
            //判断是否有相同的商品 如果有则进行更新
            if (id != null) {
                cartService.updateCartItem(id);
            } else {
                cartService.addItem(Integer.parseInt(skuId), userId, c);
            }
        } else {
            //未登录则放在cookie中 一个商品一个cookie 暂时先用这个方法
            //个人觉得效率低下，不能直接赋值数量
            for (int i = 0; i < c; i++) {
                Cookie cookie = new Cookie("cartItem" + UUID.randomUUID(), skuId + "");
                cookie.setMaxAge(300);
                response.addCookie(cookie);
            }
        }
        CartPage item = cartService.findItemBySkuId(Integer.parseInt(skuId));
        item.setData(item.getData().replaceAll("(\\{|}|\")", " "));
        view.addObject("item", item);
        view.addObject("count", count);
        return view;
    }


    /**
     *
     */
    @RequestMapping("delItem")
    @ResponseBody
    public String delItem(String cartId, String skuId, HttpServletRequest request, HttpServletResponse response) {
        int cId = Integer.parseInt(cartId);
        //判断是否登录
        /*
            由于未登录时加入的商品没有cartId 所以默认同意设置为-1
            根据传来的cId判断是否为-1就能知道是否登录
            传cId的方式是为了方便登录后的删除工作
         */
        if (cId == -1) {
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().startsWith("cartItem")) {
                    if (cookie.getValue().equals(skuId)) {
                        Cookie cookie1 = new Cookie(cookie.getName(), null);
                        cookie1.setMaxAge(0);
                        response.addCookie(cookie1);
                    }
                }
            }
        } else {
            cartService.delCartItem(Integer.parseInt(cartId));
        }
        return "";
    }

    @RequestMapping("/tosettle")
    public String toSettle(String [] ids){
        return "settle";
    }
}
