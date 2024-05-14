<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve the student ID from the POST data
    $studentId = $_POST['studentId'];

    // Database connection setup (adjust these values as necessary)
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "project";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // SQL to insert the student ID into the database
    $sql = "INSERT INTO studentassement (studentId) VALUES ('$studentId')";

    if ($conn->query($sql) === TRUE) {
        echo 'success';
    } else {
        echo 'Error: ' . $sql . '<br>' . $conn->error;
    }

    // Close connection
    $conn->close();
}
?>
