" -*- mode: vimrc -*-

let mapleader = " "

set clipboard+=unnamed
set commentary
set history
set ignorecase
set matchpairs
set multiple-cursors
set number
set relativenumber
set smartcase
set surround
set wrapscan
" IdeaVim only
set ideajoin=true
set idearefactormode=visual
set ideavimsupport=


" evil-escape
imap jk <Esc>

" Insert newline above
nnoremap [<Space> O<Esc>j
vnoremap [<Space> <Esc>O<Esc>j
let g:WhichKeyDesc_insert_newline_above = '[<Space> Insert newline above'
" Insert newline below
nnoremap ]<Space> o<Esc>k
vnoremap ]<Space> <Esc>o<Esc>k
let g:WhichKeyDesc_insert_newline_below = ']<Space> Insert newline below'

" Close all folds
nmap zm <Action>(CollapseAllRegions)
" Open all folds
nmap zr <Action>(ExpandAllRegions)

" doom-escape-hook
nnoremap <Esc> :<C-u>nohl<CR>:<C-u>action HideAllWindows<CR><Esc>


"
" Hybrid mode

" Go to first character
inoremap <C-a> <Esc>I
cnoremap <C-a> <Home>
" Go left
inoremap <C-b> <Left>
" Delete character
inoremap <C-d> <Del>
" Go to end of line
inoremap <C-e> <Esc>A
cnoremap <C-e> <End>
" Go right
inoremap <C-f> <Right>
" Unbind C-g
noremap <C-g> <Esc>
inoremap <C-g> <Nop>
" Delete to line end
inoremap <C-k> <Esc>:action EditorDeleteToLineEnd<CR>a
" Go down
inoremap <C-n> <Down>
" Go up
inoremap <C-p> <Up>
" Go to previous word
inoremap <A-b> <Esc>:action EditorPreviousWord<CR>i
" Go to next word
inoremap <A-f> <Esc>:action EditorNextWord<CR>a


"
" +leader

" Search project
map <Leader>/ <Action>(FindInPath)
let g:WhichKeyDesc_search_project1 = '<leader>/ Search project'
" Find file
map <Leader>. <Action>(SearchEverywhere)
let g:WhichKeyDesc_find_file1 = '<leader>. Find file'
" Jump to bookmark
map <Leader><CR> <Action>(Bookmarks)
let g:WhichKeyDesc_jump_to_bookmark = '<leader>⏎ Jump to bookmark'
" Switch buffer
map <Leader>< <Action>(Switcher)
let g:WhichKeyDesc_switch_buffer = '<leader>< Switch buffer'
" Switch to last buffer
map <Leader>` <Action>(GoToLastTab)
let g:WhichKeyDesc_switch_to_last_buffer = '<leader>` Switch to last buffer'
" Toggle last popup
map <Leader>~ <Action>(JumpToLastWindow)
let g:WhichKeyDesc_toggle_last_popup = '<leader>~ Toggle last popup'


"
" +buffer

let g:WhichKeyDesc_buffer = '<leader>b +buffer'
" Switch workspace buffer
map <leader>bb <Action>(RecentFiles)
let g:WhichKeyDesc_switch_workspace_buffer = '<leader>bb Switch workspace buffer'
" Kill buffer
map <Leader>bd <Action>(CloseContent)
let g:WhichKeyDesc_kill_buffer1 = '<leader>bd Kill buffer'
" Kill buffer
map <Leader>bk <Action>(CloseContent)
let g:WhichKeyDesc_kill_buffer2 = '<leader>bk Kill buffer'
" Save buffer
noremap <Leader>bs :<C-u>w<CR>
let g:WhichKeyDesc_save_buffer = '<leader>bs Save buffer'
" Kill all buffers
map <Leader>bK <Action>(CloseAllEditors)
let g:WhichKeyDesc_kill_all_buffers = '<leader>bK Kill all buffers'
" New empty buffer
map <Leader>bN <Action>(NewScratchBuffer)
let g:WhichKeyDesc_new_empty_buffer = '<leader>bN New empty buffer'
" Kill other buffers
map <Leader>bO <Action>(CloseAllEditorsButActive)
let g:WhichKeyDesc_kill_other_buffers = '<leader>bO Kill other buffers'
" Save all buffers
noremap <Leader>bS :<C-u>wa<CR>
let g:WhichKeyDesc_save_all_buffers = '<leader>bS Save all buffers'


