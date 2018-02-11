/************
 *Town Stuff*
 ************/

function doGeneral():void{
    bc();
    currentState = 1;
    viewButtonText(1,1,1,1,1,1,1,0,1,1,0,1);
    viewButtonOutline(1,1,1,1,1,1,1,0,1,1,0,1);
    textL("You are currently in "+regionName(currentZone)+". What would you like to do?");
    Choice1.htmlText="Bag";
    Choice6.htmlText="Sleep";
    Choice5.htmlText="Masturbate";  
    Choice2.htmlText="Stash";
    Choice3.htmlText="Shops";
    Choice4.htmlText="Day-Care";
    Choice7.htmlText="Alchemy";
    Choice9.htmlText="Wait";
    Choice12.htmlText="Explore";
    Choice10.htmlText="Prostitute";
    
    if (doWeight()){ Choice12.visible = false;  }
    if (hour > 20 || hour < 7) {
        textLP("\r\rAll of the shops are closed at this hour of night.");
        Choice3.visible = false;
    }
    if (levelUP > 0) {
        Choice8.visible = true;
        Choice8Outline.visible = true;
        buttonWrite(8, "Level Up!");
    }
    if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*4 && lactation > 0){
        viewButtonText(0,0,0,0,1,0,0,0,1,0,0,0);
        textLP("\r\rMilk sprays from your chest, shooting through your "+clothesTop()+" and obscuring your view with a white mist. Pushing your breasts around as you may, you can't seem to get them to settle down as they're so overly engorged that they can't store as much as they're still producing, making it impossible to do anything without drenching not only yourself but all those around you! The production is so excessive that your body will definitely reduce the rate after this.\r\rYou must either milk your breasts or wait for the gushing to subside if you wish to continue. Either way, you have already wasted a large amount of milk.");
        milkEngorgement -= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1.5;
        lactChange(1, -30);
    }
    if (udderEngorgement >=((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*4 && udderLactation > 0){
        viewButtonText(0,0,0,0,1,0,0,0,1,0,0,0);
        textLP("\r\rMilk sprays from your belly, shooting through your "+clothesBottom()+" and obscuring your view with a white mist. Adjusting your udder as you may, the teats continue to flail about, gushing with milk, as the fleshy bag is so overly engorged that it can't store as much as it's still producing, making it impossible to do anything without drenching not only yourself but all those around you! The production is so excessive that your body will definitely reduce the rate after this.\r\rYou must milk your udder or wait for the gushing to subside if you wish to continue. Either way, you have already wasted a large amount of milk.");
        udderEngorgement -= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1.5;
        lactChange(2, -50);     
    }
    if (blueBalls >= 120 && percent()*ment < percent()*(lib + blueBalls - 120) && lib > (ment-70)) { doJizzPants();}

    if (lust == 100){
        viewButtonText(0,0,0,0,1,0,0,0,0,0,0,0);
        textLP("\r\rYour body quivers and your "+legDesc(2)+" give"+legPlural(1)+" out from under you as your arousal soaks through your clothes. Your mind seems focused only on one thing: SEX!\r\rYou must masturbate if you wish to continue.");
    }
    else if (exhaustion > 44){
        textLP("\r\rThere's only one thing on your mind right now...");
        viewButtonText(0,0,0,0,0,1,0,0,0,0,0,0);
    }
    
    if (showSide == false) {
        appearanceText.visible=true;
        appearanceBox.visible=true;
    }
    loadGame.visible = true;
    loadGameOutline.visible = true;
    saveGame.visible = true;
    saveGameOutline.visible = true;
    newGame.visible = true;
    newGameOutline.visible = true;
    
    doListen = function():void{
        if (buttonChoice == 1){ doBag(); }
        if (buttonChoice == 6){ doSleep();}
        if (buttonChoice == 5){ doMasturbate(); }
        if (buttonChoice == 2){ doStash();  }
        if (buttonChoice == 3){ doShops(); }
        if (buttonChoice == 4){ doDayCare(); }
        if (buttonChoice == 7){ doAlchemy(); }
        if (buttonChoice == 8){ doLevelUP(); }
        if (buttonChoice == 12){ doExplore();   }       
        if (buttonChoice == 10){ doProstitute(); }
        loadGame.visible = false;
        loadGameOutline.visible = false;
        saveGame.visible = false;
        saveGameOutline.visible = false;
        newGame.visible = false;
        newGameOutline.visible = false;
        appearanceText.visible = false;
        appearanceBox.visible = false;
        if (buttonChoice == 9){ 
            hrs++;
            doProcess();
        }
    }
}

function doJizzPants():void {
    var getCum:int = cumAmount();
    textL("\r\rYour "+ballDesc()+" balls feel so absolutely swollen and sensitive, that you can't stop thinking about it. They just feel like they've gotta... gotta... gotta...");
    hrs += 1;
    if (getCum <= 300) {
        textLP("\r\rYou let out a gasp as you feel your "+cockDesc()+" cock"+plural(1)+" begin"+plural(3)+" to twitch within your "+clothesBottom()+" while standing in the middle of "+regionName(currentZone)+". You feel wads of cum seep out, climaxing without anything to assist it.\r\rYet, it's so little that you quickly regain your composure without hardly any blotching on your "+clothesBottom()+". A bit flushed with embarassment, you feel lucky that nobody else noticed. You quickly head back to your place to clean up and try to pretend like nothing happened...");
    }
    else if (getCum <= 800) {
        textLP("\r\rYou gasp and begin to pant as you feel your "+cockDesc()+" cock"+plural(1)+" begin"+plural(3)+" to jerk within your "+clothesBottom()+" while standing in the middle of "+regionName(currentZone)+". Spurts of cum launch from your cock, orgasming out of sheer need for release, pooling slightly within your "+clothesBottom()+".\r\rIt takes several moments for you to regain your composure, only to notice the moist blotch spreading across your "+clothesBottom()+" as the spunk seeps through. You blush as you catch someone glancing at what you've done, but you're quick to escape before you get anymore attention. You head back home and strip down so you can clean yourself and your "+clothesBottom()+" off before heading back out...");
        hrs += 1;
    }
    else if (getCum <= 1000) {
        textLP("\r\rYou clench your mouth shut as you instinctively begin to moan. Your "+cockDesc()+" cock"+plural(1)+" begin"+plural(3)+" to buck within your "+clothesBottom()+" as you stand in the middle of "+regionName(currentZone)+", spurts of cum launching down through your "+clothesBottom()+". Streams of the white slimy stuff dribble down your "+legDesc(2)+", severely blotching your "+clothesBottom()+", and making a few bystanders turn to wonder what you are doing. Without a good view, they are more likely to guess you have just pissed yourself with the amount of fluids running down.\r\rThey are almost about to inquire to your aid, but you quickly back off, stumbling to your home while more stuff oozes out and down to the ground. It takes you a while to clean up the mess you've made and another hour of building up the courage to head back out after that 'incident'...");
        hrs += 3;
        stats(0,-1,0,0);
    }
    else if (getCum <= 3000) {
        textLP("\r\rYou let out a moan that catches the attention of several bystanders in the middle of "+regionName(currentZone)+". A thick stream of hot spunk pours down through your "+clothesBottom()+" to the ground below, making a light splattering sound as it begins to form a puddle below. Your "+cockDesc()+" cock"+plural(1)+" bounce"+plural(3)+" within your "+clothesBottom()+" until your hands instinctively press down on "+plural(9)+", grabbing and rubbing "+plural(9)+" through the fabric. The puddle grows larger and larger until it envelops your "+legDesc(10)+", at which point you begin to realize what you are doing.\r\rStrangers around you stare and wonder what the heck just happened, frozen in place and too afraid to actually inquire. Cum still dribbling down your "+legDesc(2)+", you step away and rush back home. You have to strip and completely wash your "+clothesBottom()+" to take care of it all, and you take a couple hours to gather your wits and courage to go back outside after such a display...");
        hrs += 4;
        stats(0,-3,0,0);
    }
    else if (getCum <= 8000) {
        textLP("\r\rYour hands leap to your "+cockDesc()+" cock"+plural(1)+" and grab "+plural(9)+" through your "+clothesBottom()+" just as thick spurts of hot spunk spew within, pouring out over your hands and down your "+legDesc(2)+" as you moan again and again. All in the middle of "+regionName(currentZone)+", catching the attention of many strangers. They stare with mouths agape, watching as you pleasure yourself in public, a waterfall of spunk pouring down from you with each jump of your thrusting cock"+plural(1)+".\r\rThe puddle below you grows much to large to be considered an actual puddle... Some of the strangers have to step back to escape the encroaching flow. The distraught reaction from those around you bring you to your senses, blushing furiously at your lack of self-control and sudden major premature ejaculation. As best as you can while the spooge continues to ooze out in large gobs, you splash your way out of the center of attention and rush back home. It'll take hours to clean up both yourself and your clothes, and a bit longer still to face the public once more...");
        hrs += 7;
        stats(0,-5,0,0);
    }
    else if (getCum <= 25000) {
        textLP("\r\rYour hands leap to your "+cockDesc()+" cock"+plural(1)+" and grab "+plural(9)+" through your "+clothesBottom()+" just as small waves of hot thick spunk gurgle out of your crotch in the middle of "+regionName(currentZone)+". Your orgasmic moaning grabs the attention of the surrounding bystanders and your thrashing erection"+plural(1)+" spewing more spunk out through your "+clothesBottom()+" attracts even more strangers to the spectacle. You collapse over yourself and crumble to the ground, your hands rubbing and pressing down into your crotch, trying to both hold it back and yet pleasure it at the same time. The spunk around you flows over the ground, splashing up against feet as the people cannot step back far enough. You just come so hard and so long...\r\rThe gasping and commotion from the onlookers eventually bring you back. Your "+currentClothes()+" completely soaked and all the mess around you, there's not much you can do except slump off in embarassment, dripping with your own spooge, and hoping nobody makes anymore fuss about it...\r\rIt takes hours to clean up and afterwards you're just so tired that you might as well sleep...");
        hrs += 9;
        stats(0,-5,0,0);
        exhaustion += 15;
    }
    else{
        textLP("\r\rThe sound of your "+clothesBottom()+" being shredded fills the air in "+regionName(currentZone)+" as a massive amount of hot thick slimy sticky cum erupts from your "+cockDesc()+" cock"+plural(1)+" and tears a path through your "+clothesBottom()+". You fall onto your back from the force, your fingers scratching at the ground below you to anchor your writhing as your body is completely wracked by the sudden orgasm. Your "+hipDesc()+" hips thrash about as the "+cockDesc()+" erection"+plural(1)+" swing"+plural(3)+" around from the force of the gushing seed. Thick ropes of the white stuff tosses about, painting houses and drenching innocent bystanders. Some run for cover while others brace themselves against the onslaught. Some stay and begin to masturbate themselves while they get showered in your cum. You completely lose track of the time as your mind goes numb and you're completely bathed in your own spunk.\r\rSome minutes later, your severe pre-mature ejaculation calms down, your senses returning. You blink and look around, seeing strangers cower in fear or masturbate furiously. The thought that 'now might be a good time to leave' pops into your head and you can only agree. You don't want to witness the fallout after this.\r\rYour "+legDesc(2)+" weak, you begin to crawl yourself through the shallow lake of semen you've created, making your way back to your home where you can hide and clean yourself up... It'll take several hours to clean and your mind just wants to shut down. You should really learn to masturbate more often.");
        changeBot(-1);
        hrs += 10;
        stats(0,-5,2,0);
        exhaustion += 20;
    }
    doLust(-Math.floor(lib/4), 2, 1);
    doNext();
    doListen = function():void{
        doEnd();
    }
}







/**********
 *Shopping*
 **********/

function doShops():void{
    viewButtonOutline(1,1,1,0,0,1,1,0,0,0,0,1);
    viewButtonText(1,1,1,0,0,1,1,0,0,0,0,1);
    buttonWrite(1, "General");
    buttonWrite(2, "Dyes");
    buttonWrite(3, "Apothecary");
    buttonWrite(6, "Salon");
    buttonWrite(7, "Tailor");
    buttonWrite(12, "Return");
    textL("General Store - Come here to see what kinds of goods "+regionName(currentZone)+" has for sale. You can also sell your own goods here as well.\r\rDye Shop - If you want to feel unique and look special, stop by for some new colors.\r\rApothecary - Need some ingredients for your alchemy brewing? Or maybe need to learn a new recipe or two? Come check out what's available in "+regionName(currentZone)+" to see what you might like.\r\rSalon - Want a different haircut? Stop by here to see what styles are popular in "+regionName(currentZone)+".\r\rTailor - If you're looking to get a new outfit, the "+regionName(currentZone)+" tailor might be able to custom-fit something for you from their available designs.");
    doListen = function():void{
        if (buttonChoice == 1){ doShop(); }
        if (buttonChoice == 2){ doDyeShop(); }
        if (buttonChoice == 3){ doApothecary(); }
        if (buttonChoice == 6){ doSalon(); }
        if (buttonChoice == 7){ doTailor(); }
        if (buttonChoice == 12){ doReturn(); }
    }
}

/*********
 *GenShop*
 *********/

function doShop():void {
    bc();
    inShop = true;
    var buy:int = 0;
    viewButtonOutline(1,1,1,1,1,1,1,1,1,1,1,1);
    viewButtonText(1,1,1,1,1,1,1,1,1,1,1,1);
    for (i=1;i<13 ;i++ ){
        buttonWrite(i, itemName(goodsID(i)));
    }
    buttonWrite(4, "Buy");
    buttonWrite(8, "Sell");
    buttonWrite(12, "Return");
    textL("Click on an item to view a description of the item. If you would like to purchase it, click the Buy button.\r\rIf you would like to sell an item from your bag, click Sell.");
    doListen = function():void{
        if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && goodsID(buttonChoice) != 0){
            textL(itemDescription(goodsID(buttonChoice))+"\r\rCost: "+3*itemValue(goodsID(buttonChoice))+" coins.");
            buy = buttonChoice;
        }
        if (buttonChoice == 4 && buy != 0){
            textLP("\r\rAre you sure you would like to buy "+itemName(goodsID(buy))+"?");
            if (itemStackMax(goodsID(buy)) > 1) {
                viewButtonOutline(1,1,1,0,0,0,0,0,0,0,0,1);
                viewButtonText(1,1,1,0,0,0,0,0,0,0,0,1);
                buttonWrite(1, "Buy 1");
                buttonWrite(2, "Buy 2");
                buttonWrite(3, "Buy 5");
                buttonWrite(12, "Nevermind");

                textLP("\r\rThis item can be bought in the following quantities: 1 for "+3*itemValue(goodsID(buy))+" coins, 2 for "+6*itemValue(goodsID(buy))+" coins, 5 for "+15*itemValue(goodsID(buy))+" coins");
                
                if (itemStackMax(goodsID(buy)) >= 10) {
                    buttonWrite(9, "Buy 10");
                    Choice9Outline.visible = true;
                    Choice9.visible = true;
                    textLP(", 10 for "+30*itemValue(goodsID(buy))+" coins");
                }
                if (itemStackMax(goodsID(buy)) >= 15) {
                    buttonWrite(10, "Buy 15");
                    Choice10Outline.visible = true;
                    Choice10.visible = true;
                    textLP(", 15 for "+45*itemValue(goodsID(buy))+" coins");
                }
                textLP(".");
            }
            else { buttonConfirm(); }
            doListen = function():void{
                if (buttonChoice != 7 && buttonChoice != 12) {
                    var tempInt:int;
                    if (buttonChoice == 1) { tempInt = 1; }
                    if (buttonChoice == 6) { tempInt = 1; }
                    if (buttonChoice == 2) { tempInt = 2; }
                    if (buttonChoice == 3) { tempInt = 5; }
                    if (buttonChoice == 9) { tempInt = 10; }
                    if (buttonChoice == 10) { tempInt = 15; }
                    if (coin < 3*tempInt*itemValue(goodsID(buy))){
                        textL("Sorry, but you only have "+coin+" coins. You require at least "+(3*tempInt*itemValue(goodsID(buy))-coin)+" more coins to purchase ");
                        if (tempInt > 1) { textLP(tempInt+"x "+itemName(goodsID(buy))+"."); }
                        else { textLP(""+itemName(goodsID(buy))+"."); }
                        doNext();
                        doListen = function():void{ doShop(); }
                    }
                    else{
                        if (checkItem(goodsID(buy)) && !conItem(goodsID(buy))){
                            textL("Sorry, but you cannot buy "+itemName(goodsID(buy))+" if you already have one. Please choose something else.");
                            doNext();
                            doListen = function():void{ doShop(); }
                        }
                        else {
                            for (i=1;i<= tempInt ;i++) { itemAdd(goodsID(buy)); }
                            doCoin(-3*tempInt*itemValue(goodsID(buy)));
                            doProcess();
                        }
                    }
                }
                else {
                    doShop();
                }
            }
        }
        if (buttonChoice == 8){
            doSell();
        }
        if (buttonChoice == 12){
            inShop = false;
            doReturn();
        }
    }
}

