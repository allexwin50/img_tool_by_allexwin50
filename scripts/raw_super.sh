[ ! -e "super.img" ] && echo "Esta faltando o arquivo super.img para que possamos prosseguir..." && exit
./simg2img super.img super_raw.img
mv super.img super_sparse.img
mv super_raw.img super.img

