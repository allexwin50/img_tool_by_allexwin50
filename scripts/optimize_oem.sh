[ ! -e "oem_new.img" ] && echo "Esta faltando o arquivo oem_new.img para que possamos prosseguir..." && exit
e2fsck -yf oem_new.img
resize2fs -M oem_new.img
e2fsck -yf oem_new.img

