local set = vim.opt

-- ╭──────────────────────────────────────────────────────────╮
-- │                            UI                            │
-- ╰──────────────────────────────────────────────────────────╯
set.termguicolors = true                --Activa true colors en la terminal
set.number = true                       -- Muestra los numeros de las lineas
set.relativenumber = true               -- Numeros de linea relativos
set.signcolumn = 'yes'                  -- Always show the sign column
set.numberwidth = 1                     -- Numeros de columna mas ajustados
set.laststatus = 3                      -- globa status line
set.winbar = "%{%v:lua.require('config.winbar').get_winbar()%}"
set.cursorline = true                   -- Resalta la linea actual
set.splitbelow = true                   -- Horizontal splits will automatically be below
set.splitright = true                   -- Vertical splits will automatically be to the right
set.mouse='a'                           -- Habilita la integracion con el mouse
set.colorcolumn='120'                   -- Muestra la columna limite a 120 caracteres
set.showmode = false                    -- show mode in the last line
set.showcmd = true                      -- show (partial) command in the last line of the screen
set.wrap = false                        -- No dividir la línea si es muy larga
set.wildmenu = true                     -- Autocompletado para la barra de comandos
set.pumheight = 10                      -- Popup menu height
set.spelllang = 'en,es'                 -- Corregir palabras usando diccionarios en inglés y español
-- ────────────────────────────────────────────────────────────


-- ╭──────────────────────────────────────────────────────────╮
-- │                      Miscellaneous                       │
-- ╰──────────────────────────────────────────────────────────╯
set.clipboard:append('unnamedplus')     -- Habilita el portapapeles en el sistema
set.sessionoptions:append('globals')    -- store global variables
set.formatoptions:remove('cro')         -- Stop newline continution of comment
set.shortmess:append('c')               -- Don't pass messages to |ins-completion-menu|
set.updatetime = 300                    -- Change updatetime
set.timeoutlen = 500                    -- time to wait for a mapped sequence to complete
set.undofile = true                     -- Enable persistent undo
set.swapfile = false                    -- disable creates a swapfile
set.pastetoggle = '<F2>'                -- toggles the paste option
set.autoread = true                     -- Recarga el archivo si es modificado por una fuente externa
set.backup = false                      -- disable creating backup files
set.writebackup = false                 -- if a file is being edited by another program it is not allowed to be edited
set.hidden = true                       -- TextEdit might fail if hidden is not set.
-- set.scrolloff = 10                   -- lineas por debajo o enciam del cursor
-- set.sidescrolloff = 10               -- lineas a los laterales del cursor
set.completeopt = {'menuone', 'noselect'}-- Completion engine options
-- ────────────────────────────────────────────────────────────


-- ╭──────────────────────────────────────────────────────────╮
-- │                          Indent                          │
-- ╰──────────────────────────────────────────────────────────╯
set.autoindent = true                   -- Habilita el autoidentado
set.smartindent = true                  -- habilita el identado inteligente
-- set.cindent = true                      -- Identacion de llaves
set.tabstop = 4                         -- insert 4 spaces for a tab
set.shiftwidth = 4                      -- number of spaces inserted for each indentation
set.softtabstop = 4                     -- number of spaces that a <Tab> counts for while performing editing operations
set.shiftround = true                   -- round indent to multiple of shiftwidth
set.expandtab = true                    -- Insertar espacios en lugar de <Tab>s
-- ────────────────────────────────────────────────────────────


-- ╭──────────────────────────────────────────────────────────╮
-- │                        Busquedas                         │
-- ╰──────────────────────────────────────────────────────────╯
set.ignorecase = true                   -- Ignorar mayúsculas al hacer una búsqueda
set.smartcase = true                    -- No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set.incsearch = true                    -- Busqueda incremental
set.hlsearch = true                     -- Highlights search results
-- ────────────────────────────────────────────────────────────


-- ╭──────────────────────────────────────────────────────────╮
-- │                         Folding                          │
-- ╰──────────────────────────────────────────────────────────╯
set.foldenable = true                   -- Activa folding
set.foldlevelstart = 10                 -- 10 folds no closed
set.foldmethod = 'expr'                 -- Basado en expr
set.foldexpr = 'nvim_treesitter#foldexpr()'
-- ────────────────────────────────────────────────────────────
