$(function () {
    //获取地址列表
    $.get("/cart/address", function (data) {
        var info = '';
        for (var items in data) {
            var item = data[items];
            info += '<li class="addr-item" style="display: list-item;" selected="selected" >\n' +
                '                            <div class="consignee-item item-selected" data-addId="\'+item.id+\'" >\n' +
                '                                <span limit="8" title="' + item.consignee + '">' + item.consignee + '</span><b></b>\n' +
                '                            </div>\n' +
                '                            <div class="addr-detail">\n' +
                '                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->\n' +
                '                                <span class="addr-name" limit="6" title="' + item.consignee + '">' + item.consignee + '</span>\n' +
                '                                <span class="addr-info" limit="45" title="' + item.region + '">' + item.region + '</span>\n' +
                '                                <span class="addr-tel">' + item.phone + '</span>\n' +
                '                            </div>\n' +
                '                            <div class="op-btns">\n' +
                '                               \t<a href="#none" class="ftx-05 edit-consignee">编辑</a>\n' +
                '                            </div>\n' +
                '                        </li>';
        }
        $(".addr-list").html(info);
    });
    //获取商品信息
});

$(".checkout-submit").click(function () {
    // var order = {
    //     status: 0,
    //     addressId: $(".addr-item .item-selected").attr("data-addId"),
    //     storeId: 1,
    //     price: $(".price").text(),
    //     logistics_free: 10,
    //     payChannel: 2
    //
    // };
    // $.post({
    //     url: "",
    //     data: JSON.stringify(order),
    //     dataType: "text",
    //     contentType: "application/json;charset=utf-8",
    //     success: function (data) {
    //
    //     }
    // });
    window.location.href = "/order/add?summary=" + $(".price").text();
});