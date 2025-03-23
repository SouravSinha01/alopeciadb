<?php
require_once 'db_connection.php';

// Get current page, items per page, and search query from request
$currentPage = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$itemsPerPage = isset($_GET['itemsPerPage']) ? (int)$_GET['itemsPerPage'] : 10;
$searchQuery = isset($_GET['q']) ? trim($_GET['q']) : '';

// Calculate offset for SQL query
$offset = ($currentPage - 1) * $itemsPerPage;

// Base query
$whereClause = '';
$bindParams = [];
$paramTypes = '';

if (!empty($searchQuery)) {
    // Add WHERE clause for filtering by name or SMILES
    $whereClause = "WHERE compound_name LIKE ? OR smiles LIKE ?";
    $bindParams[] = '%' . $searchQuery . '%';
    $bindParams[] = '%' . $searchQuery . '%';
    $paramTypes .= 'ss';
}


// Get the total number of records
$totalQuery = "SELECT COUNT(*) as total FROM marketed_drugs $whereClause";
$stmt = $conn->prepare($totalQuery);
if (!empty($paramTypes)) {
    $stmt->bind_param($paramTypes, ...$bindParams);
}
$stmt->execute();
$totalResult = $stmt->get_result();
$totalRow = $totalResult->fetch_assoc();
$totalRecords = $totalRow['total'];
$stmt->close();

// Calculate total pages
$totalPages = ceil($totalRecords / $itemsPerPage);

// Fetch molecules for the current page
$sql = "SELECT * FROM marketed_drugs $whereClause LIMIT ?, ?";
$stmt = $conn->prepare($sql);

// Bind parameters dynamically
if (!empty($paramTypes)) {
    $bindParams[] = $offset;
    $bindParams[] = $itemsPerPage;
    $paramTypes .= 'ii';
    $stmt->bind_param($paramTypes, ...$bindParams);
} else {
    $stmt->bind_param('ii', $offset, $itemsPerPage);
}

$stmt->execute();
$result = $stmt->get_result();

// Generate HTML table
echo "<div class='table-container'>";
echo "<table class='molecule-table'>";
echo "<thead>
        <tr>
           
            <th>Alop ID</th>
            <th>Structure</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
      </thead>";
echo "<tbody>";

if ($result->num_rows > 0) {
    $count = $offset + 1;
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['id']) . "</td>";
        echo "<td><img src='"."../alopecia/structure_images/". htmlspecialchars($row['image']) . "' alt='Structure' class='structure-image'></td>";
        echo "<td>" . htmlspecialchars($row['compound_name']) . "</td>";
        echo "<td><button class='action-button' onclick=\"viewMoleculeDetails('{$row['id']}')\">View</button></td>";
        echo "</tr>";
        $count++;
    }
} else {
    echo "<tr><td colspan='5'>No molecules found.</td></tr>";
}

echo "</tbody>";
echo "</table>";
echo "</div>";

// Generate pagination
echo "<div class='pagination'>";
if ($currentPage > 1) {
    echo "<button class='page-button' onclick='loadPage(" . ($currentPage - 1) . ")'>&laquo; Prev</button>";
}
for ($i = 1; $i <= $totalPages; $i++) {
    $activeClass = $i === $currentPage ? 'active-page' : '';
    echo "<button class='page-button {$activeClass}' onclick='loadPage({$i})'>{$i}</button>";
}
if ($currentPage < $totalPages) {
    echo "<button class='page-button' onclick='loadPage(" . ($currentPage + 1) . ")'>Next &raquo;</button>";
}
echo "</div>";

$stmt->close();
$conn->close();
?>