"
" +code

let g:WhichKeyDesc_code_leader = '<leader>c +code'
" Jump to references
map <Leader>cD <Action>(ShowUsages)
let g:WhichKeyDesc_jump_to_refs = '<leader>cD Jump to references'
" Execute Intention Action
map <Leader>ca <Action>(ShowIntentionActions)
let g:WhichKeyDesc_exec_intention_action = '<leader>ca Execute Intention Action'
" Compile
map <Leader>cc <Action>(CompileDirty)
let g:WhichKeyDesc_compile = '<leader>cc Compile'
" Jump to definition
noremap <Leader>cd gd
let g:WhichKeyDesc_jump_to_def1 = 'gd Jump to definition'
let g:WhichKeyDesc_jump_to_def2 = '<leader>cd Jump to definition'
" Format buffer/region
nmap <Leader>cf <Action>(ReformatCode)
let g:WhichKeyDesc_format_buffer_region = '<leader>cf Format buffer/region'
" Find implementations
map <Leader>ci <Action>(GotoImplementation)
let g:WhichKeyDesc_find_impls = '<leader>ci Find implementations'
" Jump to symbol in current workspace
map <Leader>cj <Action>(SearchEverywhere)
let g:WhichKeyDesc_jump_to_symbol_in_current_workspace = '<leader>cj Jump to symbol in current workspace'
" Show documentation
map <Leader>ck <Action>(QuickJavaDoc)
let g:WhichKeyDesc_show_doc = '<leader>ck Show documentation'
" Organize imports
map <Leader>co <Action>(OptimizeImports)
let g:WhichKeyDesc_organize_imports = '<leader>co Organize imports'
" Rename
map <Leader>cr <Action>(RenameElement)
let g:WhichKeyDesc_rename = '<leader>cr Rename'
" Find type definition
map <Leader>ct <Action>(GotoTypeDeclaration)
let g:WhichKeyDesc_find_type_def = '<leader>ct Find type definition'
" Recompile
map <Leader>cC <Action>(Compile)
let g:WhichKeyDesc_recompile = '<leader>cC Recompile'

" Show error description
map <C-c>!h <Action>(ShowErrorDescription)
" Go to previous error
nmap [e <Action>(GotoPreviousError)
let g:WhichKeyDesc_go_to_prev_error1 = '[e Go to previous error'
nmap <C-c>!p <Action>(GotoPreviousError)
" Go to next error
nmap ]e <Action>(GotoNextError)
let g:WhichKeyDesc_go_to_next_error1 = ']e Go to next error'
nmap <C-c>!n <Action>(GotoNextError)

" Go to previous method
nmap [[ <Action>(MethodUp)
let g:WhichKeyDesc_go_to_prev_method = '[[ Go to previous method'
" Go to next method
nmap ]] <Action>(MethodDown)
let g:WhichKeyDesc_go_to_next_method = ']] Go to next method'


"
" +file

let g:WhichKeyDesc_file_leader = '<leader>f +file'
" Open project editorconfig
map <Leader>fc <Action>(NewEditorConfigFile)
let g:WhichKeyDesc_open_project_editorconfig = '<leader>fc Open project editorconfig'
" Find file
map <Leader>ff <Action>(SearchEverywhere)
let g:WhichKeyDesc_find_file2 = '<leader>ff Find file'
" Recent files
map <Leader>fr <Action>(RecentFiles)
let g:WhichKeyDesc_recent_files = '<leader>fr Recent files'
" Save file
noremap <Leader>fs :<C-u>w<CR>
let g:WhichKeyDesc_save_file = '<leader>fs Save file'
" Copy filename
map <Leader>fy <Action>(CopyAbsolutePath)
let g:WhichKeyDesc_copy_filename = '<leader>fy Copy filename'
" Rename/move file
map <Leader>fR <Action>(RefactoringMenu)
let g:WhichKeyDesc_rename_move_file = '<leader>fR Rename/move file'


"
" +git

