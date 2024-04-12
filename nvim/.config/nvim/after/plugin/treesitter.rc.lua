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
    "toml",
    "json",
    "yaml",
    "lua",
		"python",
		"haskell",
    "typescript",
    "kotlin",
    "java"
  },
	rainbow = {
		enable = true,
		extended_mode = true
	},
  autotag = {
    enable = true,
  },
}

