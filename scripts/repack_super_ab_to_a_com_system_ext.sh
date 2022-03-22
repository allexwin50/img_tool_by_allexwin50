[ ! -e "system_new.img" ] && echo "Esta faltando o arquivo system_new.img para que possamos prosseguir..." && exit
[ ! -e "system_ext_new.img" ] && echo "Esta faltando o arquivo system_ext_new.img para que possamos prosseguir..." && exit
[ ! -e "product_new.img" ] && echo "Esta faltando o arquivo product_new.img para que possamos prosseguir..." && exit
[ ! -e "vendor_new.img" ] && echo "Esta faltando o arquivo vendor_new.img para que possamos prosseguir..." && exit
[ ! -e "super.img" ] && echo "Esta faltando o arquivo super.img para que possamos prosseguir..." && exit
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
e2fsck -yf vendor_new.img
fallocate -l 1G vendor_new.img
resize2fs vendor_new.img 1G
e2fsck -yf vendor_new.img
system_=`stat -c '%n %s' system_new.img`
system_=${system_#* }
system_ext_=`stat -c '%n %s' system_ext_new.img`
system_ext_=${system_ext_#* }
product_=`stat -c '%n %s' product_new.img`
product_=${product_#* }
vendor_=`stat -c '%n %s' vendor_new.img`
vendor_=${vendor_#* }
soma=$((system_ + system_ext_ + product_ + vendor_))
raw=`stat -c '%n %s' super.img`
raw=${raw#* }
./lpmake --metadata-size 65536 --super-name super --metadata-slots 1 --device super:$raw --group main:$soma --partition system_a:none:$system_:main --image system_a=./system_new.img --partition system_ext_a:none:$system_ext_:main --image system_ext_a=./system_ext_new.img --partition product_a:none:$product_:main --image product_a=./product_new.img --partition vendor_a:none:$vendor_:main --image vendor_a=./vendor_new.img --sparse --output ./super_new.img

