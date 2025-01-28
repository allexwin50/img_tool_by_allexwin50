#!/usr/bin/env bash

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Mods.img para system.img                                  #"
echo "#  [2] Mods.img para system.img e product.img                    #"
echo "#  [3] Mods.img para system.img, system_ext.img e product.img    #"
echo "#  [4] mods.img para samsung                                     #"
echo "#                       ------------------                       #"
echo "#  [5] Voltar para o menu principal                              #"
echo "#  [6] Sair                                                      #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; ./scripts/sincronize_system.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/sincronize_system_product.sh  && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; ./scripts/sincronize_system_system_ext_product.sh  && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; ./scripts/sincronize_samsung.sh  && echo "Concluído!" ;;
5) clear && ./MAKE.sh ;;
6) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

