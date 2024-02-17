<?php require "passwords.php"; ?>
<?php
// ***collects a list of images

// Connecting, selecting database
$dbconn = pg_connect("host=$host dbname=$dbname user=$user password=$password")
    or die('Could not connect: ' . pg_last_error());
// Performing SQL query
$query = "select id,file_name,file_hash,title,collection from images where collection='player_token'";
$result = pg_query($dbconn, $query) or die('Query failed: ' . pg_last_error());

$resultArray = pg_fetch_all($result);
echo json_encode($resultArray);

// Free resultset
pg_free_result($result);
// Closing connection
pg_close($dbconn);

?>