let g:WhichKeyDesc_git_leader = '<leader>g +git'
" GitHub menu
map <Leader>g' <Action>(GitHub.MainMenu)
let g:WhichKeyDesc_github_menu = "<leader>g' GitHub menu"
" Git file actions
map <Leader>g. <Action>(Git.FileActions)
let g:WhichKeyDesc_git_file_actions = '<leader>g. Git file actions'
" Git menu
map <Leader>g/ <Action>(Git.Menu)
let g:WhichKeyDesc_git_menu = '<leader>g/ Git menu'
" Jump to previous hunk
nmap <Leader>g[ <Action>(VcsShowPrevChangeMarker)
let g:WhichKeyDesc_jump_to_prev_hunk1 = '<leader>g[ Jump to previous hunk'
nmap [d <Action>(VcsShowPrevChangeMarker)
let g:WhichKeyDesc_jump_to_prev_hunk2 = '[d Jump to previous hunk'
" Jump to next hunk
nmap <Leader>g] <Action>(VcsShowNextChangeMarker)
let g:WhichKeyDesc_jump_to_next_hunk1 = '<leader>g] Jump to next hunk'
nmap ]d <Action>(VcsShowNextChangeMarker)
let g:WhichKeyDesc_jump_to_next_hunk2 = ']d Jump to next hunk'
" Switch branch
map <Leader>gb <Action>(Git.Branches)
let g:WhichKeyDesc_switch_branch = '<leader>gb Switch branch'
" Revert hunk
map <Leader>gr <Action>(Vcs.RollbackChangedLines)
let g:WhichKeyDesc_revert_hunk = '<leader>gr Revert hunk'
" Status
map <Leader>gs <Action>(Vcs.Show.Shelf)
let g:WhichKeyDesc_status = '<leader>gs Status'
" Git time machine
map <Leader>gt <Action>(Vcs.ShowTabbedFileHistory)
let g:WhichKeyDesc_git_time_machine = '<leader>gt Time machine'
" Blame
map <Leader>gB <Action>(Annotate)
let g:WhichKeyDesc_blame = '<leader>gB Blame'
" Clone
map <Leader>gC <Action>(Vcs.VcsClone)
let g:WhichKeyDesc_clone1 = '<leader>gC Clone'
" Fetch
map <Leader>gF <Action>(Git.Fetch)
let g:WhichKeyDesc_fetch = '<leader>gF Fetch'
" Git stage file
map <Leader>gS <Action>(Git.Add)
let g:WhichKeyDesc_git_stage_file = '<leader>gS Git stage file'

" +create
let g:WhichKeyDesc_git_create_leader = '<leader>gc +create'
" Branch
map <Leader>gcb <Action>(Git.CreateNewBranch)
let g:WhichKeyDesc_create_branch = '<leader>gcb Branch'
" Pull request
map <Leader>gcp <Action>(Github.Create.Pull.Request)
let g:WhichKeyDesc_create_pr = '<leader>gcp Pull request'
" Initialize repo
map <Leader>gcr <Action>(Git.Init)
let g:WhichKeyDesc_init_repo = '<leader>gcr Initialize repo'
" Clone repo
map <Leader>gcR <Action>(Vcs.VcsClone)
let g:WhichKeyDesc_clone2 = '<leader>gcR Clone repo'

" +list
let g:WhichKeyDesc_list_leader = '<leader>gl +list'
" List pull requests
map <Leader>glp <Action>(Github.View.Pull.Request)
let g:WhichKeyDesc_list_prs = '<leader>glp List pull requests'

" +open
let g:WhichKeyDesc_git_open_leader = '<leader>go +open'
" Browse file or region
map <Leader>goo <Action>(Github.Open.In.Browser)
let g:WhichKeyDesc_browse_file_or_region = '<leader>goo Browse file or region'
" Browse a pull request
map <Leader>gop <Action>(com.github.shiraji.findpullrequest.action.FindPullRequestAction)
let g:WhichKeyDesc_browse_pr = '<leader>gop Browse a pull request'


"
" +help

let g:WhichKeyDesc_help_leader = '<leader>h +help'
" Show Event Log
map <Leader>he <Action>(ActivateEventLogToolWindow)
let g:WhichKeyDesc_event_log = '<leader>he Show Event Log'
" Reload IdeaVim config
map <Leader>hr <Action>(IdeaVim.ReloadVimRc.reload)
let g:WhichKeyDesc_reload_ideavim_config = '<leader>hr Reload IdeaVim config'
" Change theme
map <Leader>ht <Action>(ChangeLaf)
let g:WhichKeyDesc_change_theme = '<leader>ht Change theme'


