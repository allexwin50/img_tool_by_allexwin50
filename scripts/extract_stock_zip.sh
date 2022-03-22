[ ! -e "stock.zip" ] && echo "Esta faltando o arquivo stock.zip, renomeie sua stock rom para stock.zip para que possamos prosseguir..." && exit
sudo './extractor.sh' 'stock.zip'
sudo rm -rf out/boot.img
sudo rm -rf out/dtbo.img
sudo rm -rf out/recovery.img
sudo mv out/tmp/super.img.raw out/super_raw.img
sudo rm -rf out/tmp
sudo mv out/* ./
sudo rm -rf out/

