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
echo "#                       ------------------                       #"
echo "#  [4] Voltar para o menu principal                              #"
echo "#  [5] Sair                                                      #"
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
4) clear && ./MAKE.sh ;;
5) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

