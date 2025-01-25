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
echo "#             --- SOMENTE PARA SAMSUNG DEVICES ---               #"
echo "#  [8] Recriar system, odm, product, vendor, optics, prism -rw   #"
echo "#  [9] Otimizar system, odm, product, vendor, optics, prism      #"
echo "#                       ------------------                       #"
echo "#  [10] Converter oem sparse para oem.img                        #"
echo "#  [11] Recriar oem -rw                                          #"
echo "#  [12] Otimizar oem                                             #"
echo "#                       ------------------                       #"
echo "#  [13] Voltar para o menu principal                             #"
echo "#  [14] Sair                                                     #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; ./scripts/raw_system.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/create_system_gsi.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; ./scripts/create_system_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
5) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; ./scripts/create_system_new.sh && ./scripts/create_system_ext_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
7) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && ./scripts/optimize_system_ext.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; ./scripts/create_system_new.sh && ./scripts/create_odm_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && ./scripts/create_optics_new.sh && ./scripts/create_prism_new.sh && echo "Concluído!" ;;
9) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && ./scripts/optimize_odm.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && ./scripts/optimize_optics.sh && ./scripts/optimize_prism.sh && echo "Concluído!" ;;
10) echo "Iniciando processo, aguarde..."; ./scripts/raw_oem.sh && echo "Concluído!" ;;
11) echo "Iniciando processo, aguarde..."; ./scripts/create_oem_new.sh && echo "Concluído!" ;;
12) echo "Iniciando processo, aguarde..."; ./scripts/optimize_oem.sh && echo "Concluído!" ;;
13) clear && ./MAKE.sh ;;
14) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

