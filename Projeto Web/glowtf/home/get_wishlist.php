<?php
header('Content-Type: application/json'); // Set the correct Content-Type header

$host = "localhost";
$port = "3307";
$usuario = "root";
$senha = "";
$banco = "glowtfdb";

$conn = new mysqli($host, $usuario, $senha, $banco, $port);

if ($conn->connect_error) {
    die("Erro na conexão com o banco de dados: " . $conn->connect_error);
}

// Assuming $_POST['user_id'] is set and valid
$user_id = $conn->real_escape_string($_POST['user_id']);

$sql = "SELECT id_hat FROM wishlist_has_hat WHERE id_wishlist = '$user_id'";

$result = $conn->query($sql);

$hat_ids = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $hat_ids[] = $row['id_hat'];
    }
}

echo json_encode($hat_ids); // Return the result as JSON

$conn->close();
?>
