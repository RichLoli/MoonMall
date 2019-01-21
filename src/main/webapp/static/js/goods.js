var attrList = "";

$(function () {
    //请求页面内容
    $.get({
        url: "getinfo?id=" + productId,
        contentType: "application/json;charset=uft-8",
        dataType: "json",
        success: function (data) {
            $("#sku-name").text(data.name);
            $("#shop-name").text(data.storeName);
            var count = 1;
            var list = JSON.parse(data.attrList);
            for (var info in list) {
                var i = " <div id=\"choose-attr-" + count + "\" class=\"li p-choose\">\n" +
                    "<div class=\"dt\">" + info + "</div>\n";
                for (var attr  in list[info]) {
                    i += "<div class=\"dd\">\n" +
                        " <div class=\"item\">\n" +
                        " <b></b>\n" +
                        " <a href=\"#none\">\n" +
                        " <i>" + list[info][attr] + "</i>\n" +
                        " </a>\n" +
                        " </div>\n" +
                        " </div>";
                }
                i += "</div>";
                count++;
                $("#choose-attrs").append(i);
            }
            $(".p-choose").each(function (index) {
                $($(this).find(".item")[0]).addClass("checked");
            });

            $(".item").click(function () {
                var $parent = $(this).parent().parent();
                $parent.find(".checked").removeClass("checked");
                $(this).addClass("checked");
                flushPrice();
            });
            flushPrice();
        }
    });
});

function flushImg(id) {
    $.get(
        {
            url: "getImg?id="+id,
            dataType: "json",
            success: function (data) {
                var imgList = data;
                $("#img-list").html("");
                for (var img in imgList){
                    $("#img-list").append("<li><img class='img-responsive' src='/static/images/product/" + imgList[img] + "' alt=''></li>");
                }
                $(".main-img").html("<img src='/static/images/product/" + imgList[0] + "'>");
            },
        }
    );
}

/**
 * 获取价格和重量
 */
function flushPrice() {
    $.post(
        {
            url: "getSkuInfo",
            data: "attrList="+getAttrlist()+"&productId="+productId,
            contentType: "application/x-www-form-urlencoded",
            dataType: "json",
            success : function (data) {
                $("#price").text(data.price);
                $("#weight").text(data.weight);
                flushImg(data.id);
            },
        }
    );
}

/**
 * 更新属性列表
 * @returns {string|string}
 */
function getAttrlist() {
    attrList = "{"
    $(".p-choose").each(function (index) {
        attrList += "\""+$(this).find(".dt").text()+"\":";
        attrList +="\""+$(this).find(".checked").find("i").text()+"\",";
    });
    attrList = attrList.substring(0, attrList.length - 1) + "}";
    return attrList;
}


