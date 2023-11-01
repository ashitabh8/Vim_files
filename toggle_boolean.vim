function! ToggleBoolean()
python3 << endpython

import vim
import os
import sys

def toggle_boolean():
	current_word = vim.eval("expand('<cword>')")
	new_word = ''

	if current_word == "True":
		new_word = "False"
		vim.command("normal! ciw")
		vim.command("normal! a" + new_word)
	if current_word == "False":
		new_word = "True"
		vim.command("normal! ciw")
		vim.command("normal! a" + new_word)
	
	if current_word == "true":
		new_word = "false"
		vim.command("normal! ciw")
		vim.command("normal! a" + new_word)
	
	if current_word == "false":
		new_word = "true"
		vim.command("normal! ciw")
		vim.command("normal! a" + new_word)


toggle_boolean()


endpython
endfunction

com! -nargs=0 ToggleBoolean :call ToggleBoolean()

nnoremap <leader><leader>b :call ToggleBoolean()<CR>

" Toggle boolean


