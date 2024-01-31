<?php
echo "\n";
echo "Votre nom de personnage est ?";
echo "\n";
$name = readline(">> ");
echo "\n";

echo "De quel sexe, est votre personnage?";
$sexe_array = ["Homme", "Femme"];
echo "\n";
print_r($sexe_array);

$answer_sexe = readline(">> ");
$sexe = "";
switch($answer_sexe) {
  case "0":
  case "homme":
    $sexe = $sexe_array[0];
    break;
  case "1":
  case "femme":
    $sexe = $sexe_array[1];
    break;
  default:
    $sexe = "nok";
}

echo "\n";
echo "Quel Race souhaitez-vous ?";
$races_array = ["Elfe", "Nain", "Humain", "Barbare", "Orc", "Semi-Homme"];
echo "\n";
print_r($races_array);
$answer_race = readline(">> ");
$race = "";
switch($answer_race){
  case "0":
  case "elfe":
    $race = $races_array[0];
    break;
  case "1":
  case "nain":
    $race = $races_array[1];
    break;
  case "2":
  case "humain":
    $race = $races_array[2];
    break;
  case "3":
  case "barbare":
    $race = $races_array[3];
    break;
  case "4":
  case "orc":
    $race = $races_array[4];
    break;
  case "5":
  case "semi-homme":
    $race = $races_array[5];
    break;
  default:
    $race = "nok";
}

echo "\n";
echo "Quel Classe voulez-vous faire ?";
$classes_array = ["Barde", "Mage", "Archer", "Paladin", "Berserker", "Voleur"];
echo "\n";
print_r($classes_array);
$answer_classe = readline(">> ");
$classe = "";
switch($answer_classe){
  case "0":
  case "barde":
    $classe = $classes_array[0];
    break;
  case "1":
  case "mage":
    $classe = $classes_array[1];
    break;
  case "2":
  case "archer":
    $classe = $classes_array[2];
    break;
  case "3":
  case "paladin":
    $classe = $classes_array[3];
    break;
  case "4":
  case "berserker":
    $classe = $classes_array[4];
    break;
  case "5":
  case "voleur":
    $classe = $classes_array[5];
    break;
  default:
    $classe = "nok";
}

$force = 30;
$agility = 30;
$intelligence = 30;
$apparence = 30;
$endurance = 50;
$mentality = 30;

// BONUS & MALUS de FORCE
switch($answer_sexe) {
  case "0":
  case "homme":
    $force = $force + 2;
    break;
  case "1":
  case "femme":
    $force = $force - 2;
    break;
  default:
    $sexe = "nok";
}
switch($answer_race){
  case "1":
  case "nain":
  case "3":
  case "barbare":
      $force = $force + 1;
      break;
  case "4":
  case "orc":
    $force = $force + 3;
    break;
}
switch($answer_classe){
  case "4":
  case "berserker":
    $force = $force + 2;
    break;
  case "3":
  case "paladin":
    $force = $force +1;
    break;
}


// BONUS & MALUS d'AGILITE
switch($answer_race){
  case "5":
  case "semi-homme":
    $agility = $agility + 1;
    break;
  case "0":
  case "elfe":
    $agility = $agility + 2;
    break;
}
switch($answer_classe){
  case "5":
  case "voleur":
    $agility = $agility + 1;
    break;
  case "2":
  case "archer":
    $agility = $agility + 2;
    break;
}

// BONUS & MALUS d'INTELLIGENCE
switch($answer_race){
  case "3":
  case "barbare":
    $intelligence = $intelligence - 1;
    break;
  case "2":
  case "humain":
    $intelligence = $intelligence + 1;
    break;
}
switch($answer_classe){
  case "0":
  case "barde":
    $intelligence = $intelligence + 1;
    break;
  case "1":
  case "mage":
    $intelligence = $intelligence + 2;
    break;
}

// BONUS & MALUS d'APPARENCE
switch($answer_sexe){
  case "0":
  case "homme":
    $apparence = $apparence - 2;
    break;
  case "1":
  case "femme":
    $apparence = $apparence +2;
    break;
}
switch($answer_race){
  case "1":
  case "nain":
    $apparence = $apparence - 1;
    break;
  case "0":
  case "elfe":
  case "2":
  case "humain":
    $apparence = $apparence + 1;
    break;
}
switch($answer_classe){
  case "0":
  case "barde":
    $apparence = $apparence + 1;
    break;
}

