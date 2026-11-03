# nvim-config

Mi configuración de Neovim, basada en [LazyVim](https://github.com/LazyVim/LazyVim). Se usa la misma en Windows y en WSL (Ubuntu).

## Qué incluye

- **Tema "Volume Up"**: paleta a juego con mi esquema de Windows Terminal, con fondo transparente. En WSL detecta el sistema y usa la variante "Volume Up Ubuntu".
- **Lenguajes**: TypeScript/JavaScript, Tailwind, Prisma, Python, Rust, SQL, Docker, YAML, TOML, JSON y Markdown.
- **Emmet** en HTML, CSS y JSX/TSX.
- **Edición**: harpoon2, inc-rename, mini-surround y mini-hipatterns.

## Instalación

Requisitos: Neovim ≥ 0.11, git, ripgrep, fd, un compilador de C, Node.js y una Nerd Font.

**Windows**

```powershell
git clone https://github.com/Swampsito/nvim-config $env:LOCALAPPDATA\nvim
```

**Linux / WSL**

```bash
git clone https://github.com/Swampsito/nvim-config ~/.config/nvim
```

Al abrir `nvim` por primera vez se instalan los plugins y las herramientas de cada lenguaje.

## Sincronizar

```bash
git pull          # traer cambios hechos en el otro sistema
git add -A && git commit -m "..." && git push
```
