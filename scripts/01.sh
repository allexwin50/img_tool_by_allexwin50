#!/usr/bin/env bash

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
echo "#  [4] Converter optics e prism sparse para optics e prism imgs  #"
echo "#                       ------------------                       #"
echo "#  [5] Voltar para o menu principal                              #"
echo "#  [6] Sair                                                      #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) [ ! -e "stock.zip" ] && echo "Esta faltando o arquivo stock.zip, renomeie sua stock rom para stock.zip para que possamos prosseguir..." && exit
echo "Iniciando processo, aguarde..."; sudo cp scripts/Firmware_extractor-master.zip ./; unzip Firmware_extractor-master.zip; sudo rm -rf Firmware_extractor-master/extractor.sh; sudo cp scripts/extractor.sh Firmware_extractor-master/; rm -rf Firmware_extractor-master.zip; clear; ./scripts/extract_stock_zip.sh; sudo rm -rf Firmware_extractor-master/out/boot.img; sudo rm -rf Firmware_extractor-master/out/dtbo.img; sudo rm -rf Firmware_extractor-master/out/recovery.img; sudo mv Firmware_extractor-master/out/tmp/super.img.raw Firmware_extractor-master/out/super.img; sudo rm -rf Firmware_extractor-master/out/tmp; sudo mv Firmware_extractor-master/out/* ./; sudo mv Firmware_extractor-master/stock.zip ./stock.zip; sudo rm -rf Firmware_extractor-master; clear; echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; ./scripts/raw_super.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; ./scripts/unpack_super.sh && echo "Concluído!" ;;
4) echo "Iniciando processo, aguarde..."; ./scripts/raw_optics_prism.sh && echo "Concluído!" ;;
5) clear && ./MAKE.sh ;;
6) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

