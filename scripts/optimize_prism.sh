[ ! -e "prism_new.img" ] && echo "Esta faltando o arquivo prism_new.img para que possamos prosseguir..." && exit
umount prism_new && umount prism_new && sudo rm -rf prism_new
e2fsck -yf prism_new.img
resize2fs -M prism_new.img
e2fsck -yf prism_new.img

