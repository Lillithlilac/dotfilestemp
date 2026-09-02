require("no-status"):setup()
require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}
require("omp"):setup({ config = "~/.config/dracula.omp.json" })
-- require("omp"):setup({ config = "~/.config/catppucin.omp.json" })
-- require("omp"):setup()
require("bunny"):setup({
  hops = {
    { key = "/",          path = "/",                                    },
    { key = "~",          path = "~",              desc = "Home"         },
    { key = "m",          path = "~/Music",        desc = "Music"        },
    { key = "M",          path = "~/Documents/Manga",        desc = "Manga"},
    { key = "d",          path = "~/Desktop",      desc = "Desktop"      },
    { key = "D",          path = "~/Documents",    desc = "Documents"    },
    { key = { "c", "c" }, path = "~/.config",      desc = "Config files" },
    { key = { "c", "n" }, path = "~/.config/niri",      desc = "niri" },
    { key = { "c", "v" }, path = "~/.config/nvim",      desc = "nvim" },
    { key = { "c", "y" }, path = "~/.config/yazi",      desc = "yazi" },
    { key = { "l", "s" }, path = "~/.local/share", desc = "Local share"  },
    { key = { "l", "b" }, path = "~/.local/bin",   desc = "Local bin"    },
    { key = { "l", "t" }, path = "~/.local/state", desc = "Local state"  },
    -- key and path attributes are required, desc is optional
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = false, -- Enable ephemeral hops, default is true
  tabs = true, -- Enable tab hops, default is true
  notify = false, -- Notify after hopping, default is false
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})
