"" Source your .vimrc
"source ~/.vimrc
set ideajoin
set scrolloff=10
set matchit
set relativenumber
set number
set showmode
set showcmd
set ai
set si

set ignorecase
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
set ideajoin
imap jk <Esc>

" Tab navigation
nmap <S-l> <Action>(NextTab)
nmap <S-h> <Action>(PreviousTab)
nmap <leader>rv <Action>(IdeaVim.ReloadVimRc.reload)

" Pane navigation
map <A-h> <C-w>h
map <A-l> <C-w>l
map <A-k> <C-w>k
map <A-j> <C-w>j

" Jump between methods
nnoremap [[ <Action>(MethodUp)
nnoremap ]] <Action>(MethodDown)

" Easy visual indentation
vnoremap < <gv
vnoremap > >gv

" Execute macro saved in 'q' register
nnoremap qj @q
" Popup navigation

imap <C-j> <Down>
imap <C-k> <Up>



" Comment lines
map <C-/> <action>(CommentByLineComment)
" comentar por bloque
vmap <C-/> <Action>(CommentByBlockComment)
imap <C-/> <Action>(CommentByBlockComment)

" Jump around with easymotion
" map <leader>j <Plug>(easymotion-s)

" Open NERDTree (use q to exit)ctivateProjectToolWindow)kctivateProjectToolWindow) e
map <leader>e <Action>(ActivateProjectToolWindow)
map <C-h> <Action>(ActivateProjectToolWindow)

" Folding
map <leader>zc :action CollapseAllRegions<CR>
map <leader>zo :action ExpandAllRegions<CR>

" Window splits
map <leader>sv <Action>(SplitVertically)
map <leader>sh <Action>(SplitHorizontally)
map <leader>ru <Action>(Unsplit)
map <leader>me <Action>(MoveEditorToOppositeTabGroup)

" Display options
map <leader>dd <action>(ToggleDistractionFreeMode)
map <leader>dz <action>(ToggleZenMode)
map <leader>df <action>(ToggleFullScreen)

" Actions
map <leader>am <action>(ShowIntentionActions)
map <leader>as <action>(SearchEverywhere)

" File  navigation
map <leader>nf <action>(GotoFile)
map <leader>fr <action>(RecentFiles)
map <leader>fc <action>(FindInPath)
"map <leader><leader> <Action>(RecentFiles)
map <leader>fl <action>(RecentLocations)
map <leader>fs <action>(NewScratchFile)
map <leader>w <Action>(SaveAll)
" Close active tab
map <S-q> <action>(CloseContent)

" Refactoring
map <leader>rn <Action>(RenameElement)
map <leader>rem <Action>(ExtractMethod)
map <leader>rv <Action>(IntroduceVariable)
map <leader>rf <Action>(IntroduceField)
map <leader>rs <Action>(ChangeSignature)
map <leader>rm <Action>(Move)
map <leader>rp <Action>(Refactorings.QuickListPopupAction)

" Go to code
nmap <leader>gd <Action>(GotoDeclaration)
nmap <leader>gy <Action>(GotoTypeDeclaration)
nmap <leader>gi <Action>(GotoImplementation)
nmap <leader>gu <Action>(ShowUsages)
nmap <leader>gt <Action>(GotoTest)
nmap <leader>gf <Action>(Back)
nmap <leader>gb <Action>(Forward)

" Git windows
map <leader>ga <Action>(CheckinProject)
map <leader>gw <Action>(ActivateVersionControlToolWindow)
map <leader>gm <Action>(Git.Menu)
map <leader>gA <Action>(Git.Stage.Add.All)
map <leader>gB <Action>(Git.Branches)
map <leader>gb <Action>(Annotate)


map <leader>lf <Action>(ReformatCode)
"usar leader + rc para ejecutar el archivo actual Shift + Ctrl + F10"
"leader lh -> nextError"
map <leader>lj <Action>(GotoNextError)
"leader ll -> prevError"
map <leader>lk <Action>(GotoPreviousError)


" mover un bloque con alt + flechas"

vmap <A-Up> :m '<-2<CR>gv=gv
vmap <A-Down> :m '>+1<CR>gv=gv
"leader np new project"


" --------------- IDE -----------------"
map <leader>np <Action>(NewProject)
map <leader><S-c> <Action>(copilot.chat.show)
map <leader>rV <Action>(IdeaVim.ReloadVimRc.reload)

" construir metodos getter and setter"
map <leader>om <Action>(OverrideMethods)
"show hide / input fields
map <leader>sh <Action>(ShowIntentionActions)

" show info error

nmap <leader>li <Action>(ShowErrorDescription)

"  Find more examples here: https://jb.gg/share-ideavimrc

imap <C-a> <Action>(ShowIntentionActions)
map <C-h> <Action>(ActivateProjectToolWindow)
vmap n <Action>(SelectNextOccurrence)
imap <C-h> <Action>(ActivateProjectToolWindow)
map <C-\> <Action>(ActivateTerminalToolWindow)
map <leader>np <Action>(ManageRecentProjects)

"Rider
map <leader>rS <Action>(RiderNewSolution)
nmap <leader>rr <Action>(Run)
map <leader>st <Action>(Stop)
nmap <leader>nt <Action>(RiderNuGetToggleToolWindowAction)
map <leader>rw <Action>(RiderDebuggerApplyEncChagnes)
map <leader>dba <Action>(EfCore.Shared.OpenQuickEfCoreActionsAction)
map <leader>rt <Action>(RiderUnitTestRunSolutionAction)
map <leader>gc <Action>(Generate)
map <leader>hr <Action>(RiderDebuggerApplyEncChagnes)
imap <C-i><Action>(ParameterInfo)
nmap <leader>hr <Action>(RiderDebuggerApplyEncChagnes)

"OPP
map <leader>ge <Action>(Generate)
nmap <leader>ff <Action>(FileStructurePopup)
