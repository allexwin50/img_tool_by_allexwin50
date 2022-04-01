[ ! -e "stock.zip" ] && echo "Esta faltando o arquivo stock.zip, renomeie sua stock rom para stock.zip para que possamos prosseguir..." && exit
mv stock.zip Firmware_extractor-master/stock.zip
cd Firmware_extractor-master
echo "Aguarde..."
sudo './extractor.sh' 'stock.zip'

