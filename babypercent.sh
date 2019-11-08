#!/bin/bash
#======================HEADER========================================|
#AUTOR
# Jefferson 'Slackjeff' Rocha <root@slackjeff.com.br>
#
#Programa de entrada de semanas da gestação convertido
#para porcentagem
#====================================================================|

# INICIO
while true; do
    read -p "Quantas Semanas de gestação? " semanas
    if [[ ! "$semanas" =~ ^[0-9]+$ ]]; then
        echo -e "\e[31;1m----> Formato errado, apenas números.\e[m"
        continue
    else
        break
    fi
done

resultado=$(bc <<< "${semanas}*100/40")
echo -e "Você está com \e[33;1m${resultado}%\e[m da gestação"