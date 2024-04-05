. function_bagues.sh
. function_boucliers.sh

    while true; do
    clear
    echo "Taper 1: Bouclier"
    echo "Taper 2: Bagues de Puissances"
    echo "Taper 3: Bague de Sûreté"
    echo "Taper Q: Quitter"
    echo
    read -p "Entrez votre choix: " choix
        case "$choix" in 
            1) Bouclier
                ;;
            2) BaguesPuissance
                ;;
            3) BaguesSurete
                ;;
            "q"|"Q") echo "Mercie d'avoir jouer !"
            break
                ;;
            *) echo "Mauvais choix"
        esac
    done