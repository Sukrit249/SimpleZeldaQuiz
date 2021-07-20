<?php
if(!isset($_SERVER['PHP_AUTH_USER'])||
    $_SERVER['PHP_AUTH_USER']  !="tn" ||
    $_SERVER['PHP_AUTH_PW']     !="ophp-21")
{
    header('WWW-Authenticate: Base realm="My Realm');
    header('HTTP/1.0 401 Untauthorized');
    echo "PC Say no";
    exit; } 
    else {
        echo "Good to go!!";
    
    }
    ?>
  
    