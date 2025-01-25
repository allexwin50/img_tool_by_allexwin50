[ ! -e "prism.img" ] && echo "Esta faltando o arquivo prism.img para que possamos prosseguir..." && exit
cp img/prism_zero.img ./
mv prism_zero.img prism_new.img
e2fsck -yf prism_new.img
fallocate -l 800M prism_new.img
resize2fs prism_new.img 800M
e2fsck -yf prism_new.img
mkdir prism
mkdir prism_new
sudo mount -r prism.img prism
sudo mount -rw prism_new.img prism_new
sudo cp -r --preserve=all prism/* prism_new/
sudo umount prism
sudo rmdir prism
sudo find prism_new/ -name 'lost+found' -exec rm -rf {} \;
sudo umount prism_new
e2fsck -yf prism_new.img
sudo mount -rw prism_new.img prism_new
echo "Imagem recriada como leitura e escrita, agora, você pode exckuir e editar seu conteúdo, ao concluir, desmonte a imagem e ela já estará pronta!"
echo "Obs: Se quiser reduzir o tamanho dela para o mínimo possível, selecione a opção de otimizar imagens..."

