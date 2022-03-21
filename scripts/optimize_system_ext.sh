[ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && exit
e2fsck -yf system_ext_new.img
resize2fs -M system_ext_new.img
e2fsck -yf system_ext_new.img

