 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RPG Helper</title>
      <meta name="description" content="Webpage">
    <link rel="stylesheet" href="styles.css">
</head>
<body>


    <center>      
    <header>
      <h1> RPG Helper <br>  </h1>


    </header>
</center>

    <div class="container">
        <!--gold button-->
    <div class="section">
    <button id="generateGoldBtn">Generate Treasures</button>
    <div id="goldDetails">
        <p id="platinumLabel">Platinum: 0</p>
        <p id="silverLabel">Silver: 0</p>
        <p id="copperLabel">Copper: 0</p>
        <p id="goldLabel">Gold: 0</p>
        <p id="treasureLabel">Treasure: None</p>
        <p id="rubyLabel">Ruby: 0</p>
        <p id="saphLabel">Sapphire: 0</p>
        <p id="emeraldLabel">Emerald: 0</p>
        <p id="diamondLabel">Diamond: 0</p>
        <p id="pearlLabel">Pearl: 0</p>
    </div>
</div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script>
    
    const goldVC = new GoldView();

    //event listener for generateGoldBtn
    document.getElementById("generateGoldBtn").addEventListener("click", function(event) {
        goldVC.CoinButton(event);
    });
</script>


        <!--magic item button-->
        <div class="section">
            <button id="generateItemBtn">Generate Magic Item</button>
            <p id="magicItem">Magic Item: None</p>
             <!--search for items usable by a class from SQL-->
            <h3>Search Magic Items Usable by Class</h3>
			<p>(Click button to toggle search. Click button again to clear results)</p>
            <input type="text" id="searchClass" placeholder="Enter class name (e.g.,Druid)">
            <button id="searchClassButton" style="width: 20px; height: 20px; padding: 0; font-size: 0;"></button>
			<div id="searchClassResult"></div>

            <!--search for items by their name from SQL-->
            <h3>Search Magic Items by Name</h3>
			<p>(Click button to toggle search. Click button again to clear results)</p>
            <input type="text" id="searchItem" placeholder="Enter magic item name(e.g.,potion)">
			<button id="searchItemButton" style="width: 20px; height: 20px; padding: 0; font-size: 0;"></button>
            <div id="searchItemResult"></div>
			
			<!--search for description of items from SQL-->
			 <h3>Description of an Item</h3>
			 <p>(Click button to toggle search. Click button again to clear results)</p>
            <input type="text" id="searchDescript" placeholder="Enter name for description(e.g.,elixir)">
			<button id="searchDescriptButton" style="width: 20px; height: 20px; padding: 0; font-size: 0;"></button>
            <div id="searchDescriptResult"></div>

        </div>




        <!--map button-->
        <div class="section">
            <h2>Choose Environment to make a Map:</h2>
            <form id="environmentForm">
                <label>
                    <input type="radio" name="environment" value="city"> City
                </label><br>
                <label>
                    <input type="radio" name="environment" value="forest/grass"> Forest/Grass
                </label><br>
                <label>
                    <input type="radio" name="environment" value="hill/mountain"> Hill/Mountain
                </label><br>
                <label>
                    <input type="radio" name="environment" value="river/lake"> River/Lake
                </label><br>
            </form>
            <button id="generateMapBtn">Generate Map</button>
            <div id="mapContainer"></div>
        </div>

        <!--stronghold button-->
        <div class="section">
            <button id="strongholdButton">Generate Stronghold</button>
            <div id="strongholdDetails">
                <p id="strongholdCostLabel">Cost: -</p>
                <p id="strongholdTypeLabel">Type: -</p>
                <p id="strongholdWallLabel">Wall: -</p>
                <p id="strongholdTowerLabel">Tower: -</p>
                <p id="strongholdUniqueLabel">Unique: -</p>
                <p id="strongholdForgeLabel">Forge: -</p>
                <p id="strongholdTimeLabel">Time: -</p>
            </div>
        </div>
 

    <!--random Non-Player Character button-->
    <div class="section">
    <button id="happenBtn">Generate NPC</button>
    <div id="npcDetails">
            <p id="alignmentLabel">Alignment: </p>
            <p id="raceLabel">Race: </p>
            <p id="ageLabel">Age: </p>
            <p id="myLabel">Class: </p>
            <p id="hpLabel">HP: </p>
            <p id="levelLabel">Level: </p>
            <p id="basicGearLabel">Gear: </p>
            <p id="hometownLabel">Hometown: </p>
            <p id="weaponLabel">Weapon: </p>
            <p id="extraGearLabel">Extra Gear: </p>
        </div>
    </div>
	
 </div>

     <!--positioned here in case of JQuery errors-->
    <script src="npc.js"></script>
 

    <script>
        //click section for gold button
        $("#generateGoldBtn").click(function() {
            //pseudorandomly generate number for each treasure type
            var platinum = Math.floor(Math.random() * 1000); //pseudoandom number for platinum
            var silver = Math.floor(Math.random() * 1000); //pseudorandom number for silver
            var copper = Math.floor(Math.random() * 1000); //pseudorandom number for copper
            var gold = Math.floor(Math.random() * 1000); //pseudorandom number for gold
            var treasure = Math.floor(Math.random() * 1000); //pseudorandom number for generic treasure or whatever DM wants
            var ruby = Math.floor(Math.random() * 100); //pseudorandom number for rubies
            var sapphire = Math.floor(Math.random() * 100); //pseudorandom number for sapphires
            var emerald = Math.floor(Math.random() * 100); //pseudorandom number for emeralds
            var diamond = Math.floor(Math.random() * 50); //pseudorandom number for diamonds
            var pearl = Math.floor(Math.random() * 50); //pseudorandom number for pearls

            //update each label with the generated values
            $("#platinumLabel").text("Platinum: " + platinum);
            $("#silverLabel").text("Silver: " + silver);
            $("#copperLabel").text("Copper: " + copper);
            $("#goldLabel").text("Gold: " + gold);
            $("#treasureLabel").text("Treasure: " + treasure);
            $("#rubyLabel").text("Ruby: " + ruby);
            $("#saphLabel").text("Sapphire: " + sapphire);
            $("#emeraldLabel").text("Emerald: " + emerald);
            $("#diamondLabel").text("Diamond: " + diamond);
            $("#pearlLabel").text("Pearl: " + pearl);
        });
        

 

     $(document).ready(function() {
    //click section for magic items button 1st search type
    $("#generateItemBtn").click(function() {
		console.log("sending ajax");
        $.ajax({
            url: 'magicitem.php',
            type: 'GET',
            dataType: 'json', 
            success: function(data) {
                $("#magicItem").text("Magic Item: " + data.item_name);
            },
            error: function(jqXHR, textStatus, errorThrown) {
				console.error("ajax fail", textStatus, errorThrown);
                alert("Error fetching magic item.");
            }
        });
    });


   
    //section to run search for magic items by class
    $("#searchClassButton").on("click", function() {
        var searchQuery = $("#searchClass").val();
		
        if (searchQuery.length > 0) {
			if ($("#searchClassResult").is(":empty")) {
				
            $.ajax({
                url: 'search_class.php', 
                type: 'GET',
                data: { query: searchQuery },
                success: function(data) {
                    $("#searchClassResult").html(data);
                }
            });
        } else {
            $("#searchClassResult").empty();
            }
		
		}
    });
	


    //section to run search for magic items by item's name
    $("#searchItemButton").on("click", function() {
        var searchQuery = $("#searchItem").val();
		
        if (searchQuery.length > 0) {
			if ($("#searchItemResult").is(":empty")) {
			
            $.ajax({
                url: 'search_item.php', 
                type: 'GET',
                data: { query: searchQuery },
                success: function(data) {
                    $("#searchItemResult").html(data);
                }
            });
        } else {
            $("#searchItemResult").empty();
            }
		}
    });



    //section to run search for an item's description
    $("#searchDescriptButton").on("click", function() {
        var searchQuery = $("#searchDescript").val();
		
        if (searchQuery.length > 0) {
			if ($("#searchDescriptResult").is(":empty")) {
				
            $.ajax({
                url: 'search_descript.php', 
                type: 'GET',
                data: { query: searchQuery },
                success: function(data) {
                    $("#searchDescriptResult").html(data);
                }
            });
        } else {
            $("#searchDescriptResult").empty();
            }
	    }
    });
});





        //click section for the map button
        $("#generateMapBtn").click(function() {
            generateRandomMap(); 
        });

        //click section for stronghold button
        $("#strongholdButton").click(function() {
            const strongholdView = new StrongholdView();
            strongholdView.strongholdButton(); //makes pseudorandom stronghold
            updateStrongholdLabels(strongholdView); //updates labels
        });

        //click section for the NPC button
        $(document).ready(function() {
          $("#happenBtn").off("click").on("click",happenBtn);
        });

        //updates the labels for the stronghold output
        function updateStrongholdLabels(strongholdView) {
            document.getElementById("strongholdCostLabel").textContent = "Cost in gold pieces: " + strongholdView.strongholdCostLabel.text;
            document.getElementById("strongholdTypeLabel").textContent = "Type: " + strongholdView.strongholdTypeLabel.text;
            document.getElementById("strongholdWallLabel").textContent = "Wall(s): " + strongholdView.strongholdWallLabel.text;
            document.getElementById("strongholdTowerLabel").textContent = "Tower: " + strongholdView.strongholdTowerLabel.text;
            document.getElementById("strongholdUniqueLabel").textContent = "Unique room/structure: " + strongholdView.strongholdUniqueLabel.text;
            document.getElementById("strongholdForgeLabel").textContent = "Forge: " + strongholdView.strongholdForgeLabel.text;
            document.getElementById("strongholdTimeLabel").textContent = "Time in months: " + strongholdView.strongholdTimeLabel.text;
        }


      



    </script>

     <footer>
	 <!--free license use from pixel artists of free use art-->
     <p><font color="white">Pixel art in maps courtesy of 'Hyptosis' from opengameart.org</font></p>
     <p><font color="white"> in accordance with free use license</font></p>
                        
    </footer>

</body>
    <script src="gold.js"></script>
    <script src="map.js"></script>
    <script src="stronghold.js"></script>
	
	<?php
	$conn = null;
	?>

</html>
