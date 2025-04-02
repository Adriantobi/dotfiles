local M = {}

M.terminal_buffers = {
	below = nil,
	above = nil,
}

function M.toggle_terminal(position)
	local opposite_pos = position == "below" and "above" or "below"

	-- Check if there's a visible terminal in the opposite position
	local opposite_buf = M.terminal_buffers[opposite_pos]
	if opposite_buf and vim.api.nvim_buf_is_valid(opposite_buf) then
		local opposite_win = vim.fn.bufwinid(opposite_buf)
		if opposite_win ~= -1 then
			-- Move the existing terminal to the new position
			vim.api.nvim_win_close(opposite_win, false)
			M.terminal_buffers[opposite_pos] = nil

			-- Reopen in new position
			if position == "below" then
				vim.cmd.new()
				vim.cmd.wincmd("J")
			else
				vim.cmd.new()
				vim.cmd.wincmd("K")
			end
			vim.api.nvim_win_set_height(0, 14)
			vim.wo.winfixheight = true
			vim.api.nvim_set_current_buf(opposite_buf)
			M.terminal_buffers[position] = opposite_buf
			return
		end
	end

	-- Check if terminal exists in requested position
	local buf = M.terminal_buffers[position]
	if buf and vim.api.nvim_buf_is_valid(buf) then
		local win = vim.fn.bufwinid(buf)
		if win ~= -1 then
			-- Close visible terminal
			vim.api.nvim_win_close(win, false)
			return
		else
			-- Reopen hidden terminal
			if position == "below" then
				vim.cmd.new()
				vim.cmd.wincmd("J")
			else
				vim.cmd.new()
				vim.cmd.wincmd("K")
			end
			vim.api.nvim_win_set_height(0, 14)
			vim.wo.winfixheight = true
			vim.api.nvim_set_current_buf(buf)
			return
		end
	end

	-- Create new terminal
	if position == "below" then
		vim.cmd.new()
		vim.cmd.wincmd("J")
	else
		vim.cmd.new()
		vim.cmd.wincmd("K")
	end
	vim.api.nvim_win_set_height(0, 14)
	vim.wo.winfixheight = true
	vim.cmd.term()
	M.terminal_buffers[position] = vim.api.nvim_get_current_buf()
end

return M
