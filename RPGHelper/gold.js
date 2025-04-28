

//Created by Matthew Anderson on 11/3/22 in Swift


class GoldView {
    constructor() {
        this.platinumLabel = document.getElementById("platinumLabel");
        this.silverLabel = document.getElementById("silverLabel");
        this.copperLabel = document.getElementById("copperLabel");
        this.goldLabel = document.getElementById("goldLabel");
        this.treasureLabel = document.getElementById("treasureLabel");
        this.rubyLabel = document.getElementById("rubyLabel");
        this.saphLabel = document.getElementById("saphLabel");
        this.emeraldLabel = document.getElementById("emeraldLabel");
        this.diamondLabel = document.getElementById("diamondLabel");
        this.pearlLabel = document.getElementById("pearlLabel");
    }


    CoinButton(sender) {
        //random number generators
        let randomIntRuby = Math.floor(Math.random() * 1000);   //calculate random rubies
        let randomIntSaph = Math.floor(Math.random() * 1000);    //calculate random saphires
        let randomIntEmerald = Math.floor(Math.random() * 980);  //calculate random emeralds
        let randomIntDiamond = Math.floor(Math.random() * 941);  //calculate random diamonds
        let randomIntPearl = Math.floor(Math.random() * 941);    //calculate random pearls

        var rubyAmt = 1;       
        var saphAmt = 1;       
        var emeraldAmt = 1;    
        var diamondAmt = 1;    
        var pearlAmt = 1;      

        if (randomIntRuby >= 735) {
            
            rubyAmt = Math.floor(Math.floor(randomIntRuby / 11) / 3);
        } else {
            rubyAmt = 0;
        }
        if (randomIntSaph >= 821) {
            
            saphAmt = Math.floor(Math.floor(randomIntSaph / 11) / 3);
        } else {
            saphAmt = 0;
        }
        if (randomIntEmerald >= 905) {
            
            emeraldAmt = Math.floor(Math.floor(randomIntEmerald / 11) / 3);
        } else {
            emeraldAmt = 0;
        }
        if (randomIntDiamond >= 900) {
            
            diamondAmt = Math.floor(randomIntDiamond / 4);
        } else {
            diamondAmt = 0;
        }
        if (randomIntPearl >= 840) {
            
            pearlAmt = Math.floor(randomIntPearl / 7);
        } else {
            pearlAmt = 0;
        }

        //convert ints to strings 
        var rubyFinal = rubyAmt.toString();       
        var saphFinal = saphAmt.toString();         
        var emeraldFinal = emeraldAmt.toString();  
        var diamondFinal = diamondAmt.toString();   
        var pearlFinal = pearlAmt.toString();      

        //send data text to output Labels
        this.rubyLabel.textContent = rubyFinal;     
        this.saphLabel.textContent = saphFinal;       
        this.emeraldLabel.textContent = emeraldFinal; 
        this.diamondLabel.textContent = diamondFinal; 
        this.pearlLabel.textContent = pearlFinal;     

        var randomIntGold = Math.floor(Math.random() * 2001);      
        var randomIntPlatinum = Math.floor(Math.random() * 504);     
        var randomIntCopper = Math.floor(Math.random() * 2891);      
        var randomIntSilver = Math.floor(Math.random() * 4003);     
        let randomDictTreasure = Math.floor(Math.random() * 51) + 1;   

        var silverCoin = (randomIntSilver * 1).toString();         
        var platinumCoin = (randomIntPlatinum * 1).toString();       
        var goldCoin = (randomIntGold * 1).toString();               
        var copperCoin = (randomIntCopper * 1).toString();           

        this.silverLabel.textContent = silverCoin;    
        this.platinumLabel.textContent = platinumCoin;   
        this.goldLabel.textContent = goldCoin;           
        this.copperLabel.textContent = copperCoin;      

        var randomIntTreas = Math.floor(Math.random() * 504);   
        var treasureRoll = Math.floor(randomIntTreas / 2);        
    }
}

/* event listener for coinbutton */
const goldVC = new GoldView();
document.getElementById("coinButton").addEventListener("click", function(event) {
    goldVC.CoinButton(event);
});


const treasureLabel = { text: "" };


let randomIntTreas = Math.floor(Math.random() * 500); //random int 0-499
let randomDictTreasure = 1;  

//dictionary for treasure
function processTreasure() {
    var treasureDict = { 1: "None", 2: "Axe+1", 3: "Mace+1", 4: "Long sword+1", 5: "Short sword+1", 6: "Staff+1", 7: "Axe+2", 8: "Mace+2", 9: "Long sword+2", 10: "Short sword+2", 11: "Staff+2", 12: "shield+2", 13: "Mace+3", 14: "Long sword+3", 15: "Short sword+3", 16: "Staff+3", 17: "ring+1", 18: "magical bag", 19: "shield+1", 20: "spell scroll", 21: "ring+2", 22: "magical potion", 23: "spell book", 24: "leather armor +1", 25: "2 magical potions", 26: "chainmail+1", 27: "magical potion", 28: "shield+3", 29: "plate mail+2", 30: "chainmail+2", 31: "leather armor+2", 32: "plate mail+3", 33: "magical potion", 34: "leather armor+3", 35: "chainmail+3", 36: "spell book", 37: "magical cloak", 38: "magical boots", 39: "shield+1", 40: "magical dust", 41: "plate mail+1", 42: "Axe+3", 44: "ring+3", 45: "magical necklace", 46: "3 magical potions", 47: "healing potion", 48: "2 healing elixirs", 49: "magical bottle", 50: "magical map", 51: "magical amulet" };

    if (randomIntTreas < 453) { 
        treasureDict = { 1: "None" }; 
    } else { 
        treasureDict != { 1: "None" }; 
    }

    var treasureScore = treasureDict[randomDictTreasure];

    if (treasureScore === undefined) { treasureScore = "None"; } 

    console.log(treasureScore);

    var treasureFinal = String(treasureScore);

    treasureLabel.text = treasureFinal;
}



