<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_quanlychamcong";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection and handle error
if ($conn->connect_error) {
    throw new Exception("Connection failed: " . $conn->connect_error);
}

// Optionally set the charset
$conn->set_charset("utf8"); // Set character set if needed

// Your code for querying the database goes here

// Close the connection when done
// $conn->close(); // Uncomment this line when you are done with the connection
?>
