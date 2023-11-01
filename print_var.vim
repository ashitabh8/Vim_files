function! PrintW()
python3 << endpython

import vim
import os
import sys

def getWordUnderCursor():
	var_name =  vim.eval("expand('<cWORD>')")
	# remove '=' if it is the last non blank character
	var_name = var_name.strip()
	if var_name[-1] == '=':
		var_name = var_name[:-1]
	return var_name


def add_print_to_nextline():
	var_name = getWordUnderCursor()
	vim.command('normal! o')
	vim.command('normal! i')
	vim.command('startinsert')
	vim.command('call feedkeys("print(\'' + var_name + ' = \', ' + var_name + ')")')


add_print_to_nextline()

endpython
endfunction

function! PrintSummary()
python3 << endpython

import vim
import os
import sys

def getWordUnderCursor():
	var_name =  vim.eval("expand('<cWORD>')")
	# remove '=' if it is the last non blank character
	var_name = var_name.strip()
	if var_name[-1] == '=':
		var_name = var_name[:-1]
	return var_name


def add_summary():
	var_name = getWordUnderCursor()
	vim.command('normal! o')
	vim.command('normal! i')
	vim.command('startinsert')
	vim.command('call feedkeys("print(\'Summary:' + var_name + '\')")')
	#press enter
	vim.command('call feedkeys("\<CR>")')
	# print shape
	vim.command('call feedkeys("print(\'Shape: ' + var_name + '.shape = \', ' + var_name + '.shape)")')
	#press enter
	vim.command('call feedkeys("\<CR>")')
	# print dtype
	vim.command('call feedkeys("print(\'dtype: ' + var_name + '.dtype = \', ' + var_name + '.dtype)")')
	#press enter
	vim.command('call feedkeys("\<CR>")')
	# print type
	vim.command('call feedkeys("print(\'type: ' + var_name + '.type = \', type(' + var_name + '))")')


add_summary()

endpython
endfunction
com! PW call PrintW()
com! PS call PrintSummary()
nnoremap pw :PW<CR>
nnoremap ps :PS<CR>
