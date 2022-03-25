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
echo "#  [2] Remover Bloatwares (Para Projeto Pixel A10)               #"
echo "#  [3] Remover Bloatwares (Para Projeto PE+ A11)                 #"
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

1) echo "Iniciando processo, aguarde..."; chmod a+x scripts/bloatwares_stock_lite.sh && ./scripts/bloatwares_stock_lite.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; chmod a+x scripts/bloatwares_pe.sh && ./scripts/bloatwares_pe.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; chmod a+x scripts/bloatwares_pe_plus.sh && ./scripts/bloatwares_pe_plus.sh && echo "Concluído!" ;;
4) clear && ./MAKE.sh ;;
5) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

