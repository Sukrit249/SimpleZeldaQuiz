<?php
//  define('DB_NAME', getenv('DB_NAME'));
//  define('DB_USER', getenv('DB_USER'));
//  define('DB_PASSWORD', getenv('DB_PASSWORD'));
//  define('DB_HOST', getenv('DB_HOST'));


// $connection = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8', DB_USER, DB_PASSWORD);


// $query  = $connection->query("SELECT * from Question");
// $questions = $query->fetchAll(PDO::FETCH_ASSOC);

// $query  = $connection->query("SELECT * from AnswerCoices");
// $questions = $query->fetchAll(PDO::FETCH_ASSOC);





// // echo '<pre>';
// // var_dump($questions);
// // echo '</pre>';


// $_SESSION['questionCounter'] = 0;


// echo $questions[$_SESSION['questionCounter']]['QuestionNumber'] ;
// echo '<br>' ;
// echo $questions[$_SESSION['questionCounter']]['text'] . '<br>';
// $query  = $connection->query("SELECT * from AnswerCoices WHERE 'text' = " . $questions[$_SESSION['Choices']]);
// $answers = $query->fetchAll(PDO::FETCH_ASSOC);


// foreach($answers as $answer) {
//   echo $answer['text'] . '<br>';
// }



/*
echo '<pre>';
var_dump($answers);
echo '</pre>';
*/

function DBConnetion() {

  try { $connection = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8', 
    DB_USER, 
    DB_PASSWORD);
    $connection -> setAttribute(PDO:: ATTR_ERRMODE, PDO:: ERRMODE_EXCEPTION);

  }
  catch (PDOExeption $e) {

    echo "<p>DB connection failed: " . $e->getMessage() . '</p>';
    echo 'HTTP_HOST = ' . $_SERVER['HTTP_HOST'] . '<br>';
    echo 'DB_NAME = ' . DB_NAME . '<br>';
    echo 'DB_USER = ' . DB_USER . '<br>';
    echo 'DB_PASSWORD = ' . DB_PASSWORD . '<br>';
    echo 'DB_HOST = ' . DB_HOST . '<br>';
    exit;
  }
  return $connection;
}

if (strpos($_SERVER['HTTP_HOST'], 'localhost:') !== false) {
    define('DB_NAME', getenv('DB_NAME'));
    define('DB_USER', getenv('DB_USER'));
    define('DB_PASSWORD', getenv('DB_PASSWORD'));
    define('DB_HOST', getenv('DB_HOST'));
} else {
    define('DB_HOST');
    define('DB_NAME');
    define('DB_USER');
    define('DB_PASSWORD');
}
