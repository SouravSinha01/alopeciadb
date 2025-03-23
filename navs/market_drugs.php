<?php
require_once 'connection.php'; // Include your database connection

// Fetch records from the database
$sql = "SELECT * FROM marketed_drugs";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Natural Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0px;
            scroll-behavior: smooth; /* Enables smooth scrolling for anchor links */
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header h1 {
            font-size: 2rem;
            text-transform: uppercase;
            border-bottom: 2px solid #000;
            display: inline-block;
            margin-bottom: 10px;
        }
        .molecule-card {
            display: flex;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 16px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            height: 300px;
            overflow: hidden;
        }

        .molecule-card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-right: 20px;
            border-radius: 8px;
        }

        .molecule-details {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow-y: auto;
            max-height: 260px;
        }

        .molecule-details p {
            margin: 4px 0;
            overflow-wrap: break-word;
        }

        .molecule-details a {
            text-decoration: none;
            color: #007BFF;
        }

        .molecule-details a:hover {
            text-decoration: underline;
        }

        /* Styling for the Back to Top Button */
        .back-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
        }

        .back-to-top:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <!-- Add an ID to the top section for anchor targeting -->
    <div class="header" id="top">
        <h1>Marketed Drugs</h1>
    </div>

    <!-- Display molecule cards from the database -->
    <?php if ($result->num_rows > 0): ?>
        <?php while ($row = $result->fetch_assoc()): ?>
            <div class="molecule-card">
            <img src="../alopecia/structure_images/<?php echo htmlspecialchars($row['image']); ?>" alt="<?php echo htmlspecialchars($row['compound_name']); ?>">
            <div class="molecule-details">
                    <h2><?php echo htmlspecialchars($row['id']).".".htmlspecialchars($row['compound_name']); ?></h2>
                    <p><strong>Market Name:</strong> <?php echo htmlspecialchars($row['market_name']); ?></p>
                    <p><strong>Formula:</strong> <?php echo htmlspecialchars($row['formula']); ?></p>
                    <p><strong>Sex [Male/Female/Both]:</strong> <?php echo htmlspecialchars($row['sex']); ?></p>
                    <p><strong>SMILES:</strong> <?php echo htmlspecialchars($row['smiles']); ?></p>
                    <p><strong>Mechanism:</strong> <?php echo htmlspecialchars($row['mechanism']); ?></p>
                    <p><strong>FDA Approved:</strong> <?php echo htmlspecialchars($row['fda_approved']); ?></p>
                    <p><strong>CAS:</strong> <?php echo htmlspecialchars($row['cas']); ?></p>
                    <p><strong>Therapy:</strong> <?php echo htmlspecialchars($row['therapy']); ?></p>
                    <p><strong>Medication:</strong> <?php echo htmlspecialchars($row['effects']); ?></p>
                    <p><strong>Side Effects:</strong> <?php echo htmlspecialchars($row['smiles']); ?></p>
                    <p><strong>Dose:</strong> <?php echo htmlspecialchars($row['dose']); ?></p>

                    <p><strong>Reference:</strong> <a href="<?php echo htmlspecialchars($row['link']); ?>" target="_blank"><?php echo htmlspecialchars($row['reference']); ?></a></p>
                </div>
            </div>
        <?php endwhile; ?>
    <?php else: ?>
        <p>No records found.</p>
    <?php endif; ?>

    <?php
    $conn->close();
    ?>

    <!-- Back to Top Button as an anchor link -->
    <a href="#top" class="back-to-top">Back to Top</a>

</body>
</html>
