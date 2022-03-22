[ ! -e "system.img" ] && echo "Esta faltando o arquivo system.img, renomeie a gsi para que possamos prosseguir..." && exit
cp img/system_zero.img ./
mv system_zero.img system_new.img
e2fsck -yf system_new.img
fallocate -l 4000M system_new.img
resize2fs system_new.img 4000M
e2fsck -yf system_new.img
mkdir system
mkdir system_new
sudo mount -r system.img system
sudo mount -rw system_new.img system_new
sudo cp -r --preserve=all system/* system_new/
sudo umount system
sudo rmdir system
sudo find system_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount system_new
e2fsck -yf system_new.img
sudo mount -rw system_new.img system_new
mkdir system_new/tmp
mkdir system_new/tmp/mods
mkdir system_new/tmp/system
mkdir system_new/tmp/system_ext
mkdir system_new/tmp/product
mkdir system_new/tmp/vendor
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

