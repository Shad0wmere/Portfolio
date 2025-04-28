<?php


try {
$conn = new PDO("mysql:host=sysmysql8.auburn.edu;dbname=mda0030db", "mda0030", "INDYcal23447!!CRYs");
//$conn = new mysqli("localhost", "mda0030", "ONEtree99", "dnd_database");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	die("connect failed" . $e->getMessage());
}


try{
    //getter for data in search query
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    if ($query) {
		
        //query to find description of an item typed in the search box
        $sql = "SELECT m.item_name, d.detailedinfo
                FROM magic_items m
                INNER JOIN description d ON m.id = d.itemid
                WHERE m.item_name LIKE :query";

        //SQL statement prep
        $stmt = $conn->prepare($sql);

        //bind_param for SQL search
        $searchQuery = '%' . $query . '%';
        $stmt->bindParam(':query', $searchQuery, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        //output results
        if ($result) {
            foreach ($result as $row) {
                echo '<div>';
                echo '<h4>' . htmlspecialchars($row['item_name']) . '</h4>';
                echo '<p>' . htmlspecialchars($row['detailedinfo']) . '</p>';
                echo '</div>';
            }
        } else {
            echo '<p>No items found with this name.</p>';
        }

    } else {
        echo '<p>Please provide a search query.</p>';
    }

} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}

$conn = null;

?>
