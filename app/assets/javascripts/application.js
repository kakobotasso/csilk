// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs


$(function(){
    /* SLIDER HOME */
    var _html = "<ul>";
    for(var i = 0; i < $("#banners a").length; i++ ){
        _html += "<li><a href='javascript:void(0);'>"+(i+1)+"</a></li>";
    }
    _html += "</ul>";
    
    $("#paginacao").html(_html);
    
    
    $("#paginacao a").click(function(){
        var ind = $("#paginacao a").index(this);
        
        $("#paginacao a").removeClass('marcado');
        $(this).addClass('marcado');
        
        $("#banners a").fadeOut(500);
        $("#banners a").eq(ind).fadeIn(500);
    });
    $("#paginacao a").eq(0).trigger('click');
    /* / SLIDER HOME */
});