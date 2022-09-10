[ ! -e "system_ext.img" ] && echo "Esta faltando o arquivo system_ext.img para que possamos prosseguir..." && exit
cp img/system_ext_zero.img ./
mv system_ext_zero.img system_ext_new.img
e2fsck -yf system_ext_new.img
fallocate -l 2G system_ext_new.img
resize2fs system_ext_new.img 2G
e2fsck -yf system_ext_new.img
mkdir system_ext
mkdir system_ext_new
sudo mount -r system_ext.img system_ext
sudo mount -rw system_ext_new.img system_ext_new
sudo cp -r --preserve=all system_ext/* system_ext_new/
sudo umount system_ext
sudo rmdir system_ext
sudo find system_ext_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount system_ext_new
e2fsck -yf system_ext_new.img
sudo mount -rw system_ext_new.img system_ext_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

