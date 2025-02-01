[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
[ ! -e "super.img" ] && echo "Esta faltando o arquivo super.img para que possamos prosseguir..." && exit
sudo umount -f  system_new
sudo rmdir system_new
sudo umount -f  system_ext_new
sudo rmdir system_ext_new
sudo umount -f  product_new
sudo rmdir product_new
sudo umount -f  vendor_new
sudo rmdir vendor_new
system_=`stat -c '%n %s' system_new.img`
system_=${system_#* }
product_=`stat -c '%n %s' product_new.img`
product_=${product_#* }
vendor_=`stat -c '%n %s' vendor_new.img`
vendor_=${vendor_#* }
soma=$((system_ + product_ + vendor_))
raw=`stat -c '%n %s' super.img`
raw=${raw#* }
./lpmake --metadata-size 65536 --super-name super --metadata-slots 2 --device super:$raw --group main:$soma --partition system_a:readonly:$system_:main --image system_a=./system_new.img --partition product_a:readonly:$product_:main --image product_a=./product_new.img --partition vendor_a:readonly:$vendor_:main --image vendor_a=./vendor_new.img --sparse --output ./super_new.img

