function bateria --wraps='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage' --description 'alias bateria=upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage $argv
end
