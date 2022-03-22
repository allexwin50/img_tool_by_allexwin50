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
chmod a+x extractor.sh
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

1) echo "Iniciando processo, aguarde..."; ./scripts/bloatwares_stock_lite.sh && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/bloatwares_pe.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; ./scripts/bloatwares_pe_plus.sh && echo "Concluído!" ;;
4) clear && ./MAKE.sh ;;
5) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

