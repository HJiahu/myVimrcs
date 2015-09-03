" File: markup.vim
" Maintainer: JuanPabloAJ <jpabloaj at gmail dot com>
" Description:
" Last Modified: octubre 06, 2011
" Markup {{{
	fun! MkdToHtml() "{{{
		" markdown to html
		silent! execute '%s/  $/<br\/>/g'
		sil! exe '%s/\*\*\(.*\)\*\*/<b>\1<\/b>/g'
		" TODO the content in H* as div with id 
		sil! exe '%s/\t*###\(.*\)/<H3>\1<\/H3>/g'
		sil! exe '%s/\t*##\(.*\)/<H2>\1<\/H2>/g'
		sil! exe '%s/\t*#\(.*\)/<H1>\1<\/H1>/g'
		sil! exe '%s/^$\n^* \(.*\)$/\<ul\>\r* \1/g'
		sil! exe '%s/^\* \(.*\)$\n^$/* \1\r<\/ul>/'
		sil! exe '%s/^\* \(.*\)$/<li>\1<\/li>/'
	endf
	command! -complete=command MkdToHtml call MkdToHtml()
	" }}}
	fun! HtmlToMkd() "{{{
		" TODO  html to markdown
	endf "}}}
" }}}
