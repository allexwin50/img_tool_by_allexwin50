[ ! -e "optics.img" ] && echo "Esta faltando o arquivo optics.img para que possamos prosseguir..." && exit
cp img/optics_zero.img ./
mv optics_zero.img optics_new.img
e2fsck -yf optics_new.img
fallocate -l 800M optics_new.img
resize2fs optics_new.img 800M
e2fsck -yf optics_new.img
mkdir optics
mkdir optics_new
sudo mount -r optics.img optics
sudo mount -rw optics_new.img optics_new
sudo cp -r --preserve=all optics/* optics_new/
sudo umount optics
sudo rmdir optics
sudo find optics_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount optics_new
e2fsck -yf optics_new.img
sudo mount -rw optics_new.img optics_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

