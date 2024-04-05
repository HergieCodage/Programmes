#!/bin/bash

function WaitEnter(){
    echo ""
    echo "Veuillez taper sur ENTREE pour revenir au Menu"
    read
}

function Introduction(){
    clear
    echo "Vous arrivez dans la taverne de Sutaato pour aider une jeune fille, du nom de Hergie."
    echo "Elle vous raconte qu'un vieux Dragon s'est écrasé dans son champ et lui à donner un Oeuf."
    echo "Il lui a confié la lourde tâche, avant de mourir des suites de ses blessures, de ramener l'Oeuf à sa mère !"
    echo "La jeune fille âgée de 16ans, ne sachant pas quoi faire, elle décida de faire appel à des aventuriers pour l'aider"
    echo
    echo "voulez vous aider Hergie ? [o] = oui, [n] = non"
    read reponse
    if [ $reponse != "o" ]
    then
        WaitEnter
    else
        Départ
    fi 
}

function Départ(){
    clear
    echo "Vous avez décidé d'aider et d'accompagner Hergie, et vous sortez de la taverne pour vous mettre en route."
    echo "Une grand-mère vous arrête et vous apprenez qu'il s'agit de la grand-mère de Hergie !"
    echo "Elle vous remercie d'aider et d'accompagner sa petite fille."
    echo "Elle vous demande si vous avez tout ce qu'il vous faut pour votre long périple ?"
    echo
    echo "[o] = oui, [n] = non"
    read reponse
    if [ $reponse != "o" ]
    then
        Magasin
    else
        Départ2
    fi
}

function Départ2(){
    clear
    echo "Elle vous prévient que des pirates sévissent du côté de la crique Umizoï !"
    echo "Il se pourrait qu'il possèdent une Carte de la Région, mais il y a de grande chance qu'il ne vous la cèdent sans combattre !"
    echo "Cependant un carte vous serait fort utile dans votre périple !"
    echo "Elle vous dit, avant de repartir, que pour aller à la crique vous devait aller vers la ville de Kouya au sud !"
    echo
    echo "Où souhaitez-vous vous rendre ?"
    echo "[1] Kouya, [2] Namaki"
    read reponse
    if [ $reponse = 1 ]
    then
        Kouya
    elif [ $reponse = 2 ]
    then
        Namaki
    else
        WaitEnter
    fi
}

function Kouya(){
    clear
    echo "Vous arrivez à Kouya et aller à la taverne pour vous reposez et obtenir des informations."
    echo "Vous apprenez que pour vous rendre à la crique vous devez aller au SUD,"
    echo "de contourner ou de traverser le bois d'Osamushi, et de continuer vers le SUD."
    echo "Malheuresement personne n'a jamais entendu parlé ou vue de Dragon."
    echo "En dehors de celui qui s'est écrasé dans un champ du côté de Sutaato !"
    echo "Cependant vous devriez aller vous renseigner à Namaki."
    echo "Il parait que des choses étranges ci passe dans ses environs !"
    echo
    echo "Où souhaitez-vous vous rendre ?"
    echo "[1] Crique Umizoï, [2] Namaki"
    read reponse
    if [ $reponse = 1 ]
    then
        Umizoï
    elif [ $reponse = 2 ]
    then
        Namaki
    else
        WaitEnter
    fi
}

function Kouya2(){
    clear
    echo "Vous voilà de retour à Kouya et aller à la taverne pour vous reposez et obtenir des informations."
    echo "Malheuresement vous n'obtenez pas plus d'informations !"
    echo "Et le tavernier vous conseil vivement de vous rendre à Namaki !"
    echo
    echo "Où souhaitez-vous vous rendre ?"
    echo "[1] Crique Umizoï, [2] Namaki"
    read reponse
    if [ $reponse = 1 ]
    then
        Umizoï
    elif [ $reponse = 2 ]
    then
        Namaki
    else
        WaitEnter
    fi
}

function Umizoï(){
    clear
    echo "Vous avez récupérer la carte de la région !"
    echo
    echo "Où Souhaitez-vous vous rendre ?"
    echo "[1] Kouya, [2] Namaki"
    read reponse
    if [ $reponse = 1 ]
    then
        Kouya2
    elif [ $reponse = 2 ]
    then
        Namaki
    else
        WaitEnter
    fi
}

function Namaki(){
    clear
    echo "Vous arrivez à Namaki et aller à la taverne pour vous reposer et obtenir des informations."
    echo "Vous apprenez que personne n'a entendu parlé de Dragon !"
    echo "Cependant des choses étranges se passe dans le bois au abord de la ville,"
    echo "car les animaux y sont agité !"
    echo "On vous raconte une vielle légende concernant un chemin mystérieux traversant le bois,"
    echo "dont personne n'est jamais revenu !"
    echo "Mais qu'une fois engagé sur ce chemin, il serait impossible de faire demi-tour !"
    echo
    echo "Où Souhaitez-vous vous rendre ?"
    echo "[1] Kouya, [2] Bois au abors de Namaki"
    read reponse
    if [ $reponse = 1 ]
    then
        Kouya2
    elif [ $reponse = 2 ]
    then
        CheminPerdu
    else
        WaitEnter
    fi
}

