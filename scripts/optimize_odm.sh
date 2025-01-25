[ ! -e "odm_new.img" ] && echo "Esta faltando o arquivo odm_new.img para que possamos prosseguir..." && exit
umount odm_new && umount odm_new && sudo rm -rf odm_new
e2fsck -yf odm_new.img
resize2fs -M odm_new.img
e2fsck -yf odm_new.img