function doSell():void{
    choiceListButtons("Bag");
    textL("Click on an item you would like to sell.");
    doListen = function():void{
        choiceListSelect("Bag");
        if (buttonChoice == 12) { doShop(); }
        else if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Bag"); }
        else if (choiceListResult[0] != 0) {
            
            if (bagStackArray[choiceListResult[1]] < 2) {
                if (itemValue(choiceListResult[0]) == 0 || !canLose(choiceListResult[0])) {
                    textL("You cannot sell the selected item. Either it is not yours to sell or needs to be unequipped first. Please select another item.");
                    doSell();
                }
                else {
                    textL(itemName(choiceListResult[0])+" sells for "+itemValue(choiceListResult[0])+".\r\rAre you sure you want to sell it?");
                    buttonConfirm();
                    doListen = function():void{
                        if (buttonChoice == 6){
                            doCoin(itemValue(choiceListResult[0]));
                            bagArray[choiceListResult[1]] = 0;
                            passiveItemRemove(choiceListResult[0]);
                            doSell();
                        }
                        else {
                            doSell();
                        }
                    }
                }
            }
            else {
                textL(itemName(choiceListResult[0])+" sells for "+itemValue(choiceListResult[0])+" each.\r\rHow many would you like to sell?");
                viewButtonOutline(1,0,1,0,0,0,0,0,1,0,1,0);
                viewButtonText(1,0,1,0,0,0,0,0,1,0,1,0);
                if (bagStackArray[choiceListResult[1]] >= 5){
                    Choice5.visible = true;
                    Choice5Outline.visible = true;
                }
                if (bagStackArray[choiceListResult[1]] >= 10){
                    Choice7.visible = true;
                    Choice7Outline.visible = true;
                }
                buttonWrite(1, "1");
                buttonWrite(3, "2");
                buttonWrite(5, "5");
                buttonWrite(7, "10");
                buttonWrite(9, "All");
                buttonWrite(11, "None");
                doListen = function():void{
                    var tempInt:int = 0;
                    if (buttonChoice == 1) { tempInt = 1; }
                    if (buttonChoice == 3) { tempInt = 2; }
                    if (buttonChoice == 5) { tempInt = 5; }
                    if (buttonChoice == 7) { tempInt = 10; }
                    if (buttonChoice == 9) { tempInt = bagStackArray[choiceListResult[1]]; }

                    if (bagStackArray[choiceListResult[1]] == tempInt) {
                        bagSlotClear(choiceListResult[1]);
                    }
                    else {
                        bagStackArray[choiceListResult[1]] -= tempInt;
                    }

                    if (tempInt > 0) { doCoin(tempInt*itemValue(choiceListResult[0]));  }

                    doSell();
                }
            }
        }
    }
}
//Goods ID changes with the currentState. So, a shop in one area can have a different list than a shop in another area.
function goodsID(goodsSlot:int):int{
    var goodNum:int = 0;
    //Returned number should correspond with itemID of same item.
    if (currentZone == 1){ 
        if (goodsSlot == 1){ goodNum = 104; }
        if (goodsSlot == 2){ goodNum = 111; }
        if (goodsSlot == 3){ goodNum = 116; }
        if (goodsSlot == 5){ goodNum = 500; }
        if (goodsSlot == 6){ goodNum = 501; }
        if (goodsSlot == 7){ goodNum = 108; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 121; }
    }
    if (currentZone == 2){
        if (goodsSlot == 1){ goodNum = 102; }
        if (goodsSlot == 2){ goodNum = 112; }
        if (goodsSlot == 3){ goodNum = 117; }
        if (goodsSlot == 5){ goodNum = 106; }
        //if (goodsSlot == 6){ goodNum = 107; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 122; }
    }
    if (currentZone == 3){ 
        if (goodsSlot == 1){ goodNum = 101; }
        if (goodsSlot == 2){ goodNum = 113; }
        if (goodsSlot == 3){ goodNum = 118; }
        if (goodsSlot == 5){ goodNum = 120; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 123; }
    }
    if (currentZone == 4){ 
        if (goodsSlot == 2){ goodNum = 114; }
        if (goodsSlot == 3){ goodNum = 119; }
        if (goodsSlot == 5){ goodNum = 103; }
        if (goodsSlot == 6){ goodNum = 105; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 124; }
    }
    if (currentZone == 6) {
        if (goodsSlot == 1){ goodNum = 109; }
        if (goodsSlot == 2){ goodNum = 126; }
        if (goodsSlot == 3){ goodNum = 127; }
        if (goodsSlot == 5){ goodNum = 103; }
        if (goodsSlot == 6){ goodNum = 230; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 125; }
    }
    if (currentZone == 12) {
        if (goodsSlot == 1){ goodNum = 247; }
        if (goodsSlot == 2){ goodNum = 250; }
        if (goodsSlot == 3){ goodNum = 256; }
        if (goodsSlot == 5){ goodNum = 120; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 128; }
    }
    return goodNum;
}

