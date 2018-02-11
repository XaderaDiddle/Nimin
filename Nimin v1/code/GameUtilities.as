/***********
 *Utilities*
 ***********/

/*
All the functions the game uses as a base
*/

function textL(texts:String):void {
    currentText = texts;
    textCheckArray = [];
    
    var tempStr:String = currentText;
    if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>"; }
    tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
    outputWindow.htmlText = tempStr;
    //if (bgC.visible == true){ outputWindow.textColor = 0xFFFFFF; }
    outputWindow.scrollV = 0;
    scrollBar1.update();
}

function textLP(texts:String, ...textCheck):void {
    if (textCheckArray.indexOf(textCheck[0]) == -1) {
        currentText = currentText + texts;
        textCheckArray = textCheckArray.concat(textCheck);
    }
    var tempStr:String = currentText;
    if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>"; }
    tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
    outputWindow.htmlText = tempStr;
    outputWindow.scrollV = 0;
    scrollBar1.update();
}


function outputSideText(texts:String, reset:Boolean):void {
    if(reset == false) sideText = sideText + texts;
    else sideText = texts;
    var tempStr:String = sideText;
    if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>"; }
    tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
    sideWindow.htmlText = tempStr;
    //if (bgC.visible == true){ outputWindow.textColor = 0xFFFFFF; }
    sideWindow.scrollV = 0;
    scrollBar2.update();
}

function updateSide():void {
    if (sideFocus == 1) { appearanceGo();   }
    if (sideFocus == 2) { detailedStats();  }
    if (sideFocus == 3) { detailedStatuses();   }
    //if (sideFocus == 4)   { detailedFetishes();   }
    if (sideFocus == 5) { detailedLevels(); }
    if (sideFocus == 6) { detailedGear();   }
    if (sideFocus == 7) { detailedTitles(); }
    if (sideFocus == 8) { detailedCredits();    }
}

function hideUpDown():void {
    strUp.visible = false;
    strDown.visible = false;
    mentaUp.visible = false;
    mentaDown.visible = false;
    libUp.visible = false;
    libDown.visible = false;
    senDown.visible = false;
    senUp.visible = false;
    lustUp.visible = false;
    lustDown.visible = false;
    hpUp.visible = false;
    hpDown.visible = false;
}

function buttonWrite(buttonNumber:int, buttonText:String):void{
    if (buttonNumber == 1) { Choice1.htmlText = buttonText; }
    if (buttonNumber == 2) { Choice2.htmlText = buttonText; }
    if (buttonNumber == 3) { Choice3.htmlText = buttonText; }
    if (buttonNumber == 4) { Choice4.htmlText = buttonText; }
    if (buttonNumber == 5) { Choice5.htmlText = buttonText; }
    if (buttonNumber == 6) { Choice6.htmlText = buttonText; }
    if (buttonNumber == 7) { Choice7.htmlText = buttonText; }
    if (buttonNumber == 8) { Choice8.htmlText = buttonText; }
    if (buttonNumber == 9) { Choice9.htmlText = buttonText; }
    if (buttonNumber == 10) { Choice10.htmlText = buttonText; }
    if (buttonNumber == 11) { Choice11.htmlText = buttonText; }
    if (buttonNumber == 12) { Choice12.htmlText = buttonText; }
}

