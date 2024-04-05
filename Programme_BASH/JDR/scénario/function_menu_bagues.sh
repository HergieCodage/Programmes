. function_bagues.sh

while true; do
    clear
    echo "Taper 1: Bagues de Puissance"
    echo "Taper 2: Bagues de Sûreté"
    echo "Taper Q: Quitter"
    echo
    read -p "Entrez votre choix: " choix
        case "$choix" in 
            1) BaguesPuissance
                ;;
            2) BaguesSurete
                ;;
            "q"|"Q") echo "Mercie d'avoir jouer !"
            break
                ;;
            *) echo "Mauvais choix"
        esac
    done