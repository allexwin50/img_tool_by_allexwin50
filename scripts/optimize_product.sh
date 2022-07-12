[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
umount product_new && sudo rm -rf product_new
e2fsck -yf product_new.img
resize2fs -M product_new.img
e2fsck -yf product_new.img

