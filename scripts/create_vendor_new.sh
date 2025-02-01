[ ! -e "vendor.img" ] && echo "Esta faltando o arquivo vendor.img para que possamos prosseguir..." && exit
cp img/vendor_zero.img ./
mv vendor_zero.img vendor_new.img
e2fsck -yf vendor_new.img
fallocate -l 2048M vendor_new.img
resize2fs vendor_new.img 2048M
e2fsck -yf vendor_new.img
mkdir -p vendor
mkdir -p vendor_new
sudo mount -r vendor.img vendor
sudo mount -rw vendor_new.img vendor_new
sudo cp -r --preserve=all vendor/* vendor_new/
sudo umount -f  vendor
sudo rmdir vendor
sudo find vendor_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount -f  vendor_new
e2fsck -yf vendor_new.img
sudo mount -rw vendor_new.img vendor_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

