[ ! -e "oem.img" ] && echo "Esta faltando o arquivo oem.img para que possamos prosseguir..." && exit
./simg2img oem.img oem_raw.img
mv oem.img oem_sparse.img
mv oem_raw.img oem.img
rm oem_sparse.img

