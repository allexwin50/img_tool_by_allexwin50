[ ! -e "system.img" ] && echo "Esta faltando o arquivo system.img para que possamos prosseguir..." && exit
./simg2img system.img system_raw.img
mv system.img system_sparse.img
mv system_raw.img system.img