/*********
 *Dye Shop*
 *********/

function doDyeShop():void {
    var buy:int = 0;
    viewButtonOutline(1,1,1,1,1,1,1,1,1,1,1,1);
    viewButtonText(1,1,1,1,1,1,1,1,1,1,1,1);
    for (i=1;i<13 ;i++ ){
        buttonWrite(i, itemName(dyeID(i)));
    }
    buttonWrite(4, "Buy");
    buttonWrite(12, "Return");
    textL("Click on a dye to view a description of the color. If you would like to purchase it, click the Buy button..");
    doListen = function():void{
        if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && dyeID(buttonChoice) != 0){
            textL(itemDescription(dyeID(buttonChoice))+"\r\rCost: "+3*itemValue(dyeID(buttonChoice))+" coins.");
            buy = buttonChoice;
        }
        if (buttonChoice == 4 && buy != 0){
            textLP("\r\rAre you sure you would like to buy "+itemName(dyeID(buy))+"?");
            buttonConfirm();
            doListen = function():void{
                if (buttonChoice == 6){
                    if (coin < 3*itemValue(dyeID(buy))){
                        textL("Sorry, but you only have "+coin+" coins. You require at least "+(3*itemValue(dyeID(buy))-coin)+" more coins to purchase"+itemName(dyeID(buy))+".");
                        doNext();
                        doListen = function():void{ doShop(); }
                    }
                    else{
                        itemAdd(dyeID(buy));
                        doCoin(-3*itemValue(dyeID(buy)));
                        doProcess();                        
                    }
                }
                else {
                    doDyeShop();
                }
            }
        }
        if (buttonChoice == 12){
            doReturn();
        }
    }
}

