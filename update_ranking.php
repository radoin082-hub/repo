<?php
// Paramètres de connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "etudiant"; // Le nom de votre base de données

try {
    // Connexion à la base de données MySQL via PDO
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Configuration des options PDO pour afficher les erreurs de requête SQL
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Récupérer les données envoyées depuis le client
    $data = json_decode(file_get_contents('php://input'), true);

    // Parcourir les données et mettre à jour les classements dans la base de données
    foreach ($data as $item) {
        $studentId = $item['student_id'];
        $newRanking = $item['new_ranking'];
        
        // Mettre à jour le classement de l'étudiant dans la base de données
        $sql = "UPDATE etudiantl3 SET ranking = :newRanking WHERE id = :studentId";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':newRanking', $newRanking, PDO::PARAM_INT);
        $stmt->bindParam(':studentId', $studentId, PDO::PARAM_INT);
        $stmt->execute();
    }

    echo 'Le classement de(s) étudiant(s) a été mis à jour avec succès.';
} catch(PDOException $e) {
    echo "Erreur PDO : " . $e->getMessage();
}
?>
