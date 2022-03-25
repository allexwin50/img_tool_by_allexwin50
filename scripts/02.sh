#!/usr/bin/env bash

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Converter system sparse para system.img                   #"
echo "#  [2] Recriar system.img -rw (Também serve para GSI)            #"
echo "#  [3] Otimizar system.img                                       #"
echo "#                       ------------------                       #"
echo "#  [4] Recriar system, product, vendor -rw                       #"
echo "#  [5] Otimizar system, product, vendor                          #"
echo "#                       ------------------                       #"
echo "#  [6] Recriar system, system_ext, product, vendor -rw           #"
echo "#  [7] Otimizar system, system_ext, product, vendor              #"
echo "#                       ------------------                       #"
echo "#  [8] Converter oem sparse para oem.img                         #"
echo "#  [9] Recriar oem -rw                                           #"
echo "#  [10] Otimizar oem                                             #"
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

1) echo "Iniciando processo, aguarde..."; chmod a+x scripts/raw_system.sh && ./scripts/raw_system.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_system_gsi.sh && ./scripts/create_system_gsi.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; chmod a+x scripts/optimize_system.sh && ./scripts/optimize_system.sh && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_system_new.sh && ./scripts/create_system_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
5) echo "Iniciando processo, aguarde..."; chmod a+x scripts/optimize_system.sh && ./scripts/optimize_system.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_system_new.sh && ./scripts/create_system_new.sh && ./scripts/create_system_ext_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
7) echo "Iniciando processo, aguarde..."; chmod a+x scripts/optimize_system.sh && ./scripts/optimize_system.sh && ./scripts/optimize_system_ext.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; chmod a+x scripts/raw_oem.sh && ./scripts/raw_oem.sh && echo "Concluído!" ;;
9) echo "Iniciando processo, aguarde..."; chmod a+x scripts/create_oem_new.sh && ./scripts/create_oem_new.sh && echo "Concluído!" ;;
10) echo "Iniciando processo, aguarde..."; chmod a+x scripts/optimize_oem.sh && ./scripts/optimize_oem.sh && echo "Concluído!" ;;
11) clear && ./MAKE.sh ;;
12) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

