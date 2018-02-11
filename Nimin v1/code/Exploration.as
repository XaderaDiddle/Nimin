/*************
 *Exploration*
 *************/

function doExplore():void {
    bc();
    if (currentZone == 1){
        viewButtonOutline(1,0,0,0,0,1,1,0,0,1,0,0);
        viewButtonText(1,0,0,0,0,1,1,0,0,1,0,0);
        buttonWrite(6, "Softlik");
        buttonWrite(1, "Forest");
        buttonWrite(7, "Dairy Farm");
        buttonWrite(10, "Plains");
        if (foundValley == true) {
            Choice9Outline.visible = true;
            Choice9.visible = true;
            buttonWrite(9, "Valley");
        }
        doListen = function():void{
            if (buttonChoice == 6){ doSoftlik(); }
            if (buttonChoice == 1){ doForest(); }
            if (buttonChoice == 7){ doDairyFarm();  }
            if (buttonChoice == 10){ doPlains();    }
            if (buttonChoice == 9){ doValley(); }
        }
    }
    if (currentZone == 2){
        viewButtonOutline(0,0,1,0,1,1,0,0,1,0,1,0);
        viewButtonText(0,0,1,0,1,1,0,0,1,0,1,0);
        buttonWrite(6, "Firmshaft");
        buttonWrite(3, "Plains");
        buttonWrite(5, "Savanna");
        buttonWrite(9, "Desert");
        buttonWrite(11, "Old Cave");
        if (foundValley == true) {
            Choice1Outline.visible = true;
            Choice1.visible = true;
            buttonWrite(1, "Valley");
        }
        doListen = function():void{
            if (buttonChoice == 6){ doFirmshaft();  }
            if (buttonChoice == 3){ doPlains(); }
            if (buttonChoice == 5){ doSavanna(); }
            if (buttonChoice == 9){ doDesert(); }
            if (buttonChoice == 11){ doOldCave(); }
            if (buttonChoice == 1){ doValley(); }
        }
    }
    if (currentZone == 3){
        viewButtonOutline(0,0,0,0,1,1,1,0,0,1,0,0);
        viewButtonText(0,0,0,0,1,1,1,0,0,1,0,0);
        buttonWrite(6, "Tieden");
        buttonWrite(5, "Lake");
        buttonWrite(7, "Forest");
        buttonWrite(10, "Jungle");
        if (foundValley == true) {
            Choice11Outline.visible = true;
            Choice11.visible = true;
            buttonWrite(11, "Valley");
        }
        doListen = function():void{
            if (buttonChoice == 6){ doTieden(); }
            if (buttonChoice == 5){ doLake(); }
            if (buttonChoice == 7){ doForest(); }
            if (buttonChoice == 10){ doJungle(); }
            if (buttonChoice == 11){ doValley();    }
        }
    }
    if (currentZone == 4){
        viewButtonOutline(0,1,0,0,0,1,1,0,1,0,1,0);
        viewButtonText(0,1,0,0,0,1,1,0,1,0,1,0);
        buttonWrite(6, "Siz'Calit");
        buttonWrite(2, "Jungle");
        buttonWrite(7, "Savanna");
        buttonWrite(9, "Beach");
        buttonWrite(11, "Desert");
        if (foundValley == true) {
            Choice3Outline.visible = true;
            Choice3.visible = true;
            buttonWrite(3, "Valley");
        }
        doListen = function():void{
            if (buttonChoice == 6){ doSizCalit(); }
            if (buttonChoice == 2){ doJungle(); }
            if (buttonChoice == 7){ doSavanna(); }
            if (buttonChoice == 9){ doBeach(); }
            if (buttonChoice == 11){ doDesert(); }  
            if (buttonChoice == 3){ doValley(); }
        }
    }
    if (currentZone == 6){
        viewButtonOutline(0,1,0,0,0,1,0,0,0,0,0,0);
        viewButtonText(0,1,0,0,0,1,0,0,0,0,0,0);
        buttonWrite(6, "Oviasis");
        buttonWrite(2, "Desert");
        buttonWrite(3, "Den");
        if (silRep > 0){
            Choice3Outline.visible = true;
            Choice3.visible = true;
        }
        doListen = function():void{
            if (buttonChoice == 6){ doOviasis(); }
            if (buttonChoice == 2){ doDesert(); }
            if (buttonChoice == 3){ doDen(); }
        }
    }
    if (currentZone == 12){
        viewButtonOutline(0,0,0,0,1,1,0,0,0,0,0,0);
        viewButtonText(0,0,0,0,1,1,0,0,0,0,0,0);
        buttonWrite(6, "Sanctuary");
        buttonWrite(5, "Cave Descent");
        doListen = function():void{
            if (buttonChoice == 6){ doSanctuary(); }
            if (buttonChoice == 5){ 
                inDungeon = true;
                regionChange(1007);
                doOldCaveDescent(); 
            }
        }
    }
}

