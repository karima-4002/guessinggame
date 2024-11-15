#!/bin/bash

function count_files {
    echo $(ls -1 | wc -l)
}

correct_count=$(count_files)
echo "Devinez combien de fichiers se trouvent dans le répertoire courant :"

while true; do
    read -p "Votre réponse : " guess
    if [[ $guess -lt $correct_count ]]; then
        echo "Trop bas !"
    elif [[ $guess -gt $correct_count ]]; then
        echo "Trop haut !"
    else
        echo "Bravo ! Vous avez trouvé !"
        break
    fi
done
