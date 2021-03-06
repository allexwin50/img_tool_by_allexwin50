#!/usr/bin/env bash

x="teste"
menu ()
{
while true $x != "teste"
do
clear
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Montar system_new.img                                     #"
echo "#  [2] Desmontar system_new.img                                  #"
echo "#                       ------------------                       #"
echo "#  [3] Montar system_ext_new.img                                 #"
echo "#  [4] Desmontar system_ext_new.img                              #"
echo "#                       ------------------                       #"
echo "#  [5] Montar product_new.img                                    #"
echo "#  [6] Desmontar product_new.img                                 #"
echo "#                       ------------------                       #"
echo "#  [7] Montar vendor_new.img                                     #"
echo "#  [8] Desmontar vendor_new.img                                  #"
echo "#                       ------------------                       #"
echo "#  [9] Montar oem_new.img                                        #"
echo "#  [10] Desmontar oem_new.img                                    #"
echo "#                       ------------------                       #"
echo "#  [11] Voltar para o menu principal                             #"
echo "#  [12] Sair                                                     #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_new; sudo mount -rw system_new.img system_new && echo "Conclu??do!" ;;
2) echo "Iniciando processo, aguarde..."; umount system_new && sudo rm -rf system_new; echo "Conclu??do!" ;;
3) [ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_ext_new; sudo mount -rw system_ext_new.img system_ext_new && echo "Conclu??do!" ;;
4) echo "Iniciando processo, aguarde..."; umount system_ext_new && sudo rm -rf system_ext_new; echo "Conclu??do!" ;;
5) [ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir product_new; sudo mount -rw product_new.img product_new && echo "Conclu??do!" ;;
6) echo "Iniciando processo, aguarde..."; umount product_new && sudo rm -rf product_new; echo "Conclu??do!" ;;
7) [ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir vendor_new; sudo mount -rw vendor_new.img vendor_new && echo "Conclu??do!" ;;
8) echo "Iniciando processo, aguarde..."; umount vendor_new && sudo rm -rf vendor_new; echo "Conclu??do!" ;;
9) [ ! -e "oem_new.img" ] && echo "Esta faltando o arquivo oem_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir oem_new; sudo mount -rw oem_new.img oem_new && echo "Conclu??do!" ;;
10) echo "Iniciando processo, aguarde..."; umount oem_new && sudo rm -rf oem_new; echo "Conclu??do!" ;;
11) clear && ./MAKE.sh ;;
12) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Op????o inv??lida!"; esac done } && menu

