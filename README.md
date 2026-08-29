<div align="center">

# Box UK Contrast — palette collection

**A set of calm-to-neon dark palettes for terminals, editors and UI**, plus
ready-to-use themes, a wallpaper and a folder icon. Started as a port of the
Box UK Contrast IntelliJ theme; now ships four related palettes you can mix
and match.

![Palette collection](palettes.svg)

</div>

---

## Palettes

Each palette has a JSON single-source-of-truth in [`palettes/`](palettes/)
(grounds, foreground, accents, and a full 16-color ANSI set).

| Palette | Vibe | bg | accent | JSON |
|---------|------|----|--------|------|
| **Box UK Contrast** | calm deep blue-grey + teal (Material Ocean) | `#161e22` | `#017c9d` | [`box-uk-contrast.json`](palettes/box-uk-contrast.json) |
| **Solarized Osaka** | muted teal/olive (Solarized) — port of [craftzdog's](https://github.com/craftzdog/solarized-osaka.nvim) | `#00141a` | `#2aa298` | [`solarized-osaka.json`](palettes/solarized-osaka.json) |
| **Cyberpunk: Lucy** | icy blue-white + neon cyan/magenta (Edgerunners) | `#0a0e1a` | `#37e0ff` | [`cyberpunk-lucy.json`](palettes/cyberpunk-lucy.json) |
| **Night City Mix** | the blend of all three — calm grounds, neon pop | `#0c1a1e` | `#22abbd` | [`night-city-mix.json`](palettes/night-city-mix.json) |

**Night City Mix** takes Box UK's easy-on-the-eyes grounds, Solarized Osaka's
structural teal/blue, and Lucy's neon accents, and averages them into one
coherent theme — the best of all three without the glare of full neon.

### Box UK Contrast — role reference

The flagship palette, mapped to editor/terminal roles:

| Name | Hex | Role |
|------|-----|------|
| **Blue-Grey** | `#161e22` | the ground everywhere — terminal, editor, bar |
| **Surface** | `#1b2228` / `#222c31` | panels, floats, inactive tabs |
| **Cyan** | `#017c9d` | keywords, active states, focus |
| **Teal** | `#15b8ae` | strings, cursor, links, clock |
| **Green** | `#019d76` | functions, classes, added |
| **Yellow** | `#ffcb6e` | warnings, modified |
| **Coral** | `#f77669` | errors, deleted |
| **Purple** | `#b750ae` | special, dates, numbers |
| **Grey-Blue FG** | `#b8c7cc` | body text |

Full per-palette hex (grounds, foreground, accents, 16-color ANSI) is in each
palette's JSON.

---

## Ready-to-use themes (Box UK Contrast)

Drop-in configs for the flagship palette live in [`themes/`](themes/):

| Tool | File |
|------|------|
| kitty | [`themes/kitty.conf`](themes/kitty.conf) |
| Ghostty | [`themes/ghostty`](themes/ghostty) |
| WezTerm | [`themes/wezterm.lua`](themes/wezterm.lua) |
| Alacritty | [`themes/alacritty.toml`](themes/alacritty.toml) |
| CSS variables | [`themes/boxuk.css`](themes/boxuk.css) |
| IntelliJ (source) | [`themes/intellij_boxUKContrast.jar`](themes/intellij_boxUKContrast.jar) |

> Want a terminal theme for **Solarized Osaka**, **Lucy** or **the Mix**? Read
> the hexes straight from that palette's JSON — the ANSI block maps 1:1 onto any
> terminal's 16 colors:
> ```sh
> jq -r '.ansi' palettes/cyberpunk-lucy.json
> ```

---

## Wallpaper

A matching desktop wallpaper (deep blue-grey ground, corner teal glow, subtle
grid + brand ring) lives in [`wallpapers/`](wallpapers/):

<img src="wallpapers/boxuk-contrast-1920x1080.png" width="480" alt="Box UK Contrast wallpaper" />

- [`boxuk-contrast-3840x2160.png`](wallpapers/boxuk-contrast-3840x2160.png) — 2×, for Retina / 4K
- [`boxuk-contrast-1920x1080.png`](wallpapers/boxuk-contrast-1920x1080.png) — 1×, 1080p

**macOS** — set it from the terminal:
```sh
osascript -e 'tell application "System Events" to set picture of every desktop to "'"$PWD"'/wallpapers/boxuk-contrast-3840x2160.png"'
```

---

## Folder icon

A teal recolor of the macOS folder icon, in [`extras/`](extras/):

<img src="extras/folder-icon.png" width="120" alt="Box UK teal folder icon" />

Apply it to any folder(s) with the helper script:

```sh
extras/set-folder-icon.sh ~/Desktop/my-folder ~/projects/another
```

It sets the custom icon via `NSWorkspace` (built into macOS — no extra tools).

---

## Credit

Box UK Contrast colors extracted from the **Box UK Contrast (rainglow)**
IntelliJ IDEA theme by [vonqo](https://github.com/vonqo/vonqo). Solarized Osaka
is [craftzdog/solarized-osaka.nvim](https://github.com/craftzdog/solarized-osaka.nvim).
Lucy is drawn from the *Cyberpunk: Edgerunners* Lucy color identity.

## Related

- **[dotfiles](https://github.com/kyuna0312/dotfiles)** — the full macOS dev environment themed with these palettes.
- **[aeroline](https://github.com/kyuna0312/aeroline)** — a vertical Übersicht + AeroSpace status bar, themeable with any of these palettes.

## License

MIT
