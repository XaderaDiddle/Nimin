function newGameGo():void {
    saveGame.visible = false;
    saveGameOutline.visible = false;
    loadGame.visible = false;
    loadGameOutline.visible = false;
    statPane.visible = true;
    strNum.visible = true;
    mentNum.visible = true;
    libNum.visible = true;
    senNum.visible = true;
    hpNum.visible = true;
    lustNum.visible = true;
    hungerNum.visible = true;
    hpText.visible = true;
    lustText.visible = true;
    hungerText.visible = true;
    DayPane.visible = true;
    dayNum.visible = true;
    hourNum.visible = true;
    levelPane.visible = true;
    levelNum.visible = true;
    sexPNum.visible = true;
    coinNum.visible = true;

    startStats();

    stats(0,0,0,0);

    dayTime(0);

    doHP(10000);
    doSexP(0);

    showSide = false;
    toggleSide();
    Option7.visible = false;

    currentState = 1;
    viewButtonText(1,0,0,0,0,0,0,0,0,0,0,0);
    viewButtonOutline(1,0,0,0,0,0,0,0,0,0,0,0);

    textL("This is for testing purposes.\r\rTo adjust stats, load the StatSetup.as file and adjust individual stats as necessary (way easier than adding  in-game adjustments atm). Once stats are adjusted, re-build the game and click New Game and it will automatically have the new stats loaded.\r\rPut your code into TestFile.as before building, with the first function being called 'testFunction'. Clicking the 'TEST' button above will call that function, which will in turn go through whatever else you have.\r\rToggling the Appearance panel has been disabled for the testing purposes.\r\rCurrently the appearance description is out of date.")

    buttonWrite(1,"TEST")

    doListen = function():void{
        testFunction();
    }
}

