local cmd = vim.api.nvim_command

local M = {}

M.split_command = function(direction)
	local winnr = vim.api.nvim_get_current_win()

	cmd('wincmd ' .. direction)
	if winnr == vim.api.nvim_get_current_win() then
		if direction == 'h' or direction == 'l' then
			cmd('wincmd v')
			cmd('wincmd ' .. direction)
		elseif direction == 'j' or direction == 'k' then
			cmd('wincmd s')
			cmd('wincmd ' .. direction)
		end
	end
end

return M
