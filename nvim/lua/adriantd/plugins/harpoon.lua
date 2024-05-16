return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({})

		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		local keymap = vim.keymap

		keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add current file to Harpoon list" })
		keymap.set("n", "<leader>rf", function()
			harpoon:list():remove()
		end, { desc = "Remove current file from Harpoon list" })
		keymap.set("n", "<leader>oh", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })

		keymap.set("n", "<leader>na", function()
			harpoon:list():select(1)
		end, { desc = "Navigate to Harpoon item 1" })
		keymap.set("n", "<leader>ns", function()
			harpoon:list():select(2)
		end, { desc = "Navigate to harpoon item 2" })
		keymap.set("n", "<leader>nd", function()
			harpoon:list():select(3)
		end, { desc = "Navigate to harpoon item 3" })
		keymap.set("n", "<leader>nf", function()
			harpoon:list():select(4)
		end, { desc = "Navigate to harpoon item 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		keymap.set("n", "<leader>hh", function()
			harpoon:list():prev()
		end, { desc = "Navigate to previous Harpoon item" })
		keymap.set("n", "<leader>hl", function()
			harpoon:list():next()
		end, { desc = "Navigate to next Harpoon item" })
	end,
}
