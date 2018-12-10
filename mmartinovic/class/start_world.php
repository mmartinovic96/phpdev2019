<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include_once './covjek.php'; //dok ne naucimo autologing



$C1=new covjek();//nova istanca klase covjek
$C1->broj=5;

echo $C1->ime;

$c2=new covjek();
$c2->ime="Martina";
echo $c2->ime;
echo "<hr>";
$C1->ime();
$c2->ime();

echo $c2->trenutna_brzina;
$C1->komuniciraj($c2);
echo $c2->trenutna_brzina;
$C1->komuniciraj($c2);
echo $c2->trenutna_brzina;
$C1->komuniciraj($c2);
echo $c2->trenutna_brzina;
$c2->set_spol('Z');
echo '<br>ja sam '.$c2->get_spol();
$c2->set_spol('M');
echo '<br>ja sam '.$c2->get_spol();
 echo $C1->trenutna_brzina;      