#!/usr/bin/env bash

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Remover Bloatwares (Para Projeto Stock Lite)              #"
echo "#                       ------------------                       #"
echo "#  [2] Voltar para o menu principal                              #"
echo "#  [3] Sair                                                      #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; ./scripts/bloatwares_stock_lite.sh && echo "Concluído!" ;;
2) clear && ./MAKE.sh ;;
3) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

