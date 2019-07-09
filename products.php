
<?php

require_once 'database.php';
$conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD);
$db_name = 'bookstore';
$db_found = mysqli_select_db($conn, DB_NAME);
$query = 'SELECT * FROM books';
$results = mysqli_query($conn, $query);
/*  I retrieve the results as an array
and display this array (using a loop) */
//$db_record = mysqli_fetch_assoc($results)
while ($db_record = mysqli_fetch_assoc($results)) {
    //var_dump($db_record);
    echo '<hr>';
    echo "<img src='" . $db_record["poster"] . "' />" . '<br>';
    echo $db_record['title'] . '<br>';
    echo $db_record['release_year'] . '<br>';
    echo $db_record['description'] . '<br>';
    echo "<input type='submit' name='addButton' value='Add to cart'>";
    //echo "<img src='" . $db_record["poster"] . "' />" . '<br>';

    if(isset($_GET['subButton'])){

    }
}
// <input type="submit" name="addButton" value="Add to cart">
// close the connection to the database 
mysqli_close($conn);
?>

<form action="" method="GET">
<h1>Available books for sale</h1>
 <input type="text" name="search" placeholder="Type your book name"> <br>
 <br>
 <input type="submit" name="subButton" value="Search">


</form>

