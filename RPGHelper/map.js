
    //for radio buttons and start map generation
    const environmentForm = document.getElementById('environmentForm');
    environmentForm.addEventListener('change', function () {
        generateRandomMap(); //generates map
    });

    //make map immediately
    const generateMapBtn = document.getElementById('generateMapBtn');
    generateMapBtn.addEventListener('click', function () {
        generateRandomMap(); //generates map
    });


function generateRandomMap() {
    //choose map type for tiles based on button selection
    const selectedEnvironment = document.querySelector('input[name="environment"]:checked')?.value;
    
    if (!selectedEnvironment) {
        alert("Please select an environment first.");
        return;
    }

    //formulas for the different type of map tile concentrations
    let imageDistribution;

    if (selectedEnvironment === "city") {
        imageDistribution = {
            city: 0.9, //90% city tiles
            grass: 0.1 //10% grass tiles
        };
    } else if (selectedEnvironment === "forest/grass") {
        imageDistribution = {
            grass: 0.9, //90% grass tiles
            mountain: 0.08, //8% mtn tiles
            river: 0.02 //2% river/lake tiles
        };
    } else if (selectedEnvironment === "river/lake") {
        imageDistribution = {
            grass: 0.5, //50%grass tiles
            river: 0.5 //50%river/lake tiles
        };
    } else if (selectedEnvironment === "hill/mountain") {
        imageDistribution = {
            mountain: 0.6, //60% mtn tiles
            grass: 0.3, //30% grass tiles
            hill: 0.1  //10% hill tiles
        };
    } else {
        return;
    }

    //different types of locations based on the selected environment
    const locations = ['city', 'city1', 'city2', 'city3', 'city4', 'city5', 'city6', 'city7', 'city8', 'city9', 'city10', 'grass', 'grass1', 'grass2', 'grass3', 'mountain', 'hill', 'hills', 'hills2', 'river'];

    //array for tiles
    const randomMap = [];

    //loop for grid of random tiles
    for (let i = 0; i < 100; i++) {
        let randomLocation = getRandomLocationBasedOnDistribution(imageDistribution);

        //pick multiple city tiles if city selected
        if (randomLocation === 'city') {
            randomLocation = `city${Math.floor(Math.random() * 10) +1}`;
        }

        if (randomLocation === 'grass') {
            randomLocation = `grass${Math.floor(Math.random() * 3) +1}`;
        }
                if (randomLocation === 'hills') {
            randomLocation = `hills${Math.floor(Math.random() * 2) +1}`;
        }


        //create a tile element for each random map
        const img = document.createElement('img');
        img.src = 'images/' + randomLocation + '.jpg'; 
        img.alt = randomLocation;
        img.style.width = '50px';  // width of tile
        img.style.height = '50px'; // height of tile
        img.style.margin = '0';   

        //adds image tile to the random map array
        randomMap.push(img);
    }

    
    const mapContainer = document.getElementById('mapContainer');

    //clears old map
    mapContainer.innerHTML = '';

    //wrapper for grid
    const gridWrapper = document.createElement('div');
    gridWrapper.style.display = 'grid';
    gridWrapper.style.gridTemplateColumns = 'repeat(10, 50px)'; //make columns
    gridWrapper.style.gridTemplateRows = 'repeat(10, 50px)'; //make rows
    gridWrapper.style.gridGap = '0px'; 

    //appends tiles to wrapper
    randomMap.forEach(img => gridWrapper.appendChild(img));

    //appends wrapper to map
    mapContainer.appendChild(gridWrapper);
}


function getRandomLocationBasedOnDistribution(distribution) {
    //random number between 0 and 1
    const rand = Math.random();

    let cumulative = 0;
    for (const location in distribution) {
        cumulative += distribution[location];
        if (rand <= cumulative) {
            return location;  //returns location
        }
    }
}