function viewButtonText (button1:int, button2:int, button3:int, button4:int, button5:int, button6:int, button7:int, button8:int, button9:int, button10:int, button11:int, button12:int):void {
    if (button1 == 0) { Choice1.visible=false; }
    if (button1 == 1) { Choice1.visible=true; }
    if (button2 == 0) { Choice2.visible=false; }
    if (button2 == 1) { Choice2.visible=true; }
    if (button3 == 0) { Choice3.visible=false; }
    if (button3 == 1) { Choice3.visible=true; }
    if (button4 == 0) { Choice4.visible=false; }
    if (button4 == 1) { Choice4.visible=true; }
    if (button5 == 0) { Choice5.visible=false; }
    if (button5 == 1) { Choice5.visible=true; }
    if (button6 == 0) { Choice6.visible=false; }
    if (button6 == 1) { Choice6.visible=true; }
    if (button7 == 0) { Choice7.visible=false; }
    if (button7 == 1) { Choice7.visible=true; }
    if (button8 == 0) { Choice8.visible=false; }
    if (button8 == 1) { Choice8.visible=true; }
    if (button9 == 0) { Choice9.visible=false; }
    if (button9 == 1) { Choice9.visible=true; }
    if (button10 == 0) { Choice10.visible=false; }
    if (button10 == 1) { Choice10.visible=true; }
    if (button11 == 0) { Choice11.visible=false; }
    if (button11 == 1) { Choice11.visible=true; }
    if (button12 == 0) { Choice12.visible=false; }
    if (button12 == 1) { Choice12.visible=true; }
}

function viewButtonOutline (button1:int, button2:int, button3:int, button4:int, button5:int, button6:int, button7:int, button8:int, button9:int, button10:int, button11:int, button12:int):void {
    if (button1 == 0) { Choice1Outline.visible=false; }
    if (button1 == 1) { Choice1Outline.visible=true; }
    if (button2 == 0) { Choice2Outline.visible=false; }
    if (button2 == 1) { Choice2Outline.visible=true; }
    if (button3 == 0) { Choice3Outline.visible=false; }
    if (button3 == 1) { Choice3Outline.visible=true; }
    if (button4 == 0) { Choice4Outline.visible=false; }
    if (button4 == 1) { Choice4Outline.visible=true; }
    if (button5 == 0) { Choice5Outline.visible=false; }
    if (button5 == 1) { Choice5Outline.visible=true; }
    if (button6 == 0) { Choice6Outline.visible=false; }
    if (button6 == 1) { Choice6Outline.visible=true; }
    if (button7 == 0) { Choice7Outline.visible=false; }
    if (button7 == 1) { Choice7Outline.visible=true; }
    if (button8 == 0) { Choice8Outline.visible=false; }
    if (button8 == 1) { Choice8Outline.visible=true; }
    if (button9 == 0) { Choice9Outline.visible=false; }
    if (button9 == 1) { Choice9Outline.visible=true; }
    if (button10 == 0) { Choice10Outline.visible=false; }
    if (button10 == 1) { Choice10Outline.visible=true; }
    if (button11 == 0) { Choice11Outline.visible=false; }
    if (button11 == 1) { Choice11Outline.visible=true; }
    if (button12 == 0) { Choice12Outline.visible=false; }
    if (button12 == 1) { Choice12Outline.visible=true; }
}

function amountWrite(buttonNum:int, buttonText:String):void{
    if (buttonNum == 1) { Amount1.text = buttonText; }
    if (buttonNum == 2) { Amount2.text = buttonText; }
    if (buttonNum == 3) { Amount3.text = buttonText; }
    if (buttonNum == 4) { Amount4.text = buttonText; }
    if (buttonNum == 5) { Amount5.text = buttonText; }
    if (buttonNum == 6) { Amount6.text = buttonText; }
    if (buttonNum == 7) { Amount7.text = buttonText; }
    if (buttonNum == 8) { Amount8.text = buttonText; }
    if (buttonNum == 9) { Amount9.text = buttonText; }
    if (buttonNum == 10) { Amount10.text = buttonText; }
    if (buttonNum == 11) { Amount11.text = buttonText; }
    if (buttonNum == 12) { Amount12.text = buttonText; }
}

