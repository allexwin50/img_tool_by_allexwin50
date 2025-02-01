[ ! -e "system.img" ] && echo "Esta faltando o arquivo system.img para que possamos prosseguir..." && exit
cp img/system_zero.img ./
mv system_zero.img system_new.img
e2fsck -yf system_new.img
fallocate -l 7168M system_new.img
resize2fs system_new.img 7168M
e2fsck -yf system_new.img
mkdir -p system
mkdir -p system_new
sudo mount -r system.img system
sudo mount -rw system_new.img system_new
sudo cp -r --preserve=all system/* system_new/
sudo umount -f  system
sudo rmdir system
sudo find system_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount -f  system_new
e2fsck -yf system_new.img
sudo mount -rw system_new.img system_new
mkdir -p system_new/tmp
mkdir -p system_new/tmp/mods
mkdir -p system_new/tmp/system
mkdir -p system_new/tmp/system_ext
mkdir -p system_new/tmp/product
mkdir -p system_new/tmp/vendor
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

