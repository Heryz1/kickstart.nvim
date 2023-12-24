-- -------------------------------------
-- -- KeyBindings
-- -- -------------------------------------
local keymap               = vim.api.nvim_set_keymap
local opts                 = { noremap = true }
--
-- keymap('i', 'kj', '<esc>', opts) -- jk retourne en mode normal
-- keymap('n', '<c-j>', '<c-w>j', opts) -- ctrl-j permet de passer a l'autre split
-- keymap('n', '<c-k>', '<c-w>k', opts) -- ctrl-k permet de passer a l'autre split
-- keymap('n', '<c-h>', '<c-w>h', opts) -- ctrl-k permet de passer a l'autre split
-- keymap('n', '<c-l>', '<c-w>l', opts) -- ctrl-k permet de passer a l'autre split
keymap('n', '<S-Tab>', ':bp<CR>', opts) -- shift-tab permet d'aller au buffer precedent
-- keymap('n', '<c-i>', '$i', opts) -- ctrl-i bascule en mode insert a l'avant dernier caractere
-- keymap('n', '<Tab>', '^>>', opts) -- Faire un tabulation en mode normal va decaler le texte de la ligne
keymap('n', '\\z',
   ':setlocal foldexpr=(getline(v:lnum)=~@/)?0:1 foldmethod=expr foldlevel=0 foldcolumn=2 foldminlines=0<CR><CR>', opts) -- Suite a une recherche \z permet de cacher tous les patterns ne correspondant pas aux lignes contenant le patterns. Il s'agit d'un fold expression pour cacher les lignessans les supprimer
keymap('n', '<F8>', ':set foldmethod=expr<CR><Bar>zM', opts) -- Fait exactement la meme chose que l'autre fold expression
--
keymap('v', '>', '>gv', opts) -- combinaison pour décaler un bloc de texte
keymap('v', '<', '<gv', opts) -- combinaison pour décaler un bloc de texte
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', opts) -- combinaison pour décaler un bloc de texte
keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', opts) -- combinaison pour décaler un bloc de texte
--
keymap('n', '<A-j>', 'ddp', opts) -- Décaler des bloc de texte vers le bas/bas
keymap('n', '<A-k>', 'ddkP', opts) -- Décaler des bloc de texte vers le bas/bas
--
keymap('n', '<CR>', 'o<Esc>', opts) -- Combinaison clavier retour clavier
keymap('n', '<A-CR>', 'O<Esc>', opts) -- Combinaison clavier retour clavier
--
-- Pour utiliser cette commande, il est nécessaire d'installer xclip (sudo apt install xclip)
keymap('v', '<C-c>', '"+y', opts) -- Ajout du CTRL+C pour copier un fichier dans le buffer
--
--   keymap('n', '<S-h>', '^', opts) -- Ajout d'un saut vers le début et la fin de la ligne avec shift
--   keymap('n', '<S-l>', '$', opts) -- Ajout d'un saut vers le début et la fin de la ligne avec shift
--
keymap('n', '<C-a>', 'ggVG', opts) -- Ajout du control A pour selectionner l'ensemble du fichier
--
--
keymap('n', '<Leader>v', 'viw', opts) -- Selectionne le mot complet
keymap('n', '<Leader>V', 'viW', opts) -- Selectionne le grand mot complet
keymap('v', '<Leader>f', '"1y:%s/<C-R>1//gc<Left><Left><Left>', opts) -- Prend le mot sélectionné et vient automatiquement lancer une rechercher/remplacer en le positionnant au bon endroit
--
keymap('n', '<Leader>wz', '*#:setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>', opts) -- Fait une recherche du mot ou se trouve le curseur puis recherche directement le mot et fait un fold de tout ce qui n'est pas le mot
keymap('n', '<Leader>Wz', 'viW*#:setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>', opts) -- Même chose mais en prenant un mot plus large.
--
--
--   keymap('i', 'kj', '<esc>', opts) -- Retourne en mode normal avec kj
--
keymap('i', '<C-x>', '<esc>lce', opts) -- En mode insertion, supprime le mot suivant 
keymap('i', '<C-BS>', '<esc>cvb', opts) -- En mode insertion, supprime le mot precedent 

-- "cgete system()" is a synchronous command. It is better to use asynchronous command
-- Add keybinding to call cmake when <F12> : Build cmake project and compile project 
keymap('n', '<F9>', ':w<CR>:AsyncRun ./build.sh<CR>', opts)
keymap('n', '<F10>', ':w<CR>:AsyncRun ./compile_run.sh<CR>', opts)

keymap('n', '<Leader>cd', ':w<CR>:AsyncRun rm -rf build<CR>', opts)
keymap('n', '<Leader>cc', ':w<CR>:AsyncRun cmake -B build<CR>', opts)
keymap('n', '<Leader>cb', ':w<CR>:AsyncRun cmake --build build<CR>', opts)
keymap('n', '<Leader>ct', ':w<CR>:AsyncRun (cd build && ctest)<CR>', opts)
keymap('n', '<Leader>ca', ':w<CR>:AsyncRun rm -rf build && cmake -B build && cmake --build build<CR>', opts)
-- Add keybinding to generate documentation automatically
-- Not useful as friendly-snippet already has documentation snippets for C/CPP languages
-- keymap('n', '<Leader>@', ':Neogen<CR>', opts)

-- Escape from terminal mode 
keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- Handle quickFix list 
keymap('n', '<Leader>q', ':copen<cr><C-W>k', opts)
keymap('n', ']q', ':cn<cr>', opts)
keymap('n', '[q', ':cp<cr>', opts)
