-- Tema "Volume Up": misma paleta que el esquema de Windows Terminal.
-- Usa tokyonight (ya incluido en LazyVim) como base para que todos los
-- plugins tengan colores, y le sustituye la paleta por la tuya.

local p = {
  bg = "#11142A",
  bg_dark = "#0D1022",
  black = "#1A1E38",
  selection = "#2A3058",
  gray = "#4A5078",
  comment = "#6A719E", -- un poco más claro que brightBlack para leerse bien
  fg = "#E6E8F0",
  fg_dim = "#C8CCDC",
  blue = "#5A6AC8",
  lavender = "#7D8CE0",
  mint = "#5FE0C0",
  aqua = "#8AEED6",
  green = "#7FE8B8",
  green_soft = "#A0F0CC",
  pink = "#E060A8",
  pink_soft = "#EE84C0",
  red = "#E8705A",
  coral = "#F08C78",
  cream = "#EFE2C4",
  cream_soft = "#F8EEDB",
  accent = "#5FE0C0", -- color del cursor en la terminal
}

-- En WSL se usa la variante "Volume Up Ubuntu" (morado + naranja Ubuntu)
if vim.fn.has("wsl") == 1 then
  p = vim.tbl_extend("force", p, {
    bg = "#1B1226",
    bg_dark = "#150E1E",
    black = "#261A33",
    selection = "#3A2448",
    gray = "#5A4A70",
    comment = "#7A6A92",
    fg = "#ECE6F2",
    fg_dim = "#D4CCE0",
    blue = "#7D6AC8",
    lavender = "#9D8CE0",
    cream = "#F5A05A",
    cream_soft = "#F8C08A",
    accent = "#E95420",
  })
end

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true, -- deja ver el acrílico de la terminal
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(c)
        c.bg = p.bg
        c.bg_dark = p.bg_dark
        c.bg_dark1 = p.bg_dark
        c.bg_float = p.bg_dark
        c.bg_popup = p.bg_dark
        c.bg_sidebar = p.bg_dark
        c.bg_statusline = p.black
        c.bg_highlight = p.black
        c.bg_visual = p.selection
        c.bg_search = p.selection
        c.border = p.selection
        c.border_highlight = p.accent
        c.fg = p.fg
        c.fg_dark = p.fg_dim
        c.fg_float = p.fg
        c.fg_sidebar = p.fg_dim
        c.fg_gutter = p.gray
        c.comment = p.comment
        c.dark3 = p.gray
        c.dark5 = p.comment
        c.terminal_black = p.gray

        c.blue = p.lavender -- funciones
        c.blue0 = p.selection
        c.blue1 = p.mint -- tipos
        c.blue2 = p.mint
        c.blue5 = p.aqua -- operadores
        c.blue6 = p.green_soft
        c.blue7 = p.selection
        c.cyan = p.mint
        c.teal = p.aqua
        c.green = p.green -- strings
        c.green1 = p.aqua -- propiedades
        c.green2 = p.mint
        c.magenta = p.pink -- palabras clave
        c.magenta2 = p.pink_soft
        c.purple = p.pink_soft
        c.orange = p.coral -- constantes / números
        c.red = p.red
        c.red1 = p.red
        c.yellow = p.cream -- parámetros
        c.git = { add = p.green, change = p.lavender, delete = p.red, ignore = p.gray }
        c.diff = { add = "#1C3A3A", change = "#22284A", delete = "#3A1E2A", text = "#2E3870" }
      end,
      on_highlights = function(hl, c)
        hl.CursorLineNr = { fg = p.accent, bold = true }
        hl.Cursor = { fg = p.bg, bg = p.accent }
        hl.LineNr = { fg = p.gray }
        hl.Visual = { bg = p.selection }
        hl.Search = { fg = p.bg, bg = p.cream }
        hl.IncSearch = { fg = p.bg, bg = p.accent }
        hl.FloatBorder = { fg = p.selection }
        hl.WinSeparator = { fg = p.selection }
        hl.SnacksDashboardHeader = { fg = p.accent }
        -- Logo LoudVim: nota en el color de acento y texto en degradado
        hl.LoudVimNote = { fg = vim.fn.has("wsl") == 1 and p.accent or p.pink, bold = true }
        local gradient = { p.mint, p.aqua, p.lavender, p.lavender, p.pink_soft, p.pink }
        for i, color in ipairs(gradient) do
          hl["LoudVim" .. i] = { fg = color }
        end
        hl.SnacksDashboardKey = { fg = p.pink }
        hl.SnacksDashboardIcon = { fg = p.lavender }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "tokyonight-night" },
  },
}
