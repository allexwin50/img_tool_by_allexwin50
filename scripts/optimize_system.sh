[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
e2fsck -yf system_new.img
resize2fs -M system_new.img
e2fsck -yf system_new.img

