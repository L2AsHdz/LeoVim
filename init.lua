local ok, impatient = pcall(require, 'impatient')
if ok then impatient.enable_profile() end
require('settings')
require('plugins')
require('maps')
require('autocommands')
