let g:lmap = {}
let g:lmap.w = 'Save file'
let g:lmap.ev = 'Edit vimrc'

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <C-h> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <C-h> :<c-u>LeaderGuideVisual '<Space>'<CR>
let g:leaderGuide_display_plus_menus = 1
let g:leaderGuide_hspace = 5
let g:leaderGuide_vertical = 1
let g:leaderGuide_position = 'topright'
