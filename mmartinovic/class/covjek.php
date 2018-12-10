<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 * Description of covjek
 *
 * @author office
 */
class covjek {
    //put your code here
    private $spol='M';
    public $ime='Marko';
    public $broj;

    public $trenutna_brzina;
    
    public function ime(){
        return "Moje ime je " . $this->ime.'<br>';
    }
    public function get_spol(){
        if($this->spol=='M')
        return $this->spol;
    }
    public function set_spol(){
        return $this->spol=$s;
    }
    public function hodaj(){}
    public function trci(){}
    public function stani(){}
    public function komuniciraj(covjek $cov){
        $cov->trenutna_brzina+=2;
        if($this->spol===$cov->spol){
            
        }
    }
    
}
