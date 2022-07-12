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
chmod a+x scripts/06.sh
chmod a+x scripts/bloatwares_pe_plus.sh
chmod a+x scripts/bloatwares_pe.sh
chmod a+x scripts/bloatwares_stock_lite.sh
chmod a+x scripts/clear.sh
chmod a+x scripts/create_oem_new.sh
chmod a+x scripts/create_product_gsi.sh
chmod a+x scripts/create_product_new.sh
chmod a+x scripts/create_system_ext_gsi.sh
chmod a+x scripts/create_system_ext_new.sh
chmod a+x scripts/create_system_gsi.sh
chmod a+x scripts/create_system_new.sh
chmod a+x scripts/create_vendor_new.sh
chmod a+x scripts/extractor.sh
chmod a+x scripts/extract_stock_zip.sh
chmod a+x scripts/Firmware_extractor-master.zip
chmod a+x scripts/optimize_oem.sh
chmod a+x scripts/optimize_product.sh
chmod a+x scripts/optimize_system_ext.sh
chmod a+x scripts/optimize_system.sh
chmod a+x scripts/optimize_vendor.sh
chmod a+x scripts/raw_oem.sh
chmod a+x scripts/raw_super.sh
chmod a+x scripts/raw_system.sh
chmod a+x scripts/repack_super_ab_com_system_ext.sh
chmod a+x scripts/repack_super_ab.sh
chmod a+x scripts/repack_super_ab_to_a_com_system_ext_gsi.sh
chmod a+x scripts/repack_super_ab_to_a_com_system_ext.sh
chmod a+x scripts/repack_super_ab_to_a_gsi.sh
chmod a+x scripts/repack_super_ab_to_a.sh
chmod a+x scripts/sincronize_system_product.sh
chmod a+x scripts/sincronize_system.sh
chmod a+x scripts/sincronize_system_system_ext_product.sh
chmod a+x scripts/unpack_super.sh

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#========================================================================#"
echo "#                               = Menu =                                 #"
echo "#========================================================================#"
echo "#       Ferramenta de descriptografia de imagens android                 #"
echo "#       Feito por @allexwin50                                            #"
echo "#========================================================================#"
echo "#  [1] Extração de imagens (Stock ROMs ou super.img)                     #"
echo "#  [2] Recriar imagens de sistema (system, system_ext, product e vendor) #"
echo "#  [3] Remover bloatwares                                                #"
echo "#  [4] Montar e desmontar partições                                      #"
echo "#  [5] Compilar super partição                                           #"
#echo "#  [6] Sincronizar mods.img com a nova imagem                            #"
echo "#  [6] Limpar residuos ao concluir todo o processo                       #"
echo "#  [7] Sair                                                              #"
echo "#========================================================================#"
echo "# Digite a opcao desejada:                                               #"
echo "#========================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#========================================================================#"

case "$x" in

1) clear && ./scripts/01.sh ;;
2) clear && ./scripts/02.sh ;;
3) clear && ./scripts/03.sh ;;
4) clear && ./scripts/04.sh ;;
5) clear && ./scripts/05.sh ;;
#6) clear && chmod a+x scripts/06.sh && ./scripts/06.sh ;;
6) clear && ./scripts/clear.sh ;;
7) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

