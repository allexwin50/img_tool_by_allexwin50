[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
umount system_new && sudo rm -rf system_new
e2fsck -yf system_new.img
resize2fs -M system_new.img
e2fsck -yf system_new.img

