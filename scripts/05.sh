#!/usr/bin/env bash

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Compilar super a/b                                        #"
echo "#  [2] Compilar super a/b to /a (Modo Superbloco)                #"
echo "#       Slot b fica inativo e o slot a fica com todo o tamanho   #"
echo "#       Não mude para o slot b se usar esse método               #"
echo "#  [3] Compilar super a/b to /a (Modo Superbloco) SOMENTE GSI    #"
echo "#       Slot b fica inativo e o slot a fica com todo o tamanho   #"
echo "#       Não mude para o slot b se usar esse método               #"
echo "#                       ------------------                       #"
echo "# As opções abaixo são para dispositivos com partição system_ext #"
echo "#  [4] Compilar super a/b                                        #"
echo "#       Para dispositivos com partição (SYSTEM_EXT)              #"
echo "#  [5] Compilar super a/b to /a (Modo Superbloco)                #"
echo "#       Slot b fica inativo e o slot a fica com todo o tamanho   #"
echo "#       Não mude para o slot b se usar esse método               #"
echo "#  [6] Compilar super a/b to /a (Modo Superbloco) SOMENTE GSI    #"
echo "#       Slot b fica inativo e o slot a fica com todo o tamanho   #"
echo "#       Não mude para o slot b se usar esse método               #"
echo "#                       ------------------                       #"
echo "#  [7] Voltar para o menu principal                              #"
echo "#  [8] Sair                                                      #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; chmod a+x scripts/repack_super_ab.sh && ./scripts/repack_super_ab.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; chmod a+x scripts/repack_super_ab_to_a.sh && ./scripts/repack_super_ab_to_a.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_product_gsi.sh && ./scripts/create_product_gsi.sh; ./scripts/repack_super_ab_to_a_gsi.sh && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; chmod a+x scripts/repack_super_ab_com_system_ext.sh && ./scripts/repack_super_ab_com_system_ext.sh && echo "Concluído!" ;;
5) echo "Iniciando processo, aguarde..."; chmod a+x scripts/repack_super_ab_to_a_com_system_ext.sh && ./scripts/repack_super_ab_to_a_com_system_ext.sh && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_product_gsi.sh && ./scripts/create_product_gsi.sh; ./scripts/create_system_ext_gsi.sh; ./scripts/repack_super_ab_to_a_com_system_ext_gsi.sh && echo "Concluído!" ;;
7) clear && ./MAKE.sh ;;
8) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

