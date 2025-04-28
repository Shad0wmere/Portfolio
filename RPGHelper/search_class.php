<?php


try {
$conn = new PDO("mysql:hostname;dbname=databasename", "username", "password");

$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	die("connect failed" . $e->getMessage());
}

if (!$conn) {
	die("db connect failed");
}

//getter for data in search query
$query = isset($_GET['query']) ? $_GET['query'] : '';

if ($query) {
	 //find magic items by class name = charactertier due to class being reserved word
	//SQL table,column names changed from proposal due to SQL reserved words
    try {
        $sql = "SELECT item_name FROM magic_items WHERE charactertier LIKE :charactertier";
        $stmt = $conn->prepare($sql);

   
        if (!$stmt) {
            throw new Exception('Error preparing SQL query.');
        }

  
        $searchTerm = '%' . $query . '%';
        $stmt->bindParam(':charactertier', $searchTerm, PDO::PARAM_STR);

    
        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($result) {
            foreach ($result as $row) {
                echo '<p>' . htmlspecialchars($row['item_name']) . '</p>';
            }
        } else {
            echo '<p>No items found for this class.</p>';
        }
    } catch (PDOException $e) {
        echo 'Error: ' . $e->getMessage();
    }
} else {
    echo '<p>Please provide a search query.</p>';
}

$conn = null;


?>
