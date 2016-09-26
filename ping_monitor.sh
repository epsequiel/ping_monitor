#!/bin/bash

UNO=1
DOS=1

printf "La cantidad de argumentos es $#\n"
printf "\e[36m[*] Los hosts que vamos a evaluar son:\n"
for i in $@
do
    printf "[*] $i \n"
done
printf "==============================================================================="
printf "\n\n"
#    do
#        printf "El argumento i: $i\n"
#    done
        

for i in $@
do
    printf "\e[36m[*] Ping a \e[38;5;226m$i:\e[36m\n"
    ping $i -c 1 -W 1 
    ESTADO=$?
    if (( $ESTADO == 0 )); then
          printf "\e[38;5;41m\e[48;5;41m\e[38;5;00m[*] El host esta activo.\e[0m\n";
    else printf "\e[48;5;197m\e[30m[*] El host NO esta activo.\e[0m\n"
    fi 
    echo -e "\e[0m"
done




#while [ $UNO != 0 ] && [ $DOS != 0 ];
#do
#    echo -e "\e[33m[*] Ping a rderechotalc"
#    ping rderechotalc -c 1 -W 1 
#    UNO=$?
#    printf "\n"
#    echo -e "\e[36m[*] Ping a rfilomuseo"
#    ping rfilomuseo -c 1 -W 1 
#    DOS=$?
#    echo -e "\e[0m"
#done

echo -e "\e[38;5;41m"
printf "================================================================================\n"
printf "[*] Todos los hosts contestan\n"
printf "================================================================================\n"
