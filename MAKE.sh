#!/usr/bin/env bash

chmod a+x *
chmod a+x scripts/*

x="teste"
menu ()
{
while true $x != "teste"
do
echo "#========================================================================#"
echo "#                               = Menu =                                 #"
echo "#========================================================================#"
echo "#       Ferramenta de descriptografia de imagens android                 #"
echo "#       Feito por @allexwin50                                            #"
echo "#========================================================================#"
echo "#  [1] Extração de imagens (Stock ROMs ou super.img)                     #"
echo "#  [2] Recriar imagens de sistema (system, system_ext, product e vendor) #"
echo "#  [3] Remover bloatwares                                                #"
echo "#  [4] Montar e desmontar partições                                      #"
echo "#  [5] Compilar super partição                                           #"
#echo "#  [6] Sincronizar mods.img com a nova imagem                            #"
echo "#  [6] Limpar residuos ao concluir todo o processo                       #"
echo "#  [7] Sair                                                              #"
echo "#========================================================================#"
echo "# Digite a opcao desejada:                                               #"
echo "#========================================================================#"
read x
echo "# Opcao informada ($x)"
echo "#========================================================================#"

case "$x" in

1) clear && ./scripts/01.sh ;;
2) clear && ./scripts/02.sh ;;
3) clear && ./scripts/03.sh ;;
4) clear && ./scripts/04.sh ;;
5) clear && ./scripts/05.sh ;;
#6) clear && chmod a+x scripts/06.sh && ./scripts/06.sh ;;
6) clear && ./scripts/clear.sh ;;
7) clear && echo "Saindo..." && clear; exit;;
*) clear && echo "Opção inválida!"; esac done } && menu

