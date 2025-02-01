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
echo "#  [13] Montar optics.img                                        #"
echo "#  [14] Desmontar optics.img                                     #"
echo "#                       ------------------                       #"
echo "#  [15] Montar prism.img                                         #"
echo "#  [16] Desmontar prism.img                                      #"
echo "#                       ------------------                       #"
echo "#  [17] Montar mods.img somente leitura                          #"
echo "#  [18] Montar mods.img                                          #"
echo "#  [19] Desmontar mods.img                                       #"
echo "#                       ------------------                       #"
echo "#  [20] Voltar para o menu principal                             #"
echo "#  [21] Sair                                                     #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p system_new; sudo mount -rw system_new.img system_new && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; umount -f system_new && sudo rm -rf system_new; echo "Concluído!" ;;
3) [ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p system_ext_new; sudo mount -rw system_ext_new.img system_ext_new && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; umount -f system_ext_new && sudo rm -rf system_ext_new; echo "Concluído!" ;;
5) [ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p product_new; sudo mount -rw product_new.img product_new && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; umount -f product_new && sudo rm -rf product_new; echo "Concluído!" ;;
7) [ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p vendor_new; sudo mount -rw vendor_new.img vendor_new && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; umount -f vendor_new && sudo rm -rf vendor_new; echo "Concluído!" ;;
9) [ ! -e "oem_new.img" ] && echo "Esta faltando o arquivo oem_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p oem_new; sudo mount -rw oem_new.img oem_new && echo "Concluído!" ;;
10) echo "Iniciando processo, aguarde..."; umount -f oem_new && sudo rm -rf oem_new; echo "Concluído!" ;;
11) [ ! -e "odm_new.img" ] && echo "Esta faltando o arquivo odm_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p odm_new; sudo mount -rw odm_new.img odm_new && echo "Concluído!" ;;
12) echo "Iniciando processo, aguarde..."; umount -f odm_new && sudo rm -rf odm_new; echo "Concluído!" ;;
13) [ ! -e "optics.img" ] && echo "Esta faltando o arquivo optics.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p optics; sudo mount -rw optics.img optics && echo "Concluído!" ;;
14) echo "Iniciando processo, aguarde..."; umount -f optics && sudo rm -rf optics; echo "Concluído!" ;;
15) [ ! -e "prism.img" ] && echo "Esta faltando o arquivo prism.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p prism; sudo mount -rw prism.img prism && echo "Concluído!" ;;
16) echo "Iniciando processo, aguarde..."; umount -f prism && sudo rm -rf prism; echo "Concluído!" ;;
17) [ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p mods; sudo mount -r mods.img mods && echo "Concluído!" ;;
18) [ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir -p mods; sudo mount -rw mods.img mods && echo "Concluído!" ;;
19) echo "Iniciando processo, aguarde..."; umount -f mods && sudo rm -rf mods; echo "Concluído!" ;;
20) clear && ./MAKE.sh ;;
21) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

