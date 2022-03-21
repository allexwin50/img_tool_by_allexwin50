[ ! -e "super.img" ] && echo "Esta faltando o arquivo super.img para que possamos prosseguir..." && exit
./lpunpack super.img ./; rm system_b.img system_ext_b.img product_b.img vendor_b.img; mv system_a.img system.img; mv system_ext_a.img system_ext.img; mv product_a.img product.img; mv vendor_a.img vendor.img

