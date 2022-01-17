local set = vim.opt
vim.cmd('syntax on')                    -- Habilita syntax highlight
set.number = true                       -- Muestra los numeros de las lineas
set.rnu = true                          -- Numeros de linea relativos
set.numberwidth = 1                     -- Numeros de columna mas ajustados
set.cursorline = true                   -- Resalta la linea actual
set.title = true                        -- Muestra el nombre del archivo en la ventana de la terminal
set.splitbelow = true                   -- Horizontal splits will automatically be below
set.splitright = true                   -- Vertical splits will automatically be to the right
set.mouse='a'                           -- Habilita la integracion con el mouse
set.colorcolumn='120'                     -- Muestra la columna limite a 120 caracteres
set.wrap = false                        -- No dividir la línea si es muy larga
set.wildmenu = true                     -- Autocompletado para la barra de comandos
set.autoindent = true                   -- Habilita el autoidentado
set.smartindent = true                  -- habilita el identado inteligente
set.cindent = true                      -- Identacion de llaves
set.showmatch = true                    -- Señala [{()}]
set.autoread = true                     -- Recarga el archivo si es modificado por una fuente externa
set.clipboard:append('unnamedplus')     -- Habilita el portapapeles en el sistema
set.formatoptions:remove('cro')         -- Stop newline continution of comment
set.updatetime = 200                    -- Change updatetime
set.cmdheight = 1
set.swapfile = false


--Tabulaciones
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.shiftround = true
set.expandtab = true  -- Insertar espacios en lugar de <Tab>s
set.smarttab = true

--Busquedas
set.ignorecase = true  -- Ignorar mayúsculas al hacer una búsqueda
set.smartcase = true  -- No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set.incsearch = true -- Busqueda incremental
set.hlsearch = true -- Highlights search results


set.spelllang = 'en,es'  -- Corregir palabras usando diccionarios en inglés y español

-- Folding (ocultado de bloques anidados)
set.foldenable = true   -- Activa folding
set.foldlevelstart = 10 -- Dobla a partir de 10.
set.foldnestmax = 10  -- Máximo de 10
set.foldmethod = 'indent' -- Basado en identado

-- set encoding=utf-8 -- Habilita utf-8
set.laststatus = 2

-- Display options
set.showmode = true
set.showcmd = true


set.termguicolors = true --Activa true colors en la terminal

-- TextEdit might fail if hidden is not set.
set.hidden = true

-- Some servers have issues with backup files, see #649.
set.backup = false
set.writebackup = false

-- Don't pass messages to |ins-completion-menu|.
set.shortmess:append('c')
