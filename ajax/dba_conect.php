<?php
$servername = "localhost";
$database = "votaciones";
$username = "Max";
$password = "1234";
$port = 5433;

// Create connection to PostgreSQL
$dbconn3 = pg_connect("host=$servername port=$port dbname=$database user=$username password=$password");

// Check connection
if (!$dbconn3) {
    die("Connection failed: " . pg_last_error());
}
?>