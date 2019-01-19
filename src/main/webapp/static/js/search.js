$(".count-item").click(function () {
    window.location.href = "/Search?keyword=" + $("#searchItem").val()+"&page="+$(this).text()+"&pageCount=16";
});