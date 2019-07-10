<h1>Book Details</h1>
<?php
require_once 'database.php';
//Haha!!! Yvan was there!!!
$connection  = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD);
$db_name = 'bookstore';
$db_found = mysqli_select_db($connection, DB_NAME);

$bookId = $_GET['bookID'];
$query = "SELECT books.title , books.cover,  books.description , author.name , author.biography 
FROM books INNER JOIN author ON books.author_id = author.author_id WHERE books.book_id = $bookId";
//$query = "SELECT * FROM books WHERE book_id ='".$bookId."'";
$results = mysqli_query($connection, $query);
/*  I retrieve the results as an array
and display this array (using a loop) */
while ($db_record = mysqli_fetch_assoc($results)) {
    echo '<hr>';
    echo $db_record['title'] . '<br>';
    echo $db_record['description'] . '<br>';
    echo "<img src='" . $db_record["cover"] . "' />" . '<br>';
}

mysqli_close($connection);


?>