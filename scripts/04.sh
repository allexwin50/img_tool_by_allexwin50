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
echo "#  [11] Montar odm_new.img                                       #"
echo "#  [12] Desmontar odm_new.img                                    #"
echo "#                       ------------------                       #"
echo "#  [13] Montar optics_new.img                                    #"
echo "#  [14] Desmontar optics_new.img                                 #"
echo "#                       ------------------                       #"
echo "#  [15] Montar prism_new.img                                     #"
echo "#  [16] Desmontar prism_new.img                                  #"
echo "#                       ------------------                       #"
echo "#  [17] Voltar para o menu principal                             #"
echo "#  [18] Sair                                                     #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_new; sudo mount -rw system_new.img system_new && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; umount system_new && sudo rm -rf system_new; echo "Concluído!" ;;
3) [ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_ext_new; sudo mount -rw system_ext_new.img system_ext_new && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; umount system_ext_new && sudo rm -rf system_ext_new; echo "Concluído!" ;;
5) [ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir product_new; sudo mount -rw product_new.img product_new && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; umount product_new && sudo rm -rf product_new; echo "Concluído!" ;;
7) [ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir vendor_new; sudo mount -rw vendor_new.img vendor_new && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; umount vendor_new && sudo rm -rf vendor_new; echo "Concluído!" ;;
9) [ ! -e "oem_new.img" ] && echo "Esta faltando o arquivo oem_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir oem_new; sudo mount -rw oem_new.img oem_new && echo "Concluído!" ;;
10) echo "Iniciando processo, aguarde..."; umount oem_new && sudo rm -rf oem_new; echo "Concluído!" ;;
11) [ ! -e "odm_new.img" ] && echo "Esta faltando o arquivo odm_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir odm_new; sudo mount -rw odm_new.img odm_new && echo "Concluído!" ;;
12) echo "Iniciando processo, aguarde..."; umount odm_new && sudo rm -rf odm_new; echo "Concluído!" ;;
13) [ ! -e "optics_new.img" ] && echo "Esta faltando o arquivo optics_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir optics_new; sudo mount -rw optics_new.img optics_new && echo "Concluído!" ;;
14) echo "Iniciando processo, aguarde..."; umount optics_new && sudo rm -rf optics_new; echo "Concluído!" ;;
15) [ ! -e "prism_new.img" ] && echo "Esta faltando o arquivo prism_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir prism_new; sudo mount -rw prism_new.img prism_new && echo "Concluído!" ;;
16) echo "Iniciando processo, aguarde..."; umount prism_new && sudo rm -rf prism_new; echo "Concluído!" ;;
17) clear && ./MAKE.sh ;;
18) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