"
" +insert

let g:WhichKeyDesc_insert_leader = '<leader>i +insert'
" Insert emoji/unicode
nmap <Leader>ie <Action>(EmojiAndSymbols)
imap <A-Space>ie <Action>(EmojiAndSymbols)
let g:WhichKeyDesc_insert_emoji_unicode1 = '<leader>ie Insert emoji/unicode'
" Insert Live Template
nmap <Leader>is <Action>(InsertLiveTemplate)
imap <A-Space>is <Action>(InsertLiveTemplate)
let g:WhichKeyDesc_insert_live_template = '<leader>is Insert Live Template'
" Insert emoji/unicode
nmap <Leader>iu <Action>(EmojiAndSymbols)
imap <A-Space>iu <Action>(EmojiAndSymbols)
let g:WhichKeyDesc_insert_emoji_unicode2 = '<leader>iu Insert emoji/unicode'
" Insert from clipboard
nmap <Leader>iy <Action>(PasteMultiple)
imap <A-Space>iy <Action>(PasteMultiple)
let g:WhichKeyDesc_insert_from_clipboard = '<leader>iy Insert from clipboard'


"
" +open

let g:WhichKeyDesc_open_leader = '<leader>o +open'
" New window
nmap <Leader>of <Action>(EditSourceInNewWindow)
let g:WhichKeyDesc_new_window = '<leader>of New window'
" Select window
nmap <Leader>oF <Action>(OpenProjectWindows)
let g:WhichKeyDesc_select_window = '<leader>oF Select window'
" Toggle Project View
noremap <Leader>op :<C-u>NERDTreeToggle<CR>
let g:WhichKeyDesc_project_sidebar = '<leader>op Toggle Project View'
" Find file in Project View
noremap <Leader>oP :<C-u>NERDTreeFind<CR>
let g:WhichKeyDesc_find_file_in_project_sidebar = '<leader>oP Find file in Project View'
" Reveal in filer
nmap <Leader>oo <Action>(RevealIn)
let g:WhichKeyDesc_reveal_in_filer = '<leader>oo Reveal in filer'
" Open terminal
nmap <Leader>ot <Action>(ActivateTerminalToolWindow)
let g:WhichKeyDesc_open_terminal = '<leader>ot Open terminal'
" Open terminal here
nmap <Leader>oT <Action>(Terminal.OpenInTerminal)
let g:WhichKeyDesc_open_terminal_here = '<leader>oT Open terminal here'


"
" +project

let g:WhichKeyDesc_project_leader = '<leader>p +project'
" Run cmd in project root
map <Leader>p! <Action>(RunAnything)
let g:WhichKeyDesc_run_cmd_in_project_root = '<leader>p! Run cmd in project root'
" Invalidate project cache
map <Leader>pi <Action>(InvalidateCaches)
let g:WhichKeyDesc_invalidate_project_cache = '<leader>pi Invalidate project cache'
" Switch projects
map <Leader>pp <Action>(ManageRecentProjects)
let g:WhichKeyDesc_switch_projects = '<leader>pp Switch projects'
" Show TODO
map <Leader>pt <Action>(ActivateTODOToolWindow)
let g:WhichKeyDesc_show_todo = '<leader>pt Show TODO'
" List project tasks
map <Leader>pz <Action>(RunAnything)
let g:WhichKeyDesc_list_project_tasks = '<leader>pz List project tasks'
" Run project
map <Leader>pR <Action>(Run)
let g:WhichKeyDesc_run_project = '<leader>pR Run project'


"
" +toggle

