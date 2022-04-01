[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && exit
e2fsck -yf system_new.img
fallocate -l 7000M system_new.img
resize2fs system_new.img 7000M
e2fsck -yf system_new.img
mkdir mods
mkdir system_new
sudo mount -r mods.img mods
sudo mount -rw system_new.img system_new
sudo cp -r --preserve=all mods/system/* system_new/system/
sudo cp -r --preserve=all mods/system_ext/* system_new/system/system_ext/
sudo cp -r --preserve=all mods/product/* system_new/system/product/
sudo umount mods
sudo rmdir mods
sudo umount system_new
sudo rmdir system_new
e2fsck -yf system_new.img
echo "Sincronização concluída"

