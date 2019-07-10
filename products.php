<form action="" method="POST">
    <h1>Available books for sale</h1>
    <input type="text" name="search" placeholder="Type your book name"> <br>
    <br>
    <input type="submit" name="subButton" value="Search">


</form>

<?php

require_once 'database.php';
$connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD);
$db_name = 'bookstore';
$db_found = mysqli_select_db($connection, DB_NAME);
$query = 'SELECT * FROM books';
$results = mysqli_query($connection, $query);


/*  I retrieve the results as an array
and display this array (using a loop) */
//$db_record = mysqli_fetch_assoc($results)
if (!isset($_POST['subButton'])) {
    while ($db_record = mysqli_fetch_assoc($results)) {
        echo '<hr>';

        
        ?>

        <a href="product.php?bookID=<?php echo $db_record['book_id']; ?>">
         <?php echo $db_record['title']  ?> </a>

        <?php

        echo $db_record['release_date'] . '<br>';

        echo $db_record['description'] . '<br>';

        echo "<input type='submit' name='addButton' value='Add to cart'>";
        //echo "<img src='" . $db_record["poster"] . "' />" . '<br>';        
    }
}if(isset($_POST['subButton'])) {
    $userInput = $_POST['search'];

    $select = "SELECT  title FROM books  WHERE title LIKE '%$userInput%' ";
    
    $secondResults = mysqli_query($connection, $select);
       // var_dump ($secondResults);
    while ($db_record = mysqli_fetch_assoc($secondResults)) {

          echo "<input type='submit' name='addButton' value='Add to cart'>";
            echo $db_record['title'] . '<br>';
    }
}



mysqli_close($connection);
?>

