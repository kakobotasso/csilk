# encoding:UTF-8
module CategoriaHelper
	def desc(object)
		no_html = strip_tags(object.descricao).sub("&nbsp;", "").sub("&aacute;", "á").sub("&acirc;", "â").sub("&atilde;", "ã").sub("&eacute;", "é").sub("&ecirc;", "ê").sub("&iacute;", "í").sub("&oacute;", "ó").sub("&ocirc;", "ô").sub("&uacute;", "ú").sub("&ucirc;", "û").sub("&ccedil;", "ç")
		truncate( no_html , :length => 50 )
	end
end
