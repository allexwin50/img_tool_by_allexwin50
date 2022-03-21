#!/usr/bin/env bash

chmod a+x MAKE.sh
chmod a+x lpmake
chmod a+x lpunpack
chmod a+x simg2img
chmod a+x scripts/01.sh
chmod a+x scripts/02.sh
chmod a+x scripts/03.sh
chmod a+x scripts/04.sh
chmod a+x scripts/05.sh
chmod a+x scripts/extractor.sh
chmod a+x scripts/bloatwares_pe.sh
chmod a+x scripts/bloatwares_pe_plus.sh
chmod a+x scripts/bloatwares_stock_lite.sh
chmod a+x scripts/create_oem_new.sh
chmod a+x scripts/create_product_gsi.sh
chmod a+x scripts/create_product_new.sh
chmod a+x scripts/create_system_ext_gsi.sh
chmod a+x scripts/create_system_ext_new.sh
chmod a+x scripts/create_system_gsi.sh
chmod a+x scripts/create_system_new.sh
chmod a+x scripts/create_vendor_new.sh
chmod a+x scripts/extract_stock_zip.sh
chmod a+x scripts/optimize_oem.sh
chmod a+x scripts/optimize_product.sh
chmod a+x scripts/optimize_system.sh
chmod a+x scripts/optimize_system_ext.sh
chmod a+x scripts/optimize_vendor.sh
chmod a+x scripts/raw_oem.sh
chmod a+x scripts/raw_super.sh
chmod a+x scripts/raw_system.sh
chmod a+x scripts/repack_super_ab.sh
chmod a+x scripts/repack_super_ab_com_system_ext.sh
chmod a+x scripts/repack_super_ab_to_a.sh
chmod a+x scripts/repack_super_ab_to_a_com_system_ext.sh
chmod a+x scripts/repack_super_ab_to_a_com_system_ext_gsi.sh
chmod a+x scripts/repack_super_ab_to_a_gsi.sh
chmod a+x scripts/unpack_super.sh

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#================================================================#"
echo "#                           = Menu =                             #"
echo "#================================================================#"
echo "#  [1] Recriar system.img -rw (Também serve para GSI)            #"
echo "#  [2] Otimizar system.img                                       #"
echo "#                       ------------------                       #"
echo "#  [3] Recriar system, product, vendor -rw                       #"
echo "#  [4] Otimizar system, product, vendor                          #"
echo "#                       ------------------                       #"
echo "#  [5] Recriar system, system_ext, product, vendor -rw           #"
echo "#  [6] Otimizar system, system_ext, product, vendor              #"
echo "#                       ------------------                       #"
echo "#  [7] Recriar oem -rw                                           #"
echo "#  [8] Otimizar oem                                              #"
echo "#                       ------------------                       #"
echo "#  [9] Voltar para o menu principal                              #"
echo "#  [10] Sair                                                     #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; ./scripts/raw_system.sh && ./scripts/create_system_gsi.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && echo "Concluído!" ;;
3) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; ./scripts/create_system_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
5) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
[ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && menu
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; ./scripts/create_system_new.sh && ./scripts/create_system_ext_new.sh && ./scripts/create_product_new.sh && ./scripts/create_vendor_new.sh && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; ./scripts/optimize_system.sh && ./scripts/optimize_system_ext.sh && ./scripts/optimize_product.sh && ./scripts/optimize_vendor.sh && echo "Concluído!" ;;
7) echo "Iniciando processo, aguarde..."; ./scripts/raw_oem.sh && ./scripts/create_oem_new.sh && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; ./scripts/optimize_oem.sh && echo "Concluído!" ;;
9) clear && ./MAKE.sh ;;
10) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

