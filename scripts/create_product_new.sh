[ ! -e "product.img" ] && echo "Esta faltando o arquivo product.img para que possamos prosseguir..." && exit
cp img/product_zero.img ./
mv product_zero.img product_new.img
e2fsck -yf product_new.img
fallocate -l 5000M product_new.img
resize2fs product_new.img 5000M
e2fsck -yf product_new.img
mkdir product
mkdir product_new
sudo mount -r product.img product
sudo mount -rw product_new.img product_new
sudo cp -r --preserve=all product/* product_new/
sudo umount product
sudo rmdir product
sudo find product_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount product_new
e2fsck -yf product_new.img
sudo mount -rw product_new.img product_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