function Namaki2(){
    clear
    echo "Vous voilà de retour à Namaki et aller à la taverne pour vous reposez et obtenir des informations."
    echo "Malheuresement vous n'obtenez pas plus d'informations !"
    echo "Et le tavernier vous conseil de regarder votre carte pour vous rendre à Banpaïa !"
    echo
    echo "Où souhaitez-vous vous rendre ?"
    echo "[1] Kouya, [2] Banpaïa"
    read reponse
    if [ $reponse = 1 ]
    then
        Kouya2
    elif [ $reponse = 2 ]
    then
        Banpaia
    else
        WaitEnter
    fi
}


function CheminPerdu(){
    clear
    echo "Vous arrivez devant le bois se trouvant au abord de Namaki"
    echo "et vous vous engagez sur le mystérieux chemin dont vous avez entendu parlé !"
    echo "Après avoir parcouru l'intégralité du chemin, vous arrivez devant un Sphinx qui vous dit ..."
    echo "Aventuriers en quête de réponse...répondez à mon égnigme ou mourrez dans d'atroce souffrance !"
    echo
    echo "Qu'est-ce qui tourne sans bouger ?"
    echo "[1] Le lait,[2] Un drapeau,[3] une meule,[4] un chien"
    read reponse
    if [ $reponse != 1 ]
    then
        echo "Mauvaise réponse, un éclair s'abat violemnet sur vous et vous êtes mort"
        WaitEnter
    else
        echo "Bonne réponse !"
        echo "Il vous dit que le Dragon de vous cherchez se cache !"
        echo "Pour le trouver, vous aller devoir tuer le fléau qui parcour ces terre !"
        echo "Son nom est Archéron ! Mais il vous faudra d'abord trouver et vaincre ses sbires !"
        echo "Et que le premier, se trouve dans le donjon près de Banpaïa."
    fi

    echo
    echo "Vous voilà sorti du bois !"
    echo "Où Souhaitez-vous vous rendre ?"
    echo "[1] Namaki, [2] Banpaïa"
    read reponse
    if [ $reponse = 1 ]
    then
        Namaki
    elif [ $reponse = 2 ]
    then
        Banpaia
    else
        WaitEnter
    fi
}

function Banpaia(){
    clear
    echo "Vous arrivez à Banpaïa et aller à la taverne pour vous reposer et obtenir des informations."
    echo "Vous apprenez où se trouve le Donjon et le tavernier l'indique sur votre carte !"
    echo
    echo "que souhaitez vous faire ?"
    echo "[1] aller au Donjon, [2] Abandonner"
    read reponse
    if [ $reponse != 1 ]
    then
        WaitEnter
    else
        Banpaia2
    fi
}

function Banpaia2(){
    clear
    echo "Vous voilà de retour à Banpaïa et aller à la tarverne pour vous reposer et obtenir des informations."
    echo "On vous apprend qu'un monstre sévirait dans le désert de Sabaku !"
    echo
    echo "que souhaitez vous faire ?"
    echo "[1] aller dans le Sabaku, [2] Magasin"
    read reponse
    if [ $reponse = 1 ]
    then
        Kusaba
    elif [ $reponse = 2 ]
    then
        Magasin
    else
        WaitEnter
    fi    
}

function Kusaba(){
    clear
    echo "Vous arrivez à Kusaba et aller à la taverne pour vous reposer et obtenir des information."
    echo "Vous apprener que le monstre qui sévit dans le désert n'est pas un Dragon, mais un Basilic !"
    echo "Un horrible et monstrueux Serpent qui à élus domicile dans le désert !"
    echo
    echo "que souhaitez vous faire ?"
    echo "[1] Débusqué le Basilic, [2] Magasin"
    read reponse
    if [ $reponse = 1 ]
    then
        Sabaku
    elif [ $reponse = 2 ]
    then
        Magasin
    else
        WaitEnter
    fi
}

function Sabaku(){
    clear
    echo "Vous avez trouver la tanière du Basilic et l'avez vaincus !"
    echo
    echo "Souhaitez-vous retourner à Kusaba ?"
    echo "[o] = oui, [n] = non"
    read reponse
    if [ $reponse != "o" ]
    then
        WaitEnter
    else
        Kusaba2
    fi
}

function Kusaba2(){
    clear
    echo "Vous voulà de retour dans la ville de Kusaba et aller à la taverne pour vous reposer et obtenir d'autres informations."
    echo "On vous apprend qu'un Dragon aurait été aperçus au dessus de la forêt de Yariika !"
    echo
    echo "Que souhaitez-vous faire ?"
    echo "[1] aller dans la forêt de Yariika, [2] Magasin"
    read reponse
    if [ $reponse = 1 ]
    then
        Yariika
    elif [ $reponse = 2 ]
    then
        Magasin
    else
        WaitEnter
    fi
}

