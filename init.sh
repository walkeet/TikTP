su
while true; do
    echo "Если у вас 2 SIM-карты - то нажмите 2, если у вас 1 SIM-карта - то нажмите 1."
    read -n 1 input  # Чтение одного символа
    echo  # Печать новой строки

    case $input in
        1)
          su -c setprop gsm.operator.iso-country by
su -c setprop gsm.sim.operator.iso-country by
            ;;
        2)
              su -c setprop gsm.operator.iso-country by,by
su -c setprop gsm.sim.operator.iso-country by,by
            ;;
        *)
            echo "Произошла непредвиденная ошибка! Если у вас 2 SIM-карты - то нажмите 2, если у вас 1 SIM-карта - то нажмите 1."
            ;;
    esac
done
