/*************
 *Preferences*
 *************/

//Toggle Theme
function toggleTheme():void{
	theme++;
	if (theme == 6) { theme = 0; }
	updateTheme();
	savePreferences();
}

function changeBGColor(color:uint):void{
	bg.graphics.beginFill( color );
	bg.graphics.drawRect( 0, 0, stage.stageWidth, stage.stageHeight );
	bg.graphics.endFill();
}

function updateTheme():void {
	if (theme == 0) {
		changeBGColor(0xFFFFFF);
	}
	if (theme == 1)	{
		changeBGColor(0x000000);
	}
	if (theme == 2)	{
		changeBGColor(0xEF7DB6);
	}
	if (theme == 3)	{
		changeBGColor(0x29705C);
	}
	if (theme == 4)	{
		changeBGColor(0x4248A6);
	}
	if (theme == 5)	{
		changeBGColor(0x721717);
	}
}


//Toggle Font Size
function fontSizeDown():void{
	if (fontSize > 4) { fontSize -= 2; }
	updateText();
	savePreferences();
}


function fontSizeReset():void{
	fontSize = 14;
	updateText();
	savePreferences();
}


function fontSizeUp():void{
	if (fontSize < 26) { fontSize += 2; }
	updateText();
	savePreferences();
}

//Toggle Font Bold
function toggleBold():void{
	if (fontBold == false) { fontBold = true; }
	else { fontBold = false; }
	updateText();
	savePreferences();
}

//Toggle Font Color
function toggleColor():void{
	if (fontColor == "000000") { fontColor = "FFFFFF"; }
	else if (fontColor == "FFFFFF") { fontColor = "808080"; }
	else if (fontColor == "808080") { fontColor = "0000FF"; }
	else if (fontColor == "0000FF") { fontColor = "800080"; }
	else if (fontColor == "800080") { fontColor = "FF0000"; }
	else if (fontColor == "FF0000") { fontColor = "FFA500"; }
	else if (fontColor == "FFA500") { fontColor = "FFFF00"; }
	else if (fontColor == "FFFF00") { fontColor = "008000"; }
	else if (fontColor == "008000") { fontColor = "EF7DB6"; }
	else if (fontColor == "EF7DB6") { fontColor = "29705C"; }
	else if (fontColor == "29705C") { fontColor = "000000"; }
	updateText();
	savePreferences();
}

function swapOption8():void{
	var opt8x:Number = Option8.x;
	var opt8y:Number = Option8.y;
	var opt8ax:Number = Option8a.x;
	var opt8ay:Number = Option8a.y;
	
	Option8.x = opt8ax;
	Option8.y = opt8ay;
	Option8a.x = opt8x;
	Option8a.y = opt8y;

}


//Toggle Side Display
function toggleSide():void{
	if (showSide == true) {
		showSide = false;
		sideHide();
		Option7.htmlText = "--";
		swapOption8();
	}
	else {
		showSide = true;
		sideShow();
		updateSide();
		Option7.htmlText = "O";
		swapOption8();
	}
	if (Option7.visible == true) { savePreferences(); }
}

function sideHide():void {
	sideWindow.visible = false;
	scrollBar2.visible = false;
	Side1.visible = false;
	Side1Outline.visible = false;
	Side2.visible = false;
	Side2Outline.visible = false;
	Side3.visible = false;
	Side3Outline.visible = false;
	Side4.visible = false;
	Side4Outline.visible = false;
	Side5.visible = false;
	Side5Outline.visible = false;
	Side6.visible = false;
	Side6Outline.visible = false;
	Side7.visible = false;
	Side7Outline.visible = false;
	Side8.visible = false;
	Side8Outline.visible = false;
	if (saveGame.visible == true) {
		appearanceText.visible = true;
		appearanceBox.visible = true;
	}
}

function sideShow():void {
	sideWindow.visible = true;
	scrollBar2.visible = true;
	Side1.visible = true;
	Side1Outline.visible = true;
	Side2.visible = true;
	Side2Outline.visible = true;
	Side3.visible = true;
	Side3Outline.visible = true;
	Side4.visible = true;
	Side4Outline.visible = true;
	Side5.visible = true;
	Side5Outline.visible = true;
	Side6.visible = true;
	Side6Outline.visible = true;
	Side7.visible = true;
	Side7Outline.visible = true;
	Side8.visible = true;
	Side8Outline.visible = true;
	appearanceText.visible = false;
	appearanceBox.visible = false;
	updateSide();
}

function savePreferences():void {
	var so:SharedObject = SharedObject.getLocal("Nimin_Prefs", "/");
	var prefSave:Array = [];
	prefSave[0] = theme;
	prefSave[1] = fontSize;
	prefSave[2] = fontBold;
	prefSave[3] = fontColor;
	prefSave[4] = showSide;
	trace("preferences save: "+prefSave[3]);
	so.data.prefs = prefSave;
	so.flush();
}

function loadPreferences():void {
	var so:SharedObject = SharedObject.getLocal("Nimin_Prefs", "/");
	var prefLoad:Array = so.data.prefs;
	if (prefLoad != null) {
		theme = prefLoad[0];
		fontSize = prefLoad[1];
		fontBold = prefLoad[2];
		fontColor = prefLoad[3];
		showSide = prefLoad[4];
	}	
	else { 
		theme = 0;
		fontSize = 14;
		fontBold = false;
		fontColor = "000000";
		showSide = true; 
	}
	updateText();
	updateTheme();
}

function updateText():void {
	var tempStr:String = "0x"+fontColor;
	var tempUInt:uint = uint(tempStr);
	statPane.textColor = tempUInt;
	strNum.textColor = tempUInt;
	mentNum.textColor = tempUInt;
	libNum.textColor = tempUInt;
	senNum.textColor = tempUInt;
	hpNum.textColor = tempUInt;
	lustNum.textColor = tempUInt;
	hungerNum.textColor = tempUInt;
	hpText.textColor = tempUInt;
	lustText.textColor = tempUInt;
	hungerText.textColor = tempUInt;
	levelPane.textColor = tempUInt;
	levelNum.textColor = tempUInt;
	sexPNum.textColor = tempUInt;
	coinNum.textColor = tempUInt;
	DayPane.textColor = tempUInt;
	dayNum.textColor = tempUInt;
	hourNum.textColor = tempUInt;
	outputWindow.textColor = tempUInt;
	region.textColor = tempUInt;
	currentRegion.textColor = tempUInt;
	moveItemAmount.textColor = tempUInt;
	if (showSide == true) { outputSideText("", false); }
	textLP("");	
}