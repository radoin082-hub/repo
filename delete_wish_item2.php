<?php

// Database connection
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "project"; // replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the data from the AJAX request
$data = json_decode(file_get_contents('php://input'), true);

$theme      = $data['theme'];
$theme_id   = $data['theme_id'];

// SQL query to delete the item from the database
$sql
    = "DELETE FROM wishsheet WHERE theme = $theme";

$sql2 = "UPDATE topic set status = '1' where id = '$theme_id'";
if ($conn->query($sql) === true) {
    echo "Record deleted successfully";
    if ($conn->query($sql2) === true) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
