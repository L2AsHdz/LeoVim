local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    })
    print('Installing packer, close and reopen Neovim...')
end

function G_getConfig(name)
    return string.format('require("config.%s")', name)
end

function G_getSetup(name, opts)
    local ok, req = pcall(require, name)
    if not ok then
        return
    else
        req.setup(opts)
    end
end

vim.api.nvim_command('packadd packer.nvim')

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

packer.init({
    compile_path = '~/.config/nvim/lua/packer_compiled.lua',
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'rounded' })
        end,
    },
})

local use = packer.use
packer.reset()

require('packer_compiled')
use(require('plugins.core'))
use(require('plugins.visual'))
use(require('plugins.devtools'))
use(require('plugins.gittools'))
use(require('plugins.utils'))

if packer_bootstrap then
    require('packer').sync()
end