let g:WhichKeyDesc_toggle_leader = '<leader>t +toggle'
" Presentation Mode
map <Leader>tb <Action>(TogglePresentationMode)
let g:WhichKeyDesc_toggle_presentation_mode = '<leader>tb Presentation Mode'
" Line numbers
map <Leader>tl <Action>(EditorToggleShowLineNumbers)
let g:WhichKeyDesc_toggle_line_numbers = '<leader>tl Line numbers'
" Read-only mode
map <Leader>tr <Action>(ToggleReadOnlyAttribute)
let g:WhichKeyDesc_toggle_readonly_mode = '<leader>tr Read-only mode'
" Soft line wrapping
map <Leader>tw <Action>(EditorToggleUseSoftWraps)
let g:WhichKeyDesc_toggle_soft_line_wrapping = '<leader>tw Soft line wrapping'
" Distraction Free Mode
map <Leader>tz <Action>(ToggleDistractionFreeMode)
let g:WhichKeyDesc_toggle_distraction_free_mode = '<leader>tz Distraction Free Mode'
" Zen Mode
map <Leader>tZ <Action>(ToggleZenMode)
let g:WhichKeyDesc_toggle_zen_mode = '<leader>tZ Zen Mode'
" Fullscreen
map <Leader>tF <Action>(ToggleFullScreen)
let g:WhichKeyDesc_toggle_fullscreen = '<leader>tF Fullscreen'


"
" +search

let g:WhichKeyDesc_search_leader = '<leader>s +search'
" Search project
map <Leader>sp <Action>(FindInPath)
let g:WhichKeyDesc_search_project2 = '<leader>sp Search project'
" Look up in Dash docsets
map <Leader>sk <Action>(SmartSearchAction)
let g:WhichKeyDesc_look_up_in_docsets = '<leader>sk Look up in Dash docsets'


"
" +window

noremap <Leader>wc <C-w>c
noremap <Leader>wd <C-w>c
noremap <Leader>wh <C-w>h
noremap <Leader>wj <C-w>j
noremap <Leader>wk <C-w>k
noremap <Leader>wl <C-w>l
noremap <Leader>ws <C-w>s
noremap <Leader>wv <C-w>v
noremap <Leader>ww <C-w>w
noremap <Leader>wW <C-w>W
noremap <Leader>wq <C-w>c
" Maximize window
noremap <Leader>wm <Action>(Unsplit)
let g:WhichKeyDesc_window_leader = '<leader>w +window'


"
" Emulated plugins

" argtextobj
let g:argtextobj_pairs = '(:),{:},[:]'
set argtextobj

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_startofline = 0
set easymotion
unmap <Leader><Space>
map gsb <Plug>(easymotion-bl)
map gse <Plug>(easymotion-el)
map gsf <Plug>(easymotion-f)
map gsF <Plug>(easymotion-F)
map gsj <Plug>(easymotion-j)
map gsk <Plug>(easymotion-k)
map gsn <Plug>(easymotion-n)
map gsN <Plug>(easymotion-N)
map gss <Plug>(easymotion-s2)
map gst <Plug>(easymotion-t)
map gsT <Plug>(easymotion-T)
map gsw <Plug>(easymotion-wl)
map gsge <Plug>(easymotion-gel)

" highlightedyank
set highlightedyank

" NERDTree
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeMapPreview = '<Nop>'
let g:NERDTreeMapOpenInTab = 'oo'
let g:NERDTreeMapOpenInTabSilent = '<Nop>'
let g:NERDTreeMapOpenSplit = 'ov'
let g:NERDTreeMapPreviewSplit = '<Nop>'
let g:NERDTreeMapOpenVSplit = 'os'
let g:NERDTreeMapPreviewVSplit = '<Nop>'
let g:NERDTreeMapOpenRecursively = '<Nop>'
let g:NERDTreeMapCloseDir = 'h'
let g:NERDTreeMapCloseChildren = '<Nop>'
let g:NERDTreeMapJumpRoot = '<Nop>'
let g:NERDTreeMapJumpParent = 'K'
let g:NERDTreeMapJumpFirstChild = '<Nop>'
let g:NERDTreeMapJumpLastChild = '<Nop>'
let g:NERDTreeMapJumpNextSibling = 'L'
let g:NERDTreeMapJumpPrevSibling = 'H'
let g:NERDTreeMapRefresh = '<Nop>'
let g:NERDTreeMapRefreshRoot = 'gr'
let g:NERDTreeMapMenu = '<Nop>'
" let g:NERDTreeMapQuit = 'q'
let g:NERDTreeMapToggleZoom = '<Nop>'
set NERDTree

" vim-which-key
let g:WhichKey_DefaultDelay = 1000
let g:WhichKey_ShowVimActions = 'true'
set notimeout
set which-key
