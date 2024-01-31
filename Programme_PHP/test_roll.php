<?php
echo "lancer 1 dès 3 ?";
echo "\n";
$dès3 = readline(">> ");
echo "\n";
switch($dès3){
    case "y":
    case "Y":
    case "yes":
    case "Yes":
    case "O":
    case "o":
    case "oui":
    case "Oui":
        echo rand(1, 3);
        break;
}