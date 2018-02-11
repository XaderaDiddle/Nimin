import flash.net.FileFilter;
import flash.display.Sprite;
import flash.text.TextFormat;
import code.Character;

/***********************************
 ********INDEX**********************
 ***********************************
 *New Game Button				   *
 *Inverting Colors				   *
 *	Random Travelers			   *
 *		Traveler Move			   *
 *		Traveler Action			   *
 ***********************************/

 //Not much lives here anymore, just the starting file that points elsewhere and some other junk

include "Inclusions.as"

/*****************
 *New Game Button*
 *****************/

//New Game - set most stats and display m/f choice.

function newGameGo():void {
	appearanceText.visible = false;
	appearanceBox.visible = false;
	saveGame.visible = false;
	saveGameOutline.visible = false;
	buttonConfirm();
	textL("Are you sure you would like to start a new game?");
	if (currentState == 0) { Choice7.visible = false; }
	doListen = function():void{
		if (buttonChoice == 6){
			hideUpDown();
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
			Option7.visible = false;
			sideHide();
				
			startStats();
					
			//Debug Items
			//itemAdd(258)
			/*knowPussJuice = true;
			levelUP += 20;
			doCoin(10000);
			for(i=1;i<20;i++) {
				itemAdd(210);
				itemAdd(114);
			}*/

			
			doRace();
		}
		else { doReturn(); }
	}
}
		




/******************
 *Inverting Colors*
 ******************/

/*function invertGo():void{ 
	if (bgC.visible == false){
		bgC.visible = true;
		
		statPane.textColor = 0xFFFFFF;
		statValuePane.textColor = 0xFFFFFF;
		levelPane.textColor = 0xFFFFFF;
		levelValuePane.textColor = 0xFFFFFF;
		DayPane.textColor = 0xFFFFFF;
		DayValuePane.textColor = 0xFFFFFF;
		clockPane.textColor = 0xFFFFFF;
		outputWindow.textColor = 0xFFFFFF;
		region.textColor = 0xFFFFFF;
		currentRegion.textColor = 0xFFFFFF;	
	}
	else {
		bgC.visible = false;
		
		statPane.textColor = 0x000000;
		statValuePane.textColor = 0x000000;
		levelPane.textColor = 0x000000;
		levelValuePane.textColor = 0x000000;
		DayPane.textColor = 0x000000;
		DayValuePane.textColor = 0x000000;
		clockPane.textColor = 0x000000;
		outputWindow.textColor = 0x000000;
		currentRegion.textColor = 0x000000;	
		region.textColor = 0x000000;
	}
}*/

/******************
 *Random Travelers*
 ******************/

/*function startingTravs():void{
	var traveler1:Traveler = new Traveler();
	var traveler2:Traveler = new Traveler();
	var traveler3:Traveler = new Traveler();
	var traveler4:Traveler = new Traveler();
	travArray.push(traveler1, traveler2, traveler3, traveler4);

	for each (var j:int in travArray){
		travArray[j].createTrav();
	}
}*/

