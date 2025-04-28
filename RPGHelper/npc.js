
// Created by Matthew Anderson on 11/3/22 in Swift

class NPCValues {
    constructor() {
        this.chaoticLaw = "";
        this.race = "";
        this.age = "";
        this.playerClass = "";
        this.hp = 0;
        this.homeTown = "";
        this.basicGear = "";
        this.extraGear = "";
        this.level = 1;
    }
}

// Utility function to generate random values from an array
function getRandomValueFromArray(arr) {
    return arr[Math.floor(Math.random() * arr.length)];
}

// Update NPC labels
function updateNPCLabels(npcValues) {
    document.getElementById("alignmentLabel").textContent = `Alignment: ${npcValues.chaoticLaw}`;
    document.getElementById("raceLabel").textContent = `Race: ${npcValues.race}`;
    document.getElementById("ageLabel").textContent = `Age: ${npcValues.age}`;
    document.getElementById("myLabel").textContent = `Player Class: ${npcValues.playerClass}`;
    document.getElementById("hpLabel").textContent = `Hit Points: ${npcValues.hp}`;
    document.getElementById("basicGearLabel").textContent = `Basic Gear: ${npcValues.basicGear}`;
    document.getElementById("hometownLabel").textContent = `Home Town: ${npcValues.homeTown}`;
    document.getElementById("weaponLabel").textContent = `Weapon: ${npcValues.weapon}`;
    document.getElementById("extraGearLabel").textContent = `Extra Gear: ${npcValues.extraGear}`;
    document.getElementById("levelLabel").textContent = `Level: ${npcValues.level}`;
}

// Create NPC and assign random values
function generateNPC() {
    const npcVAL = new NPCValues();

    const chaoticLawOptions = ["Chaotic Good", "Chaotic Neutral", "Chaotic Evil", "True Neutral", "Lawful Good", "Lawful Evil"];
    const raceOptions = ["Deep Dwarf", "Hills Dwarf", "Human", "Gnome", "High Elf", "Moon Elf", "Wild Elf", "Drow"];
    const ageOptions = ["Adult", "Middle aged", "Elderly"];
    const playerClassOptions = [
        { name: "Bard", hp: 8 }, { name: "Fighter", hp: 10 }, { name: "Barbarian", hp: 12 }, 
        { name: "Ranger", hp: 10 }, { name: "Monk", hp: 8 }, { name: "Ninja", hp: 8 }, 
        { name: "Rogue", hp: 8 }, { name: "Cleric", hp: 8 }, { name: "Psionicist", hp: 8 },
        { name: "Wizard", hp: 6 }, { name: "Sorcerer", hp: 6 }, { name: "Druid", hp: 8 },
        { name: "Artificer", hp: 8 }, { name: "Paladin", hp: 10 }
    ];

    npcVAL.chaoticLaw = getRandomValueFromArray(chaoticLawOptions);
    npcVAL.race = getRandomValueFromArray(raceOptions);
    npcVAL.age = getRandomValueFromArray(ageOptions);
    const playerClass = getRandomValueFromArray(playerClassOptions);
    npcVAL.playerClass = playerClass.name;
    npcVAL.level = Math.floor(Math.random() * 20) + 1; // Random level
    npcVAL.hp = (((Math.floor(Math.random() * playerClass.hp) * npcVAL.level + 1) * 4)/2); // Random HP based on class
	



    // Random gear and hometown
    const gearOptions = ["Hammer", "Old bucket", "Lock pick set", "Fruit", "Bread", "Compass"];
    const hometownOptions = ["Anusis", "Teakwood Village", "Wavestead Port", "Iron town", "Lost Creek", "Eulus Mountain"];
    const weaponOptions = ["Dagger", "Axe", "Mace", "Long sword", "Short sword", "Staff"];
    const extraGearOptions = ["Big dog", "Small dog", "Cat", "Pony", "Horse", "Pet bird", "Hamster", "None"];

    npcVAL.basicGear = getRandomValueFromArray(gearOptions);
    npcVAL.homeTown = getRandomValueFromArray(hometownOptions);
    npcVAL.weapon = getRandomValueFromArray(weaponOptions);
    npcVAL.extraGear = npcVAL.playerClass === "Paladin" ? "War horse" : getRandomValueFromArray(extraGearOptions);

    return npcVAL;
}

// Handle button click event
function happenBtn() {
    try {
        const npcVAL = generateNPC();
        updateNPCLabels(npcVAL);
        return npcVAL;
    } catch (error) {
        console.error("Error in happenBtn():", error);
        return null;
    }
}

// Generic function to handle image display
function updateImageView(imageType) {
    const imageSources = {
        human: ["human1.jpg", "humanF1.jpg", "human2.jpg", "human5.jpg", "human4.jpg", "human6.jpg"],
        elf: ["elf1.jpg", "elf2.jpg", "elf3.jpg", "elf4.jpg", "elf5.jpg"],
        dwarf: ["dwarf1.jpg", "dwarf2.jpg"],
        drow: ["drow1.jpg", "drow2.png", "drow3.png", "drow4.png", "drow5.png", "drow6.png", "drow7.png"]
    };

    const randomPic = getRandomValueFromArray(imageSources[imageType]);
    const imageView = document.getElementById(`${imageType}View`);
    imageView.src = randomPic;
    imageView.style.opacity = 1.0;
}

// Call specific image update function based on race
function rHumanPic() {
    updateImageView("human");
}

function rElfPic() {
    updateImageView("elf");
}

function rDwarfPic() {
    updateImageView("dwarf");
}

function rDrowPic() {
    updateImageView("drow");
}