function Yariika(){
    clear
    echo "Un fois arrivé à la forêt, vous la traversez et vous arrivez près d'un immense lac."
    echo "Un Clamar Géant arrive et vous juge !"
    echo "Hergie vous empêche d'attaquer et s'avance pour le carresser !"
    echo "Une vielle elfe vous surprend et se présenteà vous, elle s'appelle BabaYoda !"
    echo "Elle vous félicite pour votre sagesse et connait la raison de votre venus."
    echo "Elle a entendu parlé de vos explois contre le Basilic et le Baron Vampire !"
    echo "Malheureusement elle n'est pas la seule et Archéron à pris connaissance de l'existence de Hergie !"
    echo "Vous devez le vaincre pour qu'elle puisse vous conduire au près du Dragon !"
    echo "Elle vous conseil d'aller à Kazan, la capitale,"
    echo "c'est là que vous devriez avoir les informations nécessaire pour découvrir la cachette d'Archéron !"
    echo
    echo "Souhaitez-vous suivre le conseil de BabaYoda et vous rendre à Kazan ?"
    echo "[o] = oui, [n] = non"
    read reponse
    if [ $reponse != "o" ]
    then
        WaitEnter
    else
        Kazan
    fi
}

function Kazan(){
    clear
    echo "Vous arrivez à Kazan et aller à la taverne pour vous reposer et obtenir des informations."
    echo "Vous y apprenez que des Démons s'accagent les environts !"
    echo "Fort de votre courage vous annoncez que vous êtes là pour affronter les Démons !"
    echo "On vous dit que vous devriez contourner les Montagnes pour accèder au Volcan Youma."
    echo "Il paraitrait que c'est de là dont sorte les démons,"
    echo "par une sorte de grotte sur le flan du Volcan !"
    echo
    echo "Souhaitez-vous vous rendre au Volcan ?"
    echo "[o] = oui, [n] = non"
    read reponse
    if [ $reponse != "o" ]
    then
        WaitEnter
    else
        Youma
    fi
}

function Youma(){
    clear
    echo "Vous avez parcourus l'intégralité des soutérains du Volcan de Youma"
    echo "et avez réussi à vaincre le Démon Archéron !"
    echo
    echo "Que voulez vous faire ?"
    echo "[1] Repartir à Kazan pour vous reposer, [2] aller directement à la Forêt Yariika"
    read reponse
    if [ $reponse = 1 ]
    then
        Kazan2
    elif [ $reponse = 2 ]
    then
        Yariika2
    else
        WaitEnter
    fi
}

function Kazan2(){
    clear
    echo "Vous voilà de retour à Kazan et vous diriez vers la Taverne pour vous y reposer !"
    echo "Une fois reposer, vous vous diriger vers la Forêt de Yariika !"
    Yariika2
}

function Yariika2(){
    echo
    echo "Une fois arrivé dans la forêt, vous retournez à l'endroit où vous avez rencontré BabaYoda !"
    echo "Elle vous attendez et vous félicite pour votre victoire !"
    echo "Le danger étant enfin écarté, elle peut maintenant vous conduire au près,"
    echo "du Dragon Protecteur !"
    echo "Vous n'avez pas le temps de dire ouf, que vous êtes téléporté dans un endroit féérique !"
    echo "Là un Immense Dragon se tien devant vous !"
    echo
    Dragon
}

function Dragon(){
    echo "Le Dragon s'adresse à Hergie de lui avoir ramener son enfant !"
    echo "Elle se présente, elle se nome Kanshisha ! Le Dragon protecteur de ce monde !"
    echo "Hergie se met en colère !"
    echo "Elle demande pourquoi vous avez dû affronter toutes ses épreuves,"
    echo "si elle est le Dragon censé protégé ce monde !"
    echo "Et pourquoi le vieux dragon et elle l'appelais "Notre Vielle Amie" !"
    echo "Kanshisha lui dit qu'elle comprend, lui demande son nom !"
    echo "Et après que Hergie se soit présenté, elle vous raconte son histoire !"
    echo "Elle est les siens protège le monde d'Archéron et de ses démons."
    echo "Mais une fois tout les 100 ans, ils pondent un seul et unique Oeuf !"
    echo "Ce qui les rend vulnérable et c'est ce moment qu'a choisit Archéron pour attaquer !"
    echo "Le vieux Dragon qui à confié l'Oeuf à Hergie, s'appelais Hogosha !"
    echo "Et il était le compagnon de Kanshisha !"
    echo "Elle annonce à Hergie que même sans ces événements, Hogosha serait quand même venus à sa rencontre !"
    echo "Tout les 100 ans, un enfant née en ce monde," 
    echo "avec le pouvoir de comprendre le coeur des être peuplant cette Terre !"
    echo "Et il se trouve que cette enfant c'est Hergie !"
    echo "Elle est destinée à être le lien reliant toutes les espèces et races de ce monde !"
    echo "Nous appelons ces enfants LE SHISHA-RYUU !"
    echo "Vous repartez couvert de gloire et de richesse !"
    echo "Votre nom est connus de tous et des statues ont été érigé en votre honneur !"
    echo "Vous êtes le Héro de ce Monde !"
    echo "Toute nos Félicitation ! Vous avez terminer l'histoire !"
    WaitEnter
}
