[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
e2fsck -yf vendor_new.img
resize2fs -M vendor_new.img
e2fsck -yf vendor_new.img

