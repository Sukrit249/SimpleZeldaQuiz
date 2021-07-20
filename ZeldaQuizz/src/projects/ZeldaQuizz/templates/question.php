
<?php include '../config.php';


if(!isset($_SESSION['score'])){
    $_SESSION['score'] = 0;
    $_SESSION['counter'] = 1;//counter standartwert ist auf 1 gesetzt, um die Nummer der Frage abzuändern, den Wert auf -2, +3 als Beispiel, Echo Ausgabe darauf achten das man eine Wert erhöht oder minus um eine ander Frage auszugebn

}

//Vorbereitung und abfrage der Fragen aus der DB
$query = $connection->query("SELECT * FROM Question");
$counter = $_SESSION['counter'];
$questions = $query->fetchALL(PDO::FETCH_ASSOC);
//Vorbereitung und abfrage der Antworten aus der DB
$query = $connection->query("SELECT * FROM AnswerCoices");
$answers = $query->fetchALL(PDO::FETCH_ASSOC);

$_SESSION['TotalQuestions'] = count($questions);


/*
echo $answers[$counter+2] ['Text']; //hier die nummer ändern um eine andere Frage darzustellen, darauf achten das die ID nicht aus der Datenbank kommt, sondern aus dem array Position(0 ist 1, 1 ist 2 usw)
echo '<pre>';
var_dump($questions);
echo '</pre>';


/*
// Antworten holen
//$query = "SELECT * FROM 'choices'
        WHERE question_number = $number";

//Resultate holen 
$choices = $mysqli->query($query) or die($mysqli->error._LINE_);
_POST['answer']*/
?>


    <main>
        <div class="QBox">
            <div class="current">Question <?php echo $counter; ?> of <?php echo count($questions); ?></div>

            
            <div class="question">
                <p> 
                </p>
            </div>

            <form  method="post" action="process.php">

                
                    
                    <?php 
                    echo $questions[$counter-1]['Text'].'?<br>'; 
                    //echo $questions[$counter-1]['ID'];
                    foreach($answers as $answer){
                        if($questions[$counter-1]['ID'] == $answer['quId']){
                           echo '<button name="answer" ID="Y" value="'.$answer['Choices'].'">'. $answer['text'] .'</button><br>';
                        }
                    }
                    ?>
                    

                
                <input type="hidden" name="number" value="<?php echo $number; ?>" />
            </form>    
                    