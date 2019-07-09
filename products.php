<body>
    <header>
        <h1>The three best sellers</h1>

    </header>
    <style>
        img {
            height: 200px;
            width: 200px;
        }
    </style>
</body>

</html>

<?php

require_once 'database.php';
$conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD);
$db_name = 'bookstore';
$db_found = mysqli_select_db($conn, DB_NAME);
$query = 'SELECT * FROM movies ORDER BY  release_year  LIMIT 3';
$results = mysqli_query($conn, $query);
/*  I retrieve the results as an array
and display this array (using a loop) */
while ($db_record = mysqli_fetch_assoc($results)) {
    //var_dump($db_record);
    echo '<hr>';
    echo $db_record['title'] . '<br>';
    echo $db_record['release_year'] . '<br>';
    //echo "<img src='" . $db_record["poster"] . "' />" . '<br>';
}

// close the connection to the database 
mysqli_close($conn);
?>