//Goods ID changes with the currentState. So, a shop in one area can have a different list than a shop in another area.
function dyeID(goodsSlot:int):int{
    var goodNum:int = 0;
    //Returned number should correspond with itemID of same item.

    if (goodsSlot == 1){ goodNum = 240; }
    if (goodsSlot == 2){ goodNum = 241; }
    if (goodsSlot == 5){ goodNum = 242; }
    if (goodsSlot == 6){ goodNum = 243; }

    /*if (currentZone == 1){ 
        if (goodsSlot == 1){ goodNum = 104; }
        if (goodsSlot == 2){ goodNum = 111; }
        if (goodsSlot == 3){ goodNum = 116; }
        if (goodsSlot == 5){ goodNum = 500; }
        if (goodsSlot == 6){ goodNum = 501; }
        if (goodsSlot == 7){ goodNum = 108; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 121; }
    }
    if (currentZone == 2){
        if (goodsSlot == 1){ goodNum = 102; }
        if (goodsSlot == 2){ goodNum = 112; }
        if (goodsSlot == 3){ goodNum = 117; }
        if (goodsSlot == 5){ goodNum = 106; }
        //if (goodsSlot == 6){ goodNum = 107; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 122; }
    }
    if (currentZone == 3){ 
        if (goodsSlot == 1){ goodNum = 101; }
        if (goodsSlot == 2){ goodNum = 113; }
        if (goodsSlot == 3){ goodNum = 118; }
        if (goodsSlot == 5){ goodNum = 120; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 123; }
    }
    if (currentZone == 4){ 
        if (goodsSlot == 2){ goodNum = 114; }
        if (goodsSlot == 3){ goodNum = 119; }
        if (goodsSlot == 5){ goodNum = 103; }
        if (goodsSlot == 6){ goodNum = 105; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 124; }
    }
    if (currentZone == 6) {
        if (goodsSlot == 1){ goodNum = 109; }
        if (goodsSlot == 2){ goodNum = 126; }
        if (goodsSlot == 3){ goodNum = 127; }
        if (goodsSlot == 5){ goodNum = 103; }
        if (goodsSlot == 6){ goodNum = 230; }
        if (goodsSlot == 9){ goodNum = 110; }
        if (goodsSlot == 10){ goodNum = 115; }
        if (goodsSlot == 11){ goodNum = 125; }
    }*/
    return goodNum;
}

