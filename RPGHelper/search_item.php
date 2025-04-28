
<?php


try {
$conn = new PDO("mysql:host=sysmysql8.auburn.edu;dbname=mda0030db", "mda0030", "INDYcal23447!!CRYs");
//$conn = new mysqli("localhost", "mda0030", "ONEtree99", "dnd_database");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	die("connect failed" . $e->getMessage());
}

//getter for search query
$query = isset($_GET['query']) ? $_GET['query'] : '';

if ($query) {
    try {
        //find magic items by name
        $sql = "SELECT item_name FROM magic_items WHERE item_name LIKE :query";
        $stmt = $conn->prepare($sql);
        $searchTerm = '%' . $query . '%';
        $stmt->bindParam(':query', $searchTerm, PDO::PARAM_STR);
        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
		//output
        if ($result) {
            foreach ($result as $row) {
                echo '<p>' . $row['item_name'] . '</p>';
            }
        } else {
            echo '<p>No items found with this name.</p>';
        }
    } catch (PDOException $e) {
        echo 'Error: ' . $e->getMessage();
    }
}

$conn = null;

?>
