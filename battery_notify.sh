#!/bin/bash
while true
do
    charging_status=`acpi -b | grep -E -w -o 'Charging|Discharging'`
    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`

    if [ "$charging_status" = "Discharging" ]; then
      if [ $battery_level -le 25 ]; then
        notify-send --urgency=critical "Batería baja" "Conecte inmediatamente el cargador" --icon=battery-level-20-symbolic
      elif [ $battery_level -le 15 ]; then
        notify-send --urgency=critical "Batería baja" "Conecte inmediatamente el cargador" --icon=battery-level-10-symbolic
      elif [ $battery_level -le 10 ]; then
        systemctl poweroff
      fi

    elif [ "$charging_status" = "Charging" ]; then
      if [ $battery_level -ge 95 ]; then
        notify-send --urgency=critical "Batería cargada" "Puede desconectar el cargador" --icon=battery-level-100-symbolic
      fi
    fi

    sleep 300 # 300 seconds or 5 minutes
done
