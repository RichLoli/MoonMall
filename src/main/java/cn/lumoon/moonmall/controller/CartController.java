package cn.lumoon.moonmall.controller;

import cn.lumoon.moonmall.model.CartListItem;
import cn.lumoon.moonmall.model.User;
import cn.lumoon.moonmall.service.CartService;
import cn.lumoon.moonmall.vo.CartPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 *
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

    /**
     *
     * @param id
     * @return
     */
    @RequestMapping("/getAll")
    @ResponseBody
    public List<CartListItem> getCartList(String id, HttpServletRequest request){
        if (request.getSession().getAttribute("user") == null) {
            Cookie[] cookies = request.getCookies();

            for (Cookie cookie : cookies) {
                if ("cartItem".equals(cookie.getName())) {

                }
            }
        }
        return cartService.getAll(id);
    }

    @RequestMapping("/add")
    public ModelAndView addItem(String skuId, HttpServletRequest request, HttpServletResponse response){
        ModelAndView view = new ModelAndView("addItem");
        User user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") != null) {
            String userId = user.getId();
            Integer id = cartService.findDuplicateItem(Integer.parseInt(skuId), userId);
            if (id != null) {
                cartService.updateCartItem(id);
            }else{
                cartService.addItem(Integer.parseInt(skuId), userId);
            }
        }else {
            Cookie cookie = new Cookie("skuId", skuId + "");
            response.addCookie(cookie);
        }
        CartPage item = cartService.findItemBySkuId(Integer.parseInt(skuId));
        view.addObject("item", item);
        return view;
    }
}
