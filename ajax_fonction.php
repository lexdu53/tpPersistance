<?php
$actionSelect = $_GET["action"];
switch ($actionSelect){
    case 'connection':
        echo "coucou";

    break;  
    default :
        echo "default";
}

function connection(){
    return '';
}