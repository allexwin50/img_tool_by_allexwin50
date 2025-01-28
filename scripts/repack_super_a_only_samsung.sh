[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "odm_new.img" ] && echo "Esta faltando o arquivo odm_new.img para que possamos prosseguir..." && exit
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
[ ! -e "super.img" ] && echo "Esta faltando o arquivo super.img para que possamos prosseguir..." && exit
sudo umount system_new
sudo rmdir system_new
sudo umount odm_new
sudo rmdir odm_new
sudo umount product_new
sudo rmdir product_new
sudo umount vendor_new
sudo rmdir vendor_new
system_=`stat -c '%n %s' system_new.img`
system_=${system_#* }
odm_=`stat -c '%n %s' odm_new.img`
odm_=${odm_#* }
product_=`stat -c '%n %s' product_new.img`
product_=${product_#* }
vendor_=`stat -c '%n %s' vendor_new.img`
vendor_=${vendor_#* }
soma=$((system_ + odm_ + product_ + vendor_))
raw=`stat -c '%n %s' super.img`
raw=${raw#* }
./lpmake --metadata-size 65536 --super-name super --metadata-slots 1 --device super:$raw --group main:$soma --partition system:readonly:$system_:main --image system=./system_new.img --partition odm:readonly:$odm_:main --image odm=./odm_new.img --partition product:readonly:$product_:main --image product=./product_new.img --partition vendor:readonly:$vendor_:main --image vendor=./vendor_new.img --output ./super_new.img
#./lpmake --metadata-size 65536 --super-name super --metadata-slots 1 --device super:$raw --group main:$soma --partition system:readonly:$system_:main --image system=./system_new.img --partition odm:readonly:$odm_:main --image odm=./odm_new.img --partition product:readonly:$product_:main --image product=./product_new.img --partition vendor:readonly:$vendor_:main --image vendor=./vendor_new.img --sparse --output ./super_new.img