function viewAmount(buttonNum:int, tempBool:Boolean):void{
    if (buttonNum == 1){
        Amount1.visible = tempBool;
        AmountOutline1.visible = tempBool;
    }
    if (buttonNum == 2){
        Amount2.visible = tempBool;
        AmountOutline2.visible = tempBool;
    }
    if (buttonNum == 3){
        Amount3.visible = tempBool;
        AmountOutline3.visible = tempBool;
    }
    if (buttonNum == 4){
        Amount4.visible = tempBool;
        AmountOutline4.visible = tempBool;
    }
    if (buttonNum == 5){
        Amount5.visible = tempBool;
        AmountOutline5.visible = tempBool;
    }
    if (buttonNum == 6){
        Amount6.visible = tempBool;
        AmountOutline6.visible = tempBool;
    }
    if (buttonNum == 7){
        Amount7.visible = tempBool;
        AmountOutline7.visible = tempBool;
    }
    if (buttonNum == 8){
        Amount8.visible = tempBool;
        AmountOutline8.visible = tempBool;
    }
    if (buttonNum == 9){
        Amount9.visible = tempBool;
        AmountOutline9.visible = tempBool;
    }
    if (buttonNum == 10){
        Amount10.visible = tempBool;
        AmountOutline10.visible = tempBool;
    }
    if (buttonNum == 11){
        Amount11.visible = tempBool;
        AmountOutline11.visible = tempBool;
    }
    if (buttonNum == 12){
        Amount12.visible = tempBool;
        AmountOutline12.visible = tempBool;
    }
}

function hideAmount():void{ for (i = 1; i < 13; i++){ viewAmount(i, false); } }

function choiceListButtons(which:String):void {
    viewButtonOutline(0,0,0,0,0,0,0,0,0,0,0,1);
    viewButtonText(0,0,0,0,0,0,0,0,0,0,0,1);
    buttonWrite(4, "&#60;&#60;");
    buttonWrite(8, ">>");
    buttonWrite(12, "Return");
    var tempArray:Array = [];

    if (which == "Bag") {
        for (i=0; i < bagArray.length ; i++){
            if (bagArray[i] == 0) { tempArray[i] = " "; }
            else { tempArray[i] = itemName(bagArray[i]); }
        }
        if (inBag == true) {
            choicePage = bagPage;
        }
    }
    else if (which == "Stash") {
        for (i=0; i < stashArray.length ; i++){
            if (stashArray[i] == 0) { tempArray[i] = " "; }
            else { tempArray[i] = itemName(stashArray[i]); }
        }       
    }
    else {
        for (i=0; i < choiceListArray.length ; i++){
            tempArray[i] = choiceListArray[i];
        }
    }   

    if (tempArray.length > 9) {
        Choice4Outline.visible = true;
        Choice4.visible = true;
        Choice8Outline.visible = true;
        Choice8.visible = true;
        showPage(true, which);
    }

    //List Amounts
    var tempInt:int;
    for (i = 0;i<=8;i++) { 
        if (i < 3) { tempInt = i + 1; }
        else if (i < 6) { tempInt = i + 2; }
        else if (i < 9) { tempInt = i + 3; }
        if (tempArray[i + (choicePage*9-9)]) {
            if (which == "Bag") {
                if (bagStackArray[i + (choicePage*9-9)] > 1) { 
                    viewAmount(tempInt, true);
                    amountWrite(tempInt, ""+bagStackArray[i + (choicePage*9-9)]+"");
                }
            }
            if (which == "Stash") {
                if (stashStackArray[i + (choicePage*9-9)] > 1) { 
                    viewAmount(tempInt, true);
                    amountWrite(tempInt, ""+stashStackArray[i + (choicePage*9-9)]+"");
                }
            }
        }
    }

    //List Buttons
    if (tempArray[0 + (choicePage*9 - 9)]) { 
        buttonWrite(1, tempArray[0 + (choicePage*9 - 9)]);
        Choice1Outline.visible = true;
        if (tempArray[0 + (choicePage*9 - 9)] != " ") { Choice1.visible = true; }
    }
    if (tempArray[1 + (choicePage*9 - 9)]) { 
        buttonWrite(2, tempArray[1 + (choicePage*9 - 9)]);
        Choice2Outline.visible = true;
        if (tempArray[1 + (choicePage*9 - 9)] != " ") { Choice2.visible = true; }
    }
    if (tempArray[2 + (choicePage*9 - 9)]) { 
        buttonWrite(3, tempArray[2 + (choicePage*9 - 9)]);
        Choice3Outline.visible = true;
        if (tempArray[2 + (choicePage*9 - 9)] != " ") { Choice3.visible = true; }
    }
    if (tempArray[3 + (choicePage*9 - 9)]) { 
        buttonWrite(5, tempArray[3 + (choicePage*9 - 9)]);
        Choice5Outline.visible = true;
        if (tempArray[3 + (choicePage*9 - 9)] != " ") { Choice5.visible = true; }
    }
    if (tempArray[4 + (choicePage*9 - 9)]) { 
        buttonWrite(6, tempArray[4 + (choicePage*9 - 9)]);
        Choice6Outline.visible = true;
        if (tempArray[4 + (choicePage*9 - 9)] != " ") { Choice6.visible = true; }
    }
    if (tempArray[5 + (choicePage*9 - 9)]) { 
        buttonWrite(7, tempArray[5 + (choicePage*9 - 9)]);
        Choice7Outline.visible = true;
        if (tempArray[5 + (choicePage*9 - 9)] != " ") { Choice7.visible = true; }
    }
    if (tempArray[6 + (choicePage*9 - 9)]) { 
        buttonWrite(9, tempArray[6 + (choicePage*9 - 9)]);
        Choice9Outline.visible = true;
        if (tempArray[6 + (choicePage*9 - 9)] != " ") { Choice9.visible = true; }
    }
    if (tempArray[7 + (choicePage*9 - 9)]) { 
        buttonWrite(10, tempArray[7 + (choicePage*9 - 9)]);
        Choice10Outline.visible = true;
        if (tempArray[7 + (choicePage*9 - 9)] != " ") { Choice10.visible = true; }
    }
    if (tempArray[8 + (choicePage*9 - 9)]) { 
        buttonWrite(11, tempArray[8 + (choicePage*9 - 9)]);
        Choice11Outline.visible = true;
        if (tempArray[8 + (choicePage*9 - 9)] != " ") { Choice11.visible = true; }
    }
}

