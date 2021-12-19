#bash

if pacmd list-cards | grep -q '<bluez_card.14_3F_A6_BA_9F_74>'
    then
        if pacmd list-cards | grep -q 'active profile: <a2dp_sink_ldac>';
            then pactl set-card-profile bluez_card.14_3F_A6_BA_9F_74 headset_head_unit | notify-send --hint int:transient:1 "WH-1000XM4" "Headset Profile"
        else pactl set-card-profile bluez_card.14_3F_A6_BA_9F_74 a2dp_sink_ldac | notify-send --hint int:transient:1 "WH-1000XM4" "LDAC Profile"
        fi
else notify-send --hint int:transient:1 "WH-1000XM4" "Disconnected"
fi
