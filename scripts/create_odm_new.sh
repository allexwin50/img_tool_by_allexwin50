[ ! -e "odm.img" ] && echo "Esta faltando o arquivo odm.img para que possamos prosseguir..." && exit
cp img/odm_zero.img ./
mv odm_zero.img odm_new.img
e2fsck -yf odm_new.img
fallocate -l 900M odm_new.img
resize2fs odm_new.img 900M
e2fsck -yf odm_new.img
mkdir odm
mkdir odm_new
sudo mount -r odm.img odm
sudo mount -rw odm_new.img odm_new
sudo cp -r --preserve=all odm/* odm_new/
sudo umount odm
sudo rmdir odm
sudo find odm_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount odm_new
e2fsck -yf odm_new.img
sudo mount -rw odm_new.img odm_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