function choiceListBlanks():void{ 
    if (Choice1Outline.visible == true) { Choice1.visible = true; }
    if (Choice2Outline.visible == true) { Choice2.visible = true; }
    if (Choice3Outline.visible == true) { Choice3.visible = true; }
    if (Choice5Outline.visible == true) { Choice5.visible = true; }
    if (Choice6Outline.visible == true) { Choice6.visible = true; }
    if (Choice7Outline.visible == true) { Choice7.visible = true; }
    if (Choice9Outline.visible == true) { Choice9.visible = true; }
    if (Choice10Outline.visible == true) { Choice10.visible = true; }
    if (Choice11Outline.visible == true) { Choice11.visible = true; }
}

function choiceListSelect(which:String):void{
    var tempArray:Array = [];
    
    hideAmount();
    if (which == "Bag") {
        for (i=0; i < bagArray.length ; i++){
            tempArray[i] = bagArray[i];
        }       
    }
    else if (which == "Stash") {
        for (i=0; i < stashArray.length ; i++){
            tempArray[i] = stashArray[i];
        }       
    }
    else {
        for (i=0; i < choiceListArray.length ; i++){
            tempArray[i] = choiceListArray[i];
        }
    }   

    var tempInt:int;
    if (buttonChoice < 4) { tempInt = buttonChoice - 1; }
    else if (buttonChoice < 8) { tempInt = buttonChoice - 2; }
    else if (buttonChoice < 12) { tempInt = buttonChoice - 3; }
    //Identifies object of choice
    if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12) { choiceListResult[0] = tempArray[tempInt + (choicePage*9-9)]; }
    else { choiceListResult[0] = ""; }
    
    /*if (buttonChoice == 1) { choiceListResult[0] = tempArray[0 + (choicePage*9 - 9)]; }
    if (buttonChoice == 2) { choiceListResult[0] = tempArray[1 + (choicePage*9 - 9)]; }
    if (buttonChoice == 3) { choiceListResult[0] = tempArray[2 + (choicePage*9 - 9)]; }
    if (buttonChoice == 5) { choiceListResult[0] = tempArray[3 + (choicePage*9 - 9)]; }
    if (buttonChoice == 6) { choiceListResult[0] = tempArray[4 + (choicePage*9 - 9)]; }
    if (buttonChoice == 7) { choiceListResult[0] = tempArray[5 + (choicePage*9 - 9)]; }
    if (buttonChoice == 9) { choiceListResult[0] = tempArray[6 + (choicePage*9 - 9)]; }
    if (buttonChoice == 10) { choiceListResult[0] = tempArray[7 + (choicePage*9 - 9)]; }
    if (buttonChoice == 11) { choiceListResult[0] = tempArray[8 + (choicePage*9 - 9)]; }*/

    //Identifies array placement of choice
    if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12) { choiceListResult[1] = tempInt + (choicePage*9 - 9); }
    else { choiceListResult[1] = -1; }
    

    if (buttonChoice == 4) {
        if (choicePage > 1) { choicePage --; }
        else if (choicePage == 1) { choicePage = Math.ceil(tempArray.length/9); }
    }
    if (buttonChoice == 8) {
        if (choicePage < Math.ceil(tempArray.length/9)) { choicePage++; }
        else { choicePage = 1; }
    }
    if (inBag == true) { bagPage = choicePage; }
    if (buttonChoice != 4 && buttonChoice != 8) { 
        showPage(false, "");
        choicePage = 1;
    }
}

