#!/bin/bash
while true
do
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    if [ $battery_level -le 30 ]; then
       notify-send --urgency=critical "Batería baja" "Conecte inmediatamente el cargador" --icon=battery-level-20-symbolic
    elif [ $battery_level -le 15 ]; then
       notify-send --urgency=critical "Batería baja" "Conecte inmediatamente el cargador" --icon=battery-level-10-symbolic
    elif [ $battery_level -ge 95 ]; then
       notify-send --urgency=critical "Batería cargada" "Puede desconectar el cargador" --icon=battery-level-100-symbolic
    elif [ $battery_level -le 10 ]; then
        systemctl poweroff
    fi

    sleep 120 # 120 seconds or 2 minutes

    # write crontab -e and write @reboot /path/to/the/file
done
