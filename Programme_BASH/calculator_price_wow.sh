#!/bin/bash
#clear

# à retirer pour finalisation
<<com
1po = 100 pa et 10000 pc
1pa = 100pc
si pa >= 100 alors po + 1
si pc >= 100 alors pa + 1
com

po=0
pa=0
pc=0
nombre=0

# ETAPE 1
# détermine le prix unitaire de l'item à acheter
echo
	read -p "combien de PO coute votre item ? " po1
		po2=$(($po+$po1))

	read -p "combien de PA coute votre item ? " pa1
		pa2=$(($pa+$pa1))

	read -p "combien de PC coute votre item ? " pc1
		 pc2=$(($pc+$pc1))
echo
# à retirer pour finalisation
echo "le prix de votre item =" $po2 "PO" $pa2 "PA" $pc2 "PC"
echo

# ETAPE 1.2
# multiplier le prix unitaire par le nombre d'items à acheter
read -p "combien voulez vous en acheter ? " nombre
	po3=$(($po2*$nombre))
	pa3=$(($pa2*$nombre))
	pc3=$(($pc2*$nombre))
echo

# ETAPE 2
# quand pa3 ou pc3 >= 100 alors pa3 et pc3 -100 (fonctionne)
# car 100 PA disparaisse et se transforme en 1 PO et 100 PC en 1 PA
# donc à chaque fois que pa3 et pc3 sont >= à 100 on doit retirer 100 
# pour les transformer en PO ou PA (action réalisé à l'ETAPE 2.2) 
let "pa3=pa3%100"
let "pc3=pc3%100"
if [ $pa3 -gt 100 ] 
	then
		let "pa3=pa3-100"
elif [ $pc3 -gt 100 ] 
	then
		let "pc3=pc3-100"	
fi

# ETAPE 2.2
# quand pa3 et pc3 -100 alors po3 et pa3 +1 car 100 PA = 1 PO et 100 PC = 1 PA
# 1er if (pa3-100 = po3+1) fonctionne mais 1 seule fois -> dois fonctionner à chaque pa3-100
# 2eme if ou le elif (pc3-100 = pa3+1) ne fonctionne pas du tout
let "po3plus1=po3+1"
let "pa3plus1=pa3+1"
if [ $pa3=pa3-100 ]
	then
		let "po3=po3plus1"
elif [ $pc3=pc3-100 ]
	then
		let "pa3=pa3plus1"
fi

# à retirer pour finalisation
echo "si vous acheter" $nombre "items, il vous en coutera :" $po3 "PO" $pa3 "PA" $pc3 "PC"
echo

#clear

#echo

# ETAPE 3
# n'affiche pas les données si elle sont égale à 0 (pour le prix unitaire)
# ex : 1 po 0 pa 0 pc => affichera seulement 1 PO
if [ $pa2 -eq 0 ] && [ $pc2 -eq 0 ]
	then 
		echo "le prix est :" $po2 "PO" 
# 1 PO

elif [ $pc2 -eq 0 ]
	then
		echo "le prix est :" $po2 "PO" $pa2 "PA" 
# 1 PO 9 PA

elif [ $po2 -eq 0 ] && [ $pc2 -eq 0 ]
	then
		echo "le prix est :" $pa2 "PA" # NOOOOOOOONNN
# 9 PA

elif [ $po2 -eq 0 ]
	then
		echo "le prix est :" $pa2 "PA" $pc2 "PC"
# 9 PA 5 PC

elif [ $po2 -eq 0 ] && [ $pa2 -eq 0 ]
	then
		echo "le prix est :" $pc2 "PC" # NOOOOOOOOONNNN
# 5 PC

else
	echo "le prix est :" $po2 "PO" $pa2 "PA" $pc2 "PC" 
# 1 PO 9 PA 5 PC

fi

echo

# ETAPE 3.2
# n'affiche pas les données si elle sont égale à 0 (pour le prix total)
# ex : 21 po 80 pa 0 pc => affichera seulement 21 PO 80 PA 
if [ $pa3 -eq 0 ] && [ $pc3 -eq 0 ]
	then 
		echo "le prix est :" $po3 "PO" 
# 1 PO

elif [ $pc3 -eq 0 ]
	then
		echo "le prix est :" $po3 "PO" $pa3 "PA" 
# 1 PO 9 PA

elif [ $po3 -eq 0 ] && [ $pc3 -eq 0 ]
	then
		echo "le prix est :" $pa3 "PA" # NOOOOOOOONNN
# 9 PA

elif [ $po3 -eq 0 ]
	then
		echo "le prix est :" $pa3 "PA" $pc3 "PC"
# 9 PA 5 PC

elif [ $po3 -eq 0 ] && [ $pa3 -eq 0 ]
	then
		echo "le prix est :" $pc3 "PC" # NOOOOOOOOONNNN
# 5 PC

else
	echo "le prix est :" $po3 "PO" $pa3 "PA" $pc3 "PC" 
# 1 PO 9 PA 5 PC

fi
echo

#script and edited by Hergie