function choiceListCheck(...which):Boolean {
    if (choiceListArray.indexOf(which[0]) >= choicePage*9-9 && choiceListArray.indexOf(which[0]) < choicePage*9 ) {
        return true;
    }
    else { return false; }
}

function showPage(changes:Boolean, which:String):void{
    if(changes == true){ pageNum.visible = true; }
    if(changes == false){ pageNum.visible = false; }

    pageNum.text = which+": "+choicePage;
    
}

function checkZero():void{
    if (cockSize < 0){ cockSize = 0; }
    if (cockTotal < 0){ cockTotal = 0; }
    if (balls < 0){ balls = 0; }
    if (balls == 0 && blueBalls > 0) { blueBalls = 0; }
    if (ballSize < 1){ ballSize = 1; }
    if (cockMoist < 0){ cockMoist = 0; }
    if (cockMoist > 12){ cockMoist = 12; }
    if (breastSize < 0){ breastSize = 0; }
    if (boobTotal < 0){ boobTotal = 0; }
    if (nippleSize < 1){ nippleSize = 1; }
    if (udderSize < 1){ udderSize = 1; }
    if (teatSize < 2){ teatSize = 2; }
    if (clitSize < 1){ clitSize = 1; }
    if (vagSize < 0){ vagSize = 0; }
    if (vagTotal < 0){ vagTotal = 0; }
    if (vagMoist < 0){ vagMoist = 0; }
    if (vagMoist > 12){ vagMoist = 12; }
    if (vulvaSize < 0){ vulvaSize = 0; }
    if (exhaustion < 0){ exhaustion = 0; }
    if (exhaustionPenalty < 0){ exhaustionPenalty = 0; }
    if (hips < 1){ hips = 1; }
    if (butt < 1){ butt = 1; }
    if (body < 5){ body = 5; }
    if (tallness < 3){ tallness = 3; }
    if (cockSizeMod < .1) { cockSizeMod = .1; }
    if (vagSizeMod < .1) { vagSizeMod = .1; }
    if (vagBellyMod < 0) { vagBellyMod = 0; }
    if (pregChanceMod < -100) { pregChanceMod = -100; }
    if (lactation < 0) { lactation = 0; }
    if (milkMod < 0) { milkMod = 0; }
    if (milkCap < 0) { milkCap = 0; }
    if (coin < 0) { coin = 0; }
    if (hipMod < 1) { hipMod = 1; }
    if (buttMod < 1) { buttMod = 1; }
    if (bellyMod < 0) { bellyMod = 0; }
    if (breastSizeMod < .1) { breastSizeMod = .1; }
    if (nippleSizeMod < .1) { nippleSizeMod = .1; }
    if (nipNarrowMod < .1) { nipNarrowMod = .1; }
    if (cockNarrowMod < .1) { cockNarrowMod = .1; }
    if (clitNarrowMod < .1) { clitNarrowMod = .1; }
    if (ballSizeMod < .1) { ballSizeMod = .1; }

    if (pregArray.length < vagTotal*5) {
        while (pregArray.length < vagTotal*5) {
            pregArray.push(false, 0, 0, 0, 0);
        }
    }
}

