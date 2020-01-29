#!/usr/bin/env sh

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

# Screen layout config
# Only link the relevant script
[ -f "$HOME/.config/arandr/blackbird.sh" ] && . ~/.config/arandr/blackbird.sh
[ -f "$HOME/.config/arandr/firebird.sh" ] && . ~/.config/arandr/firebird.sh

exec /usr/bin/i3
