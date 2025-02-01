[ ! -e "optics.img" ] && echo "Esta faltando o arquivo optics.img para que possamos prosseguir..." && exit
[ ! -e "prism.img" ] && echo "Esta faltando o arquivo prism.img para que possamos prosseguir..." && exit
./simg2img optics.img optics_raw.img
mv optics.img optics_sparse.img
mv optics_raw.img optics.img
./simg2img prism.img prism_raw.img
mv prism.img prism_sparse.img
mv prism_raw.img prism.img