function checkDecimal():void {
    
    cumMod = Math.round(cumMod*10)/10;
    cockSizeMod = Math.round(cockSizeMod*100)/100;
    vagSizeMod = Math.round(vagSizeMod*100)/100;
    breastSizeMod = Math.round(breastSizeMod*100)/100;
    nippleSizeMod = Math.round(nippleSizeMod*100)/100;
    nipNarrowMod = Math.round(nipNarrowMod*100)/100;
    cockNarrowMod = Math.round(cockNarrowMod*100)/100;
    clitNarrowMod = Math.round(clitNarrowMod*100)/100;
    ballSizeMod = Math.round(ballSizeMod*100)/100;
    vagElastic = Math.round(vagElastic*10)/10;

    changeMod = Math.round(changeMod*10)/10;
    SexPMod = Math.round(SexPMod*10)/10;
            
    pregRate = Math.round(pregRate*100)/100;

    maleFetish = Math.round(maleFetish*10)/10;
    femaleFetish = Math.round(femaleFetish*10)/10;
    hermFetish = Math.round(hermFetish*10)/10;
    narcissistFetish = Math.round(narcissistFetish*10)/10;
    dependentFetish = Math.round(dependentFetish*10)/10;

    dominantFetish = Math.round(dominantFetish*10)/10;
    submissiveFetish = Math.round(submissiveFetish*10)/10;
    lboobFetish = Math.round(lboobFetish*10)/10;
    sboobFetish = Math.round(sboobFetish*10)/10;            
    furryFetish = Math.round(furryFetish*10)/10;
    scalyFetish = Math.round(scalyFetish*10)/10;
    smoothyFetish = Math.round(smoothyFetish*10)/10;

    pregnancyFetish = Math.round(pregnancyFetish*10)/10;
    bestialityFetish = Math.round(bestialityFetish*10)/10;
    milkFetish = Math.round(milkFetish*10)/10;
    sizeFetish = Math.round(sizeFetish*10)/10;
    unbirthingFetish = Math.round(unbirthingFetish*10)/10;
    ovipositionFetish = Math.round(ovipositionFetish*10)/10;
    toyFetish = Math.round(toyFetish*10)/10;
    hyperFetish = Math.round(hyperFetish*10)/10;



}

function bc():void { buttonChoice = 0; }

function buttonConfirm():void {
    bc();
    viewButtonText(0,0,0,0,0,1,1,0,0,0,0,0);
    viewButtonOutline(0,0,0,0,0,1,1,0,0,0,0,0); 
    buttonWrite(6, "Yes");
    buttonWrite(7, "No");
}

function doNext():void {
    bc();
    viewButtonOutline(0,0,0,0,0,1,0,0,0,0,0,0);
    viewButtonText(0,0,0,0,0,1,0,0,0,0,0,0);
    buttonWrite(6, "Next");
}

function doEnd():void {
    choicePage = 1;
    showPage(false, "");
    statDisplay();
    if (inBag == true && lust > 99 && currentState == 2) { 
        inBag = false;
        hideAmount();
        doLustForcedMasturbate();
    }
    else { 
        doNext();
        doListen = function():void{ if(buttonChoice == 6){  doProcess(); } }
    }
}
    
