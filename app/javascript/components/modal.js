function scrollToAnchor(aid){
    var aTag = $("a[name='"+ aid +"']");
    $('html,body').animate({scrollTop: aTag.offset().top},'slow');
}

$("#scroll-down").click(function() {
   scrollToAnchor('scroll-cocktails');
});
