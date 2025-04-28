<?php


header('Content-type: application/json');
try{
$conn = new PDO("mysql:hostname;dbname=databasename", "username", "password");
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
die("connect failed" . $e->getMessage());
}

//selects a random Magic Item
$query = "SELECT item_name FROM magic_items ORDER BY RAND() LIMIT 1";
$stmt = $conn->prepare($query);
$stmt->execute();
//fetches random item
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if($row){
$conn = null;
//output
echo json_encode(['item_name' => $row['item_name']]);
}else{
echo json_encode(['item_name' => 'None']);}

//$conn = null;
?>