function dyeThing(ID, color):void {
    viewButtonOutline(0,0,0,0,1,0,1,0,0,1,0,0);
    viewButtonText(0,0,0,0,0,0,1,0,0,1,0,0);
    textL("What would you like to apply the "+itemName(ID)+" to?");
    buttonWrite(5, "Hair");
    if (hair > 0) { Choice5.visible = true; }
    buttonWrite(7, "Body");
    buttonWrite(10, "Nevermind");
    doListen = function():void{
        if (buttonChoice == 5) {
            hairColor = color;
            textL("You smear the "+itemName(ID)+" around in your "+hairDesc()+", turning it "+hairC()+" in color.");            
        }
        if (buttonChoice == 7) {
            skinColor = color;
            textL("You rub the "+itemName(ID)+" well into your "+skinDesc()+", making sure it seeps in deep and turns your body a "+skinC()+" color.");
        }
        if (buttonChoice == 10) {
            textL("Apparently you derped and didn't mean to use it, so you put the dye back in your bag.");
            itemAdd(ID);
        }
        doEnd();
    }   
}

/**************
 *Apothecarium*
 **************/

function doApothecary():void {
    var buy:int = 0;
    viewButtonOutline(1,1,1,1,1,1,1,1,1,1,1,1);
    viewButtonText(1,1,1,1,1,1,1,1,1,1,1,1);
    for (i=1;i<13 ;i++ ){
        buttonWrite(i, apothName(apothID(i)));
    }
    buttonWrite(4, "Buy");
    buttonWrite(12, "Return");
    textL("Click on an item to view its description. If you would like to purchase it, click the Buy button.\r\rRecipes for Alchemy only need to be bought once. After you have learned the recipe, you don't need to learn it again.");
    doListen = function():void{
        if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && apothID(buttonChoice) != 0){
            textL(apothDescription(apothID(buttonChoice))+"\r\rCost: "+3*apothValue(apothID(buttonChoice))+" coins.");
            buy = buttonChoice;
        }
        if (buttonChoice == 4 && buy != 0){
            textLP("\r\rAre you sure you would like to buy "+apothName(apothID(buy))+"?");
            if (apothID(buy) > 200 && itemStackMax(apothID(buy)) > 1) {
                viewButtonOutline(1,1,1,0,0,0,0,0,0,0,0,1);
                viewButtonText(1,1,1,0,0,0,0,0,0,0,0,1);
                buttonWrite(1, "Buy 1");
                buttonWrite(2, "Buy 2");
                buttonWrite(3, "Buy 5");
                buttonWrite(12, "Nevermind");

                textLP("\r\rThis item can be bought in the following quantities: 1 for "+3*apothValue(apothID(buy))+" coins, 2 for "+6*apothValue(apothID(buy))+" coins, 5 for "+15*apothValue(apothID(buy))+" coins");
                
                if (itemStackMax(apothID(buy)) >= 10) {
                    buttonWrite(9, "Buy 10");
                    Choice9Outline.visible = true;
                    Choice9.visible = true;
                    textLP(", 10 for "+30*apothValue(apothID(buy))+" coins");
                }
                if (itemStackMax(apothID(buy)) >= 15) {
                    buttonWrite(10, "Buy 15");
                    Choice10Outline.visible = true;
                    Choice10.visible = true;
                    textLP(", 15 for "+45*apothValue(apothID(buy))+" coins");
                }
                textLP(".");
            }
            else { buttonConfirm(); }
            doListen = function():void{
                if (buttonChoice != 7 && buttonChoice != 12) {
                    var tempInt:int;
                    if (buttonChoice == 1) { tempInt = 1; }
                    if (buttonChoice == 6) { tempInt = 1; }
                    if (buttonChoice == 2) { tempInt = 2; }
                    if (buttonChoice == 3) { tempInt = 5; }
                    if (buttonChoice == 9) { tempInt = 10; }
                    if (buttonChoice == 10) { tempInt = 15; }
                    if (coin < 3*tempInt*apothValue(apothID(buy))){
                        textL("Sorry, but you only have "+coin+" coins. You require at least "+(3*tempInt*apothValue(apothID(buy))-coin)+" more coins to purchase ");
                        if (tempInt > 1) { textLP(tempInt+"x "+apothName(apothID(buy))+"."); }
                        else { textLP(""+apothName(apothID(buy))+"."); }
                        doNext();
                        doListen = function():void{ doApothecary(); }
                    }
                    else{
                        if (checkItem(apothID(buy)) && !conItem(apothID(buy))){
                            textL("Sorry, but you cannot buy "+apothName(apothID(buy))+" if you already have one. Please choose something else.");
                            doNext();
                            doListen = function():void{ doApothecary(); }
                        }
                        else {
                            doCoin(-3*tempInt*apothValue(apothID(buy)));
                            if (apothID(buy) > 200) { for (i=1;i<= tempInt ;i++) { itemAdd(apothID(buy)); } }
                            else { apothLearn(apothID(buy)); }
                            doProcess();
                        }
                    }
                }
                else {
                    doApothecary();
                }
            }
        }
        if (buttonChoice == 12){
            doReturn();
        }
    }
}

