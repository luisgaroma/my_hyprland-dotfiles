# my_hyprland-dotfiles

Mi configuración personal de Hyprland en CachyOS/Arch Linux, basada originalmente en [arch-hyprland](https://github.com/binnewbs/arch-hyprland) de binnewbs (a su vez basado en los scripts de JaKooLit), con ajustes propios para Hyprland 0.56+.

## Qué incluye

- `hypr` — configuración de Hyprland (binds, animaciones, window rules, scripts)
- `waybar` — barra de estado
- `kitty` — terminal
- `rofi` — launcher / selector de wallpapers
- `swaync` — notificaciones
- `fish` — shell
- `matugen` — generación de colores dinámicos a partir del wallpaper
- `fastfetch` — info del sistema en terminal
- `btop` — monitor de sistema
- `cava` — visualizador de audio
- `yazi` — file manager de terminal
- `wlogout` — menú de logout

## Paquetes necesarios

```bash
sudo pacman -S hyprland waybar kitty rofi swaync fish matugen fastfetch btop cava yazi wlogout \
    hypridle hyprlock hyprsunset hyprpicker batsignal brightnessctl playerctl \
    nm-applet blueman network-manager-applet nautilus grim \
    xdg-desktop-portal-hyprland
```

> Revisa y ajusta esta lista según lo que realmente uses — puede que falte algo específico de tu instalación (ej. awww-daemon para wallpapers, si no viene con algún paquete de arriba).

## Instalación en una PC nueva

```bash
git clone https://github.com/luisgaroma/my_hyprland-dotfiles.git
cp -r my_hyprland-dotfiles/.config/* ~/.config/
```

Después reinicia sesión (o Hyprland) para que todo cargue correctamente.

## Notas

- El symlink `~/.config/hypr/current_wallpaper` no se incluye en el repo (se genera automáticamente al elegir un wallpaper con el script `wppicker.sh`).
- Ajusté la sintaxis de `windowrule`/`tag`/`layerrule` para que sea compatible con Hyprland 0.53+.
