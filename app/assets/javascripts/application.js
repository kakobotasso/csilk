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

/* PLUGIN resetDefaultValue */
jQuery.fn.resetDefaultValue = function() {
    function _clearDefaultValue() {
        var _$ = $(this);
        if ( _$.val() == this.defaultValue ) {
            _$.val('');
        }
    };
    function _resetDefaultValue() {
        var _$ = $(this);
        if ( _$.val() == '' ) {
            _$.val(this.defaultValue);
        }
    };
    return this.click(_clearDefaultValue).focus(_clearDefaultValue).blur(_resetDefaultValue);
}
/* / PLUGIN resetDefaultValue */


$(function(){
    /* MENU */
    $("#header #menu ul li").hover(function(){
        $(this).find("div").slideDown(500);
        $(this).find("a:eq(0)").addClass("marcado");
    },function(){
        $(this).find("div").slideUp(500);
        $(this).find("a:eq(0)").removeClass("marcado");
    });
    /* / MENU */

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

    /* NEWSLETTER */
    $("#campoNomeNewsletter").resetDefaultValue();
    $("#campoEmailNewsletter").resetDefaultValue();
    /* / NEWSLETTER */
});