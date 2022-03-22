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
echo "#  [1] Montar system_new.img                                     #"
echo "#  [2] Desmontar system_new.img                                  #"
echo "#                       ------------------                       #"
echo "#  [3] Montar system_ext_new.img                                 #"
echo "#  [4] Desmontar system_ext_new.img                              #"
echo "#                       ------------------                       #"
echo "#  [5] Montar product_new.img                                    #"
echo "#  [6] Desmontar product_new.img                                 #"
echo "#                       ------------------                       #"
echo "#  [7] Montar vendor_new.img                                     #"
echo "#  [8] Desmontar vendor_new.img                                  #"
echo "#                       ------------------                       #"
echo "#  [9] Montar oem_new.img                                        #"
echo "#  [10] Desmontar oem_new.img                                    #"
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

1) [ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_new; mount -rw system_new.img && echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; umount system_new && rm system_new; echo "Concluído!" ;;
3) [ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir system_ext_new; mount -rw system_ext_new.img && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; umount system_ext_new && rm system_ext_new; echo "Concluído!" ;;
5) [ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir product_new; mount -rw product_new.img && echo "Concluído!" ;;
6) echo "Iniciando processo, aguarde..."; umount product_new && rm product_new; echo "Concluído!" ;;
7) [ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir vendor_new; mount -rw vendor_new.img && echo "Concluído!" ;;
8) echo "Iniciando processo, aguarde..."; umount vendor_new && rm vendor_new; echo "Concluído!" ;;
9) [ ! -e "oem_new.img" ] && echo "Esta faltando o arquivo oem_new.img para que possamos prosseguir..." && menu
echo "Iniciando processo, aguarde..."; mkdir oem_new; mount -rw oem_new.img && echo "Concluído!" ;;
10) echo "Iniciando processo, aguarde..."; umount oem_new && rm oem_new; echo "Concluído!" ;;
11) clear && ./MAKE.sh ;;
12) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

