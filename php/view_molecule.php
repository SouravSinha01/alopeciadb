<?php
require_once 'db_connection.php';

$id = $_GET['id'] ?? '';

if (!empty($id)) {
    $sql = "SELECT * FROM marketed_drugs WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        echo "<div class='molecule-details-card'>";

        // Header Section with Image on the Right
        echo "<div class='header-section'>";
        echo "<div class='header-text'>";
        echo "<h2>" . htmlspecialchars($row['compound_name']) . "</h2>";
        echo "</div>";
        echo "<div class='header-image'>";
        echo "<img src='../alopecia/structure_large/" . htmlspecialchars($row['image']) . "' alt='Structure' class='structure-imagee'>";

        $imagePath = "../alopecia/structure_large/" . htmlspecialchars($row['image']);
echo "<a href='" . htmlspecialchars($imagePath) . "' download='structure_image.png' class='download-button'>Download</a>";
        echo "</div>";
        echo "</div>";

        // Details Section
        echo "<div class='details-section'>";
        echo "<div class='data-field'><h3>ID</h3><hr><p>" . htmlspecialchars($row['id']) . "</p></div>";
        echo "<div class='data-field'><h3>Formula</h3><hr><p>" . htmlspecialchars($row['formula']) . "</p></div>";
        echo "<div class='data-field'><h3>CAS</h3><hr><p>" . htmlspecialchars($row['cas']) . "</p></div>";
        echo "<div class='data-field'><h3>Market Name</h3><hr><p>" . htmlspecialchars($row['market_name']) . "</p></div>";
        echo "<div class='data-field'><h3>FDA Approved</h3><hr><p>" . htmlspecialchars($row['fda_approved']) . "</p></div>";
        echo "<div class='data-field'><h3>Therapy</h3><hr><p>" . htmlspecialchars($row['therapy']) . "</p></div>";
        echo "<div class='data-field'><h3>Dosage</h3><hr><p>" . htmlspecialchars($row['dose']) . "</p></div>";
        echo "<div class='data-field'><h3>Mechanism</h3><hr><p>" . htmlspecialchars($row['mechanism']) . "</p></div>";
        echo "<div class='data-field'><h3>Sex</h3><hr><p>" . htmlspecialchars($row['sex']) . "</p></div>";
        echo "<div class='data-field'><h3>Medication</h3><hr><p>" . htmlspecialchars($row['medication']) . "</p></div>";
        echo "<div class='data-field'><h3>Effects</h3><hr><p>" . htmlspecialchars($row['effects']) . "</p></div>";
        echo "<div class='data-field'><h3>SMILES</h3><hr><p>" . htmlspecialchars($row['smiles']) . "</p></div>";

        // Reference Section
        echo "<div class='data-field'><h3>Reference</h3><hr>";
        if (!empty($row['link'])) {
            echo "<p><a href='" . htmlspecialchars($row['link']) . "' target='_blank'>" . htmlspecialchars($row['reference']) . "</a></p>";
        } else {
            echo "<p>" . htmlspecialchars($row['reference']) . "</p>";
        }
        echo "</div>";

        echo "</div>"; // Close details section
        echo "</div>"; // Close molecule-details-card

    } else {
        echo "<p>No molecule found.</p>";
    }

    $stmt->close();
}
$conn->close();
?>