//Goods ID changes with the currentState. So, a shop in one area can have a different list than a shop in another area.
function apothID(goodsSlot:int):int{
    var goodNum:int = 0;
    //Returned number should correspond with itemID of same item.

    if (currentZone == 1){ 
        if (goodsSlot == 1){ goodNum = 203; }
        if (goodsSlot == 2){ goodNum = 209; }
        if (goodsSlot == 3){ goodNum = 523; }
        
        if (goodsSlot == 7){ if (knowLustDraft == false) { goodNum = 1; } }
        if (goodsSlot == 9){ if (knowSRejuvPot == false) { goodNum = 6; } }
        //if (goodsSlot == 10){ if (knowMasoPot == false) { goodNum = 10; } }
        if (goodsSlot == 11){ if (knowBabyFree == false) { goodNum = 11; } }
    }
    if (currentZone == 2){
        if (goodsSlot == 1){ goodNum = 209; }
        if (goodsSlot == 2){ goodNum = 202; }
        if (goodsSlot == 3){ goodNum = 206; }
        if (goodsSlot == 5){ goodNum = 212; }
        if (goodsSlot == 6){ goodNum = 524; }
        if (goodsSlot == 9){ if (knowRejuvPot == false) { goodNum = 2; } }
        if (goodsSlot == 10){ if (knowSLustDraft == false) { goodNum = 5; } }
        //if (goodsSlot == 11){ if (knowSMasoPot == false) { goodNum = 14; } }
    }
    if (currentZone == 3){ 
        if (goodsSlot == 1){ goodNum = 201; }
        if (goodsSlot == 2){ goodNum = 202; }
        if (goodsSlot == 3){ goodNum = 213; }
        if (goodsSlot == 3){ goodNum = 203; }
        if (goodsSlot == 9){ if (knowBallSwell == false) { goodNum = 4; } }
        if (goodsSlot == 10){ if (knowPotPot == false) { goodNum = 12; } }
        if (goodsSlot == 11){ if (knowSGenSwap == false) { goodNum = 13; } }
    }
    if (currentZone == 4){ 
        if (goodsSlot == 1){ goodNum = 210; }
        if (goodsSlot == 2){ goodNum = 201; }
        if (goodsSlot == 3){ goodNum = 218; }
        if (goodsSlot == 9){ if (knowExpPreg == false) { goodNum = 3; } }
        if (goodsSlot == 10){ if (knowGenSwap == false) { goodNum = 9; } }
        if (goodsSlot == 11){ if (knowSBabyFree == false) { goodNum = 15; } }
    }
    if (currentZone == 6) {
        if (goodsSlot == 1){ goodNum = 207; }
        if (goodsSlot == 2){ goodNum = 213; }
        if (goodsSlot == 3){ goodNum = 208; }
        if (goodsSlot == 5){ goodNum = 228; }
        if (goodsSlot == 9){ if (knowSExpPreg == false) { goodNum = 7; } }
        if (goodsSlot == 10){ if (knowSBallSwell == false) { goodNum = 8; } }
        if (goodsSlot == 11){ if (knowSPotPot == false) { goodNum = 16; } }
    }
    if (currentZone == 12) {
        if (goodsSlot == 9){ if (knowMilkSuppress == false) { goodNum = 17; } }
    }
    return goodNum;
}

