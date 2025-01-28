[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
[ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && exit
sudo umount product_new
sudo rmdir product_new
sudo umount system_new
sudo rmdir system_new
sudo umount vendor_new
sudo rmdir vendor_new
e2fsck -yf product_new.img
fallocate -l 5000M product_new.img
resize2fs product_new.img 5000M
e2fsck -yf product_new.img
e2fsck -yf system_new.img
fallocate -l 7000M system_new.img
resize2fs system_new.img 7000M
e2fsck -yf system_new.img
e2fsck -yf vendor_new.img
fallocate -l 1500M vendor_new.img
resize2fs vendor_new.img 1500M
e2fsck -yf vendor_new.img
mkdir mods
mkdir product_new
mkdir system_new
mkdir vendor_new
sudo mount -r mods.img mods
sudo mount -rw product_new.img product_new
sudo mount -rw system_new.img system_new
sudo mount -rw vendor_new.img vendor_new
sudo cp -r --preserve=all mods/product/* product_new/
sudo cp -r --preserve=all mods/system/* system_new/system/
ssudo cp -r --preserve=all mods/vendor/* vendor_new/
sudo umount mods
sudo rmdir mods
sudo umount system_new
sudo rmdir system_new
sudo umount product_new
sudo rmdir product_new
sudo umount vendor_new
sudo rmdir vendor_new
e2fsck -yf product_new.img
e2fsck -yf system_new.img
e2fsck -yf vendor_new.img
echo "Sincronização concluída"

