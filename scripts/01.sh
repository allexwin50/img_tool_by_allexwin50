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
chmod a+x Firmware_extractor-master/extractor.sh
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
echo "#  [1] Extrair imagens a partir da Firmware Stock.zip            #"
echo "#       Renomeie a stock ROM para stock.zip                      #"
echo "#                       ------------------                       #"
echo "#  [2] Converter super sparse para super.img                     #"
echo "#  [3] Extrair imagens a partir da super.img                     #"
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

1) echo "Iniciando processo, aguarde..."; ./scripts/extract_stock_zip.sh && sudo rm -rf Firmware_extractor-master/out/boot.img; sudo rm -rf Firmware_extractor-master/out/dtbo.img; sudo rm -rf Firmware_extractor-master/out/recovery.img; sudo mv Firmware_extractor-master/out/tmp/super.img.raw Firmware_extractor-master/out/super.img; sudo rm -rf Firmware_extractor-master/out/tmp; sudo mv Firmware_extractor-master/out/* ./; sudo mv Firmware_extractor-master/stock.zip ./stock.zip; sudo rm -rf Firmware_extractor-master/out; echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/raw_super.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; ./scripts/unpack_super.sh && echo "Concluído!" ;;
4) clear && ./MAKE.sh ;;
5) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

