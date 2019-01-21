$(".count-item").click(function () {
    var keyword = getQueryVariable("keyword")
    window.location.href = "/Search?keyword=" + keyword + "&page=" + $(this).text() + "&pageCount=16";
});

$("#pre-button").click(function () {
    var page = $(".btn-primary").text();
    var keyword = getQueryVariable("keyword");
    if (page != 1) {
        page--;
        window.location.href = "/Search?keyword=" + keyword + "&page=" + page + "&pageCount=16";
    }
});

$("#next-button").click(function () {
    var page = $(".btn-primary").text();
    var keyword = getQueryVariable("keyword");
    var amount = $(".count-item").length;
    if (page != amount) {
        page++;
        window.location.href = "/Search?keyword=" + keyword + "&page=" + page + "&pageCount=16";
    }
});