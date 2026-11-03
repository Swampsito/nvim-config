-- Adaptador de neotest para Vitest (JS/TS).
-- Python (pytest) y Rust (cargo test) ya los añaden los extras de cada lenguaje.
return {
  {
    "nvim-neotest/neotest",
    dependencies = { "marilari88/neotest-vitest" },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
      },
    },
  },
}
