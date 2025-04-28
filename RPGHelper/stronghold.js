//Created by Matthew Anderson on 11/3/22 in Swift on mac mini


"use strict";

class StrongholdView {
    constructor() {
        this.strongholdCostLabel = { text: "" };
        this.strongholdTypeLabel = { text: "" };
        this.strongholdWallLabel = { text: "" };
        this.strongholdTowerLabel = { text: "" };
        this.strongholdUniqueLabel = { text: "" };
        this.strongholdForgeLabel = { text: "" };
        this.strongholdTimeLabel = { text: "" };
    }

    //creates data for stronghold button
    strongholdButton(sender) {
        const randomIntStrongType = Math.floor(Math.random() * 7);
        const randomIntStrongWall = Math.floor(Math.random() * 4);
        const randomIntStrongTower = Math.floor(Math.random() * 4);
        const randomIntStrongUnique = Math.floor(Math.random() * 4);
        const randomIntStrongForge = Math.floor(Math.random() * 2);
        const randomIntStrongTime = Math.floor(Math.random() * (91 - 30)) + 30;
        const randomIntStrongCost = Math.floor(Math.random() * (31000 - 4000)) + 4000;

        const strongTimeAmt = 1;
        const strongCostAmt = 1;

        let strongType1 = "";
        let strongWall = "";
        let strongTower = "";
        let strongUnique = "";
        let strongForge = "";

        //pseudorandom case switch for stronghold type
        switch (randomIntStrongType) {
            case 0:
                strongType1 = "Samurai Shogun Castle";
                break;
            case 1:
                strongType1 = "Large Wooden Fort";
                break;
            case 2:
                strongType1 = "Viking wooden Fortress";
                break;
            case 3:
                strongType1 = "Medium Stone Keep";
                break;
            case 4:
                strongType1 = "Large Stone Keep";
                break;
            case 5:
                strongType1 = "Grand Stone Castle";
                break;
            case 6:
                strongType1 = "Wizard Tower";
                break;
        }
		//pseudorandom case switch for stronghold wall type
        switch (randomIntStrongWall) {
            case 0:
                strongWall = "Small wall";
                break;
            case 1:
                strongWall = "Medium wall";
                break;
            case 2:
                strongWall = "Large wall";
                break;
            case 3:
                strongWall = "2 small walls";
                break;
        }
		//pseudorandom case switch for stronghold tower type
        switch (randomIntStrongTower) {
            case 0:
                strongTower = "Small tower";
                break;
            case 1:
                strongTower = "Medium tower";
                break;
            case 2:
                strongTower = "Large tower";
                break;
            case 3:
                strongTower = "2 small towers";
                break;
        }
		//pseudorandom case switch for stronghold unique room type
        switch (randomIntStrongUnique) {
            case 0:
                strongUnique = "Alchemy lab";
                break;
            case 1:
                strongUnique = "Library";
                break;
            case 2:
                strongUnique = "Stable";
                break;
            case 3:
                strongUnique = "Guard barracks";
                break;
        }
		//case switch for forge or armory
        switch (randomIntStrongForge) {
            case 0:
                strongForge = "Forge";
                break;
            case 1:
                strongForge = "Armory";
                break;
        }

        const costFormula = (randomIntStrongCost * 2) / 4;
        const strongTime = String(strongTimeAmt * randomIntStrongTime);
        const strongCost = String(strongCostAmt * costFormula);

        this.strongholdTypeLabel.text = strongType1;
        this.strongholdWallLabel.text = strongWall;
        this.strongholdTowerLabel.text = strongTower;
        this.strongholdUniqueLabel.text = strongUnique;
        this.strongholdForgeLabel.text = strongForge;
        this.strongholdTimeLabel.text = strongTime;
        this.strongholdCostLabel.text = strongCost;

        this.updateStrongholdLabels(); //use update method
    }

    //update stronghold labels
    updateStrongholdLabels() {
        document.getElementById("strongholdCostLabel").textContent = "Cost: " + this.strongholdCostLabel.text;
        document.getElementById("strongholdTypeLabel").textContent = "Type: " + this.strongholdTypeLabel.text;
        document.getElementById("strongholdWallLabel").textContent = "Wall: " + this.strongholdWallLabel.text;
        document.getElementById("strongholdTowerLabel").textContent = "Tower: " + this.strongholdTowerLabel.text;
        document.getElementById("strongholdUniqueLabel").textContent = "Unique: " + this.strongholdUniqueLabel.text;
        document.getElementById("strongholdForgeLabel").textContent = "Forge: " + this.strongholdForgeLabel.text;
        document.getElementById("strongholdTimeLabel").textContent = "Time: " + this.strongholdTimeLabel.text;
    }
}