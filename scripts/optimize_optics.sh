[ ! -e "optics_new.img" ] && echo "Esta faltando o arquivo optics_new.img para que possamos prosseguir..." && exit
umount -f  optics_new && umount -f  optics_new && sudo rm -rf optics_new
e2fsck -yf optics_new.img
resize2fs -M optics_new.img
e2fsck -yf optics_new.img

