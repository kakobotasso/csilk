//= require jquery
//= require jquery_ujs

$(function(){
  /* FAZ SLUG */
  $('.viraSlug').blur(function(){
    var _value = $(this).val();
    _value = _value.toLowerCase().split(' ').join('-');
    _value = _value.replace('ç','c');
    _value = _value.replace('ã','a').replace('á','a').replace('à','a').replace('â','a').replace('ä','a');
    _value = _value.replace('é','e').replace('è','e').replace('ẽ','e').replace('ê','e').replace('ë','e');
    _value = _value.replace('í','i').replace('ì','i').replace('ĩ','i').replace('î','i').replace('ï','i');
    _value = _value.replace('ó','o').replace('ò','o').replace('õ','o').replace('ô','o').replace('ö','o');
    _value = _value.replace('ú','u').replace('ù','u').replace('ũ','u').replace('û','u').replace('ü','u');
    _value = _value.replace("'",'').replace('"','').replace('@','').replace('!','').replace('#','').replace('$','').replace('%','');
    _value = _value.replace('¬','').replace('&','').replace('*','').replace('(','').replace(')','').replace('_','-');
    _value = _value.replace('+','').replace('=','').replace('§','').replace('{','').replace('[','').replace('ª','');
    _value = _value.replace('^','').replace('~','').replace('}','').replace(']','').replace('º','').replace('<','');
    _value = _value.replace(',','').replace('>','').replace('.','').replace(';','').replace(':','').replace('?','');
    _value = _value.replace('/','').replace('°','').replace('|','').replace('¹','1').replace('²','2').replace('³','3');
    _value = _value.replace('£','').replace('¢','');
    $('.slugTransformado').val(_value).attr('readonly','readonly');
  });
  /* / FAZ SLUG */
});
