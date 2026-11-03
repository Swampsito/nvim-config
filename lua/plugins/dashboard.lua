-- Pantalla de inicio "LoudVim": nota musical + texto con degradado de la paleta.
-- Los colores (LoudVimNote, LoudVim1..6) se definen en colorscheme.lua.

local note = {
  "   ▄▄▄▄▄▄▄ ",
  "   █▀▀▀▀▀█ ",
  "   █     █ ",
  "   █     █ ",
  " ▄██   ▄██ ",
  " ▀▀▀   ▀▀▀ ",
}

local text = {
  "██╗      ██████╗ ██╗   ██╗██████╗ ██╗   ██╗██╗███╗   ███╗",
  "██║     ██╔═══██╗██║   ██║██╔══██╗██║   ██║██║████╗ ████║",
  "██║     ██║   ██║██║   ██║██║  ██║██║   ██║██║██╔████╔██║",
  "██║     ██║   ██║██║   ██║██║  ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
  "███████╗╚██████╔╝╚██████╔╝██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

local function header()
  local items = {}
  for i = 1, #text do
    table.insert(items, {
      text = {
        { note[i] .. "  ", hl = "LoudVimNote" },
        { text[i], hl = "LoudVim" .. i },
      },
      align = "center",
      padding = i == #text and 2 or 0,
    })
  end
  return items
end

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          header,
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
