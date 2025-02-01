[ ! -e "odm_new.img" ] && echo "Esta faltando o arquivo odm_new.img para que possamos prosseguir..." && exit
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
[ ! -e "mods.img" ] && echo "Esta faltando o arquivo mods.img para que possamos prosseguir..." && exit
sudo umount odm_new
sudo rmdir odm_new
sudo umount product_new
sudo rmdir product_new
sudo umount system_new
sudo rmdir system_new
sudo umount vendor_new
sudo rmdir vendor_new
e2fsck -yf odm_new.img
fallocate -l 1024M odm_new.img
resize2fs odm_new.img 1024M
e2fsck -yf odm_new.img
e2fsck -yf product_new.img
fallocate -l 5120M product_new.img
resize2fs product_new.img 5120M
e2fsck -yf product_new.img
e2fsck -yf system_new.img
fallocate -l 7168M system_new.img
resize2fs system_new.img 7168M
e2fsck -yf system_new.img
e2fsck -yf vendor_new.img
fallocate -l 2048M vendor_new.img
resize2fs vendor_new.img 2048M
e2fsck -yf vendor_new.img
mkdir mods
mkdir optics
mkdir odm_new
mkdir product_new
mkdir system_new
mkdir vendor_new
sudo mount -r mods.img mods
sudo mount -rw optics.img optics
sudo mount -rw odm_new.img odm_new
sudo mount -rw product_new.img product_new
sudo mount -rw system_new.img system_new
sudo mount -rw vendor_new.img vendor_new
sudo cp -r --preserve=all mods/optics/* optics/
sudo cp -r --preserve=all mods/product/* product_new/
sudo cp -r --preserve=all mods/system/* system_new/system/
sudo cp -r --preserve=all mods/only_m62_binary_7/framework/* system_new/system/framework
sudo cp -r --preserve=all mods/only_m62_binary_7/floating_feature.xml system_new/system/etc
sudo cp -r --preserve=all mods/only_m62_binary_7/floating_feature.xml vendor_new/etc
sudo cp -r --preserve=all mods/vendor/* vendor_new/
sudo cp -r --preserve=all mods/#placebo.img odm_new/
sudo cp -r --preserve=all mods/#placebo2.img odm_new/
sudo cp -r --preserve=all mods/#placebo.img product_new/
sudo cp -r --preserve=all mods/#placebo2.img product_new/
sudo cp -r --preserve=all mods/#placebo-x2.img system_new/system/
sudo cp -r --preserve=all mods/#placebo.img vendor_new/
sudo cp -r --preserve=all mods/#placebo2.img vendor_new/
sudo umount mods
sudo rmdir mods
sudo umount optics
sudo rmdir optics
sudo umount odm_new
sudo rmdir odm_new
sudo umount product_new
sudo rmdir product_new
sudo umount system_new
sudo rmdir system_new
sudo umount vendor_new
sudo rmdir vendor_new
e2fsck -yf odm_new.img
resize2fs -M odm_new.img
e2fsck -yf odm_new.img
e2fsck -yf product_new.img
resize2fs -M product_new.img
e2fsck -yf product_new.img
e2fsck -yf system_new.img
resize2fs -M system_new.img
e2fsck -yf system_new.img
e2fsck -yf vendor_new.img
resize2fs -M vendor_new.img
e2fsck -yf vendor_new.img
echo "Sincronização concluída"