function apothLearn(ID:int):void {
    if (ID == 1) { knowLustDraft = true; }
    if (ID == 2) { knowRejuvPot = true; }
    if (ID == 3) { knowExpPreg = true; }
    if (ID == 4) { knowBallSwell = true; }
    if (ID == 5) { knowSLustDraft = true; }
    if (ID == 6) { knowSRejuvPot = true; }
    if (ID == 7) { knowSExpPreg = true; }
    if (ID == 8) { knowSBallSwell = true; }
    if (ID == 9) { knowGenSwap = true; }
    if (ID == 10) { knowMasoPot = true; }
    if (ID == 11) { knowBabyFree = true; }
    if (ID == 12) { knowPotPot = true; }
    if (ID == 13) { knowSGenSwap = true; }
    if (ID == 14) { knowSMasoPot = true; }
    if (ID == 15) { knowSBabyFree = true; }
    if (ID == 16) { knowSPotPot = true; }
    if (ID == 17) { knowMilkSuppress = true; }
}

function apothName(ID:int):String {
    if (ID >= 200){ return itemName(ID); }
    else {
        var tempStr:String = ""
        if (ID == 1) { tempStr = "R: LustDraft";    }
        if (ID == 2) { tempStr = "R: RejuvPot"; }
        if (ID == 3) { tempStr = "R: ExpPreg";  }
        if (ID == 4) { tempStr = "R: BallSwell";    }
        if (ID == 5) { tempStr = "R: SLustDraft";   }
        if (ID == 6) { tempStr = "R: SRejuvPot";    }
        if (ID == 7) { tempStr = "R: SExpPreg"; }
        if (ID == 8) { tempStr = "R: SBallSwell";   }
        if (ID == 9) { tempStr = "R: GenSwap";  }
        if (ID == 10) { tempStr = "R: MasoPot"; }
        if (ID == 11) { tempStr = "R: BabyFree";    }
        if (ID == 12) { tempStr = "R: PotPot";  }
        if (ID == 13) { tempStr = "R: SGenSwap";    }
        if (ID == 14) { tempStr = "R: SMasoPot";    }
        if (ID == 15) { tempStr = "R: SBabyFree";   }
        if (ID == 16) { tempStr = "R: SPotPot"; }
        if (ID == 17) { tempStr = "R: MilkSuppress";    }

        return tempStr;
    }
}

