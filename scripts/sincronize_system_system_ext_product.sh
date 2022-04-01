[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && exit
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && exit
sudo umount system_new
sudo rmdir system_new
sudo umount system_ext_new
sudo rmdir system_ext_new
sudo umount product_new
sudo rmdir product_new
e2fsck -yf system_new.img
fallocate -l 2000M system_new.img
resize2fs system_new.img 2000M
e2fsck -yf system_new.img
e2fsck -yf system_ext_new.img
fallocate -l 1G system_ext_new.img
resize2fs system_ext_new.img 1G
e2fsck -yf system_ext_new.img
e2fsck -yf product_new.img
fallocate -l 4000M product_new.img
resize2fs product_new.img 4000M
e2fsck -yf product_new.img
mkdir mods
mkdir system_new
mkdir system_ext_new
mkdir product_new
sudo mount -r mods.img mods
sudo mount -rw system_new.img system_new
sudo mount -rw system_ext_new.img system_ext_new
sudo mount -rw product_new.img product_new
sudo cp -r --preserve=all mods/system/* system_new/system/
sudo cp -r --preserve=all mods/system_ext/* system_ext_new/
sudo cp -r --preserve=all mods/product/* product_new/
sudo umount mods
sudo rmdir mods
sudo umount system_new
sudo rmdir system_new
sudo umount system_ext_new
sudo rmdir system_ext_new
sudo umount product_new
sudo rmdir product_new
sudo umount vendor_new
sudo rmdir vendor_new
e2fsck -yf system_new.img
e2fsck -yf system_ext_new.img
e2fsck -yf product_new.img
echo "Sincronização concluída"