// BONUS & MALUS d'ENDURANCE
switch($answer_race){
  case "5":
  case "semi-homme":
    $endurance = $endurance +2;
    break;
  case "1":
  case "nain":
  case "3":
  case "barbare":
    $endurance = $endurance + 1;
    break;
}
switch($answer_classe){
  case "5":
  case "voleur":
    $endurance = $endurance + 1;
}

// BONUS & MALUS de MENTALITE
switch($answer_race){
  case "2":
  case "humain":
    $mentality = $mentality - 1;
    break;
}
switch($answer_classe){
  case "3":
  case "paladin":
    $mentality = $mentality + 1;
    break;
}

echo "Combien voulez-vous ajouter...\n";
echo "En FORCE ?\n";
	$answer_force = readline(">> ");
	$force_power = $force + $answer_force;
echo "En AGILITE ?\n";
	$answer_agility = readline(">> ");
	$agility_power = $agility + $answer_agility;
echo "En INTELLIGENCE ?\n";
	$answer_intelligence = readline(">> ");
	$intelligence_power = $intelligence + $answer_intelligence;
echo "En APPARENCE ?\n";
	$answer_apparence = readline(">> ");
	$apparence_power = $apparence + $answer_apparence;
echo "En ENDURANCE ?\n";
	$answer_endurance = readline(">> ");
	$endurance_power = $endurance + $answer_endurance;
echo "En MENTALITE ?\n";
	$answer_mentality = readline(">> ");
	$mentality_power = $mentality + $answer_mentality;
echo "\n";

//Compétences de Races
$elfe = "Faune & Flore +2 / Vue Perçante et Ouïe fine +2";
$nain = "Marchandage +2 / Forge +2";
$humain = "Séduction +2 / Cuisine +2";
$barbare = "Faire du Feu +2 / Construire un Campement +2";
$orc = "Chasse (gros gibier) +2 / Dépeçage +2";
$s_h = "Chasse & Pêche +2";

switch($answer_race){
  case "0":
  case "elfe":
	  $c_r = $elfe;
    break;
  case "1":
  case "nain":
  	$c_r = $nain;
    break;
  case "2":
  case "humain":
  	$c_r = $humain;
    break;
  case "3":
  case "barbare":
  	$c_r = $barbare;
    break;
  case "4":
  case "orc":
  	$c_r = $orc;
    break;
  case "5":
  case "semi-homme":
  	$c_r = $s_h;
    break;
}

//Compétences de Classes
$barde = "Gain d'Or dans les Villes";
$mage = "Lumière (éclaire dist-20m)";
$archer = "Discrétion +2";
$paladin = "Soins";
$berserker = "Ini +3 / Rage";
$voleur = "Détection & Désamorçage des pièges +2";

switch($answer_classe){
  case "0":
  case "barde":
	  $c_c = $barde;
    break;
  case "1":
  case "mage":
	  $c_c = $mage;
    break;
  case "2":
  case "archer":
	  $c_c = $archer;
    break;
  case "3":
  case "paladin":	
	  $c_c = $paladin;
    break;
  case "4":
  case "berserker":
	  $c_c = $berserker;
    break;
  case "5":
  case "voleur":	
	  $c_c = $voleur;
    break;
}

echo "\n";
echo "NOM = $name";
echo "\n";
echo "SEXE = $sexe";
echo "\n";
echo "RACE = $race";
echo "\n";
echo "CLASSE = $classe";
echo "\n";
echo "\n";
echo "Compétence :";
echo "\n";
echo $c_r;
echo "\n";
echo $c_c;
echo "\n";
echo "\n";
echo "FORCE = $force_power";
echo "\n";
echo "AGILITE = $agility_power";
echo "\n";
echo "INTELLIGENCE = $intelligence_power";
echo "\n";
echo "APPARENCE = $apparence_power";
echo "\n";
echo "ENDURANCE = $endurance_power";
echo "\n";
echo "MENTALITE = $mentality_power";
echo "\n";
