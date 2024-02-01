#!/bin/bash

#Gestion des couleurs et Fonts

#Tout d'abord on va commencer par le code d'échappement /033 et ensuite vient le code de couleur
#On s'amusera à mettre notre résultat de code en Gras, Souligné et ainsi de suite

#echo "########################################"
#echo "####Et c'est parti pour la gestion des couleurs #######"
#clear

#couleurs
export Rouge="\033[31m"
export Bleu="\033[34m"
export Vert="\033[32m"
#Orange>Linux/Jaune>Cmder Windows
export Orange="\033[33m"
export Rose="\033[35m"
#Cyan = Bleu clair
export Cyan="\033[36m"
export Blanc="\033[37m"
export Noir="\033[30m"

export Gras="\033[1m"
export Italic="\033[3m"
#Sous-ligné = Underline
export Underline="\033[4m"
# Reverse = écriture noire sur fond blanc
export Reverse="\033[7m"
export Clignotant="\033[5m"

#ecriture blanche fond bleu
export Title="\033[1;3;30;42m" 
#export Title="\033[1;37;44m" gras;blanc;bleu
#export Title="\033[1;3;37;44m" gras;Italic;Blanc;Bleu 

#Couleur de fond
# Noir = 40
# Rouge = 41
# Vert = 42
# Orange = 43
# Bleu = 44
# Rose = 45
# Bleu clair = 46
# Blanc = 47
export Normal="\033[0m"
