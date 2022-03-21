[ ! -e "oem.img" ] && echo "Esta faltando o arquivo oem.img para que possamos prosseguir..." && exit
cp img/oem_zero.img ./
mv oem_zero.img oem_new.img
e2fsck -yf oem_new.img
fallocate -l 500M oem_new.img
resize2fs oem_new.img 500M
e2fsck -yf oem_new.img
mkdir oem
mkdir oem_new
sudo mount -r oem.img oem
sudo mount -rw oem_new.img oem_new
sudo cp -r --preserve=all oem/* oem_new/
sudo umount oem
sudo rmdir oem
sudo find oem_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount oem_new
e2fsck -yf oem_new.img
sudo mount -rw oem_new.img oem_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