function eventSelect(which:String):int{
    rndArray = [];
    var tempArray:Array = [];

    //Towns
    if (which == "Softlik") {
        tempArray = [,,,,,,x,,x,,x,,x,,x,,x,,x,,x,,x,]; //Squeaky Cheese
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,x,x,x,x,x,,x,,,,,,,,,,x,,x,,x,,x];
        if (tempArray[hour] == x) { rndArray.push(2); } //Male Enhance
        tempArray = [,,,,,,,,,x,,x,,x,,x,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(3); } //Too Human
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(4); } //Gen
    }
    else if (which == "Firmshaft") {
        tempArray = [,,,,,,,,,x,,x,,x,,x,,x,,x,,x,,x]; //Jamie
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,x,x,x,x,x,x,x,x,,x,,x,,x,,x,,x,,x,,x,]; //Harem
        if (tempArray[hour] == x) { rndArray.push(2); }
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x]; //Gen
        if (tempArray[hour] == x) { rndArray.push(3); }
    }
    else if (which == "Tieden") {
        tempArray = [x,x,x,x,x,x,x,x,x,,,,,,,,,,,,,x,x,x]; //Knothole
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [,,,,,,,,,x,x,x,x,x,x,x,x,x,x,x,x,,,]; //Preggo Lover
        if (tempArray[hour] == x && pregnancyTime >= 180 && vagTotal > 0) { rndArray.push(2); }
        tempArray = [,,,,,,,,,x,x,x,x,x,x,x,x,x,x,x,x,,,]; //Gen
        if (tempArray[hour] == x) { rndArray.push(3); }
    }
    else if (which == "Siz'Calit") {
        tempArray = [,,,,,,,,,,,,,x,x,x,x,x,x,,,,,]; //Lila
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [,,,,,,,,,,x,x,x,x,,,,,,x,x,x,,]; //Lila+
        if (tempArray[hour] == x && lilaRep > 3) { rndArray.push(1); }
        tempArray = [x,x,x,x,x,,,,,,,,,,,,,,,,,,x,x]; //Cat Attack
        if (tempArray[hour] == x) { rndArray.push(2); }
        tempArray = [,,,,,x,x,x,x,x,x,x,x,,,,,,,,,,,]; //Hyper Mistress
        if (tempArray[hour] == x) { rndArray.push(3); }
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x]; //Gen
        if (tempArray[hour] == x) { rndArray.push(4); }
    }
    else if (which == "Oviasis") {
        tempArray = [,,,,,,,,,,,,,,,x,x,x,x,x,,,,]; //Silandrias
        if (tempArray[hour] == x && silRep < 6) { rndArray.push(1); }
        tempArray = [,,,,,,,,,x,x,x,x,x,x,x,x,x,x,,,,,]; //Sunbathing
        if (tempArray[hour] == x) { rndArray.push(2); }
        tempArray = [x,x,x,x,x,x,x,,,,,,,,,,,,,,,x,x,x]; //Night Sex
        if (tempArray[hour] == x) { rndArray.push(3); }
        tempArray = [,,,,,,x,x,x,x,x,x,x,x,x,,,,,x,x,x,,]; //Water Eggs
        if (tempArray[hour] == x) { rndArray.push(4); }
        tempArray = [x,x,x,x,x,x,,x,x,,,,,,,,,,,,x,,x,x]; //Gen
        if (tempArray[hour] == x) { rndArray.push(5); }
    }
    else if (which == "Sanctuary") {
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x]; //Gen
        if (tempArray[hour] == x) { rndArray.push(3); }
    }

    //Shared
    if (which == "Forest") {
        tempArray = [,x,,x,,x,,,,,,,,,,,,,,x,x,,x,x]; //Wolf
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,,x,,x,,x,,,,,,,,,,,,,,,x,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Gay Wolf
        tempArray = [,,,,,,,,,,,,,x,x,x,x,x,x,,,,,];
        if (tempArray[hour] == x) { rndArray.push(3); } //Cock-Snake
        tempArray = [x,,,,,,,x,x,,,,,,,,,x,x,,,,,x];
        if (tempArray[hour] == x) { rndArray.push(4); } //Sneeze Flower
        tempArray = [,,,,,,,x,x,x,x,x,x,,,,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(5); } //Milk Creeper
        tempArray = [,,,,,,,,,x,x,x,x,x,x,x,x,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(6); } //Path
    }
    if (which == "Jungle") {
        tempArray = [,,,,,,,,,,x,x,x,x,x,x,,,,,,,,]; //Find Valley
        if (tempArray[hour] == x && foundValley == false && firstExplore == true) { rndArray.push(1); }
        tempArray = [,,,,x,x,x,x,x,x,,,,,,,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Milk Creeper
        tempArray = [,x,,x,,x,,,,,,,,,,,,,,x,,x,,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Wolf
        tempArray = [x,,x,,x,,,,,,,,,,,,,,x,,x,,x,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Gay Wolf
        tempArray = [,,,,,,,,,,,,,,,,x,x,x,x,x,,,];
        if (tempArray[hour] == x) { rndArray.push(5); } //Pussy Fruit
        tempArray = [,,,,,,,,,,x,x,x,x,x,x,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(6); } //Shiny Rock
        tempArray = [,,,,,,,,,x,x,x,x,x,x,x,x,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(7); } //Path
    }
    if (which == "Plains") {
        tempArray = [x,,x,,,,,,,,,,,,,,,,,,x,,x,]; //Snuggle Ball
        if (tempArray[hour] == x && checkOpenSlot(244) > 0) { rndArray.push(1); }
        tempArray = [,,,,,,,,,,,x,x,x,x,x,x,x,x,,,,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Cock Snake
        tempArray = [,x,,x,x,,,,,,,,,,,,,,,x,,x,,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Drunken Equan
        tempArray = [,,,,,x,x,x,x,x,x,x,x,,,,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Grain
        tempArray = [x,x,x,x,,,,,,,x,,,x,,,,,,,x,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(5); } //Path
    }
    if (which == "Savanna") {
        tempArray = [,,,,x,x,x,x,x,x,x,x,,,,,,,,,,,,]; //Horny Felin
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,x,x,x,,,,,,,,,,,,,,,,,x,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(2); } //Drunken Equan
        tempArray = [,,,,,,,,x,x,x,x,x,,,,,,x,x,x,x,,];
        if (tempArray[hour] == x) { rndArray.push(3); } //Warmth
        tempArray = [,,,,,,,,,,,,,x,x,x,x,x,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Facial Mud
        tempArray = [,,,,,,,,,,,,x,x,x,x,x,x,x,x,,,,];
        if (tempArray[hour] == x) { rndArray.push(5); } //Path
    }
    if (which == "Desert") {
        tempArray = [,,,,,,,,,,,,,,,,,,,,,x,x,]; //Sandwich
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [,,,,x,x,x,x,,,,,,,,,,,,,,,,];
        if (tempArray[hour] == x && currentZone == 6 && silRep == 0) { rndArray.push(2); } //Silandrias
        tempArray = [,,,,,,x,x,x,x,,,,,,,,x,x,x,x,,,];
        if (tempArray[hour] == x) { rndArray.push(3); } //Dust Devil
        tempArray = [,,,,,,,,,,x,x,x,x,x,x,x,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Hot Sun
        tempArray = [x,x,x,x,x,x,,,,,,,,,,,,,,,,,x,x];
        if (tempArray[hour] == x) { rndArray.push(5); } //Path
    }

    //Areas
    if (which == "Beach") {
        tempArray = [,,,,,,x,,,x,,,x,,,x,,,,,,,,]; //Octo Girl
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [,,,,,,,x,x,,x,x,,x,x,,x,x,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Pregnant Lizan
        tempArray = [,,x,,,,x,,,,,x,x,,x,,,,x,x,,,,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Trinket
        tempArray = [x,,,,,x,,,,,x,,,,,,,,,,x,,x,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Cock Carv
        tempArray = [,x,,x,,x,,,,x,,,,x,,x,,x,,,,x,,];
        if (tempArray[hour] == x) { rndArray.push(5); } //Urchin
        tempArray = [,x,,x,x,,,x,,x,x,,,x,,,x,x,,x,,,x,];
        if (tempArray[hour] == x) { rndArray.push(6); } //Relax
    }
    if (which == "Lake") {
        tempArray = [x,x,x,x,,,,,,,,,x,x,x,x,x,x,x,x,x,x,x,x]; //Wet Cloth
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [,,,,x,x,x,x,x,x,x,x,,,,,,,,,,,,];
        if (tempArray[hour] == x && !knowPheromone) { rndArray.push(2); } //Fisherman
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Song
    }
    if (which == "Dairy Farm") {
        tempArray = [,,,,x,x,x,,,,,,,,,,x,x,,,,,,]; //Free Pill
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,x,x,,,,,,,,,,,,,,,,,,,x,x,x];
        if (tempArray[hour] == x && udders == true && udderLactation > 0 && udderEngorgementLevel > 0) { rndArray.push(2); } //Experimental Milk Machine
        tempArray = [,,,,,,,x,x,x,x,x,x,,,,,,,,,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Buy Pill
        tempArray = [,,,,,,,,,,x,x,x,x,x,x,,,,,,,,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Malon
        tempArray = [,,,,,,,,x,x,,,,,,,x,x,,,,,,];
        if (tempArray[hour] == x && malonRep > 0) { rndArray.push(4); } //Malon+
        tempArray = [x,x,x,x,,,,,,,,,,,,,,,x,x,x,,,];
        if (tempArray[hour] == x) { rndArray.push(5); } //Steal Milk
    }
    if (which == "Old Cave") {
        tempArray = [,,x,x,,,x,x,,,x,x,,,x,x,,,x,x,,,x,x]; //Red Mush
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,x,,,x,x,,,x,x,,,x,x,,,x,x,,,x,x,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Cake or Cup
        tempArray = [x,,,x,,,x,,,x,,,x,,,x,,,x,,,x,,];
        if (tempArray[hour] == x) { rndArray.push(3); } //Wander
    }
    if (which == "Den") {
        tempArray = [,,,,,x,x,x,x,,,,,,,x,x,x,,,,,,]; //Strap
        if (tempArray[hour] == x && silTied == false && !checkItem(229) && !checkStash(229)) { rndArray.push(1); }
        tempArray = [x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x];
        if (tempArray[hour] == x) { rndArray.push(2); } //Sil
    }
    if (which == "Valley") {
        tempArray = [,x,x,,,x,x,,,x,x,,,,,,,x,x,,,x,x,]; //Fertility Statue
        if (tempArray[hour] == x) { rndArray.push(1); }
        tempArray = [x,,x,,,,,,x,,x,,,,,,x,,x,,,,,];
        if (tempArray[hour] == x) { rndArray.push(2); } //Fragrant Flower
        tempArray = [,x,,x,,x,,x,,x,,x,,x,,x,,x,,x,,x,,x];
        if (tempArray[hour] == x) { rndArray.push(3); } //Plump Quats
        tempArray = [x,,,,x,,,,x,,,,x,,,,x,,,,x,,,];
        if (tempArray[hour] == x) { rndArray.push(4); } //Treant Seed
        tempArray = [,,,x,x,,x,x,,,,x,x,x,x,x,,,,x,x,,x,x];
        if (tempArray[hour] == x) { rndArray.push(5); } //Slumber
    }
    trace(rndArray);
    return chooseFrom();
}
        
