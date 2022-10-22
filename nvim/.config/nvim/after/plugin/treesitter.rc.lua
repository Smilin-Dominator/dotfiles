local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
		"python",
		"haskell",
		"go",
		"java",
		"scala",
		"dockerfile",
  },
	rainbow = {
		enable = true,
		extended_mode = true
	},
  autotag = {
    enable = true,
  },
}

