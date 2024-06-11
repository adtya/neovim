local Plugin = { "nvimdev/dashboard-nvim" }
Plugin.dependencies = { { "nvim-tree/nvim-web-devicons" } }

Plugin.event = "VimEnter"

local logo = {
  [[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
}

Plugin.opts = {
  theme = "doom",
  disable_move = true,
  hide = {
    statusline = false,
  },
  config = {
    header = logo,
    center = {
      {
        icon = "󰦛 ",
        desc = "Restore Session",
        action = 'lua require("persistence").load()',
        key = "r",
      },
      {
        icon = "󰱼 ",
        desc = "Find Text",
        action = "Telescope live_grep",
        key = "g",
      },
      {
        icon = "󰥨 ",
        desc = "Find Files",
        action = "Telescope find_files",
        key = "f",
      },
      {
        icon = "󰒲 ",
        desc = "Lazy",
        action = "Lazy",
        key = "l",
      },
      {
        icon = "󰚰 ",
        desc = "Update",
        action = "Lazy update",
        key = "u",
      },
    },
  },
}

return Plugin
