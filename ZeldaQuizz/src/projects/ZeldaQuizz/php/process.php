<?php
include 'database.php';
 



$_SESSION['score'] = $_SESSION['score'] + $_POST['answer'];
$_SESSION['counter']++;
if($_SESSION['TotalQuestions'] == $_SESSION['counter']-1 ){
    header('Location: result.php');
    } else {
        header('Location: questions.php');
    }
?>
