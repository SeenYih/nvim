local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 3,5 s/^/#
-- 3,5 s/^#

--_   _
--| \ | | ___  _ __
--|  \| |/ _ \| '_ \
--| |\  | (_) | |_) |
--|_| \_|\___/| .__/
-------------------------------------
map("n", "s", "<nop>", opt)--++
map("n", "e", "<nop>", opt)--++

-------------------------------------
map("n", "b", "<nop>", opt)
map("n", "R", "<nop>", opt)
map("n", "<space>", "<nop>", opt)
map("n", "<LEADER>", "<nop>", opt)

-------------------------------------
map("n", "T", "<nop>", opt)
map("n", "`", "<nop>", opt)
map("n", "t", "<nop>", opt)
map("n", "M", "<nop>", opt)
map("n", "E", "<nop>", opt)
map("n", "Y", "<nop>", opt)
map("n", "L", "<nop>", opt)
map("n", "K", "<nop>", opt)
map("n", "J", "<nop>", opt)
map("n", "H", "<nop>", opt)
map("n", "X", "<nop>", opt)
map("n", "Q", "<nop>", opt)
map("n", "S", "<nop>", opt)
map("n", "n", "<nop>", opt)
map("n", "N", "<nop>", opt)
-------------------------------------

--save and quit
map("n", "S", ":w!<CR>", opt)
map("n", "Q", ":q!<CR>", opt)
-- g

--split windows
map("n", "sr", ":set splitright<CR>:vsplit<CR>", opt)
map("n", "sd", ":set splitbelow<CR>:split<CR>", opt)
--switching windows
map("n", "ek", "<C-w>k", opt)
map("n", "ej", "<C-w>j", opt)
map("n", "eh", "<C-w>h", opt)
map("n", "el", "<C-w>l", opt)
--resize windows
map("n", "<up>", ":res -5<CR>", opt)
map("n", "<down>", ":res +5<CR>", opt)
map("n", "<left>", ":vertical resize-5<CR>", opt)
map("n", "<right>", ":vertical resize+5<CR>", opt)

--cancel highlight
map("n", "X", ":nohlsearch<CR>", opt)

--previous word
map("n", "W", "b", opt)

--find next and previous
map("n", "-", "Nzz", opt)
map("n", "=", "nzz", opt)

--copy system clipboard
vim.cmd([[map Y "+y]])

--open word state z=
--opne word spell
map("n", "so", ":set spell!<CR>", opt)

--go to error word
map("n", "N", "[s", opt)
map("n", "n", "]s", opt)

--go to created labeled
map("n", "E", "<Esc>/<CR>:nohlsearch<CR>c1l", opt)

--move 5 line
map("n", "H", "5h", opt)
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)
map("n", "L", "5l", opt)

map("n", "ss", ":marks<CR>", opt)
map("n", "sm", ":delmarks!<CR>", opt)
map("n", "sc", ":delmarks ", opt)


map("n", "T", ":ColorizerToggle<CR>", opt)

 --____          _ _       _     
--/ ___|_      _(_) |_ ___| |__  
--\___ \ \ /\ / / | __/ __| '_ \ 
 --___) \ V  V /| | || (__| | | |
--|____/ \_/\_/ |_|\__\___|_| |_|
map("n", "`", ":Switch<CR>", opt)

 --____            _             
--|  _ \ __ _  ___| | _____ _ __ 
--| |_) / _` |/ __| |/ / _ \ '__|
--|  __/ (_| | (__|   <  __/ |   
--|_|   \__,_|\___|_|\_\___|_|   
map("n", "sync", ":PackerSync<CR>", opt)
map("n", "si", ":PackerInstall<CR>", opt)

 --_   _       _         _____              
--| \ | |_   _(_)_ __ __|_   _| __ ___  ___ 
--|  \| \ \ / / | '_ ` _ \| || '__/ _ \/ _ \
--| |\  |\ V /| | | | | | | || | |  __/  __/
--|_| \_| \_/ |_|_| |_| |_|_||_|  \___|\___|
map("n", "t", ":NvimTreeToggle<CR>", opt)

--_____ _       _      _   
--|  ___(_) __ _| | ___| |_ 
--| |_  | |/ _` | |/ _ \ __|
--|  _| | | (_| | |  __/ |_ 
--|_|   |_|\__, |_|\___|\__|
--      --|___/            
map("n", "M", ":r !figlet ", opt)

 --____         __  __           _     _            
--| __ ) _   _ / _|/ _| ___ _ __| |   (_)_ __   ___ 
--|  _ \| | | | |_| |_ / _ \ '__| |   | | '_ \ / _ \
--| |_) | |_| |  _|  _|  __/ |  | |___| | | | |  __/
--|____/ \__,_|_| |_|  \___|_|  |_____|_|_| |_|\___|
map("n", "g1", ":BufferLineGoToBuffer 1<CR>", opt)
map("n", "g2", ":BufferLineGoToBuffer 2<CR>", opt)
map("n", "g3", ":BufferLineGoToBuffer 3<CR>", opt)
map("n", "g4", ":BufferLineGoToBuffer 4<CR>", opt)
map("n", "g5", ":BufferLineGoToBuffer 5<CR>", opt)
map("n", "g6", ":BufferLineGoToBuffer 6<CR>", opt)
map("n", "g7", ":BufferLineGoToBuffer 7<CR>", opt)
map("n", "g8", ":BufferLineGoToBuffer 8<CR>", opt)
map("n", "g9", ":BufferLineGoToBuffer 9<CR>", opt)

map("n", "gb", ":BufferLinePick<CR>", opt)
map("n", "gc", ":BufferLinePickClose<CR>", opt)
map("n", "dl", ":BufferLineCloseRight<CR>", opt)
map("n", "dh", ":BufferLineCloseLeft<CR>", opt)

 --_____                          _   
--| ____|_ __ ___  _ __ ___   ___| |_ 
--|  _| | '_ ` _ \| '_ ` _ \ / _ \ __|
--| |___| | | | | | | | | | |  __/ |_ 
--|_____|_| |_| |_|_| |_| |_|\___|\__|
vim.cmd([[let g:user_emmet_leader_key=',']])

 --_               
--| |    ___ _ __  
--| |   / __| '_ \ 
--| |___\__ \ |_) |
--|_____|___/ .__/ 
map("n", "sl", ":LspInstallInfo<CR>", opt)
