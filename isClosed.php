<?php

// Database connection
$host    = 'localhost';
$db      = 'project';
$user    = 'root';
$pass    = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $user, $pass, $opt);

// Query to get all topics
$sql  = "SELECT * FROM topic";
$stmt = $pdo->query($sql);

// Fetch all topics as an associative array
$topics = $stmt->fetchAll();

// Convert topics to JSON
$topicsJson = json_encode($topics);

// Output topics as JSON
echo $topicsJson;
