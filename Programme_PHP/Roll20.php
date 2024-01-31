<?php
/*
echo rand(1, 3);
echo rand(1, 4);
echo rand(1, 6);
echo rand(1, 8);
echo rand(1, 10);
echo rand(1, 20);
echo rand(1, 100);
*/

echo "quel dès veux-tu lancer ?";
$roll_array = ["1D3", "1D4", "1D6", "1D8", "1D10", "1D20", "1D100"];
echo "\n";
echo implode("," , $roll_array);
echo "\n";
$roll = readline(">> ");
echo "\n";
switch($roll){
    case "1D3":
    case "1d3":
        echo rand(1, 3);
        break;
    case "1D4":
    case "1d4":
        echo rand(1, 4);
        break;
    case "1D6":
    case "1d6":
        echo rand(1, 6);
        break;
    case "1D8":
    case "1d8":
        echo rand(1, 8);
        break;
    case "1D10":
    case "1d10":
        echo rand(1, 10);
        break;
    case "1D20":
    case "1d20":
        echo rand(1, 20);
        break;
    case "1D100":
    case "1d100":
        echo rand(1, 100);
        break;
}
