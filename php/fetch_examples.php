<?php
require_once 'db_connection.php';

// Get search query from the request
$query = isset($_GET['q']) ? $_GET['q'] : '';

// Fetch examples from the database
$sql = "SELECT name FROM molecules WHERE name LIKE ? LIMIT 5"; // Adjust the limit as needed
$stmt = $conn->prepare($sql);
$searchTerm = "%" . $query . "%";
$stmt->bind_param("s", $searchTerm);
$stmt->execute();
$result = $stmt->get_result();

$examples = [];
while ($row = $result->fetch_assoc()) {
    $examples[] = $row['name'];
}

echo json_encode($examples); // Return examples as JSON

$conn->close();
?>
