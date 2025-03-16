local utils = require('utils')

local cmd = vim.cmd
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 8)
utils.opt('o', 'sidescrolloff', 16)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('w', 'wrap', false)
utils.opt('b', 'fileencoding', 'utf-8')
utils.opt('o', 'pumheight', 10)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'mouse', 'a')
-- utils.opt('o', 'go', 'a')
utils.opt('w', 'conceallevel', 0)
utils.opt('w', 'cursorline', true)
utils.opt('o', 'swapfile', false)
utils.opt('o', 'backup', false)
utils.opt('o', 'writebackup', false)
utils.opt('o', 'updatetime', 300)
utils.opt('o', 'clipboard', 'unnamedplus')
utils.opt('o', 'hlsearch', false)
utils.opt('o', 'undodir', '~/config/nvim/undodir')
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
vim.opt.iskeyword:append { '-' }

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
