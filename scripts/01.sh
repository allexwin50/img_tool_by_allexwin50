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
echo "#  [4] Voltar para o menu principal                              #"
echo "#  [5] Sair                                                      #"
echo "#================================================================#"
echo "# Digite a opcao desejada:                                       #"
echo "#================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#================================================================#"

case "$x" in

1) echo "Iniciando processo, aguarde..."; unzip Firmware_extractor-master.zip & sudo cp extractor.sh Firmware_extractor-master/extractor.sh & chmod a+x Firmware_extractor-master/extractor.sh && chmod a+x scripts/extract_stock_zip.sh && ./scripts/extract_stock_zip.sh && sudo rm -rf Firmware_extractor-master/out/boot.img; sudo rm -rf Firmware_extractor-master/out/dtbo.img; sudo rm -rf Firmware_extractor-master/out/recovery.img; sudo mv Firmware_extractor-master/out/tmp/super.img.raw Firmware_extractor-master/out/super.img; sudo rm -rf Firmware_extractor-master/out/tmp; sudo mv Firmware_extractor-master/out/* ./; sudo mv Firmware_extractor-master/stock.zip ./stock.zip; sudo rm -rf Firmware_extractor-master/out; echo "Concluído!" ;;
2) echo "Iniciando processo, aguarde..."; chmod a+x scripts/raw_super.sh && ./scripts/raw_super.sh && echo "Concluído!" ;;
3) echo "Iniciando processo, aguarde..."; chmod a+x scripts/unpack_super.sh && ./scripts/unpack_super.sh && echo "Concluído!" ;;
4) clear && ./MAKE.sh ;;
5) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

