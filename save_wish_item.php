<?php
// استقبال البيانات المرسلة من الجافا سكريبت
$data = json_decode(file_get_contents('php://input'), true);

// اتصال بقاعدة البيانات
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "wishsheet";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // إنشاء استعلام SQL INSERT لإدراج البيانات في جدول "wishsheet"
    $stmt = $conn->prepare("INSERT INTO wishsheet ( title, description, professor, priority) VALUES ( :title, :description, :professor, :priority)");
   
    $stmt->bindParam(':title', $data['title']);
    $stmt->bindParam(':description', $data['description']);
    $stmt->bindParam(':professor', $data['professor']);
    $stmt->bindParam(':priority', $data['priority']);

    // تنفيذ الاستعلام
    $stmt->execute();

    // إرسال رمز الحالة 200 في حالة نجاح العملية
    http_response_code(200);
    echo json_encode(array("message" => "Wish item saved successfully."));
} catch(PDOException $e) {
    // إرسال رمز الحالة 500 في حالة حدوث خطأ
    http_response_code(500);
    echo json_encode(array("message" => "Error: " . $e->getMessage()));
}
?>