function doProcess():void{
    choicePage = 1;
    if (inBag == false && moveItemID != 0) {
        textL("You seem to have not placed your "+itemName(moveItemID)+"");
        if (moveItemStack > 1) { textLP(" x"+moveItemStack);    }
        textLP(" in your bag. Do you want to discard the item?");
        buttonConfirm();
        doListen = function():void{
            if (buttonChoice == 6) {
                passiveItemRemove(moveItemID);          
            }
            else { 
                for (i = 1; i<= moveItemStack ; i++) { itemAdd(moveItemID); }
            }
            moveItemID = 0;
            moveItemStack = 0;
            showMoveItem(false);
        }
    }
    if (itemGainArray.length != 0) {
        itemGainArray.sort();
        gainItem(itemGainArray.pop()); 
    }
    /*if (item1 != 0) { gainItem(item1, 1); }
    else if (item2 != 0) { gainItem(item2, 2); }
    else if (item3 != 0) { gainItem(item3, 3); }
    else if (item4 != 0) { gainItem(item4, 4); }
    else if (item5 != 0) { gainItem(item5, 5); }
    else if (item6 != 0) { gainItem(item6, 6); }*/
    else if (human != 0 || horse != 0 || wolf != 0 || cat != 0 || cow != 0) { affinityChange(); }
    else if (hrs != 0) { dayTime(hrs); }
    else { doReturn(); }
}

function doReturn():void{
    choicePage = 1;
    checkZero();
    checkDecimal();
    if (showSide == true) { updateSide(); }
    if (inBag == false) {
        showPage(false, "");
        hideAmount();
    }
    if (inBag == true) { doBag(); }
    else if (inShop == true) { doShop(); }
    else if (currentState == 2){ doBattle(); }
    else if (currentState == 3){ doMasturbate(); }
    else if (inDungeon == true) { doDungeon(); }
    else if (currentState == 1){ doGeneral(); }
    
    
}

function decGet(number:Number, places:int):String{
    var tempStr:String = ""+number+"";
    var tempStr2:String = "";
    var tempInt:int = 0;
    tempInt = tempStr.indexOf(".",0);
    if(tempInt > 0){ tempStr2 = tempStr.substring(0,(tempInt+places+1)); }
    else { tempStr2 = tempStr; }
    return tempStr2;
}   

//Allows events to check and see if a particular item is in the bag. Put this with Bag function.
function checkItem(ID:int):Boolean {
    var tempBool:Boolean = false;

    if (bagArray.indexOf(ID) != -1) { tempBool = true;}

    return tempBool;
}

function checkMagicItem():Boolean {
    var tempBool:Boolean = false;

    if (checkItem(101)) { tempBool = true;  }
    else if (checkItem(102))    { tempBool = true;  }
    else if (checkItem(200))    { tempBool = true;  }
    else if (checkItem(215))    { tempBool = true;  }
    else if (checkItem(231))    { tempBool = true;  }
    else if (checkItem(233))    { tempBool = true;  }
    else if (checkItem(234))    { tempBool = true;  }
    else if (checkItem(235))    { tempBool = true;  }
    else if (checkItem(236))    { tempBool = true;  }
    else if (checkItem(237))    { tempBool = true;  }
    else if (checkItem(252))    { tempBool = true;  }

    return tempBool;
}

//Allows events to check for particular items in stash.
function checkStash(ID:int):Boolean {
    var tempBool:Boolean = false;
    
    if (stashArray.indexOf(ID) != -1) { tempBool = true;    }

    return tempBool;
}

//Allows events to check and see if there is a certain amount of a particular item in the bag.
function countItem(ID:int):int {
    var tempInt:int = 0;
    for (i=0; i <= bagArray.length ; i++){
        if (bagArray[i] == ID) { tempInt += bagStackArray[i]; }
    }
    return tempInt;
}


//Returns random number between 1 and 100
function percent():int {
    return Math.floor(Math.random()*(1+100-1))+1;
}

function chooseFrom():int {
    rndResult = 0;
    if (rndArray.length < 1){
        textLP("\r\rAn ERROR has occured in the choice array. Please report this bug and where you saw it ("+rndArray[0]+" at "+hour+"hour), or else you'll get the hose.");
        rndArray = [];
    }
    else {
        var tempInt:int = Math.round(Math.random()*(rndArray.length-1));
        rndResult = rndArray[tempInt];
        rndArray = [];
    }
    return rndResult;
}