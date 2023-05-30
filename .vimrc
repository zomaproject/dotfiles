"" Source your .vimrc
"source ~/.vimrc

set scrolloff=10
set relativenumber
set showmode
set showcmd

set smartcase
set incsearch
set hlsearch

set visualbell

" Use system clipboard
set clipboard+=unnamed

let mapleader = " "

set surround
set highlightedyank
set sneak
set nerdtree

" Easymotion settings
set easymotion
set notimeout


"" Key mappings
"" ========================================================

inoremap jk <Esc>

" Tab navigation
nnoremap <S-l> :tabnext<CR>
nnoremap <S-h> :tabprev<CR>

" Pane navigation
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l
nnoremap <A-k> <C-w>k
nnoremap <A-j> <C-w>j

" Jump between methods
nnoremap [[ <Action>(MethodUp)
nnoremap ]] <Action>(MethodDown)

" Easy visual indentation
vnoremap < <gv
vnoremap > >gv

" Execute macro saved in 'q' register
nnoremap qj @q

" Popup navigation
inoremap <C-j> <Action>(PopupMenu-selectNext)
inoremap <C-k> <Action>(PopupMenu-selectPrev)



" Comment lines
map <leader>c <action>(CommentByLineComment)

" Jump around with easymotion
" map <leader>j <Plug>(easymotion-s)

" Open NERDTree (use q to exit)
map <leader>e :NERDTreeToggle<CR>

" Folding
map <leader>zc :action CollapseAllRegions<CR>
map <leader>zo :action ExpandAllRegions<CR>

" Window splits
map <leader>wv <Action>(SplitVertically)
map <leader>ws <Action>(SplitHorizontally)
map <leader>wu <Action>(Unsplit)
map <leader>wm <Action>(MoveEditorToOppositeTabGroup)

" Display options
map <leader>dd <action>(ToggleDistractionFreeMode)
map <leader>dz <action>(ToggleZenMode)
map <leader>df <action>(ToggleFullScreen)

" Actions
map <leader>am <action>(ShowIntentionActions)
map <leader>as <action>(SearchEverywhere)

" File navigation
map <leader>nf <action>(GotoFile)
map <leader>fr <action>(RecentFiles)
map <leader>fc <action>(FindInPath)
"map <leader><leader> <Action>(RecentFiles)
map <leader>fl <action>(RecentLocations)
map <leader>fs <action>(NewScratchFile)

" Close active tab
map <S-q> <action>(CloseContent)

" Refactoring
map <leader>rn <Action>(RenameElement)
map <leader>rm <Action>(ExtractMethod)
map <leader>rv <Action>(IntroduceVariable)
map <leader>rf <Action>(IntroduceField)
map <leader>rs <Action>(ChangeSignature)
map <leader>rr <Action>(Refactorings.QuickListPopupAction)

" Go to code
nmap <leader>gd <Action>(GotoDeclaration)
nmap <leader>gy <Action>(GotoTypeDeclaration)
nmap <leader>gi <Action>(GotoImplementation)
nmap <leader>gu <Action>(ShowUsages)
nmap <leader>gt <Action>(GotoTest)
nmap <leader>gf <Action>(Back)
nmap <leader>gb <Action>(Forward)

" Git windows
map <leader>gp <Action>(CheckinProject)
map <leader>gw <Action>(ActivateVersionControlToolWindow)
map <leader>gb <Action>(Git.Branches)
map <leader>lf <Action>(ReformatCode)
"usar leader + rc para ejecutar el archivo actual Shift + Ctrl + F10"
map <leader>rc <Action>(RunClass)
"leader lh -> nextError"
map <leader>lh <Action>(GotoNextError)
"leader ll -> prevError"
map <leader>lk <Action>(GotoPreviousError)

" mover un bloque con alt + flechas"

vmap <A-Up> :m '<-2<CR>gv=gv
vmap <A-Down> :m '>+1<CR>gv=gv
"leader np new project"
map <leader>np <Action>(NewProject)
" constrir methos getter and setter"
map <leader>gs <Action>(GenerateSetter)
map <leader>gg <Action>(GenerateGetter)
map <leader>ga <Action>(GenerateGetterAndSetter)
map <leader>gc <Action>(GenerateConstructor)
map <leader>om <Action>(OverrideMethods)
map <leader>ss <Action>(GeneratetoString)
"mostrar problemas relacionados (related problems)
"show hide / input fields
map <leader>sh <Action>(ShowIntentionActions)


"  Find more examples here: https://jb.gg/share-ideavimrc
