[ ! -e "odm.img" ] && echo "Esta faltando o arquivo odm.img para que possamos prosseguir..." && exit
./simg2img odm.img odm_raw.img
mv odm.img odm_sparse.img
mv odm_raw.img odm.img
rm odm_sparse.img