function apothDescription(ID:int):String {
    if (ID >= 200){ return itemDescription(ID); }
    else {
        var tempStr:String = ""
        if (ID == 1) { tempStr = "Recipe: Lust Draft\r\rFor those who need a boost in the bedroom.\r\rAlchemy difficulty: Simple";  }
        if (ID == 2) { tempStr = "Recipe: Rejuvenation Potion\r\rUseful for soothing what ailes you.\r\rAlchemy difficulty: Simple";    }
        if (ID == 3) { tempStr = "Recipe: Express Pregnancy Potion\r\rHelps quicken the gestation period.\r\rAlchemy difficulty: Simple";   }
        if (ID == 4) { tempStr = "Recipe: Ball Sweller\r\rGives your nuts a jump in their production.\r\rAlchemy difficulty: Simple";   }
        if (ID == 5) { tempStr = "Recipe: Superior Lust Draft\r\rFor when you've got a long night ahead with your spouse.\r\rAlchemy difficulty: Complex";  }
        if (ID == 6) { tempStr = "Recipe: Superior Rejuvenation Potion\r\rGreatly soothes your ailments.\r\rAlchemy difficulty: Complex";   }
        if (ID == 7) { tempStr = "Recipe: Superior Express Pregnancy Potion\r\rBecause that baby just needs to get out.\r\rAlchemy difficulty: Complex";    }
        if (ID == 8) { tempStr = "Recipe: Superior Ball Sweller\r\rIf you like that swollen, achy, full of seed feeling, this is what you want.\r\rAlchemy difficulty: Complex";    }
        if (ID == 9) { tempStr = "Recipe: Gender Swap Potion\r\rDon't like your current path in life? This will help start you off from a new perspective.\r\rAlchemy difficulty: Complex"; }
        if (ID == 10) { tempStr = "Recipe: Masochism Potion\r\rMakes some the pain feel pleasurable instead.\r\rAlchemy difficulty: Complex";   }
        if (ID == 11) { tempStr = "Recipe: Baby Free Potion\r\rA good contraceptive.\r\rAlchemy difficulty: Complex";   }
        if (ID == 12) { tempStr = "Recipe: Potency Potion\r\rMakes your testicles more efficient in their duties.\r\rAlchemy difficulty: Complex";  }
        if (ID == 13) { tempStr = "Recipe: Superior Gender Swap Potion\r\rFor when you're bored and wanna try out something new.\r\rAlchemy difficulty: Advanced";  }
        if (ID == 14) { tempStr = "Recipe: Superior Masochism Potion\r\rReally helps take on the big fellas; all that soreness will be delightful instead.\r\rAlchemy difficulty: Advanced";    }
        if (ID == 15) { tempStr = "Recipe: Superior Baby Free Potion\r\rNecessary in Siz'Calit.\r\rAlchemy difficulty: Advanced";   }
        if (ID == 16) { tempStr = "Recipe: Superior Potency Potion\r\rHelps make sure you absolutely fertilize all those eggs with a good coating.\r\rAlchemy difficulty: Advanced";    }
        if (ID == 17) { tempStr = "Recipe: Milk Suppressant\r\rSometimes all that leaking can be a bit of a nuisance... So, they came up with this!\r\rAlchemy difficulty: Complex";    }

        return tempStr;
    }
}


function apothValue(ID:int):int {
    var tempNum:int = 0;
    if (ID >= 200) { return itemValue(ID); }
    else {
        if (ID == 1) { tempNum = 20; }
        if (ID == 2) { tempNum = 25; }
        if (ID == 3) { tempNum = 25; }
        if (ID == 4) { tempNum = 20; }
        if (ID == 5) { tempNum = 35; }
        if (ID == 6) { tempNum = 40; }
        if (ID == 7) { tempNum = 35; }
        if (ID == 8) { tempNum = 30; }
        if (ID == 9) { tempNum = 45; }
        if (ID == 10) { tempNum = 45; }
        if (ID == 11) { tempNum = 40; }
        if (ID == 12) { tempNum = 45; }
        if (ID == 13) { tempNum = 60; }
        if (ID == 14) { tempNum = 70; }
        if (ID == 15) { tempNum = 55; }
        if (ID == 16) { tempNum = 65; }
        if (ID == 17) { tempNum = 35; }
        
        return tempNum;
    }
}