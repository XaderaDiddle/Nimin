import flash.net.FileFilter;
import flash.display.Sprite;
import flash.text.TextFormat;
import code.Character;

/***********************************
 ********INDEX**********************
 ***********************************
 *Variables						   *
 *Setup Buttons & Window           *
 *Button Events					   *
 *General Functions				   *
 *	Preferences					   *
 *	Utilities					   *
 *	Calculations				   *
 *	Stat Changes				   *
 *New Game Button				   *
 *Appearance Button				   *
 *Inverting Colors				   *
 *Game Beginning				   *
 *	Choose Race					   *
 *	Choose Gender				   *
 *	Choose Body Type			   *
 *	Starting Desctriptions		   *
 *Main Game						   *
 *	Town Stuff					   *
 *	Item Stash					   *
 *	Shopping					   *
 *		GenShop					   *
 *		Dye Shop				   *
 *		Apothecarium			   *
 *	Menagerie					   *
 *	Whoring						   *
 *	Sleeping					   *
 *	Fapping						   *
 *	Alchemizing					   *
 *	Leveling Up					   *
 *	Exploration					   *
 *		Event Functions			   *
 *		Dungeons				   *
 *	Random Travelers			   *
 *		Traveler Move			   *
 *		Traveler Action			   *
 ***********************************/

include "Inclusions.as"


/***********
 *Variables*
 ***********/
registerClassAlias("Character", Character);
var p:Character = new Character();

var doListen:Function;

//Version Variable - Keeps track of save's version
var versionNumber:String = "0.975o"

//Personalization Variables

var theme:int = 0;
var fontSize:int = 14;
var fontBold:Boolean = false;
var fontColor:String = "000000";
var showSide:Boolean = true;

//General variables
var i:int = 0;
var buttonChoice:int = 0;
var currentText:String = "";
var sideText:String = "";
var sideFocus:int = 1;
var pregTempInt:int = 0;
var pregTempBool:Boolean = false;
var lustArray:Array = [];
var loadFile:FileReference;
var fileLoader:URLLoader;
var bg:Sprite = new Sprite();
addChildAt(bg, 0);
var rndResult:int = 0;
var rndArray:Array = [];
var textCheckArray:Array = [];
var choiceListArray:Array = [];
var choiceListResult:Array = [];
var choicePage:int = 0;
var moveItemID:int = 0;
var moveItemStack:int = 0;
var skipExhaustion:Boolean = false;
var shiftHeld:Boolean = false;

//currentState - Keeps track of what to go back to. currentZone - current Town/dungeon
var currentState:int = 0;
var inBag:Boolean = false;
var inShop:Boolean = false;
var currentZone:int = 0;
//Time
var day:int = 0;
var hour:int = 8;
var inDungeon:Boolean = false;
var currentDungeon:int = 0;

//Visible Stats
var str:int  = 0;
var ment:int = 0;
var lib:int  = 0;
var sen:int  = 0;
var HP:int  = 0;
var lust:int = 0;
var coin:int = 0;
var strMod:int = 0;
var mentMod:int = 0;
var libMod:int = 0;
var senMod:int = 0;
var strength:int  = 0;
var mentality:int = 0;
var libido:int  = 0;
var sensitivity:int  = 0;
var hunger:int = 0;



var hrs:int = 0;
/*var item1:int = 0;
var item2:int = 0;
var item3:int = 0;
var item4:int = 0;
var item5:int = 0;
var item6:int = 0;*/
var itemGainArray:Array = [];
var human:int = 0;
var horse:int = 0;
var wolf:int = 0;
var cat:int = 0;
var cow:int = 0;
var lizard:int = 0;
var rabbit:int = 0;
var mouse:int = 0;
var bird:int = 0;
var pig:int = 0;
var skunk:int = 0;
var bug:int = 0;

//Leveling stuff
var SexP:int = 0;
var levelUP:int = 0;
var level:int = 0;

//Modifying variables
var runMod:int = 0;
var rapeMod:int = 0;
var cumMod:Number = 1;
var cockSizeMod:Number = 1;
var vagSizeMod:Number = 1;
var vagElastic:Number = 1;
var milkMod:int = 0;
var carryMod:int = 0;
var vagBellyMod:int = 0;
var pregChanceMod:int = 0;
var extraPregChance:int = 0;
var pregTimeMod:int = 0;
var enticeMod:int = 0;
var milkHPMod:int = 0;
var changeMod:Number = 1;
var HPMod:int = 0;
var SexPMod:Number = 1;
var minLust:int = 0;
var milkCap:int = 0;
var coinMod:int = 0;
var hipMod:int = 1;
var buttMod:int = 1;
var bellyMod:int = 0;
var cockMoistMod:int = 0;
var vagMoistMod:int = 0;
var lockTail:int = 0;
var lockFace:int = 0;
var lockSkin:int = 0;
var lockBreasts:int = 0;
var lockEars:int = 0;
var lockLegs:int = 0;
var lockNipples:int = 0;
var lockCock:int = 0;

var enemyID:int = 0;
//enemy determines what enemy you're currently up against
var eHP:int = 0;
var eMaxHP:int = 0;
var eStr:int = 0;
var eMenta:int = 0;
var eSen:int = 0;
var eLib:int = 0;
var eLust:int = 0;
var eGen:int = 0;
var ePref:int = 0;
var eCoin:int = 0;
var eSexP:int = 0;
var eItem:int = 0;
//ePref is the enemy preference in gender.

//Body is a visual descriptor as well as a determination of max weight carryable
var gender:int = 0;
var race:int = 0;
var body:int = 0;
var dominant:int = 0;
var hips:int = 0;
var butt:int = 0;
var tallness:int = 0;
var skinType:int = 0;
var tail:int = 0;
var ears:int = 0;
var hair:int = 0;
var hairLength:int = 0;
var hairColor:int = 0;
var legType:int = 0;
var wings:int = 0;
var faceType:int = 0;
var skinColor:int = 0;

var cockTotal:int = 0;
var humanCocks:int = 0;
var horseCocks:int = 0;
var wolfCocks:int = 0;
var catCocks:int = 0;
var lizardCocks:int = 0;
var rabbitCocks:int = 0;
var cockSize:int = 0;
var cockMoist:int = 0;
var balls:int = 0;
var ballSize:int = 0;
var showBalls:Boolean = true;
var knot:Boolean = false;
var bugCocks:int = 0;

var breastSize:int = 0;
var boobTotal:int = 0;
var nippleSize:int = 1;
var udders:Boolean = false;
var udderSize:int = 0;
var teatSize:int = 0;
var clitSize:int = 0;
var vagTotal:int = 0;
var vagSize:int = 0;
var vagMoist:int = 0;
var vulvaSize:int = 0;
var nipType:int = 0;


var attireTop:int = 1;
var attireBot:int = 2;
var weapon:Number = 10;
//weapon determines the random damage divisor. 10 = unarmed, 4 = sword, etc. Lower weapon value, higher damage.

//Statuses
var pregArray:Array = [];
var pregStatus:int = 0;
var pregnancyTime:int = 0;
var pregRate:Number = 1;
var eggLaying:int = 0;
var eggMaxTime:int = 0;
var eggTime:int = 0;
var eggRate:int = 0;
var exhaustion:int = 0;
var exhaustionPenalty:int = 0;
var milkEngorgement:int = 0;
var milkEngorgementLevel:int = 0;
var udderEngorgement:int = 0;
var udderEngorgementLevel:int = 0;
var heat:int = 0;
var heatTime:int = 0;
var heatMaxTime:int = 0;
var lactation:int = 0;
var udderLactation:int = 0;
var nipplePlay:Number = 0;
var udderPlay:Number = 0;
var blueBalls:int = 0;
var teatPump:int = 0;
var nipPump:int = 0;
var cockPump:int = 0;
var clitPump:int = 0;
var vulvaPump:int = 0;
var masoPot:int = 0;
var sMasoPot:int = 0;
var babyFree:int = 0;
var charmTime:int = 0;
var pheromone:int = 0;
var eggceleratorTime:int = 0;
var eggceleratorDose:int = 0;
var bodyOil:int = 0;
var lustPenalty:int = 0;
var snuggleBall:Boolean = false;
var fertileGel:int = 0;
var eggType:int = 0;
var milkSuppressant:int = 0;
var milkSuppressantLact:int = 0;
var milkSuppressantUdder:int = 0;
var suppHarness:Boolean = false;
var fertilityStatueCurse:int = 0;
var plumpQuats:int = 0;
var lilaWetStatus:int = 0;
var cockSnakePreg:int = 0;
var milkCPoisonNip:int = 0;
var milkCPoisonUdd:int = 0;
var cockSnakeVenom:int = 0;

//Affinities
var humanAffinity:int = 0;
var horseAffinity:int = 0;
var wolfAffinity:int = 0;
var catAffinity:int = 0;
var cowAffinity:int = 0;
var lizardAffinity:int = 0;
var rabbitAffinity:int = 0;
var fourBoobAffinity:int = 0;
var mouseAffinity:int = 0;
var birdAffinity:int = 0;
var pigAffinity:int = 0;
var twoBoobAffinity:int = 0;
var sixBoobAffinity:int = 0;
var eightBoobAffinity:int = 0;
var tenBoobAffinity:int = 0;
var cowTaurAffinity:int = 0;
var humanTaurAffinity:int = 0;
var skunkAffinity:int = 0;
var bugAffinity:int = 0;

//Reputations for specific people/places
var lilaRep:int = 0;
var lilaVulva:int = 0;
var lilaMilk:int = 0;
var lilaPreg:int = -2;
var malonRep:int = 0;
var malonPreg:int = 0;
var malonChildren:int = 0;
var mistressRep:int = 0;
var jamieRep:int = 0;
var jamieSize:int = 4;
var jamieChildren:int = 0;
var silRep:int = 0;
var silPreg:int = 0;
var silRate:int = 0;
var silLay:int = 10;
var silTied:Boolean = false;
var silGrowthTime:int = 0;
var lilaUB:Boolean = false;
var dairyFarmBrand = false;
var jamieRep1:int = 0;
var jamieRep2:int = 0;
var jamieRep3:int = 0;
var lilaWetness:int = 0;
var jamieButt:Boolean = false;
var jamieBreasts:Boolean = false;
var jamieHair:Boolean = false;

//Travelers
var travArray:Array = [];

//Discoveries
var foundSoftlik:Boolean = false;
var foundFirmshaft:Boolean = false;
var foundTieden:Boolean = false;
var foundSizCalit:Boolean = false;
var foundOviasis:Boolean = false;
var foundValley:Boolean = false;
var foundSanctuary:Boolean = false;
var defeatedMinotaur:Boolean = false;
var defeatedFreakyGirl:Boolean = false;
var defeatedSuccubus:Boolean = false;
var firstExplore:Boolean = false;


//Alchemy Know: Simple

var knowLustDraft:Boolean = false;
var knowRejuvPot:Boolean = false;
var knowExpPreg:Boolean = false;
var knowBallSwell:Boolean = false;
var knowMaleEnhance:Boolean = false;

//Alchemy Know: Complex

var knowSLustDraft:Boolean = false;
var knowSRejuvPot:Boolean = false;
var knowSExpPreg:Boolean = false;
var knowSBallSwell:Boolean = false;
var knowBabyFree:Boolean = false;
var knowPotPot:Boolean = false;
var knowGenSwap:Boolean = false;
var knowMasoPot:Boolean = false;
var knowMilkSuppress:Boolean = false;

//Alchemy Know: Advanced

var knowSGenSwap:Boolean = false;
var knowSMasoPot:Boolean = false;
var knowSBabyFree:Boolean = false;
var knowSPotPot:Boolean = false;
var knowPussJuice:Boolean = false;
var knowPheromone:Boolean = false;
var knowBazoomba:Boolean = false;

//Class levels
var babyFactLevel:int = 0;
var bodyBuildLevel:int = 0;
var hyperHappyLevel:int = 0;
var alchemistLevel:int = 0;
var fetishMasterLevel:int = 0;
var milkMaidLevel:int = 0;
var shapeshiftyLevel:int = 0;
var shapeshiftyFirst:String = "";
var shapeshiftySecond:String = "";


//Major Fetishes
var maleFetish:Number = 1;
var femaleFetish:Number = 1;
var hermFetish:Number = 1;
var narcissistFetish:Number = 1;
var dependentFetish:Number = 1;

//Moderate Fetishes
var dominantFetish:Number = 1;
var submissiveFetish:Number = 1;
var lboobFetish:Number = 1;
var sboobFetish:Number = 1;
var furryFetish:Number = 1;
var scalyFetish:Number = 1;
var smoothyFetish:Number = 1;

//Minor Fetishes
var pregnancyFetish:Number = 1;
var bestialityFetish:Number = 1;
var milkFetish:Number = 1;
var sizeFetish:Number = 1;
var unbirthingFetish:Number = 1;
var ovipositionFetish:Number = 1;
var toyFetish:Number = 1;
var hyperFetish:Number = 1;

//Babies

var currentDayCare:int = 0;

var humanChildren:int = 0;
var equanChildren:int = 0;
var lupanChildren:int = 0;
var felinChildren:int = 0;
var cowChildren:int = 0;
var lizanEggs:int = 0;
var lizanChildren:int = 0;
var bunnionChildren:int = 0;
var wolfPupChildren:int = 0;
var miceChildren:int = 0;
var birdEggs:int = 0;
var birdChildren:int = 0;
var pigChildren:int = 0;
var calfChildren:int = 0;
var bugEggs:int = 0;
var bugChildren:int = 0;
var skunkChildren:int = 0;
var minotaurChildren:int = 0;
var freakyGirlChildren:int = 0;


var bagPage:int = 1;
var bagArray:Array = [];
var bagStackArray:Array = [];

var stashArray:Array = [];
var stashStackArray:Array = [];



stage.addEventListener(KeyboardEvent.KEY_DOWN, hotKeys);
stage.addEventListener(KeyboardEvent.KEY_UP, keysUp);
//invertColors.addEventListener(MouseEvent.CLICK, invertC);
newGame.addEventListener(MouseEvent.CLICK, newGameStart);
Choice1.addEventListener(MouseEvent.CLICK, buttonEvent1);
Choice2.addEventListener(MouseEvent.CLICK, buttonEvent2);
Choice3.addEventListener(MouseEvent.CLICK, buttonEvent3);
Choice4.addEventListener(MouseEvent.CLICK, buttonEvent4);
Choice5.addEventListener(MouseEvent.CLICK, buttonEvent5);
Choice6.addEventListener(MouseEvent.CLICK, buttonEvent6);
Choice7.addEventListener(MouseEvent.CLICK, buttonEvent7);
Choice8.addEventListener(MouseEvent.CLICK, buttonEvent8);
Choice9.addEventListener(MouseEvent.CLICK, buttonEvent9);
Choice10.addEventListener(MouseEvent.CLICK, buttonEvent10);
Choice11.addEventListener(MouseEvent.CLICK, buttonEvent11);
Choice12.addEventListener(MouseEvent.CLICK, buttonEvent12);
appearanceText.addEventListener(MouseEvent.CLICK, appearance);
saveGame.addEventListener(MouseEvent.CLICK, saveG);
loadGame.addEventListener(MouseEvent.CLICK, loadG);

Side1.addEventListener(MouseEvent.CLICK, side1Event);
Side2.addEventListener(MouseEvent.CLICK, side2Event);
Side3.addEventListener(MouseEvent.CLICK, side3Event);
Side4.addEventListener(MouseEvent.CLICK, side4Event);
Side5.addEventListener(MouseEvent.CLICK, side5Event);
Side6.addEventListener(MouseEvent.CLICK, side6Event);
Side7.addEventListener(MouseEvent.CLICK, side7Event);
Side8.addEventListener(MouseEvent.CLICK, side8Event);


Option1.addEventListener(MouseEvent.CLICK, option1Event);
Option2.addEventListener(MouseEvent.CLICK, option2Event);
Option3.addEventListener(MouseEvent.CLICK, option3Event);
Option4.addEventListener(MouseEvent.CLICK, option4Event);
Option5.addEventListener(MouseEvent.CLICK, option5Event);
Option6.addEventListener(MouseEvent.CLICK, option6Event);
Option7.addEventListener(MouseEvent.CLICK, option7Event);

scrollBar1.scrollTarget = outputWindow;
scrollBar2.scrollTarget = sideWindow;
statPane.visible = false;
levelPane.visible = false;
currentRegion.visible = false;
region.visible = false;
saveGame.visible = false;
saveGameOutline.visible = false;
DayPane.visible = false;
Option7.visible = false;
sideHide();
appearanceText.visible = false;
appearanceBox.visible = false;
//bgC.visible = false;
pageNum.embedFonts = true;
pageNum.visible = false;
pageNum.rotation += 90;
moveItem.visible = false;
moveItemAmount.visible = false;
MoveOutline.visible = false;
MoveAmountOutline.visible = false;
addChildAt(bg, 0);
viewButtonText(0,0,0,0,0,0,0,0,0,0,0,0);
viewButtonOutline(0,0,0,0,0,0,0,0,0,0,0,0);
hideAmount();
hideUpDown();
loadPreferences();

//Intro Page
textL("Nimin: Fetish Fantasy\r\tv"+versionNumber+"\r\rClick 'New Game' to begin a new game.\r\rCreated by:    --Xadera\r     www.furaffinity.net/user/xadera/\r\rOriginal concept by:     --Fenoxo\r     fenoxo.com\r\r\rFor tutorial/guide, questions, or bug reports, visit Xadera's page at the link above.");

/*invertColors.visible = false;
invertColorsOutline.visible = false;*/

/*******************
 *General Functions*
 *******************/

/***********
 *Utilities*
 ***********/

function textL(texts:String):void {
	currentText = texts;
	textCheckArray = [];
	
	var tempStr:String = currentText;
	if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>";	}
	tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
	outputWindow.htmlText = tempStr;
	//if (bgC.visible == true){	outputWindow.textColor = 0xFFFFFF; }
	outputWindow.scrollV = 0;
	scrollBar1.update();
}

function textLP(texts:String, ...textCheck):void {
	if (textCheckArray.indexOf(textCheck[0]) == -1)	{
		currentText = currentText + texts;
		textCheckArray = textCheckArray.concat(textCheck);
	}
	var tempStr:String = currentText;
	if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>";	}
	tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
	outputWindow.htmlText = tempStr;
	outputWindow.scrollV = 0;
	scrollBar1.update();
}


function outputSideText(texts:String, reset:Boolean):void {
	if(reset == false) sideText = sideText + texts;
	else sideText = texts;
	var tempStr:String = sideText;
	if (fontBold == true) { tempStr = "<b>"+tempStr+"</b>";	}
	tempStr = "<font size = '"+fontSize+"' color = '#"+fontColor+"'>"+tempStr+"</font>";
	sideWindow.htmlText = tempStr;
	//if (bgC.visible == true){	outputWindow.textColor = 0xFFFFFF; }
	sideWindow.scrollV = 0;
	scrollBar2.update();
}

function updateSide():void {
	if (sideFocus == 1)	{ appearanceGo();	}
	if (sideFocus == 2)	{ detailedStats();	}
	if (sideFocus == 3)	{ detailedStatuses();	}
	//if (sideFocus == 4)	{ detailedFetishes();	}
	if (sideFocus == 5)	{ detailedLevels();	}
	if (sideFocus == 6)	{ detailedGear();	}
	if (sideFocus == 7)	{ detailedTitles();	}
	if (sideFocus == 8)	{ detailedCredits();	}
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
		else if (choicePage == 1) { choicePage = Math.ceil(tempArray.length/9);	}
	}
	if (buttonChoice == 8) {
		if (choicePage < Math.ceil(tempArray.length/9))	{ choicePage++; }
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
	if (milkCap < 0) { milkCap = 0;	}
	if (coin < 0) { coin = 0; }
	if (hipMod < 1) { hipMod = 1; }
	if (buttMod < 1) { buttMod = 1; }
	if (bellyMod < 0) { bellyMod = 0; }

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
		doListen = function():void{ if(buttonChoice == 6){	doProcess(); } }
	}
}
	
function doProcess():void{
	choicePage = 1;
	if (inBag == false && moveItemID != 0) {
		textL("You seem to have not placed your "+itemName(moveItemID)+"");
		if (moveItemStack > 1) { textLP(" x"+moveItemStack);	}
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

/**************
 *Calculations*
 **************/

function decGet(number:Number, places:int):String{
	var tempStr:String = ""+number+"";
	var tempStr2:String = "";
	var tempInt:int = 0;
	tempInt = tempStr.indexOf(".",0);
	if(tempInt > 0){ tempStr2 = tempStr.substring(0,(tempInt+places+1)); }
	else { tempStr2 = tempStr; }
	return tempStr2;
}	

function doWeight():Boolean{
	var tempBool:Boolean = false;
	//Based on average of body 15, str 30, carrymod 0, and tallness 60
	if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)) {
		textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is too much to carry, making it impossible to walk. You're stuck in this town until either you get stronger or the bulge in your "+clothesBottom()+" gets smaller...");
		tempBool = true;
	}
	else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*5/6) {
		textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is almost constantly on your mind... Your walk has a noticeable sway in its step just trying to hold it off the ground while you move. You're cautious when moving, or else you will lose control and slam it into something or someone.");
	}
	else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*2/3) {
		textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is becoming a bit of a nuisance. Whenever you move around, you're subconsciously afraid your bulge will accidentally gain more momentum than intended and potentially hurt someone or break something.");
	}
	else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*1/2) {
		textLP("\r\rYou are rather aware of the weight of your "+cockDesc()+" cock"+plural(1)+". You often find yourself slipping a hand into your "+clothesBottom()+" to readjust your bulge in an attempt to be a little less mindful about it.");
	}
	
	if (breastSize > (body*2 + str + carryMod)*(tallness/60) || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60))) {
		textLP("\r\rThe weight of your "+boobDesc()+" tits is too much to really carry, making even standing a chore. You're stuck in this town until either you get stronger or they get smaller...");
		tempBool = true;
	}
	else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*5/6 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*5/6)) {
		textLP("\r\rThe weight of your "+boobDesc()+" tits is rather troubling. Not only does your back ache from trying to keep them aloft, but you're also afraid you won't be able to get back up when you lay down.");
	}
	else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*2/3 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*2/3)) {
		textLP("\r\rThe weight of your "+boobDesc()+" tits is becoming worrisome. Your back aches a little from holding them up and you often find yourself resting them on tables whenever you sit down, to keep the load off yourself.");
	}
	else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*1/2 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*1/2)) {
		textLP("\r\rYou are rather aware of the weight of your "+boobDesc()+" tits. Your hands are frequently beneath your "+clothesTop()+", trying to readjust the things. They're so heavy, you're subconsciouly drawing more attention to them with the way you keep swinging them around and absent-mindedly handling them.");
	}

	if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60) && showBalls == true) {
		textLP("\r\rThe weight of your "+ballDesc()+" nuts is too much to carry, anchoring you to the ground. You're stuck here until you get strong or your balls get smaller...");
		tempBool = true;
	}
	else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*5/6 && showBalls == true) {
		textLP("\r\rThe weight of your "+ballDesc()+" nuts is troublesome. Your "+legDesc(6)+" bend"+legPlural(1)+" with the heaviness and you have difficulty standing up whenever you sit down. And you're afraid of running because once those things start swaying, they're quite difficult to stop.");
	}
	else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*2/3 && showBalls == true) {
		textLP("\r\rThe weight of your "+ballDesc()+" nuts is becoming annoying. You're walking with your crotch sagging quite often and frequently consider buying a bra for them...");
	}
	else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*1/2 && showBalls == true) {
		textLP("\r\rYou are rather aware of the weight of your "+ballDesc()+" nuts. Even in public, a hand is dipping into your "+clothesBottom()+" to readjust them and massaging your stretched scrotum is quickly becoming a hobby of yours.");
	}

	if (udderSize > (body*2 + str + carryMod)*(tallness/60) && udders == true){
		textLP("\r\rThe weight of your "+udderDesc()+" udder is too much to carry, sitting heavily in front of you. You're stuck in this town until either you get stronger or it gets smaller...");
		tempBool = true;
	}
	else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*5/6 && udders == true) {
		textLP("\r\rThe weight of your "+udderDesc()+" udder makes you uneasy. The momentum it gains when you walk makes you fear falling on your face and every now and then your "+legDesc(2)+" go numb while you're sitting or laying down.");
	}
	else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*2/3 && udders == true) {
		textLP("\r\rThe weight of your "+udderDesc()+" udder is becoming an inconvenience. Whenever you turn from side to side, it lifts off slightly and acts like a fleshy wrecking ball that you're unable to stop.");
	}
	else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*1/2 && udders == true) {
		textLP("\r\rYou are rather aware of the weight of your "+udderDesc()+" udder. You often find yourself fondling it in an attempt to make it settle more appropriately, wondering if they make bras for this sort of thing...");
	}

	if ((pregnancyTime + bellyMod*2)/5 > (body*2+str+carryMod)*(tallness/60)){
		textLP("\r\rThe weight of your "+bellyDesc()+" belly is too much carry, putting your weight more on it than you can yourself. You're stuck in this town until either you get stronger or you lose some of the girth...");
		tempBool = true;
	}
	else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*5/6) {
		textLP("\r\rThe weight of your "+bellyDesc()+" belly is rather alarming... You're almost constantly trying to cradle it, subconsciously fearing it will drag you down to the ground if you don't. Whenever you sit down, you always prop it up against a table simply so you don't roll forward.");
	}
	else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*2/3) {
		textLP("\r\rThe weight of your "+bellyDesc()+" belly is becoming irksome. You take a bit more time to come to a halt whenever you move as it retains much of your momentum. And whenever you bend over, it's difficult to rise back up.");
	}
	else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*1/2) {
		textLP("\r\rYou are rather aware of the weight of your "+bellyDesc()+" belly. You often subconsciously center your weight more by resting your hands on top of it rather than let them hang at your sides.");
	}

	return tempBool;
}

//Allows events to check and see if a particular item is in the bag. Put this with Bag function.
function checkItem(ID:int):Boolean {
	var tempBool:Boolean = false;

	if (bagArray.indexOf(ID) != -1) { tempBool = true;}

	return tempBool;
}

function checkMagicItem():Boolean {
	var tempBool:Boolean = false;

	if (checkItem(101))	{ tempBool = true;	}
	else if (checkItem(102))	{ tempBool = true;	}
	else if (checkItem(200))	{ tempBool = true;	}
	else if (checkItem(215))	{ tempBool = true;	}
	else if (checkItem(231))	{ tempBool = true;	}
	else if (checkItem(233))	{ tempBool = true;	}
	else if (checkItem(234))	{ tempBool = true;	}
	else if (checkItem(235))	{ tempBool = true;	}
	else if (checkItem(236))	{ tempBool = true;	}
	else if (checkItem(237))	{ tempBool = true;	}
	else if (checkItem(252))	{ tempBool = true;	}

	return tempBool;
}

//Allows events to check for particular items in stash.
function checkStash(ID:int):Boolean {
	var tempBool:Boolean = false;
	
	if (stashArray.indexOf(ID) != -1) { tempBool = true;	}

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

/**************
 *Stat Changes*
 **************/

function stats(stre:int, menta:int, libi:int, sens:int) {
	hideUpDown();
	strength+=stre;
	mentality +=menta;
	libido +=libi;
	sensitivity +=sens;
	if(strength > 100) strength = 100;
	if(strength < 1) strength = 1;
	if(mentality > 100) mentality = 100;
	if(mentality < 1) mentality = 1;
	if(libido > 100) libido = 100;
	if(libido < 1) libido = 1;
	if(sensitivity > 100) sensitivity = 100;
	if(sensitivity < 1) sensitivity = 1;
	if(lust > 100) lust = 100;
	if(lust < 0) lust = 0;
	if(stre > 0) {
		strUp.visible = true;
		strDown.visible = false;
	}
	if(stre < 0) {
		strDown.visible = true;
		strUp.visible = false;
	}
	if(menta > 0) {
		mentaUp.visible = true;
		mentaDown.visible = false;
	}
	if(menta < 0) {
		mentaDown.visible = true;
		mentaUp.visible = false;
	}
	if(libi > 0) {
		libUp.visible = true;
		libDown.visible = false;
	}
	if(libi < 0) {
		libDown.visible =true;
		libUp.visible = false;
	}
	if(sens > 0) {
		senUp.visible = true;
		senDown.visible = false;
	}
	if(sens < 0) {
		senDown.visible = true;
		senUp.visible = false;
	}
	statDisplay();	
}

function statsMod(stre:int, menta:int, libi:int, sens:int) {
	hideUpDown();
	strMod+=stre;
	mentMod+=menta;
	libMod+=libi;
	senMod+=sens;

	if(stre > 0) {
		strUp.visible = true;
		strDown.visible = false;
	}
	if(stre < 0) {
		strDown.visible = true;
		strUp.visible = false;
	}
	if(menta > 0) {
		mentaUp.visible = true;
		mentaDown.visible = false;
	}
	if(menta < 0) {
		mentaDown.visible = true;
		mentaUp.visible = false;
	}
	if(libi > 0) {
		libUp.visible = true;
		libDown.visible = false;
	}
	if(libi < 0) {
		libDown.visible =true;
		libUp.visible = false;
	}
	if(sens > 0) {
		senUp.visible = true;
		senDown.visible = false;
	}
	if(sens < 0) {
		senDown.visible = true;
		senUp.visible = false;
	}
	statDisplay();	
}

//Update Stat Display
function statDisplay():void { 

	str = strength + strMod;
	ment = mentality + mentMod;
	lib = libido + libMod;
	sen = sensitivity + senMod;

	var tempStr:String = "BaseStats\r";

	tempStr += "\rStrength   : " + str;
	tempStr += "\rMentality  : "+ment;
	tempStr += "\rLibido     : "+lib;
	tempStr += "\rSensitivity: "+sen;

	tempStr += "\r\rCombat Stats";
	tempStr += "\rHP         : "+HP;
	tempStr += "\rLust       : "+lust;
	tempStr += "\rHunger     : "+hunger;

	statPane.htmlText =  tempStr; 
	statPane.textColor = uint("0x"+fontColor);
	//statValuePane.htmlText = "\r\r" + int(str) + "\r" + int(ment) + "\r" + int(lib) + "\r" + int(sen) + "\r\r\r" + int(HP) + "\r" + int(lust); 
	//statValuePane.textColor = uint("0x"+fontColor);
}

//Changes level and SexP value and updates level/SexP display
function doSexP(changes:int):void{
	if ((SexP + changes*SexPMod) >= (100)){
		changes -= Math.ceil(((100) - SexP)/SexPMod);
		SexP = 0;
		level++;
		levelUP++;
		doSexP(changes);
	}
	else { SexP += changes*SexPMod; }
	levelPane.text = "Level  : "+level+"\rSexP   : "+SexP+"\rCoin   : "+coin;
	levelPane.textColor = uint("0x"+fontColor);
}

function regionChange(changes:int):void{
	if (inDungeon == false)	{
		currentZone = changes;
		if (changes == 1) { region.text = "Softlik"; }
		if (changes == 2) { region.text = "Firmshaft"; }
		if (changes == 3) { region.text = "Tieden"; }
		if (changes == 4) { region.text = "Siz'Calit"; }
		if (changes == 6) { region.text = "Oviasis"; }
		if (changes == 12) { region.text = "Sanctuary"; }
	}
	
	if (inDungeon == true){
		currentDungeon = changes;
		if (changes > 1000 && changes < 1010) { region.text = "Cave Descent"; }
	}
	
	region.textColor = uint("0x"+fontColor);
}

function dayTime(Time:Number):void{
	var addTime:int = Time;
	while (hour + addTime >= 24){
		addTime = addTime - (24-hour);
		hour = 0;
		day++;
	}
	hour = hour + addTime;
	DayPane.text = "Day : "+int(day)+"\rHour: "+int(hour)+":00";
	DayPane.textColor = uint("0x"+fontColor);
	doStatus(Time);
}

//Changes coin value and updates Coins display
function doCoin(changes:int):void{
	if ((coin + changes) < 0){
		coin = 0;
		changes = 0;
	}
	if (changes > 0) { changes += coinMod; }
	coin += changes;
	doSexP(0);
}

function doHP(changes:int):void {

	//MasoPot Status Effect
	if (masoPot > 0 && sMasoPot <= 0 && changes < 0){
		doLust(Math.floor(-changes/2), 0);
		changes -= Math.ceil(changes/2);
	}
	if (sMasoPot > 0 && lust < 100 && changes < 0){
		doLust(-changes, 0);
		changes = 0;
	}
	if (sMasoPot > 0 && lust >= 100 && changes < 0) { textLP("\r\rIt seems that no matter how much fun you had getting beaten like that, there's just some things your body wasn't meant to withstand."); }

	if (changes < 0){ hpDown.visible = true; }
	if (changes > 0){ hpUp.visible = true; }
	if ((HP + changes) <= 0){
		HP = 1;
		changes = 0;
		doPassOut();
	}
	if ((HP + changes) > (30+Math.floor(str/2)+HPMod)){ HP = (30+Math.floor(str/2)+HPMod); }
	else { HP += changes; }
	statDisplay();
}

function doPassOut():void{

	var tempNum:int = Math.floor((percent()/10)*level + level*percent()/10);
	if ((coin - tempNum) < 0){
		tempNum = coin;
	}
	textLP("\r\rYou run out of stamina.");
	if (lust >= 30) {
		textLP(" You twitch with a pitiful and premature orgasm, your body too tired to withstand your arousal.");
		if (cockTotal > 0) {
			var getCum:int = cumAmount();
			if (getCum <= 24) { textLP(" Spunk drools slowly from your softening erection"+pl(1)+"."); }
			if (getCum > 24 && getCum <= 72) { textLP(" A few small wads of cum ooze down from your softening erection"+pl(1)+"."); }
			if (getCum > 72 && getCum <= 1000) { textLP(" Gobs of cum collect and fall feebly from the tips of your softening erection"+pl(1)+"."); }
			if (getCum > 1000 && getCum <= 2200) { textLP(" A stream of squandered spunk flows from your softening erection"+pl(1)+", like a casual piss."); }
			if (getCum > 2200 && getCum <= 4500) { textLP(" Your softening erection"+pl(1)+" buck slightly as a heavy flow of spunk washes out weakly."); }
			if (getCum > 4500 && getCum <= 20000) { textLP(" Cum continually spills from your softening erection"+pl(1)+", making them buck simply from volume, without any force and pooling beneath you."); }
			if (getCum > 20000) { textLP(" Your "+legDesc(2)+" become"+legDesc(11)+" drenched in your own white spunk as your softening erection"+pl(1)+" weakly spew up the contents of your balls, spilling into a puddle around you."); }
		}
		if (vagTotal > 0) {
			textLP(" Your "+vulvaDesc()+" lips quiver and clench against the air, frustratedly grabbing nothing.");
		}
		textLP(" The climax is completely unsatisfactory and wasted pathetically.");
	}
	textLP(" You collapse to the ground, exhausted.");
	specialKOLose();
	textLP("\r\rYou wake back up some time later, feeling totally drained. Stumbling back to town, you take a moment to reflect and sigh.");
	if (currentState == 2){	currentState = 1; }
	if (inDungeon == true) { inDungeon = false; }
	doLust(-lust, 3);
	exhaustion -= Math.floor(percent()/20);
	skipExhaustion = true;
	hrs = (2+Math.floor(percent()/20));
	doEnd();
}

function doLust(changes:int, source:int, ...triggers):void{
	//Source = 1: Offensive lust; Source = 2: XP gaining lust (loss); Source = 0: Neutral, no resist
	
	/*if (fetishes.indexOf(1) != -1) { changes = changes*maleFetish; }
	if (fetishes.indexOf(2) != -1) { changes = changes*femaleFetish; }
	if (fetishes.indexOf(3) != -1) { changes = changes*hermFetish; }
	if (fetishes.indexOf(4) != -1) { changes = changes*narcissistFetish; }
	if (fetishes.indexOf(5) != -1) { changes = changes*dependentFetish; }
	
	if (fetishes.indexOf(21) != -1) { changes = changes*dominantFetish; }
	if (fetishes.indexOf(22) != -1) { changes = changes*submissiveFetish; }
	if (fetishes.indexOf(23) != -1) { changes = changes*lboobFetish; }
	if (fetishes.indexOf(24) != -1) { changes = changes*sboobFetish; }	
	if (fetishes.indexOf(25) != -1) { changes = changes*furryFetish; }
	if (fetishes.indexOf(26) != -1) { changes = changes*scalyFetish; }
	if (fetishes.indexOf(27) != -1) { changes = changes*smoothyFetish; }

	if (fetishes.indexOf(51) != -1) { changes = changes*pregnancyFetish; }
	if (fetishes.indexOf(52) != -1) { changes = changes*pregnancyFetish; }
	if (fetishes.indexOf(53) != -1) { changes = changes*milkFetish; }
	if (fetishes.indexOf(54) != -1) { changes = changes*sizeFetish; }
	if (fetishes.indexOf(55) != -1) { changes = changes*unbirthingFetish; }
	if (fetishes.indexOf(56) != -1) { changes = changes*ovipositionFetish; }
	if (fetishes.indexOf(57) != -1) { changes = changes*toyFetish; }
	if (fetishes.indexOf(58) != -1) { changes = changes*hyperFetish; }*/
	
	if (source == 1) { 
		if (changes > 0){
			changes -= Math.floor(changes*ment/125);
			if (changes < 0) { changes = 0; }
		}
	}
	
	if (source == 2){
		if (changes <= 0) { changes += Math.floor(changes*ment/125);	}
		/*if (changes > 0) { 
			doHP(-Math.floor(changes/2));
			textLP("\r\rThe act is not actually something you enjoy, being quite unpleasant and painful in the efforts, making you feel less aroused from sheer disgust.");
			changes = -10;
		}*/
	}
	

	if (changes <= 0 && source == 2) {
		changes -= 6;
		
		if (fertilityStatueCurse > 0) {
			textLP("\r\rWith your orgasm, you feel strange as wispy fumes escape from your crotch, just like those that descended from the statue you encountered...");
			vagChange(0, 1);
		}

		if (cockSnakeVenom > 0 && triggers.indexOf(1) != -1 && cockTotal > 0)	{
			textLP("\r\rHowever, after you have finished, you realize there's a bit more meat to your meat... The venom from the cock-snake fed off of your orgasm, causing your appendage"+plural(1)+" to flop a bit lower down your "+legDesc(3)+" as "+plural(11)+" shrink"+plural(3)+" back down...");
			cockChange(2, 0);
		}
		if (cockSnakeVenom > 0 && triggers.indexOf(2) != -1 && vagTotal > 0)	{
			textLP("\r\rHowever, after you have finished, you realize your clit"+plural(2)+" "+plural(14)+" a bit more prominent... The venom from the cock-snake fed off of your orgasm, causing the button"+plural(2)+" swell larger than before, and aren't shrinking all the way back down...");
			clitSize += 3;
		}

		if (milkCPoisonNip > 0 && triggers.indexOf(3) != -1){
			textLP("\r\rHowever, now that you've calmed down, you notice a bit more weight at your chest... The warmth from the milk creeper poison in your bosom intensified with your pleasure, causing your flesh to grow larger while you were distracted by the climax. A hefty reminder.");
			boobChange(1);
			nipplePlay += 15;
		}

		if (milkCPoisonUdd > 0 && triggers.indexOf(4) != -1){
			textLP("\r\rHowever, now that you've calmed down, you notice a bit more weight at your belly... The warmth from the milk creeper poison in your udder intensified with your pleasure, causing your flesh to grow larger while you were distracted by the climax. A hefty reminder.");
			boobChange(1);
			nipplePlay += 15;
		}
		
		if (level < 50){
			if ((lust + changes) >= 0 && -changes > (level+6+str/3)){ doSexP(Math.floor(-changes - (level+6+str/3))); }
			else if ((lust + changes < 0) && lust > (level+6+str/3)) { doSexP(Math.floor(lust - (level+6+str/3)));	}
		}
		else {
			if ((lust + changes) >= 0 && -changes > (50+6+str/3)){ doSexP(Math.floor(-changes - (50+6+str/3))); }
			else if ((lust + changes < 0) && lust > (50+6+str/3)) { doSexP(Math.floor(lust - (50+6+str/3)));	}
		}
	}
	
	if (changes < 0){ lustDown.visible = true; }
	if (changes > 0){ lustUp.visible = true; }
	
	if ((lust+changes) >= 75 && lust < 75){
		if (cockTotal > 0){
			textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" squirm"+plural(3)+" in your "+clothesBottom()+", throbbing and wanting desperately to come.");
			if (moistCalc(1) > 0 && moistCalc(1) <= 3) {
				textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
			}
			if (moistCalc(1) > 3 && moistCalc(1) <= 7)	{
				textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
			}
			if (moistCalc(1) > 7 && moistCalc(1) <= 11)	{
				textLP(" You feel your cock"+plural(1)+" slimed from tip to belly with "+plural(5)+" own pre, a steady dribble down your thigh and your "+clothesBottom()+" looking more like you peed yourself.");
			}
			if (moistCalc(1) > 11)	{
				textLP(" You feel your cock"+plural(1)+" swimming in "+plural(5)+" own pre, as long strands of slime seep through your "+clothesBottom()+" and stretch down to the ground. With each step, you fling the stuff around you like a whip, smacking across whatever is nearby");
			}
		}
		if (vagTotal > 0){
			textLP("\r\rYour "+vulvaDesc()+" lips feel swollen and hot in your "+clothesBottom()+", making your "+legDesc(2)+" feel weak. Your "+clitDesc()+" clit"+plural(2)+" seem"+plural(4)+" on the verge of exploding without any attention soon, stiffly rubbing against your "+clothesBottom()+" with each move.");
			if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
				textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
			}
			if (moistCalc(2) > 3 && moistCalc(2) <= 7) {
				textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
			}
			if (moistCalc(2) > 7 && moistCalc(2) <= 11) {
				textLP(" You swear you can hear yourself squish with each step as your "+clothesBottom()+" is completely soaked through with your honey. Your thighs feel like they've been completely oiled down by the warm, sensuous fluid.");
			}
			if (moistCalc(2) > 11) {
				textLP(" There must be a waterfall in your "+clothesBottom()+" as a steady flow of clear honey drools from "+legWhere(1)+" your "+legDesc(2)+". You have to be extra careful of slipping in your own slime...");
			}
		}
		textLP("\r\rYour "+nipDesc()+"nipples threaten to pierce through your "+clothesTop()+". They feel as hard as diamonds with all your arousal, making you shiver whenever something brushes them.");
	}
	else if ((lust+changes) >= 50 && lust < 50){
		if (cockTotal > 0){
			textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" feel"+plural(3)+" stiff and engorged with blood. Oh how nice it would be to take care of that problem... ");
			if (moistCalc(1) > 0 && moistCalc(1) <= 3)	{
				textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
			}
			if (moistCalc(1) > 3 && moistCalc(1) <= 7)	{
				textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
			}
			if (moistCalc(1) > 7)	{
				textLP(" You feel your cock"+plural(1)+" slimed from tip to belly with its own pre, a steady dribble down your thigh and your "+clothesBottom()+" looking more like you peed yourself.");
			}
		}
		if (vagTotal > 0){
			textLP("\r\rYour "+vulvaDesc()+" vulva feels puffy with engorgement, making you walk a little awkwardly so as to not squeeze them so much. Your "+clitDesc()+" clit"+plural(2)+" stir"+plural(4)+" in your "+clothesBottom()+", throbbing gently in anticipation.");
			if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
				textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
			}
			if (moistCalc(2) > 3 && moistCalc(2) <= 7) {
				textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
			}
			if (moistCalc(2) > 7) {
				textLP(" You swear you can hear yourself squish with each step as your "+clothesBottom()+" is completely soaked through with your honey. Your thighs feel like they've been completely oiled down by the warm, sensuous fluid.");
			}
		}
		if (nipType == 2) { textLP("\r\rYour sunken nipples rise out of your "+boobDesc()+" mounds, standing to attention in your "+clothesTop()+". They tingle slightly with your arousal.");	}
		else { textLP("\r\rYour "+nipDesc()+"nipples stand at attention in your "+clothesTop()+". They tingle slightly with your arousal."); }
	}
	else if ((lust+changes) >= 25 && lust < 25){
		if (cockTotal > 0){

			textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" wiggle"+plural(3)+" in your "+clothesBottom()+", stirring awake and growing erect. Bulging against the fabric, you silently wonder if anybody else will notice...");
			if (moistCalc(1) > 0 && moistCalc(1) <= 3)	{
				textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
			}
			if (moistCalc(1) > 3)	{
				textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
			}
		}
		if (vagTotal > 0){
			textLP("\r\rYour "+vulvaDesc()+" slit tingles and sparks. You feel a little giggly and warm with the sensation, delighting in the pleasantness of it all. Your "+clitDesc()+" clit"+plural(2)+" tug"+plural(4)+" at the hood"+plural(4)+", pulsing awake in your "+clothesBottom()+".");
			if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
				textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
			}
			if (moistCalc(2) > 3) {
				textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
			}
		}
	}

	if ((lust+changes) >= 30 && lustPenalty == 0){
		textLP("\r\rThe distraction weighs on your mind constantly, making it hard to focus on normal tasks.");
		statsMod(0,-4,0,0);
		lustPenalty = 1;
	}
	if ((lust+changes) >= 60 && lustPenalty == 1){
		textLP("\r\rYour muscles are twitchy and feeling weak from the strong tingle of arousal.");
		statsMod(-5,0,0,0);
		lustPenalty = 2;
	}
	if ((lust+changes) >= 90 && lustPenalty == 2){
		textLP("\r\rThe intense lust has overwhelmed your body, leaving your "+skinDesc()+" hypersensitive.");
		statsMod(0,0,0,+10);
		lustPenalty = 3;
	}

	if ((lust+changes) >= 100){
		lust = 100;
		changes = 0;
		if (inBag == false) { doLustForcedMasturbate(); }
	}

	if (lust + changes < minLust + 20 && heat > 0 && heatTime < 0 && !pregCheck(0)) { 
		lust = minLust + 20;	
		changes = 0;
	}
	else if ((lust+changes) < minLust){
		lust = minLust;
		changes = 0;
	}
	
	lust += changes;
	statDisplay();
}

function doLustForcedMasturbate():void {
	if (currentState == 2){ 
		textLP("\r\rAmidst the heat of battle, your "+legDesc(2)+" buckle"+legPlural(1)+" from your intense arousal, preventing you from fighting any further.");
		if (inBag == false) { currentState = 1; }
		doNext();
		doListen = function():void{
			if (ePref == 0 || (ePref == 1 && gender == 2) || (ePref == 2 && gender == 1) || gender == 0) {
				textL("Unfortunately, the "+enemyName()+" has no interest in taking advantage of your state and lands a heavy blow, knocking you out." );
				doHP(-100000);
			}
			else { doGetRaped(); }
		}
	}
}
	
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
			DayPane.visible = true;
			levelPane.visible = true;
			Option7.visible = false;			
			sideHide();
				
			//Clear variables
			currentState = 0;
			currentZone = 0;
			inBag = false;
			inShop = false;
			inDungeon = false;
			currentDungeon = 0;
		
			str  = 0;
			ment = 0;
			lib  = 0;
			sen  = 0;
			HP   = 0;
			lust = 0;
			coin = 0;
			strMod = 0;
			mentMod = 0;
			libMod = 0;
			senMod = 0;
			hunger = 0;
		
			day = 0;
			hour = 8;
		
			SexP = 0;
			levelUP = 0;
			level = 0;
		
			runMod = 0;
			rapeMod = 0;
			cumMod = 1;


			cockSizeMod = 1;
			vagSizeMod = 1;
			vagElastic = 1;
			milkMod = 0;
			carryMod = 0;
			vagBellyMod = 0;
			pregChanceMod = 0;
			extraPregChance = 0;
			pregTimeMod = 0;
			enticeMod = 0;
			milkHPMod = 0;
			changeMod = 1;
			HPMod = 0;
			SexPMod = 1;
			minLust = 0;
			milkCap = 0;
			coinMod = 0;
			hipMod = 1;
			buttMod = 1;
			bellyMod = 0;
			cockMoistMod = 0;
			vagMoistMod = 0;
			lockTail = 0;
			lockFace = 0;
			lockSkin = 0;
			lockBreasts = 0;
			lockEars = 0;
			lockLegs = 0;
			lockNipples = 0;
			lockCock = 0;
		
			gender = 0;
			race = 0;
			body = 0;
			dominant = 0;
			hips = 0;
			butt = 0;
			tallness = 0;
			skinType = 0;
			tail = 0;
			ears = 0;
			hair = 0;
			hairLength = 0;
			hairColor = 0;
			legType = 0;
			wings = 0;
			faceType = 0;
			skinColor = 0;
		
			cockTotal = 0;
			humanCocks = 0;
			horseCocks = 0;
			wolfCocks = 0;
			catCocks = 0;
			lizardCocks = 0;
			rabbitCocks = 0;
			cockSize = 0;
			cockMoist = 0;
			balls = 0;
			ballSize = 0;
			showBalls = true;
			knot = false;
			bugCocks = 0;
		
			breastSize = 0;
			boobTotal = 0;
			nippleSize = 1;
			udders = false;
			udderSize = 0;
			teatSize = 0;
			clitSize = 0;
			vagTotal = 0;
			vagSize = 0;
			vagMoist = 0;
			vulvaSize = 0;
			nipType = 0;
		
			attireTop = 1;
			attireBot = 2;
			weapon = 10;
		
			pregArray = [];
			pregStatus = 0;
			pregnancyTime = 0;
			pregRate = 1;
			eggLaying = 0;
			eggMaxTime = 0;
			eggTime = 0;
			eggRate = 0;
			exhaustion = 0;
			exhaustionPenalty = 0;
			milkEngorgement = 0;
			milkEngorgementLevel = 0;
			udderEngorgement = 0;
			udderEngorgementLevel = 0;
			heat = 0;
			heatTime = 0;
			heatMaxTime = 0;
			lactation = 0;
			udderLactation = 0;
			nipplePlay = 0;
			udderPlay = 0;
			blueBalls = 0;
			teatPump = 0;
			nipPump = 0;
			cockPump = 0;
			clitPump = 0;
			vulvaPump = 0;
			masoPot = 0;
			sMasoPot = 0;
			babyFree = 0;
			charmTime = 0;
			pheromone = 0;
			eggceleratorTime = 0;
			eggceleratorDose = 0;
			bodyOil = 0;
			lustPenalty = 0;
			snuggleBall = false;
			fertileGel = 0;
			eggType = 0;
			milkSuppressant = 0;
			milkSuppressantLact = 0;
			milkSuppressantUdder = 0;
			suppHarness = false;
			fertilityStatueCurse = 0;
			plumpQuats = 0;
			lilaWetStatus = 0;
			cockSnakePreg = 0;
			milkCPoisonNip = 0;
			milkCPoisonUdd = 0;
			cockSnakeVenom = 0;
			
			humanAffinity = 0;
			horseAffinity = 0;
			wolfAffinity = 0;
			catAffinity = 0;
			cowAffinity = 0;
			lizardAffinity = 0;
			rabbitAffinity = 0;
			fourBoobAffinity = 0;
			mouseAffinity = 0;
			birdAffinity = 0;
			pigAffinity = 0;
			twoBoobAffinity = 0;
			sixBoobAffinity = 0;
			eightBoobAffinity = 0;
			tenBoobAffinity = 0;
			cowTaurAffinity = 0;
			humanTaurAffinity = 0;
			skunkAffinity = 0;
			bugAffinity = 0;			
		
			lilaRep = 0;
			lilaVulva = 0;
			lilaMilk = 0;
			lilaPreg = -2;
			malonRep = 0;
			malonPreg = 0;
			malonChildren = 0;
			mistressRep = 0;
			jamieRep = 0;
			jamieSize = 4;
			jamieChildren = 0;
			silRep = 0;
			silPreg = 0;
			silRate = 0;
			silLay = 10;
			silTied = false;
			silGrowthTime = 0;
			lilaUB = false;
			dairyFarmBrand = false;
			jamieRep1 = 0;
			jamieRep2 = 0;
			jamieRep3 = 0;
			lilaWetness = 0;

			foundSoftlik = false;
			foundFirmshaft = false;
			foundTieden = false;
			foundSizCalit = false;
			foundOviasis = false;
			foundValley = false;
			foundSanctuary = false;

			defeatedMinotaur = false;
			defeatedFreakyGirl = false;
			defeatedSuccubus = false;

			firstExplore = false;

			
			knowLustDraft = false;
			knowRejuvPot = false;
			knowExpPreg = false;
			knowBallSwell = false;
			knowMaleEnhance = false;

			knowSLustDraft = false;
			knowSRejuvPot = false;
			knowSExpPreg = false;
			knowSBallSwell = false;
			knowGenSwap = false;
			knowMasoPot = false;
			knowBabyFree = false;
			knowPotPot = false;
			knowMilkSuppress = false;

			knowSGenSwap = false;
			knowSMasoPot = false;
			knowSBabyFree = false;
			knowSPotPot = false;			
			knowPussJuice = false;
			knowPheromone = false;
			knowBazoomba = false;
			
			babyFactLevel = 0;
			bodyBuildLevel = 0;
			hyperHappyLevel = 0;
			alchemistLevel = 0;
			fetishMasterLevel = 0;
			milkMaidLevel = 0;
			shapeshiftyLevel = 0;
			shapeshiftyFirst = "";
			shapeshiftySecond = "";

			maleFetish = 1;
			femaleFetish = 1;
			hermFetish = 1;
			narcissistFetish = 1;
			dependentFetish = 1;

			dominantFetish = 1;
			submissiveFetish = 1;
			lboobFetish = 1;
			sboobFetish = 1;			
			furryFetish = 1;
			scalyFetish = 1;
			smoothyFetish = 1;

			pregnancyFetish = 1;
			bestialityFetish = 1;
			milkFetish = 1;
			sizeFetish = 1;
			unbirthingFetish = 1;
			ovipositionFetish = 1;
			toyFetish = 1;
			hyperFetish = 1;

			currentDayCare = 0;

			humanChildren = 0;
			equanChildren = 0;
			lupanChildren = 0;
			felinChildren = 0;
			cowChildren = 0;
			lizanEggs = 0;
			lizanChildren = 0;
			bunnionChildren = 0;
			miceChildren = 0;
			birdEggs = 0;
			birdChildren = 0;
			pigChildren = 0;
			bugEggs = 0;
			bugChildren = 0;
			skunkChildren = 0;
			minotaurChildren = 0;
			freakyGirlChildren = 0;


			wolfPupChildren = 0;
			calfChildren = 0;

		
			/*itemSlot1 = 0;
			itemSlot2 = 0;
			itemSlot3 = 0;
			itemSlot5 = 0;
			itemSlot6 = 0;
			itemSlot7 = 0;
			itemSlot9 = 0;
			itemSlot10 = 0;
			itemSlot11 = 0;*/
			
			

			
			bagPage = 1;
			bagArray = [];
			bagStackArray = [];
			bagSlotAdd(27);
			
			stashArray = [];
			stashStackArray = [];
			stashSlotAdd(27);
			
			
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




/***********
 *Main Game*
 ***********/
 
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
	
	if (doWeight()){ Choice12.visible = false;	}
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
		if (buttonChoice == 1){	doBag(); }
		if (buttonChoice == 6){	doSleep();}
		if (buttonChoice == 5){	doMasturbate(); }
		if (buttonChoice == 2){ doStash();	}
		if (buttonChoice == 3){	doShops(); }
		if (buttonChoice == 4){	doDayCare(); }
		if (buttonChoice == 7){	doAlchemy(); }
		if (buttonChoice == 8){	doLevelUP(); }
		if (buttonChoice == 12){ doExplore();	}		
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
		if (buttonChoice == 1){	doShop(); }
		if (buttonChoice == 2){	doDyeShop(); }
		if (buttonChoice == 3){	doApothecary(); }
		if (buttonChoice == 6){	doSalon(); }
		if (buttonChoice == 7){	doTailor(); }
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
		if (buttonChoice == 12) { doShop();	}
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

					if (tempInt > 0) { doCoin(tempInt*itemValue(choiceListResult[0]));	}

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
		if (goodsSlot == 6){ goodNum = 230;	}
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
		if (goodsSlot == 6){ goodNum = 230;	}
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
							if (apothID(buy) > 200)	{ for (i=1;i<= tempInt ;i++) { itemAdd(apothID(buy)); } }
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
		if (ID == 1) { tempStr = "R: LustDraft";	}
		if (ID == 2) { tempStr = "R: RejuvPot";	}
		if (ID == 3) { tempStr = "R: ExpPreg";	}
		if (ID == 4) { tempStr = "R: BallSwell";	}
		if (ID == 5) { tempStr = "R: SLustDraft";	}
		if (ID == 6) { tempStr = "R: SRejuvPot";	}
		if (ID == 7) { tempStr = "R: SExpPreg";	}
		if (ID == 8) { tempStr = "R: SBallSwell";	}
		if (ID == 9) { tempStr = "R: GenSwap";	}
		if (ID == 10) { tempStr = "R: MasoPot";	}
		if (ID == 11) { tempStr = "R: BabyFree";	}
		if (ID == 12) { tempStr = "R: PotPot";	}
		if (ID == 13) { tempStr = "R: SGenSwap";	}
		if (ID == 14) { tempStr = "R: SMasoPot";	}
		if (ID == 15) { tempStr = "R: SBabyFree";	}
		if (ID == 16) { tempStr = "R: SPotPot";	}
		if (ID == 17) { tempStr = "R: MilkSuppress";	}

		return tempStr;
	}
}

function apothDescription(ID:int):String {
	if (ID >= 200){ return itemDescription(ID); }
	else {
		var tempStr:String = ""
		if (ID == 1) { tempStr = "Recipe: Lust Draft\r\rFor those who need a boost in the bedroom.\r\rAlchemy difficulty: Simple";	}
		if (ID == 2) { tempStr = "Recipe: Rejuvenation Potion\r\rUseful for soothing what ailes you.\r\rAlchemy difficulty: Simple";	}
		if (ID == 3) { tempStr = "Recipe: Express Pregnancy Potion\r\rHelps quicken the gestation period.\r\rAlchemy difficulty: Simple";	}
		if (ID == 4) { tempStr = "Recipe: Ball Sweller\r\rGives your nuts a jump in their production.\r\rAlchemy difficulty: Simple";	}
		if (ID == 5) { tempStr = "Recipe: Superior Lust Draft\r\rFor when you've got a long night ahead with your spouse.\r\rAlchemy difficulty: Complex";	}
		if (ID == 6) { tempStr = "Recipe: Superior Rejuvenation Potion\r\rGreatly soothes your ailments.\r\rAlchemy difficulty: Complex";	}
		if (ID == 7) { tempStr = "Recipe: Superior Express Pregnancy Potion\r\rBecause that baby just needs to get out.\r\rAlchemy difficulty: Complex";	}
		if (ID == 8) { tempStr = "Recipe: Superior Ball Sweller\r\rIf you like that swollen, achy, full of seed feeling, this is what you want.\r\rAlchemy difficulty: Complex";	}
		if (ID == 9) { tempStr = "Recipe: Gender Swap Potion\r\rDon't like your current path in life? This will help start you off from a new perspective.\r\rAlchemy difficulty: Complex";	}
		if (ID == 10) { tempStr = "Recipe: Masochism Potion\r\rMakes some the pain feel pleasurable instead.\r\rAlchemy difficulty: Complex";	}
		if (ID == 11) { tempStr = "Recipe: Baby Free Potion\r\rA good contraceptive.\r\rAlchemy difficulty: Complex";	}
		if (ID == 12) { tempStr = "Recipe: Potency Potion\r\rMakes your testicles more efficient in their duties.\r\rAlchemy difficulty: Complex";	}
		if (ID == 13) { tempStr = "Recipe: Superior Gender Swap Potion\r\rFor when you're bored and wanna try out something new.\r\rAlchemy difficulty: Advanced";	}
		if (ID == 14) { tempStr = "Recipe: Superior Masochism Potion\r\rReally helps take on the big fellas; all that soreness will be delightful instead.\r\rAlchemy difficulty: Advanced";	}
		if (ID == 15) { tempStr = "Recipe: Superior Baby Free Potion\r\rNecessary in Siz'Calit.\r\rAlchemy difficulty: Advanced";	}
		if (ID == 16) { tempStr = "Recipe: Superior Potency Potion\r\rHelps make sure you absolutely fertilize all those eggs with a good coating.\r\rAlchemy difficulty: Advanced";	}
		if (ID == 17) { tempStr = "Recipe: Milk Suppressant\r\rSometimes all that leaking can be a bit of a nuisance... So, they came up with this!\r\rAlchemy difficulty: Complex";	}

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


/*********
 *Whoring*
 *********/

function doProstitute():void{
	var chance:int;
	if (percent() < 33 - enticeMod) {
		textL("You wait around "+regionName(currentZone)+", shaking your assets and hoping to catch the eye of someone looking for a bit of sensual company. Unfortunately, despite some lustful gazes, nobody steps forward to take you up on your offer. Either you just weren't attractive enough or they just weren't in the mood at the moment.");
		hrs = 2;
		doEnd();
	}
	else{
		var tempInt:int = Math.floor(percent()/20+ment/5+lib/5);
		i = 0
		while (i == 0) {

			//Softlik whoring
			if (currentZone == 1) {
				chance = Math.floor(Math.random()*(1+6-1))+1;
				if (chance == 1){					
					textL("Checking yourself in a window, you make sure your "+currentClothes()+" are in order. You make sure your "+boobDesc()+" breasts are exposed just enough to entice anyone that sees the lovely flesh of your "+boobDesc()+" bust. You walk with your hips swaying back and forth, trying to bring any watcher to you like a moth to the flame. It's not long before a small group of three human males approach you. Each of them looks like they’ve had a bit to drink and they even try to haggle with you. You manage to agree upon a price for the three of them and they take you back to a seedy bar. The place is bustling, but they have a back room for their dirty exploits.");
					if (lactation > 0) {
						textLP("\r\rThe three men eagerly began to strip, each appears to be a fine example of human endowment. You almost wonder if these men had deliberately lost to cock-snakes at some point... though that seems a little ridiculous... who would do that after all? You remove your "+currentClothes()+" for them in a sexy striptease, their fat cocks already engorging with blood. \r\rYou smile seductively as the bravest man approaches. He grabs your "+boobDesc()+" tits and begins to suckle on the sensitive nipples. A moan escapes your lips as milk escapes into his eager mouth.\r\rYou stagger backwards into the waiting arms of one of the men, not realizing that he was behind you. He grabs you roughly by the waist and you feel his hard manhood in your back. You wonder if he will drive it into you, the thought filling your mind makes you shudder with anticipation. He prolongs your wait as he begins to kiss and nibble on the soft nape of your neck, driving the fire in your body hotter and hotter.\r\rThe last man approaches and takes your hand, guiding it to his still hardening member. You can barely fit your delicate fingers around it as you begin a slow teasing movement.\r\rIt’s hard to focus as you try to continue your movements, but the feel of the lips on your neck and the teeth on your nipples is making it difficult to do anything but breathe heavily. Another set of teeth come down suddenly on your free breast. You have to move a little to continue stroking the man’s large member. Your other hand snakes out to find another cock to fill it. The lips on your neck disappear, but that feeling is soon replaced by one of strong hands up your rump. Your cheeks are spread followed by sudden pressure on your little hole. The feeling increases as the hands slide to your hips and they’re pulled backward onto the hard shaft.You give a small yelp as the man pushes fully inside of you, raising you off the ground in surprise.");
						textLP("\r\rYour "+legDesc(10)+" swing awkwardly as you hang impaled on his manhood. Your hands leave the men’s members, but they do not stop milking your tits harshly. You look back over your shoulder and see the man’s smug grin as he leans against a table to support himself. Your attention gets pulled back to one of the men as he pulls hard on your breast to force more milk into his mouth. You wonder what's going to happen next as you slowly get used to the uncomfortable feeling of being held aloft on the man's thick cock. His strong hands grip you tightly around the waist and he begins to pull himself from you. He pulls almost all the way out, barely leaving the head of his member inside. A surprised moan escapes your lips when he suddenly thrusts back into you. You feel a slight bit of pain and your stomach has a noticeable bulge, but you are paying too much attention to your breasts to notice it. As the man begins his thrusting, you can’t help but feel even more turned on. Your tits feel like they're on fire as they are suckled constantly and your nipples are so hard that it's almost painful. With all the focus the men give your body, you can’t fight against the orgasm that turns your bones to jelly and makes your eyes roll back into your head. All your muscles spasm and the man behind you gives a grunt as you clench mercilessly on his shaft. His orgasm has yet to come, but you’re sure that it won’t be long now. There’s not much to do as you let the men suck your tits dry and fuck your ass raw until at last you feel the heat of the man's seed spilling within you. You sigh in pleasure from both the warmth inside you and relief as he pulls himself free of your ass before lowering you to the ground. As good as it felt, you just know it’s gonna be hard to sit for at least a week.");
						textLP("\r\rThe men paying attention to your chest finally let go. You sink to your "+legDesc(6)+" as they grab their stiff members and begin to stroke themselves quickly. You close your eyes and open your mouth, knowing that it won't be long until they finish as well. Their breathing gets heavier and heavier until you hear the strangled sounds of their climax. A heated moan escapes your mouth as you feel the hot strands of thick liquid splash over your face and in your mouth. You’re surprised by the amount as you feel the hot surges of their seed continuing to spill onto your face over and over again. Their climaxes do eventually come to an end and you gather up the cum on your face, scooping it into your mouth and licking your fingers hungrily. \r\rWith all the men spent, you get dressed and hobble from the seedy bar. With each step, the pain in your ass is still quite apparent.");
						milkAmount(1);
						doLust(-Math.floor(sen/2), 2, 3, 5);
					}
					else {
						textLP("\r\rThe three men eagerly began to strip, each appears to be a fine example of human endowment. You almost wonder if these men had deliberately lost to cock-snakes at some point... though that seems a little ridiculous... who would do that after all? You remove your "+currentClothes()+" for them in a sexy striptease, their fat cocks already engorging with blood. \r\rYou smile seductively as the bravest man approaches. He leads you to a table and has you to bend over as he sits upon it, the table creaking slightly under his weight. His hot meat throbs inches from your face and you use your tongue to gently lick the head. He lets out a small moan as you try to take the head into your mouth, your lips stretching around it's impressive girth before it finally pops in.\r\rYou feel something pushing on the tight pucker of your ass, it feels strange as it begins to go inside. You feel your hole stretching around the intruder, but you manage to take the thick member. You smile around the first man's shaft slightly as your tongue begins to lick and circle around the man’s cock, pleasuring him further. You aren’t sure if you’ll be able to take much more of him. You place your hands around the thick shaft and slowly begin to stroke it. The man inside your ass begins to thrust, grabbing you by the hips to get himself deeper into you. The feeling is exquisite and the position helps to rub that little spot inside you. The man’s pace quickens into a relentless pounding of your ass. It distracts you from the job in your mouth and hands, but your moans help with the member in your mouth a little bit. The hard thrusts into your ass fall into a steady pace. The feeling causes your eyes to close as waves of ecstasy race through you.");
						textLP("\r\rHowever, it's not long until that pace breaks. His thrusts get faster and rougher as the man gets closer and closer. There’s a faint twinge of pain as the man buries himself as far as he can go. A strangled noise escapes his lips as his shoots his load into you. Your ass clenches tightly, milking him for as much of his cum as possible. With a pleasured sigh, he pulls himself from your ass and lets go of your waist.\r\rThe emptiness in your ass is soon filled with another stiff cock, but... this time it’s different. You aren’t sure what’s going on. The man inside your mouth wants you to go deeper. It's not easy, but you oblige with a few more inches. With his cock entering your throat, you idly wonder if this man might be part horse. The true fucking begins now as both men begin to thrust. The one on the table stands and holds onto your head as he keeps himself buried deep. As one man pulls out, the other thrusts in deep, causing you to jiggle back and forth. Your breasts flop to and fro with their motion. There’s nothing you can do except grab the table and hold on as best you can as the vicious cycle continues. There’s a primal urgency in the men’s thrusts. They’re not there to pleasure you, this is all about them. The man behind you gives your "+buttDesc()+" rump a sharp slap, causing you to squeal around the cock in your mouth. You start timing your breathing round the thrusts in your mouth and you can taste his salty pre occasionally whenever he pulls his head back out of your throat. The man pounding your ass continues to ride you as roughly as possible. You start moving with him, forcing your hips back onto his thick meat.\r\rYou can feel the members starting to get thicker. The hands behind your head force you deep onto his cock, mashing your face into the man’s pubic hair.");
						textLP(" As you feel the cock in your ass explode and flood your body with seed, you’re pretty sure the one in your mouth has begun to flood your stomach with cum as well. Just before you choke, the member is pulled from your mouth. You cough a little before finally taking a deep breath of fresh air. The deflating cock in your behind is slowly pulled from you with a loud pop.\r\rExhausted, you pull your clothes on and wander out of the seedy tavern, holding your slightly inflated belly. As you head back to your street, you wonder if the seed of all three men will meet in your stomach. The very thought arouses you...");
						doLust(-Math.floor(sen/2), 2, 5);
					}
					if (cockTotal > 0) { cumAmount(); }
					hrs = 2;
					i++;
				}
				else if (chance == 2 && cockTotal > 0) {
					textL("You wander around the city of Softlik, putting yourself on display, hoping to earn some coin with the only asset you have to peddle. The crowds seem to largely ignore you. Some of the more prudish citizen even actively avoid you. As time passes, you worry that your efforts may be in vain. Just as you are about to give up, a very nervous young man hesitantly approaches you. \r\r\"Hey, I know, this might sound stupid, but you look like a...\" he blushes and stammers a bit \"well,..\" He looks around and lowers his voice, hoping no one can hear him, \"I always wanted to try to suck off a "+domName()+" like you. I'll pay you, if you let me...\" He blushes deeply as he looks at you with downcast eyes, his face turning almost as red as his hair. You find it rather endearing as you watch his nervousness warring with his desire.\r\rNeeding the money, you nod your head in acceptance. The young man grabs your arm as his enthusiasm overcomes his nervousness. He practically drags you into an empty alley before looking around, ensuring no one can see you two. Now that he has you in private, however, his nervousness reasserts itself, looking a bit unsure. You decide to take the lead for this moment and pull out "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+".");

					if (cockSize*cockSizeMod <= 20){ 
						textLP("\r\rThe young man promptly falls down to his knees in front of you and touches it with a trace of wonder. Finally he begins stroking it in earnest and you realize that despite his uncertainty, he certainly has some talent. As he gains courage from your gasp of pleasure, he starts applying his tongue, teasing along the underside of your shaft. Despite his initial shyness, he is really quite good at this. He takes the tip of your cock into his mouth, licking around the tip and moaning softly. His expression is one of sheer bliss as he tastes the drop of pre that emerges. His head starts bobbing on your cock, going down on you in earnest, eliciting a low growl from you. If this guy is really new to this, he is a natural. He picks up speed and moves your up and down on your cock sucking harder and faster.");
						if (knot == false) { textLP("\r\rYou enjoy his attentions, absently caressing his hair as he gives you one of the best blowjobs you've ever had. You pant heavily as as this young man moves his head, taking almost your whole cock in his mouth. You grab his head as you feel you are close to your climax and pull his head while thrusting with your hips, forcing him to take your entire length in his mouth as you release your pent-up climax, giving him all your seed to swallow."); }
						else if (knot == true) { 
							textLP("\r\rYou enjoy his attentions, absently caressing his hair as he gives you one of the best blowjobs you've ever had. You pant heavily as as this young man moves his head, taking almost your whole cock in his mouth, nearly down to your knot. You grab his hair and pull him closer, impaling his willing mouth on your cock, until he can reach your knot with his tongue. He gets the idea and begins teasing the swelling knot with his tongue.");
							if (cockSize*cockSizeMod <= 10) { textLP(" You are surprised when he manages to not only take in your shaft, but your knot as well. You groan as his lips clench behind your knot, much like a woman's nether lips would, before squeezing it and massaging the swelling bulb. Then he looks up at you, his lips wrapped around your knot and the worshipful, needy expression on his face is too much for you. Unable to hold back any longer, you give him the reward he so eagerly seeks and he struggles to swallow every last drop as you spray your seed down his throat."); }
							else { textLP(" He then pulls off your shaft and begins sucking on the knot itself, allowing it to swell to full size. Then he goes back to deep-throating your cock while squeezing your knot with his hand. The sensation is too much for you and he struggles to swallow down every last drop as you spray your seed into his mouth."); }
						}
					}
					else { textLP("\r\rThe young man falls on his knees and admires your "+cockDesc()+" cock. He feels over your large member, surely too big for him to take it all. He slowly licks around the shaft before starting to suck on the tip. He takes in as much of your cock as he can, sucking and licking on it, eyes half-lidded in bliss and moaning softly. He starts to stroke the rest of your cock, much too large to fit in his mouth and with his other hand he massages your "+ballDesc()+" balls. You enjoy his enthusiasm and his skill as he carefully makes sure that every last inch of your thick shaft is given the attention it deserves. It's not long before you're feeling a familiar pressure building up in your nuts. Suddenly the boy stops playing with your balls and moves his finger over your ass. Pushing one in your asshole, he sends you over the edge and you flood his mouth with cum in return."); }
					textLP("\r\r\rAs you pull your cock out of his mouth, the last spurt of cum hits his face, marking him. He blushes again, licking his lips and savoring the flavor. He looks around again, still finding no one who could have seen you. He sighs in relief and hands you some coins. He then gets up quickly, and moves away..."); 
					doLust(-Math.floor(sen/3), 2, 1);
					hrs = 1;
					cumAmount();
					i++;
				}
				else if (chance == 3 && cockTotal > 0){
					textL("You don't wait long for a customer. A young blond woman enters your room and immediately strips her clothes off, revealing her large supple breasts and delicate curves. Already your "+cockDesc()+" cock"+plural(1)+" begin"+plural(3)+" to grow hard at the sight of her bare flesh. You join her on the bed, locking lips in a sensual kiss as your hands roam over her breasts and pinch her pert nipples.\r\rYou moan as her fingers trace down your spine, her nails applying just enough pressure for it to be sensual and pleasurable. You trail kisses down her neck and chest until you reach her hips. You give her clit a tender lick and nibble before you delve your tongue deep into her folds. She moans and arches her back as she runs her fingers through your hair, pushing your tongue deep into her needy pussy.\r\rThe smell of her aroused sex fills your nostrils as your tongue laps at her delicate walls. Your "+cockDesc()+" cock"+plural(1)+" throb"+plural(3)+" with need to the point of aching as it goes unattended. You pull away from her crotch and she eagerly lays back on the bed, her wet folds glistening with saliva and feminine juices.\r\rYou rub "+oneYour(1)+" hard cock"+plural(1)+" along her nether lips, coating it in her juices before you press your hard length into her. She moans as you vigorously thrust into her, your shaft stroking her sensitive places with each pass.\r\rWith each passing moment her pussy tightens around your cock, making it harder for you to keep pace as you slam into her. You can feel the heavy warmth in your balls as they begin to clench and roil, ready to burst at any moment. You pound hard into her a few more times before she reaches her peak.\r\rHer pussy clenches and milks at your cock. You groan and push into her one last time as your seed bursts from the tip of your cock and catches deep within her greedy passage. Thick ropes of cum spill into her as you hold her down, filling her with your entire potent load.");
					textLP("\r\rWhen your orgasm settles down, you ease your member out of her slit with a thick trickle of your seed dribbling out of her hole and coating your cock. \r\rYou go into the bathroom and bathe and, when you return, you find that your client has left some coins on the table."); 
					hrs = 2;
					cumAmount();
					doLust(-Math.floor(sen/2), 2, 1);
					i++;
				}
				else if (chance == 4)	{
					textL("You've been standing on the corner for a couple of hours now, trying to tempt someone into spending some coin in exchange for some pleasure. So far all you've gotten are dirty looks from several of the town matrons, making you even more embarrassed that you've had to resort to this desperate measure. Luckily for you, a group of farmhands from one of the surrounding farms have come into town on their day off. Several of the burly, sunburnt men cast appreciative glances at you but most of them seem eager to drown their thirst at the nearby tavern. As the boisterous group moves off, one of the younger men pauses, glancing at your "+boobDesc()+" breasts. He watches the men as they make their way into the tavern, grinning to himself when they fail to notice his absence. He continues to gaze at your chest as he makes his way over to you, giving you a chance to study him. His straight brown hair is a bit on the shaggy side, almost concealing his warm, chocolate brown eyes. The downy beginning of a moustache and beard surround his mouth. He's wearing a pair of coveralls over a fairly clean flannel shirt and he doesn't smell too strongly of manure. He quickly agrees to part with some coin to have a bit of fun with you. You lead him a short way down the alley to a spot behind some empty beer crates. His eyes go wide as you slip out of your "+currentClothes()+" letting him get a good look at you.");
					textLP("\r\rHe fumbles with the buttons of his coveralls and finally manages to undo them. He hastily tugs them down, letting his erection spring from its confinement. His cock isn't the biggest you've seen, but it certainly isn't the smallest either. He blushes a bit as he explains he'd like to use your tits. It isn't quite what you've envisioned, but the customer is always right so you quickly work out the logistics. You have him sit down on one of the empty crates, then lean over him so his erection is nestled between your breasts. He moans softly as you capture his hard, hot length between your tits and soon begins to rock his hips. There's a bit of friction at first, but soon his slick pre is smeared in your cleavage and he begins to thrust his hips even more vigorously.");
					if (breastSize <= 2) { textLP(" You lower your head and flick your tongue over the head of his cock as it rubs the slight curve between your mounds."); }
					else if (breastSize <= 10) { textLP(" You lower your head and flick your tongue over the head of his cock each time it pops out from between your breasts."); }
					else { textLP(" His entire length is lost in the warm, pillowy mass of your tits and he couldn't be happier!"); }
					textLP("\r\rAfter a surprisingly short time, the young man begins to pant raggedly, his eyes clenched tightly shut as he humps into your breasts hard and fast. He cries out softly as you feel the hot gush of his seed spray into your cleavage, painting your breasts as he quivers beneath you. He gives you a rather dazed looking smile and is just about to say something when the two of you hear several men calling out. \r\r\"Bran! Bran where are you boy?\" \r\rHis eyes widen in alarm. \"Th..That's the foreman! I...I've got to go!\" \r\rHe reaches into his belt pouch and hurriedly gives you some coins. \"Th...Thanks a lot! Maybe I'll see you again the next time I'm in town!\" He waves to you, then hurries down the alley while simultaneously trying to pull his overalls up. He manages to trip himself once, but quickly gets to his feet as his tugs his clothing back into place before scurrying out of the alley and hurrying to find his friends. \r\rYou shake your head in bemusement as you gather up the coins and clean yourself off.");
					hrs = 2;
					doLust(Math.floor(lib/4), 0, 3);
					i++;
				}
				else if (chance == 5)	{					
					textL("A rough-looking human eyes you from the alleyway. There's a glint in his eyes as he approaches. \"Y'wanna earn a few extra coins?\" he asks after he steps into the light, his tan flesh scarred and his eyes looking over your body. \"Step into my office, and let's have a talk.\"\r\rYou nod and walk into the dark alley, the rogue soon following. You begin to turn, your mouth opening to speak only to have one of his hands clasp over it while the other slams your body against the wall. \"Been a while since I fucked an ass. Just shut up and take it.\" he commands while pulling your "+clothesBottom()+" out of his way. It isn't long before his fleshy shaft presses up against your ass. You can feel the warmth of the man's chest against your back as the throbbing cock slides between your cheeks. He grips your "+buttDesc()+" ass hard, holding it against his cock as he rubs his length between your cheeks. Before long, there's a dribble of his pre drooling down your crack. A gasp escapes your lips as the slime-covered tip nudges against your ring. The bandit teases your fleshy hole for a moment. He lets out a few low grunts as he presses forward, not quite penetrating your tight sphincter. \"You want it, slut? I can see it in your eyes. You're begging for it.\"\r\rWith no further warning, he plunges in. The fat human cock spreads your walls apart as he slides in the hole below. He moans deeply as his hands latch onto your hips, the man pushing his remaining length into you. \"Fuck, you're hot... Worth every gold piece.\" His grip on your hips tightens, almost painfully so, as he rocks your body back and forth with every thrust. The unlubricated cock digs painfully into your flesh with every movement as the man fucks you without care. He roughly pounds your flesh, panting into your ear as he fucks you with quick, short movements.\r\rIt's not that long before he reaches orgasm and he shoves himself completely into your rear. With another grunt, the man's dick twitches inside your warm depths and you feel the sticky seed burst within you. You pant while he fills your ass so full that it begins to overflow, thick streams of cum rolling down your thighs as it slips through the tight seal.");
					textLP(" Just as you begin to feel completely full, he tugs free and lets the last few strands shoot over your back. He lets out a pleased sigh before throwing a small sack down beside you, hitting the ground with a quiet jingle. He vanishes as quickly as he appeared, slipping his dick back into his armor before turning a corner and leaving you a slimy mess.");
					hrs = 1;
					doLust(Math.floor(lib/4), 0, 6);
					i++;
				}
				else if (chance == 6 && gender != 0) {
					textL("Standing on the corner, attempting to look your sexiest, you manage to attract the attention of two young women who almost look identical. They smell strongly of alcohol, leading you to assume that they have recently left a tavern to seek other pleasures. Walking up to you, one shoves a small bag of coins into your hands, too intoxicated to negotiate or really care about your racial makeup, while the other stumblingly starts to frog-march you to an alleyway a few meters distant.\r\rPocketing the coins, you size up the two young women. Both are rather skinny with ample breasts and the beginnings of womanly hips and thighs visible through the form-fitting trousers they wear. You begin to think it's a bit odd for women in Softlik to be wearing pants when you notice two rather large bulges beginning to tent the length of the women's pant-legs. The two undress and it is soon evident the two women have been the unfortunate (or fortunate) victims of cock-snakes. The two sport identical foot-long erections, hardened and bobbing while dribbling pre-cum over a slightly gaping pair of feminine nether-lips.\r\rYou hurriedly undress, becoming quite aroused at the sight of the two's audacious display of unrestrained sexuality.\r\rThe two gaze over your body, hungrily drinking in your attributes.");
					if (cockTotal > 1 && cockTotal >= vagTotal) { textLP("Despite being incredibly drunk the two women move rather quickly, pushing you over to lay on the somewhat clean cobblestones of the alleyway. Wasting no time, they begin vying for your cocks, sloppily arguing over who will get what member. Having decided, the two intertwine their arms and begin to lower themselves on top of you in unison, guiding the heads of your selected members to momentarily rest softly in the gape of their identical vulvas. Almost letting themselves fall onto your shafts, the two are already dripping wet and your twin dicks are swallowed almost instantly to the hilt because of it.\r\rThe two begin to expertly bounce on top of you and soon have you screaming at the dual sensations of your "+cockDesc()+" cocks being squeezed and milked by the tight cunts surrounding them. As the two horny women gyrate on top of you, one of the sisters reaches down and guides her shaft toward your face. Taking the hint, you immediately slide the member into your mouth and begin to suck and stroke it with your tongue as best as you can, striving to match the incredible rhythm of the two women mercilessly grinding on top of you. It's only a matter of time before the dual sensations of your cocks being milked causes you to erupt in orgasm. Stifling a scream you tense and begin to forcefully ejaculate deep into the two women.\r\rThe sister in your mouth erupts down your throat like a volcano and soon leaves you gulping, fruitlessly trying to keep up with the torrent she is releasing. The other sister grabs her own cock and directs it toward her mouth as she orgasms, spraying thick ropes of semen into her gaping mouth and somehow managing to gulp it down as quickly as it appears.\r\rAlmost falling off of you, the two women stagger to their feet and begin to gather their clothes, leaving you panting and oozing cum. The two sisters throw another small bag of coins at your "+legDesc(10)+", thanking you for the best fuck they have had in a while. Not even bothering to get dressed the two wobble and stagger away, clearly exhausted by their ordeal. You notice they leave behind two identical trails of your cum as they leave and can't help but wonder if they will get pregnant from the deluge you have just released."); }
					else if (vagTotal > 1) { 
						textLP("Despite being incredibly drunk, the two women act rather quickly. One of the sisters motions for you to bend over, and an argument erupts behind you as to who gets dibs on what orifice. The two quickly come to an agreement and waste no time in guiding the tips of their rigid tumescences to rest lightly on the lips of two of your vaginas. With only a moments hesitation spent arranging their body parts so as to not collide with each other, the two begin to urgently slide their lengths into you. The two women's cocks are some of the biggest you have taken and soon bottom out inside you.\r\rThe two thrust in unison, the combined sensation of being filled by two cocks at the same time soon leaves you panting and drooling, barely conscious of anything but the motion of the two cocks inside you. Their thrusts come faster and faster as they push you closer and closer to the edge, their lengths sliding in and out of your slick cunts with ease. As they near orgasm their thrusts become more and more shallow. You can feel the heads of their cocks hitting the walls of your cervices with every movement, and without warning the two tense and shudder in unison as they begin to spasm jets of torrid jizz deep into your wombs. They continue to ejaculate for what seems like forever. If you could muster the energy you wouldn't be surprised to look and see your belly has begun to swell from the sheer amount of liquid which has been pumped into you. Exhausted and still rather tipsy the two fall off you, their quickly softening cocks make a wet slap against the insides of your thighs as they slide from you.\r\rThe two women stagger to their feet and begin to gather their clothes, leaving you below still panting and oozing cum. The two sisters throw another small bag of coins at your "+legDesc(10)+", thanking you for the best fuck they have had in a while. Not even bothering to get clothed, the two stagger away, clearly exhausted by their ordeal. You notice they leave behind two identical trails of cum, their cocks still oozing the white sticky substance onto the ground below them. You cant help but wonder if you will get pregnant from the deluge they just released."); 
						doImpregnate(1);
						doImpregnate(1);
					}
					else if (cockTotal == 1 && vagTotal == 1) { 
						textLP("Despite being incredibly drunk, the two women act rather quickly. One of the sisters motions for you to bend over, and while doing so an argument erupts behind you as to who gets dibs on your pussy and who gets your cock. The two quickly reach an agreement and one of the sisters wastes no time in guiding the tip of her rigid tumescence to rest lightly on the swollen lips of your vagina. The other sister vying for your cock eases underneath you and raises her ass up to the level of your crotch. Reaching behind her she takes your now absolutely rigid member and begins to guide it to rest against her vulva. With only a moments hesitation spent arranging their body parts so as to not collide with one another, the two begin to urgently grind against you.\r\rThe sister behind you begins by sliding her rigid length into you and following her thrust you plunge deep into the sister below you. Your movement is reciprocated by the sister below you as she grinds her hips against your groin, your balls wetly slapping the inside of her thighs. The cock inside of you is one of the biggest you have taken and it soon bottoms out, rubbing the wall of your cervix pleasurably. The two move in near perfect unison, the combined sensation of being filled and filling another at the same time soon leaves you panting and drooling, barely conscious of the outside world.\r\rThe two women's thrusts come faster and faster as they surge closer and closer towards the edge. As they near orgasm, their movements get shorter and faster and you can feel the head of your cock hitting the wall of the bottom sister's cervix with your every movement. Without warning you feel the sister in your pussy tense and shudder as she begins to spasm jets of torrid jizz deep into your womb. The immense warmth filling you sends you flying over the edge and you erupt into the depths of the beauty below you as she lets loose onto the ground below her, her jism quickly forming a small pool. You all continue to ejaculate for what seems forever; if you could muster the energy you wouldn't be surprised to look and see that your belly and the belly of the sister below you have swelled from the sheer amount of liquid which has been expelled. Exhausted and still rather tipsy, the two help each other up.\r\rThe two women stagger to their feet and begin to gather their clothes, leaving you on the ground still panting and oozing cum. The two sisters throw another small bag of coins at your "+legDesc(10)+", thanking you for the best fuck they have had in a long while. Not even bothering to get clothed the two wobble and stagger away, clearly exhausted by their ordeal. You notice they leave behind two identical trails of your combined cum, their cocks still oozing the white sticky substance onto the ground below them and the excessive amount you pumped into the womb of the sister dripping slowly out. You can't help but wonder if you will get pregnant from the deluge they just released or if they will get pregnant from the seed you just planted deep in one of the sister's bellies."); 
						doImpregnate(1);
					}
					else if (cockTotal == 1) { textLP("Despite being incredibly drunk the two women move rather quickly, pushing you over to lay on the somewhat clean cobblestones of the alleyway. Wasting no time they begin desperately fighting over your cock, sloppily arguing over who will get 'the privilege'. Having almost come to blows, an agreement is finally reached and one of the sisters begins to lower herself on top of you. She gently grabs and guides the head of your member to momentarily rest softly in the gape of her drooling vulva before letting herself fall onto your shaft, the wet lubrication more than adequate to any resistance. The other sister, feeling somewhat put off, sits to one side and wraps a hand around the base of her cock, inserting several fingers of her other hand into the oozing cunt below to begin jacking and jilling off at the sight of the two of you going at it.\r\rThe sister on top of you expertly grinds and slides along your entire length, and you're surprised to find her cunt is almost a perfect fit. She soon has you screaming at the sensation of your cock being squeezed and milked by her perfect cunt. The other sister is now vigorously jacking herself off with the hand previously probing the depths of her pussy, using her own juices as a lubricant. It's only a matter of time before the sensation of your cock being milked within the steaming depths of this drunken beauty causes you to orgasm.\r\rYou stifle a scream as you tense and begin to forcefully ejaculate deep into her. The sister to your side and the one on top of you loudly reach climax in uncanny unison. Both of their cocks shudder visibly and shoot thick ropes of fertile seed into the air, arcing to land on top of the both of you. Falling off of you, the women stagger to their feet and begin to gather their clothes, leaving you below still panting and oozing cum.\r\rThe two sisters throw another small bag of coins at your "+legDesc(10)+", thanking you for the best fuck they had had in a while. Not even bothering to get clothed the two wobble and stagger away, clearly exhausted by their ordeal. You notice the one you just fucked leaves behind a trail of your cum and you can't help but wonder if she will get pregnant from the deluge you've just released."); }
					else if (vagTotal == 1) { 
						textLP("Despite being incredibly drunk, the two women act rather quickly. One of the sisters motions for you to bend over, and while doing so an argument erupts behind you as to who gets dibs on which orifice. The two come to an agreement and waste no time in guiding the tips of their rigid tumescences to rest lightly on the lips of vagina and the slight pucker of your backdoor. With only a moments hesitation spent arranging their body parts so as to not collide with each other, the two begin to urgently slide their lengths into you.\r\rThe two herms' cocks are some of the biggest you have taken and both soon bottom out. The two thrust in unison and the combined sensation of being filled by two dicks at the same time soon leaves you panting and drooling, barely conscious of the outside world. Their thrusts come faster and faster as they come closer to the edge, their lengths sliding in and out of your slick cunt and ass with ease. As they near orgasm their thrusts become more and more shallow. You can feel the heads of their cocks hitting the wall of your cervix and colon with every movement. Without warning, the two tense and shudder in unison as they begin to spasm jets of torrid jizz deep into your womb and stomach.\r\rThey continue to ejaculate for what seems forever. If you could muster the energy, you wouldn't be surprised to look and see your belly has swelled from the sheer amount of liquid which has been injected into you. Exhausted and still rather tipsy the two fall off of you, their now flaccid members making a wet slap against the insides of your thighs.\r\rFalling off of you the two women stagger to their feet, share a kiss, and begin to gather their clothes. Leaving you below still panting and oozing cum, the two sisters throw another small bag of coins at your "+legDesc(10)+", thanking you for the best fuck they have had in a while. Not even bothering to get clothed the two wobble and stagger away, clearly exhausted by their ordeal. You notice they leave behind two identical trails of cum, their cocks still oozing the white sticky substance onto the ground below them. You can't help but wonder if you will get pregnant from the deluge they have just released."); 
						doImpregnate(1);
					}
					hrs = 2;
					cumAmount();
					if (cockTotal > 1 && cockTotal >= vagTotal)	{ doLust(-Math.floor(sen/2), 2, 1); }
					else { doLust(-Math.floor(sen/2), 2, 1, 2); }
				}
				
			}

			//Firmshaft whoring
			if (currentZone == 2) {
				chance = Math.floor(Math.random()*(1+5-1))+1;
				if (chance == 1) {
					textL("Enticing one of the big local males into a nearby tent,");
					if (ment > 20){ textLP(" you make sure to check that no one else is around before turning your focus on him."); }
					else { textLP(" you don’t even bother to make sure you’re alone as you ravenously turn your attention upon him."); }
					textLP(" Sinking to your "+legDesc(6)+" and unfastening his trousers, you emit a gasp of lustful delight as you find it isn’t only his stature that is large. Your");
					if (checkItem(101)) { textLP(" paws"); }
					else { textLP(" hands"); }
					textLP(" greedily grip his bulging masculinity. You coax his massive, horse-like cock from his plump sheath with slow, enticing strokes. His huge equan testicles are simply too big to cup in one hand, so you take turns squeezing and kneading each of his fat colt-makers as you stroke his huge, pulsing organ to life.\r\rThe equan groans as you lean in to tongue at his flaring, blunt cock-head while lapping at his pre-seed as it oozes copiously from his enormous fuck rod. You continue to stroke his throbbing shaft as you open your mouth wide and force the first few inches of his immense tool into your maw. Your tongue works furiously at the sensitive underside of his swollen, flat glans and it isn’t long before you feel his bloated orbs heave closer to his body in that telltale sign of his imminent release.\r\rSuddenly the equan surges forward, gripping ");
					if (ears == 2 || ears == 5 || ears == 7) { textLP("your long ears"); }
					else { textLP("the back of your head"); }
					textLP(" with both of his huge, powerful hands. Your find your jaws stretched to their very limits as he forcefully pulls your head down upon his throbbing erection. He forces inch after thick, throbbing inch deep down your throat. You shudder and convulse in shock as your warm, wet throat grips and strokes every inch of his huge maleness. The sensations cause your partner to moan aloud in uncontrollable bliss. Your writhing tongue is pressed flush against the bottom of your mouth as the first gush of cum further bloats his already huge cock. You can only struggle futilely as you feel the blast of hot, thick cream shoot inward and coat your hungering belly. His powerful hands hold your lips flush against his velvet-furred sheath and you can only shiver with lust while you’re flooded with his essence. Your distended, cum-bloated belly gurgles in discomfort when he finally pulls his massive endowment free. You fall to the ground limply, panting as you're finally able to breathe again. With his thanks and a mumbled compliment, the equan stumbles out of the tent in a hazy afterglow, leaving you with his payment and a warm, sticky meal...");
					aff(2, Math.floor(percent()/20 + 2), -2);
					doLust(Math.floor(lib/4), 0, 6);
					hrs = 2;
					i++;
				}
				else if (chance == 2 && gender == 2) {
					textL("The sounds of raised voices catch your ear as you pass one of Firmshaft's canvas dwellings. Curiosity about the event gives you pause while you try to make out the words. Without warning, the quarrel erupts out onto the path before the tent and out come a pair of nude Equan males. They are fleeing from a short and rather angry-looking Equan woman wielding a large hammer. The two men nearly trip over you as they beat a hasty retreat, leaving their pursuer behind. She shakes her head, tossing her mane about in agitation as she stares after the fleeing pair. \r\rSeeming not to notice you, the woman mutters to herself while rubbing the crotch of her loincloth. You notice that the cloth is very wet. Sensing an opportunity, you draw her attention with a small wave. As she looks you over, you blow her a kiss. A knowing smile softens her features. She motions toward her hut and you follow silently, enjoying the view of her toned ass as the two of you enter. \r\rThe woman's home is lightly furnished, but you find your attention wholly consumed by the large pile of cushions spread out in the center, upon which the slim Equan woman rests in a seductive pose. She crooks one finger in your direction and pats the cushions beside her. You obey, scarcely able to take your seat before she pulls you into a deep, somewhat awkward kiss. It ends almost as suddenly as it began, the woman remembering what you are. \"Here,\" she pants, shoving a pouch of coins into your hands. \"I'm done with men. Show me what a girl can do.\" \r\rWith that she grabs your hair and shoves your head down between her legs. Her other hand has tugged her loincloth aside to give you clear access to her sloppy cunt. Left with little say in the matter you begin doing your best to service the lusty Equan, lapping the slick juices from her dripping slit with long, slow licks.");
					textLP(" She lets loose a whinny of pleasure as your tongue darts between her folds to caress her hard clit. You keep it up for several moments before you suddenly find yourself lifted over her into a sixty-nine position, her hungry muzzle presses against your "+vulvaDesc()+" cunt. Her surprisingly large tongue fills you nicely, sending waves of ecstasy through your body as the two of you suckle and lick each other to orgasm.");
					textLP("\r\rYou lose track of the climaxes as time goes on, only stopping when you collapse from exhaustion. The Equan woman gives you a kiss on the cheek and a pat on the rear before motioning toward the exit and picking up her hammer. She strokes the thick shaft as she prepares to pick up where you left off. Your "+legDesc(2)+" wobbling, you leave the dwelling while counting your coins and humming.");
					exhaustion += 4;
					doLust(-Math.floor(sen/2), 2, 2);
					hrs = 1;
					i++;
				}
				else if (chance == 3 && (gender == 2 || gender == 3 || breastSize > 24)) {
					textL("Taking to the streets of Firmshaft in your "+currentClothes()+", you head to a less populated part of town to make a quick coin or two. After loitering about for an hour, an Equan finally approaches you. He’s slightly sweaty and appears rather nervous, though you're not surprised due to how young he appears. After some casual small talk, mostly about the weather and the grains in the plains, he gets up the courage to buy you. \r\rJudging by the large twitching bulge in his pant-leg, you can already sense that he might be a handful. He takes you back to a large tent. Nobody seems to be home even though he clearly doesn't live alone. The Equan slides his pants off quickly, showing you a rather impressive rod dangling freely between his legs. It’s almost certain that if he fell over, that thing would be there to catch him. You remove your "+currentClothes()+" as well, his manhood twitching as he sees your naked body.");
					if (breastSize > 24) {
						textLP("\r\rNoting his constant gaze at your "+boobDesc()+" breasts, you grin wickedly at him as you push him back onto the couch. You begin to rub your "+boobDesc()+" breasts with your hands, moaning in delight as you play with your nipples in a teasing manner. When they’re finally erect and he is sufficiently blue-balled, you approach him, straddling his legs and enveloping his massive member with your breasts. You slowly move up and down with them, your mouth opening to accept the flared head of his cock into your mouth. \r\rIt takes some doing, but soon you’re in a good rhythm. You run your tongue all over his cock before you greedily slide it into your throat. The boy’s face is in ecstasy as you continue your expert skills on him. The hot flesh of his member warms your entire body. Your heart beats likes a drum in your ears as you bounce up and down, swallowing him as far as you can. Fighting off the desire to gag, you devour him until his manhood bashes somewhere in your stomach. Your eyes bulge open in surprise as the young male's climax hits unexpectedly. His cock explodes with a river of spooge and rapidly begins to fill your stomach with his seed. You can feel the constant stream as his cock twitches and he whinnies loudly. Even as you pull out, he still hasn’t finished. Your throat and mouth are filled to overflowing with the thick liquid. As you pull him from your mouth, a few jets of stray cum strike you across your face and breasts. Despite your outrageously full belly, you scoop some from your bust and lick it off of your fingers. \r\rYour clothes may not fit as well now, but you head out of the tent to leave the Equan to recover.");
						doLust(Math.floor(lib/4), 0, 3);
						aff(2, Math.floor(percent()/8), 0);
					}					
					else {					
						if (vagLimit() > 60) {
						textLP("\r\rYou straddle his lap after he lays down on the bed. For a moment, you toy with the tip of his erection before slowly lowering yourself onto it. The feeling is intense as you proceed to take his cock all the way to the hilt. His hands grip your hips and he slowly begins to lift you up, shuddering slightly as your inner walls massage his incredible length. He pulls you back down after only half of his impressive tool is exposed to the air between you. You use your "+legDesc(2)+" to take your weight off of his arms and help guide him into a steady rhythm. Eventually the two of you are in sync while one of your hands moves to your breasts to feel them and play with your sensitive nipples. Your other has gone to your cunt to stroke and rub your clit. It's only a few minutes before the Equan begins to breathe hard. It's pretty obvious to you that this is probably his first time. You speed up your own actions, wanting to give him his money’s worth. Each time your fingers dart across your clit, you feel a pleasurable wave creep up your spine. Moans escape your mouth as your fingers work fast on your sensitive body. Soon your pussy begins to contract and clench as your toes curl. The boy lets out a loud whinny, the new feelings too great for him as he erupts into you pussy like a firehose. The constant gushing begins to distort your stomach. By the time you feel he’s stopped, it almost looks like a basketball has been shoved inside your womb. You wait for a moment before carefully lifting yourself off of him. His cock falls to the bed with a wet slap. You giggle softly as you notice he’s fallen asleep. \r\rSmiling proudly, you get dressed and see yourself out, though you feel quite full.");
						doImpregnate(2);
						
						}
						else { textLP("\r\rYou're a bit worried as you begin to sink his massive cock into your pussy. Only part of the way in, you know it won’t fit, but the boy has paid for the full service. You suggest trying something else and sigh with relief as he nods in agreement. You quickly get into a doggy style position and pat your ass. He catches on quickly and prods at your asshole with his very large member. Why you thought this might be a good idea is beyond you, but as the flared head sinks in and the rest follows, you can only grin and bear it. To both his surprise and yours, his balls touch your pussy with a slap. \r\rGrabbing you carefully around the waist, the Equan begins to pull himself out, only to thrust himself back in after a few inches. Once the initial pain fades, pleasure begins to fill your body. You move forward and backwards on his shaft to further encourage him. Soon his erratic pace evens out and the only sound is the tell-tale slap of his large balls hitting against your now wet pussy. Before you can find real pleasure in the act though, the Equan begins to whinny in warning of his coming climax. His frantic thrusts become more apparent as you feel the thick cock pulse and grow slightly. He bottoms out one last time and a waterfall of Equan seed erupts from his flared head, which you are now painfully aware of deep inside you. You don’t even notice that your belly has started to grow, getting bigger and bigger until it almost touches the bed. You feel nauseous for a moment and cough a little, the surprising taste of semen fills your mouth. Just as he pulls free from your backside, you swallow it back down with all your willpower. \r\rSlowly, you get up and proceed to get dressed. You're rather satisfied with yourself and decide to keep your belly as it is, a trophy of sorts."); }
						doLust(-Math.floor(sen/2), 2, 2);
					}
					hrs = 1;
					i++;
				}
				else if (chance == 4 && (gender == 1 || gender == 3))	{
					textL("You begin wandering around the equan village of Firmshaft, looking for ways to gain some coin. As you wander you notice that you've captured the attention of a few horny women with 'attributes' such as yours, so you find the best option would be to sell yourself for sex.\r\rYou begin your search for someone to fuck, giving an array of horny looks to every female that passes you by. It doesn't take long for one to take notice of you and your 'package'. She starts to walk slowly towards you, swaying her ample hips, curvy body and huge tits. Her face full of lust and her loins hungry for your cock"+plural(1)+". You feel your "+cockDesc()+" thing"+plural(1)+" harden to full size, which only draws the woman in faster, You can only stand still and do nothing, as you are dazed by her amazing body.\r\rNot caring about the setting you are in, she lunges at you. and forces you down to the ground. Without even pausing, she starts tearing away your "+clothesBottom()+"");
					if (showBalls == true) { textLP(" and letting your "+ballDesc()+" balls hang free");}
					textLP(" followed by her tearing off her own clothes. She grabs "+oneYour(1)+" wang"+plural(1)+", gets down onto all fours and presses the head of you penis against her quivering lips. She does not hesitate to force your "+cockDesc()+" cock inside of her sex, letting out a loud orgasmic moan as you sink deep into her folds. You don't even have time to think about being inside her hot, wet depths as the sexy mare begins bucking against the length of your "+cockDesc()+" tool inside her. Your penis and balls begin to shudder furiously after only a few minutes of the intense fucking, a warning to both you and her that you're about to blow. You hold tightly to her hips as you peak and thick ropes of your "+domName()+" cum paint her inner walls. After several, almost painful, minutes, you finally release all of your sperm into her womb. You breathe a small sigh of relief as you gather your thoughts. Your gaze falls to the equan woman and you can see her lying face first on the floor, barely conscious from her intense orgasm. She lets out a small moan as you gently pull your cock from her netherlips. In almost no time, it returns to its flaccid state. \r\rAfter a minute or two, she manages to recover from her climax and get back on her hooves. She stumbles, bow-legged towards you, still recovering from the stretching her nethers received from your "+cockDesc()+" cock. She slowly leans over you and gives you a kiss. You grin as you feel her press something against your stomach. A something that makes a faint metallic noise as its weight shifts in your hands. Without another word, she stands and walks away. You look down and smile as you confirm that she has given you a purse full of coins. \r\rYou get to your "+legDesc(10)+" and, as you are pulling "+pullUD(2)+" your "+clothesBottom()+", you notice you have drawn a rather large crowd. It consists mainly of women, thirsting for sex. There are also several families with mothers and fathers covering their children's' eyes. You quickly leave the area, carrying on with your journey.");
					doLust(-Math.floor(sen/2), 2, 1);
					cumAmount();
					hrs = 2;
					i++;
				}
				else if (chance == 5 && (gender == 1 || gender == 3)) {
					textL("You walk around Firmshaft, looking up into the sky as you wonder if anyone will petition you for a few hours of physical comfort. With the scent of so many pregnant Equan females wafting around, it is a wonder you aren’t grabbed up by a plump-bosomed mare and taken for a long haul by some of the more horny women. Eyes are on you and you can’t help but smile as you bite your lower lip while wagging your hips to and fro to entice any would-be clients. However, no one seems to pay you more than a passing glance, making your efforts feel somewhat defeated.\r\rLetting your eyes trail down a line of tents your ears perk as you hear a faint whistling sound floating in your direction. Turning your head just in time to see a large finger crooking in your direction, you think maybe something good will come from your patience after all. An open flap shadows the person who has just called out to you and you eagerly walk over to see what this might be about. Inside of the darkened tent area you find yourself looking up into the face of an unusually tall Equan male who happens to be as naked as the day he was born.\r\rYour eyes hungrily drop down to look at the firm shaft standing erect against his stomach. Desire rips through you like a piercing arrow as you feel yourself grow hard "+legWhere(1)+" your "+legDesc(2)+".");
					if (vagTotal > 0) { textLP("Your slit"+plural(2)+" drip"+plural(4)+" inside of your pants as a throng of heat wraps itself around your mind at the thought of that thick Equan shaft hilting, balls deep, into your sex."); }
					textLP("“What’re you offering?” the Equan asks.\r\rYou don’t bother with the formalities as you step out of your clothing to give the tall male a preview of what’s on the menu. His eyes drink your body in quickly. You don’t even have time to think about how this is going to be the biggest ride of your life. Eagerly you bounce on youf "+legDesc(10)+" as the Equan moves to the side showing you his large bed made up mostly of quilts. You walk over obediently without having to be told what to do.\r\rHe grunts as you fall to your "+legDesc(6)+", your nose catching the scent of Equan musk and recently spilled cum.");
					if (tail > 0){ textLP("You smirk naughtily before you lift up your tail, showing him what you’ve got going on. Your ass is perky and you use its heart shape to your full advantage, teasing him to no end and wiggling your rump smoothly in his direction. The puckered star beneath your tail winks as you flex your muscles and you wonder how rough the Equan will be on you as he snorts behind you."); }
					else { textLP("You smirk naughtily before you lift up your bum, showing him what you’ve got going on. Your ass is perky and you use its heart shape to your full advantage, teasing him to no end and wiggling your rump smoothly in his direction. The puckered star between your cheeks winks as you flex your muscles and you wonder how rough the Equan will be on you as he snorts behind you."); }
					if (vagTotal > 0) { textLP("Your cunt"+plural(2)+" on display, the Equan whinnies as he kicks up at the ground under his feet, the sight of your feminine portion"+plural(2)+" growing moist and tender gazing back up at him. The scent of your juice is thick in his nose and you can hear him sniffing audibly several times as he breathes your scent in. You giggle slightly and wonder how far he will drive into you; he seems to be the bucking bronco type if the evidence of the dozen or so stains of dried cum on his bedding is any indication."); }
					textLP("Clomping over to you the large Equan grabs the sides of your love handles with his oversized fingers. He leans himself down to nuzzle your neck and shoulders while sniffing at your hair, and then… brings his hand back to smack you smartly across the ass.\r\rYour eyes shoot open as you wonder what in the hell is going on. Before you can ask, another smack to the other side of your ass cheeks makes you howl out breathlessly as air is suddenly forced out from your throat. The Equan behind you seems to delight in the sounds he is causing you to make and starts to spank you with a precise and driving rhythm, causing you to jerk up and down in his grasp. For a reason you don't understand, your cock is rock hard underneath you. Mildly you wonder if this is the beginning of a slight masochistic streak before all thoughts are erased as another series of forceful slaps resound against your ass.");
					if (vagTotal > 0) { textLP("Your cunt"+plural(2)+" "+plural(14)+" throbbing and oozing "+legWhere(1)+" your "+legDesc(2)+" onto the quilts under your hands and "+legDesc(6)+" so much so it looks like a river is flowing beneath you. Your ass clenches from the brutal beating, your head feeling full of fluff. It is almost like cotton is being stuffed inside your ears as a feeling of disorientation sets in. Your puss"+plural(16)+" seem"+plural(4)+" to delight in your torture as your lips flex almost nonstop for the dominating Equan."); }
					textLP("A finger delves inside of you making you almost forget the Equan male has two hands. From the way your ass is smarting, and the way a groan of rapture breaks free from your lips, you finally feel yourself getting fucked the way you thought you should have been from the start. As the fat digit pierces your tailhole you scream yet again as the broad hand slaps your bottom. You moan as another choked cry seeps from between your lips and in the next few minutes you’re not sure if you’ve wandered into hell as both pain, pleasure and madness sweep you up into a whirling cycle of delirium.\r\rOver and over the Equan slaps your ass until finally you start to sob and huff as the pain becomes too much to bear. Just when you think you’ll receive another swat you thankfully find you are wrong as the finger inside of you pulls out and away. The Equan looks you over with a superior gaze in his eyes. Seeing your sweaty form lying on his bedding the male obviously feels like the epitome of masculine dominance, a true stallion born in the days of his ancestors. His look says more than words ever could about how much he would like to keep you for his personal harem, to both have and use to his heart’s desire; but shaking his head he knows better than to try to bind a paid whore.\r\rThe Equan rubs over your ass soothingly while at the same time reaching around to grip your shaft, pulling and stroking as you moan loud enough to be heard outside. The emptiness inside of you leaves you feeling somewhat vulnerable, though soon there is something else replacing it as the Equan leans down to stick his tongue deep inside you.\r\rHis warm organ feels like a balm for the soul as he licks inside of you so far you swear he is trying to reach for your guts as he laps over your insides with sensual yet tender affection. At the same time, the Equan draws his meaty shaft over and across your bare back. Suddenly and without notice he begins to ease his cock into your body with gentle thrusts, trying to bring himself off while pleasuring you. His balls sway heavy in the crux of your bent "+legDesc(6)+" as the Equan rubs and rolls them with a hand, using every part of you to stimulate himself without your control.");
					if (vagTotal > 0) { textLP("Moving his tongue deep inside of "+oneYour(2)+" cunt"+plural(2)+" the Equan tastes the thoroughly used tunnel of your female sex and nods in approval as he begins to slowly eat you out. His lips, breath, and tongue are so warm you push back into his face hard enough to make your hurting ass ache as your tender rump lets its sensitivity be known. Rolling his tongue up, down, and all around the Equan spreads you open farther than his finger ever could and pushes forward into your belly so much you think he may have touched your womb."); }
					textLP("Groaning and writhing as a hand takes up your balls and massages them, you try to bite out a few words of praise. Every attempt is lost as the Equan continues to use you for his own personal pleasure. Your body is like an instrument being strummed by a professional minstrel, and as the Equan keeps tuning you in just the right way you begin to feel the signs of impending orgasm about to overtake you. Against your will you clench up and cry out towards the ceiling as an orgasm tears through you when the Equan nips at your ass. Cums spews from your balls so hard it almost feels painful. Behind you the unseen Equan plunges his face into your backside so deeply his tongue surges up into you with enough force to bring about a second orgasm just seconds behind the first.");
					if (vagTotal > 0) { textLP("Your pussy slams down on the Equan male’s tongue minutes later as he continues to flick over the inside of your cervix with merciless force. Gently nibbling at your female lips with his blunt teeth, he causes you to gasp out a bitten off yelp as shivers rack your spine.\r\rToes curling and hands almost giving out, you press back into the Equan with your gropable rump trying to make sure that he gets that talented tongue up inside of you as deeply as possible. You try to warm him of the coming storm almost upon him but the Equan pays no mind and stands before it like a champion, taking the full breadth of your climax as if he were born to do so."); }
					textLP("With an orgasm pumping through you, you take a moment to note your back is very warm and sticky before realizing the Equan’s cock has let loose its torrent onto your backside. Grunting and reigning in your excitement you turn your head to look at the Equan who is just pulling his tongue out of you and nod to him to let you up once the tidal wave had subsided. He seems somewhat disappointed but does so without a hassle. His previously fat nuts seem to almost look deflated and judging by the paint you feel dripping off of you it doesn’t take a genius to figure out why.\r\rYour ass glowing like the sun, you know that sitting down for at least an hour will be out of the question. Even with the discomfort, you feel like this entire experience was well worth it. A towel is thrown over your back and without being asked the overly tall male starts wiping you down, cleaning his mess from while nudging a satchel of coins over to you with the tip of a hoof. Knowing you’ve done a job well you let the Equan male take care of you before getting up and putting your clothing back on to leave.");
					doLust(-Math.floor(sen/2), 2, 1, 2);
					cumAmount();
					hrs = 2;
					i++;
				}
			}

			//Tieden whoring
			if (currentZone == 3) {
				chance = Math.floor(Math.random()*(1+6-1))+1;
				if (chance == 1 && cockTotal > 0) {
					textL("A young female rushes down the street, moving with a much more feline quality than the other females of Tieden. She looks to be in a mild panic, scanning the crowds until her eyes lock onto your body. She undresses you with her eyes, lingering on the bulge in your "+clothesBottom()+" until she’s satisfied that you're the one she wants. By the time you notice she’s been teasing her nipples though her blouse, she is already half-way across the street, headed right for you!\r\rBefore you can react she’s already pressing her plush bosom to your body, grinding possessively against you as she coos in a decidedly un-Lupan manner. Preempting anything you might say, she pushes you against the wall, betraying a strength her body wouldn’t show otherwise, and pulls up her skirt just high enough to reveal her sopping slit. She presses it into your "+clothesBottom()+" leaving a warm stain against your cock. She claws hungrily at your chest, revealing ever more of her feline nature as she nips at your neck hoping to entice you while she humps up and down the bulge of your "+cockDesc()+" erection.\r\rDespite the suddenness of it all, you find yourself responding. Her scent makes your head swim as you begin fumbling with your "+clothesBottom()+" until your schlong"+plural(1)+" slap"+plural(3)+" against her drooling pussy with a sloppy slurping noise. She rubs herself against your "+cockDesc()+" member, making you shiver in time with her slow, deep thrusts. She starts to pant heavily and your skin tingles as it rubs against hers. Before either of you can angle "+oneYour(1)+" "+cockDesc()+" erection"+plural(1)+" to penetrate her, her whole body quakes and sprays your loins with hot, slick female cum. It rushes down your "+legDesc(2)+" and down to her feet. The smell reeks of the particular scent which makes it obvious that she is deep in her heat, if her desperation wasn't a big enough hint.");
					if (cockSize*cockSizeMod < eVagLimit(24)) { textLP("\r\rYou, of course, are too happy to oblige. Shifting your hips and lifting her by her plump ass, you plunge "+oneYour(1)+" "+domName()+" cock"+plural(1)+" deep into her folds and don’t stop until you feel her deep, fleshy walls fight against you. She bites down on her lip to suppress a wild squeal while shoving your face into her breasts. There is a ripping sound as she tears open her blouse so she can feed you her firm teat. Sweet milk leaks into your mouth while you hump again and again into her hungry body.\r\rWith her taste and smell surrounding you, you don’t think you'll last terribly long. Each hard thrust brings her closer to a second climax and before you reach yours, she floods your "+cockDesc()+" rod with her slick juices again, washing your hips in cum and quivering around your shaft tightly. That sends you over the edge, pumping your load into her womb and dousing the lustful flames of her heat."); }
					else { textLP("\r\rUnfortunately you are simply too big for her to handle. Luckily though, she seems to be the resourceful type. With a nimble spring she wraps her arms around your shoulders and her legs around your waist so she can rock her sopping wet pussy along your "+cockDesc()+" cock"+plural(1)+". She shivers and moans deeply, leaking her wet juices down your length while you hump back in time with her. All the while you are savoring the feeling of her folds against you.\r\rWith her scent so strong around you and her heat seeping right into your skin, you don’t last very long. She senses it and quickly pulls back. Without wasting any time, she takes the tip of "+oneYour(1)+" "+cockDesc()+" shaft"+plural(1)+" and presses it just far enough into her cunt that the eruptions of your seed course deep into her."); }
					if (cumAmount() < 5000) { textLP("\r\rShe sighs gratefully as you let her down off your cock and she haphazardly rearranges her clothes enough to be decent. \"I'm sorry. I just needed to get that taken care of. I still go into heat even though I'm more Lupan than ever. Please take a few coins for your trouble.\"\r\rWith that she hurries off again, still looking the males up and down predatorially despite the cum very plainly dripping from under her skirt. And that leaves you alone in the smell of sex and heat to get dressed and make your way back."); }
					else { 
						textLP("\r\rShe looks down at you as you keep filling her, bewildered but growing very fond of the constant flow of seed into her belly. She moans softly as her body swells with your rich essence. Her whimpers grow louder and louder until she squeals with a third orgasm, this time flushing out some of your spunk onto your lap with her juices.\r\rOnce you’re finished, she climbs gingerly off your dick and massages her sore lips with an exhausted smile. \"Thank you so much,\" she whispers, pulling her clothes back into place as best she can around her now bulging belly, so stuffed with your baby batter that she looks pregnant already. \"It's been so hard to adjust to becoming a Lupan. I'm still not changed enough that my heat will go away.\"\r\rAgain hurrying to beat your response, she fishes some coins out of her pouch as well as a sizeable vial of some kind. \"Take this with my gratitude.\" With that she hurries off again clumsily, cum very plainly cascading down her legs and leaving you alone, surrounded by the smell of sex and a trail of your cum leading out of the alleyway."); 
						itemAdd(114);
					}				
					doLust(-Math.floor(sen/2), 2, 1);
					hrs = 3;
					i++;
				}
				else if (chance == 2) {
					
					textL("You wander around Tieden, putting yourself on display and making sure your ");
					if (gender == 1 || (gender == 3 && percent() <= 50)){ textLP(""+cockDesc()+" bulge is noticeable under your "+clothesBottom()+"."); }
					else if (gender == 2 || gender == 3) { textLP(""+boobDesc()+" breasts are clearly visible under your "+clothesTop()+"."); }
					else if (gender == 0) { textLP("figure looks nice beneath your clothes."); }
					textLP("\r\rA young priest heads towards you, a gleam in his eye. “Excuse me, but you are exactly what we need.” His voice holds a note of desperation. “Would you join us in a ritual?” He looks in your eyes pleedingly. “No harm will be done to you of course. And you will get a compensation...”\r\rNeeding the money, you agree with him and follow him into a temple.\r\rYou enter a chamber in the side of the temple. It is a large room, dimly lit with candles, and sparsely furnished. In fact, other than a throne on a raised dais at the far end, currently occupied by an older man in fancy religious attire reading from a large tome, the only real piece of 'furniture' would be a leather-covered alter with two other priests behind it. You are instructed to disrobe and lay on your back on the padded and leather-covered altar so that your "+legDesc(2)+" are "+legVerb(2)+", a pad placed underneath your tailbone to leave your lower half raised, exposing your asshole");
					if (gender == 1) { textLP(" and "+cockDesc()+" cock"+plural(1)+""); }
					else if (gender == 2) { textLP(" and "+vulvaDesc()+" lips"); }
					else if (gender == 3) { textLP(", "+cockDesc()+" cock"+plural(1)+" and "+vulvaDesc()+" lips"); }
					textLP(", and you are desperate enough to comply. The two other priests secure your "+legDesc(8)+" with padded cuffs to rings at the two lower corners of the altar, then do the same with another pair of cuffs for your wrists, pulling your arms taut over your head, to attach them to the other end of the long altar. You instinctively struggle slightly, testing the strength of your restraints and find that you are now completely at their mercy.\r\rThe young priest nods to the older one, who starts to read from the book, chanting words in a sing-song foreign tongue. The other priests disrobe and take up positions around the altar and your bound form upon it. The young priest enters your view carrying a chalice, filled with what looks to be wine, although a faint scent suggested otherwise. Each of the priests take a sip out of the chalice, gulping in harmony with the chants of the old priest. Then after each of the clergy has had their turn with the chalice, he moves towards you. He stands to one side, the other priests closing rank around you, the old priest still chanting in the background.");
					textLP("\r\rThe three priests stand around you, as the young one carrying the chalice lifts it over your body reverently, then carefully begins dribbling the liquid on your nude form. A drop of the blood-red liquid lands in the middle of your forehead, and begins moving the chalice down your body, allowing a drop to land on your nose, then your neck, as he continues guiding the drops down your body.");
					if (lactation < 1) {
						if (gender != 1 || (gender == 3 && breastSize <= 3)) { 
							textLP("\r\rHe lets some drops fall over your "+boobDesc()+" chest, a single drop hitting each of your "+nipDesc()+"nipples in rhythm with the chants, which causes a warmth and a tingling sensation, making them very erect. He then pours some more of the ruby liquid, coating your cleavage with the stuff. The other priests move closer and start to lick the liquid from your breasts, making you squirm at the stimulation of the now very sensitive flesh being teased by their tongues. The young priest holding the chalice watches the spectacle, looking in your eyes, grinning lustfully. Then he raises a hand in a halting gesture, and the other priests stand back and watch him."); 
							nippleSize++;
						}
						else { textLP("\r\rHe lets more drops fall on your chest, over your nipples, which begin to tingle with a strange warmth, and watches as it flows down your chest. He moves further down, letting some of the liquid dip over your belly. Finally he reaches your nether regions and tilts the chalice further, letting the liquid flow out over your "+cockDesc()+" cock"+plural(1)+", which gets coated with the red liquid. It feels cold and hot at the same time on your cock"+plural(1)+", and you can do nothing but moan at the tingling sensation. The priests look lustfully in anticipation and listen to the chanting of the old priest. The younger priest pours out the last of the liquid in the chalice over your cock"+plural(1)+" and then puts it down, looking lustfully at you."); }
						textLP("The younger priest, who was carrying the chalice moves both his hands over you, he begins to chant in rhythm with the old priest, but he chants different words. The other priests arise, and you can see that all of their cocks are rock hard, throbbing precum and their knots are swollen. They position themselves around you: one close to your mouth, his musky odor mingling with the scent of the liquid that was dropped on your nose to produce a craving for the throbbing member with an intensity that surprises you; and the other priest positions himself "+legWhere(1)+" your "+legVerb(3)+" "+legDesc(2)+", his cock twitching so close to your ");
						if (vagTotal > 0) { textLP(" cunt"+plural(2)+"."); }
						else{ textLP("asshole."); }
						textLP(" The younger priest suddenly places his oddly warm and wet paw down and hits your belly, making you gasp as a warmth fills your loins. This gasp apparently is the cue for the other priests to act. The one standing close to your now eager mouth obligingly allows you to take in his entire shaft, the taste bringing out your feral nature, while the one poised "+legWhere(1)+" your "+legDesc(2)+" roughly impales your lower hole.");
						if (cockTotal > 0) { textLP(" The younger priest starts to stroke your now highly sensitive and throbbing erection"+plural(1)+" in rhythm with the chanting, grinning as your pre begins leaking out at the slightest touch."); }
						textLP("All of the priests fuck you in rhythm with the chanting, changing places in turn, fucking all of your needy holes. You writhe in ecstasy as your whole body is used, giving in to your baser instincts, straining at the cuffs which limit how much you can move in rhythm with their tempo. You start climaxing uncontrollably, over and over, too overcome by your lust to bother counting them, for what seems like an eternity. The chanting takes on more desperate note and then, on one final word, all four of them cum simultaneously, filling your every hole to overflowing, with the rest spraying on your body, ripping one final climax out of you, more powerful than the rest, before you pass out in a haze of sheer bliss.");
						if (vagTotal > 0) { doImpregnate(3); }
						doLust(-Math.floor(sen/1.5), 2, 1, 2);
					}
					else {
						milkAmount(1);
						textLP("\r\rYou can feel a single drop landing on each of your nipples. The liquid instantly mixes with your milk, causing your "+boobDesc()+" breasts to become even more sensitive, increasing their flow. The young priest continues to cover your nipples in the red liquid, drop by drop, watching how the they mix with your milk. He then turns the chalice further, letting the liquid flow over your breats covering them in pinkish mix of your milk and the red fluid.\r\rThe other priests start to fondle your breasts, causing you to moan as the sensitized flesh was further teased by their caresses, their chant mingling with your moans as they milk you. The other priest holds the chalice close to one of your nipples and you watch as they top off the half-full gem-encrusted container of the ruby red liquid with your milk, turning it a pinkish color as well.\r\rThe priests seems pleased, and each one takes a deep gulp of the mixture in turn before passing it to the next. They start praying after drinking the milk mix, and you feel somehow sleepy.");

					}
					textLP("\r\r\rYou awaken after a while and the young priest looks in your eyes. “Blessed be you for your participation in the ritual. We thank you for your generous offering.” He hands you a bag of coins. You leave the temple feeling very satisfied..."); 
					exhaustion -= 4;
					skipExhaustion = true;
					hrs = 4;					
					if (cockTotal > 0) { cumAmount();	}
					stats(0,2,0,1);
					i++;
				}
				else if (chance == 3 && (gender == 2 || gender == 3))	{
					textL("While you parade around a dark street corner in Tieden wearing your "+currentClothes()+", you are finally approached by a rather tall and grizzled Lupan male. After exchanging some coins with you, you’re led into a back-alley with him. Once out of sight, he grabs you roughly and kisses you hard, though difficult as it is with a muzzle. You can feel his long, rough tongue darting inside your mouth, the sour tinge of alcohol still apparent upon it. He takes the time to ");
					if (attireTop == 6) {
						textLP("explore your body with his hands. Through the latex, you can feel his attentions. His hands pay especially close attention to your breasts. You support yourself against a nearby bin, his muzzle going to your neck as he licks and tastes the sweat from your body. You can feel yourself getting damp, your pussy tingling in eager desire. You wait for anything, but, with a hint of disappointment in the back of your mind, he continues to feel his way across your body.\r\rFinally, he lets go of you and turns you around as you tempt him some with a wiggle of your ass. A grin spreads across his face as he pulls his cock out of his pants, the large tool having come from the sheath long ago. With your back turned, you wonder what he’ll do. The wait isn't long before he pushes the pointed tip against your latex covered pussy, making you moan in delight. After a few more seconds of rubbing up and down, he lowers himself slowly and begins to thrust back and forth against your pussy. You "+legVerb(4)+" your "+legDesc(2)+", giving him a fake pussy to fuck below yours. One which he begins to happily use. You can feel the large member against your thighs and rubbing your pussy, every so often hitting your clit which causes a shiver of electric pleasure to race up your spine. His thrusts began to increase, each time he almost pushes his knot through but stops himself. For you, time is lost as an orgasm rocks through your body. During this time, while the latex around your crotch begins to fill with your pussy juice, you feel his thrusts have gotten faster. There is a look of intense desire on his face, his tongue lolling out the side of his muzzle as he grips your waist tighter. \r\rYou can feel him getting close. With some effort, you manage to pry yourself away from his iron grip and get to your "+legDesc(6)+". You deftly begin to jerk his cock, using both hands to try and draw him to orgasm. It only takes moment, but soon you can feel his cock pulsing in your hands as he sprays you with his cum. At first it’s overwhelming, but you smile as you bathe in the creamy Lupan seed, letting it wash over you and your latex suit.");
						
						textLP(" His cock twitches a few times at the end before he puts it away. Satisfied, he leaves you in the alley, the thick scent still heavy in the air.");
						doLust(Math.floor(lib/4), 0, 2);
					}

					else {
						textLP("pull your "+clothesBottom()+" "+pullUD(2)+" out of his way before pushing you against a wall. You barely have time to put your hands out in front of you and steady yourself, your "+legDesc(2)+" "+legVerb(2)+" a bit as you realize his intentions. One of his rough hands moves along your waist for a moment as he manages to keep your "+clothesBottom()+" where he wants it while he pulls the waistband of his pants down. You smile knowingly at his rather impressive tool, which is already hard as a rock. His large knot is much bigger than a fist and it makes you squirm a little as you wonder if he’ll make you take that too. With no real warning he suddenly plunges himself into your already wet pussy, brutally shoving himself into you.");
						if (vagLimit() > 24) {
							textLP("\r\rYou were prepared for this. Your hungry cunt eagerly envelops and squeezes him. He grabs you by the waist now and begins to pound away into you with a great deal of force. You have been fucked like this before, but it still makes you bite your lip as you feel him push onto your back while his hands move to your breasts. He kneads and squishes them in his hands without remorse while his hips jack-hammer his thick cock into your depths. Very few times can you remember a fuck as great as this. Powerful waves of pleasure run through your body as you feel his hot breath on your neck. \r\rA sharp cry leaves your mouth as you feel something all too familiar... the strain of his knot as it pushes into you. It's then that the fast strokes of the Lupan become even faster and more powerful. You can barely contain yourself as plunges into you over and over again, his claws raking harshly over your skin; tomorrow's reminder of this encounter being etched into your skin brings you only more pleasure. You pant heavily, half in fear that this experienced lover is going to actually give you an orgasm, which only seconds later, hits like a rock. Your muscles tense up around him and you let out a small cry of pleasure as your eyes roll into the back of your head, but he does not stop or even slow down. \r\rEven after recovering from your climax, even after your pussy stops pulsing and trying to milk him, he continues on with his vigorous assault. It's only a front however. It is not long before his breath quickens and his pace becomes a bit more erratic. Just as he hits your buttons for one more climax, he plunges into you and you feel him reach his own. His cum fires into you like a hot stream and soon you find your belly distending a little bit as your pussy fills with his Lupan seed.\r\rIt takes him a few minutes to recover, catching his breath while waiting for his knot to deflate, but soon he pulls from you with a slurping noise and shoves his manhood back into his pants before leaving you in the alley.");
							doLust(-Math.floor(sen/2), 2, 2);
							doImpregnate(3);
						}
						else {
							textLP("\r\rWith a squeal of pain, you feel as he pushes against the entrance of your womb, your pussy stretches beyond anything you’ve ever experienced before. You look back and in the dim light, you realize that he’s not even fully in yet! Some still remains, as well as the painful looking knot. He mutters as he slowly pulls out of you. You turn around to face him, only to find that he is forcing you on your "+legDesc(6)+". \r\rSuddenly his cock is in your mouth, his hands grab you roughly around the back of the head! He thrusts hard and strong, the pointed tip of his cock assaults your poor mouth mercilessly. Even if you try to fight, you are no match for the Lupan as he manages to continue his relentless charge down your throat. You feel a strange pain in your jaw and realize that he’s forcing his knot into your maw as well! You struggle and protest, but eventually the large bulb jams into your mouth. It’s hard to breathe, but you quickly fall into a rhythm, breathing through your nose when you can to grab fresh air. Your hands lower to your snatch, which you begin to rub furiously as the intruder in your mouth continues to ram down your throat. It doesn’t take long for the Lupan to near his end. You feel him tense up and you gag horrendously as he shoves himself as far down your throat as possible. You can feel every pulsing vein of his cock on your tongue as you try to push him out, but to no avail. You can feel something hot spray down your throat and a somewhat powerful wave of nausea trembles over you. Once his knot deflates, he pulls from your mouth, pulses of his seed still spray from his cock, filling your mouth as it goes. You swallow it all quickly, if only to get some air. \r\rPanting harshly, you stagger to your "+legDesc(10)+" while he leaves.");
							doLust(Math.floor(lib/8), 0, 2);
							vagSize++;
						}
					}
					hrs = 1;
					i++;

				}
				else if (chance == 4){
					textL("You spend some time trying to look sexy out by the road when a paint-splattered carriage comes by.\r\rThe driver stops and looks down at you before asking, \"Are you really in need of coin?\". You swear the man looks like a hearse driver, but, you nervously give a little nod.\r\rThe driver gets down and slightly opens the doors before he says, \"Remember to get the subject in the wagon before...\" Before he can finish, some crazed looking Lupan girl bursts from the carriage and removes your clothes with unexpected precision and speed. You don't know what she was planning before the driver breaks in, \"Not out where the town is watching!\"\r\rThe girl slows to a stop and turns with the face of a scolded child saying, \"Okay...\"\r\rThey help you into the carriage and the driver makes some kind of note before setting out to some unknown destination. Upon arriving, you notice that there are paint marks on the house similar to those on the carriage. You are led inside and the girl slams a large canvas onto an easel in front of you and asks, \"Would you mind slowly turning around while I work?\"\r\rYou comply with the request and make one rotation before she declares that she's done. She rushes up and hugs you before presenting the completed painting. You're amazed she could paint you so accurately in such a short time... as well as the other stuff that appears to be violating you in several ways at once. You give the little painter a nervous smile before she rushes you out the door with a loud, \"THANK YOU!!!\"\r\rThe driver greets you at the door and gives a small jangling pouch, your payment for being a model. \"Let me drive you back where you were,\" He says calmly.");  
					hrs = 2;
					i++;
				}
				else if (chance == 5 && vagTotal > 0 && vagTotal < 3){
					textL("You wander around the area, putting on as lewd a display as possible until a male wolf notices you. He looks at you with intrigue and walks up to you. “Hello there. I take it you’re looking for some extra coins? Well, if you’ll follow me, I could use your ‘services.’ I might even make it enjoyable for you.” He tells you. You hesitantly nod, following the wolf to his home which happens to be a small den on the borders of town. He lets you come in first and shuts the door behind you.\r\rWithout warning, he pushes you to the floor. As you roll around to face him, he is already "+legVerb(2)+" your "+legDesc(2)+" open forcefully. “I’ve always wondered what a pussy tastes like.” He licks his lips as he gently removes your undergarments. You do nothing to oppose, remembering that you chose to give your dignity away for money, so you simply lay on your back, ready and willing for whatever he has in mind. He pauses to look at your pink slit, reaching out to lightly touch it. You coo softly at the feel, enticing him to go further. He takes his cue and presses his snout against your vulva. You moan softly as you feel his tongue stroke across your slit, yelping occasionally as his cold, wet nose flicks across your clit.");
					if (vagTotal == 2) { textLP("He notices your other slit, perturbed by the unusual addition, but not appalled. He pushes his fingers against it, stroking the additional entrance.");	}
					textLP("You pant deeply, your body almost immediately overcome with pleasure.\r\rYou take your breasts in each hand, vigorously massaging them as he pleases you. You raise your head to watch as he works his oral magic on you, sliding his tongue inside. You howl in ecstasy, writhing in bliss as dedicates his paid time to please you. He plunges his mouth deeper, pressing his nose hard against your clit, which only adds to the intense feeling.");
					if (vagLimit() > 12) { 
						textLP("\r\rHe then does something unexpected. You gasp as you feeling his entire snout enter your vagina. You twitch and slam your head left and right as he pushes his mouth");
						if (vagTotal == 2) { textLP(" and fist"); }
						textLP(" back and forth, essentially muzzle-fucking you. You moan loudly, your first orgasm already upon you. With a howl, you cum hard. Your inner muscles squeeze him as your love juice drip around his snout. The exotic smell and flavor only urges him to continue, pumping his muzzle back and forth, his tongue lapping your insides as much as possible");
						if (vagTotal == 2) { textLP(" as his fingers aggressively fondle your second cunt"); }
						textLP(", relishing in the mindless screams of sex you keep making.");
					}
					textLP("\r\rYou lost track of how many orgasms you had, but at last he withdraws, satisfied. “That was beautiful.” He kisses your snatch before helping you up, handing you back your clothes. “Thank you for your service. I trust you enjoyed mine, so I will also give you this.” He hands you a bag of coins and helps you out the door after you are redressed. You sigh happily, realizing that he was one of the best customers you may ever have.");
					doLust(-Math.floor(sen/2), 2, 2);
					hrs = 2;
					i++;
				}
				else if (chance == 6) {
					textL("After a short time of presenting yourself on the corner, a prospective client approaches. The appearance of the Lupan before you is quite enticing, the ruffled coat of her pure white fur nearly glowing. Why she would need someone of your skill is beyond you, as she would have no problems finding a male to satisfy her. The only thing out of the ordinary is she carries a large padded pouch with several lumps protruding from its opening. A quick exchange about the nature of her need lets you know why she has solicited your assistance, her lust making her giddy as she wags her puffy tail happily when you tell her that you agree.\r\rTaking your hand in hers, she guides it to her crotch and you notice something else which makes her quite unique. A smile spreads wide on your face as you knead her masculine bits and slide in close, taking one of her firm breasts and massaging it sensually through her clothes.\r\rThrough the groping and rubbing, you both strip each other of your clothing, leaving you both naked and pressed in close to one another. Once again, her giddiness takes over and she hands you the padded bag. Turning around and lifting her tail up high, she exposes herself to you. The warm slit of the eager Lupan glistens in the light and slowly begins to drip down to the street below. Her sac seems to pulse in anticipation of what is about to transpire as she yips out, massaging her breasts and looking at you with begging eyes.");
					textLP("\r\rThe clasp of the padded pouch unlocks easily and as you open it, you can see there is a plethora of fresh eggs within. All of the eggs are fully intact and fairly large. She giggles, seeing your gaze wander over the mass of white shells and she speaks softly to reassure you, \"Don't worry dear. I pay well for those from the Lizans. They all have thicker than normal shells so they won't break as easily. They are also all unfertilized.... at least so far.\" A soft giggle escapes from her as you move in close to her, gently rubbing her hot sex.\r\rIt's strange that someone would want the eggs put into them. You have the urge to inform her hard-shelled eggs can't be fertilized after they're already laid, but the customer is always right and so you press the pointed end of the egg against her sex.\r\rWith gentle pressure, you slowly push the egg inside her. The Lupan howls in pleasure as the egg spreads her cunt and she seems to grow hotter the wider she is opened up around it. Picking up another egg, you repeat the process of slowly shoving the eggs into her sex one after another. Her cock stiffens and the knot quickly swells under her as she moans out from the feeling of the white objects sliding up into her womb. The process gradually swells her stomach as more and more eggs join the rest. All your efforts make her even more aroused as her sex nearly squirts her dripping juices over you and a puddle forms underneath her spread legs.\r\rYou slow for a bit as her stomach looks as though it is going to weigh her down, but her strained voice cries out to you with a heated moan.");
					textLP("\r\r\"Keep going... ahnnn… put them all in me!\"\r\rYou are only to happy to oblige seeing her in such pleasure.\r\rFinally, after several minutes of pushing the eggs up into her, you slide the very last one inside and see a small object in the bottom of the bag. It seems to be a small dish with a spout on it. As her womb clenches down an all the eggs inside her, she tells you to pick it up and hold it under her dangling cock. As you do so, she arches her back and releases her load into the small dish with a lustful howl. Apparently, it wasn't meant for someone this productive. The dish quickly overflows with her hot cum and it pours out over your hands.\r\rShe pants as her cock still drips with spooge as she roughly massages her breasts. Feeling the afterglow set in after her powerful climax, the Lupan herm manages a single sentence through her moans. \"P...pour it into me...\"\r\rIn one final lewd act, you bring the dish from under her and spread her cunt with your fingers before pushing the small spout into her sex. She twitches and gasps as you tip it and pour her own hot seed into her womb. You notice a wide smile on her face as she imagines her thick load coating the eggs and hoping at least one gets fertilized.\r\rShe thanks you while trying to put on her clothes and gather up her things, her now very swollen belly making things all the more difficult. She hands you your payment before giving you a wink and a smile and before walking away, she says that she may have to seek you out to do this again sometime soon.");
					doLust(Math.floor(lib/4), 0);
					hrs = 1;
					i++;
				}
			}

			//Siz'Calit whoring
			if (currentZone == 4) {
				chance = Math.floor(Math.random()*(1+8-1))+1;
				/*if (chance <= 33) {
					textL("You walk around, hoping to catch someone's eye. A nondescript figure eventually approaches you, takes you out as an escort, and spends a few hours with you, resulting in nothing worth mentioning save your payment.");
					hrs = 3;
					i++;
				}*/
				if (chance == 1){
					textL("Hanging out at your usual spot, a male Felin saunters up to you. He gives you a silent, appraising look, lingering on your larger curves. \"Not the normal playmate here, are you? Well, you're good enough.\" You give a list of the services you offer but are quickly cut off. \"Whoa! I don't know where you've been or what you've done. I just want you to give me a simple handjob. If you do well, I might pay even pay extra.\" Accepting the offer, he leads you to an open-air lounge located on a sturdy tree. A quick look down says you're about 35 feet up with a nice view. He makes sure the entrance is blocked before approaching you again.\r\rThe Felin man whips out a larger-than-average dick, the tip covered with soft barbs. \"Let's play,\" he commands. Your hands tease at his small thorns which start swelling with arousal. Your fingers play up and down his shaft and a moan escapes both of your mouths. Lust begins to permeate the atmosphere as copious streams of his precum soak into your hands. You pump faster and faster, hands flying on his pulsing member. His thrusts jerk through your palms, sometimes coming close to your face or chest. After a minute of grasping at his large wang, you feel confident enough to take a hand from his cock to massage his churning balls.");
					if (dominant == 2 || dominant == 5) { textLP(" Your psuedo-hooves grope at the soft spheres. Somehow with his lust-riddled mind, he gasps, \"Wow, is this standard with you? You must be very popular!\""); }
					else if (dominant == 3) { textLP(" Fondling his sack with precise movements, he shudders. Bits of drool run down his chin as he groans with intense pleasure. \"Really good at this! Have you done this before?\""); }
					else if (dominant == 4) { textLP(" The fur of your paw tickles his sensitive scrotum. In between tugs of his penis, he clenches his whole body. \"Damn! Do- do that again!\""); }
					else { textLP(" You use your discerning fingers to hit all the sweet spots. He is having difficulty focusing his eyes; your handjob must be messing with his head. \"Oh man, this is the good stuff. UNF!\""); }
					textLP("\r\rA sharp movement of your hands stops him mid-breath. His big cock bulges obscenely as he comes closer to his climax. The barbs are almost fully erect and the vivid red color is amazing to see. \"Hold the base, quick!\" A tight constriction of the already large wang causes it to swell into a 12 inch monster. It looks less like a penis and more like a crimson barbed arm on the short man. \"OH YEAH! Now, over to the edge, before it gets soft!\" You two shuffle to the precipice, in plain view of those who would bother to look up for more than a quick look. At his command, you let go of his cock. He reels back as a massive orgasm shakes through him. Moans and groans come unrestrained from the hut as large spurts of off-white cum rain into the forest below.");
					if (lib > (ment + 15)) { textLP(" You can't help but attach your hands to that magnificent cock. The throbbing member beats wildly in your hand, warming it like a bonfire. You begin to pump that softly spiked cock without thinking, wishing nothing more than to keep that cum-hose spraying forever."); }
					textLP("\r\rThe stream of jizz dies down but the Felin is just standing there, caught in the aftershocks of an ultra-intense orgasm. Both of you back off to the center of the lounge when he comes to his senses once again. Luckily, no one noticed or came to scold you for the exhibition. That brazen display of primal lust has aroused you quite a bit!");
					if ((enticeMod + lib + ment)/5 > percent()) {
						textLP("\r\r\"Damn, you DID do good. Amazing, in fact. Payment is in those drawers. Like I said there's some extra underneath the cushions over there.\" He replaces his loincloth and walks out like a man on top of the world. He calls back, \"I'll try to remember you for next time, but no promises.\"");
						tempInt += Math.floor(percent()/5);
					}
					else { textLP("\r\r\"Well that was good. Payment is in the drawers there.\" He covers himself and saunters out just as he did before."); }
					doLust(Math.floor(lib/4), 0);
					hrs = 2;
					i++;
				}
				
				else if (chance == 2 && cockTotal > 0)	{
					textL("As you wait on the corner of a bridge in a somewhat less-traveled area of Siz'Calit, a woman catches your eye. She walks with an awkward step... and she's already half naked! She spots you and instantly rushes up to you. The woman grabs you by the shoulders and nearly screams, \"You! Fuck me! I need to be filled NOW!\"\r\rBefore you can even attempt to negotiate a price, she's pulling you onto the floor and pulling your "+clothesBottom()+" off. You've heard that Felin women were forward... but you were never expecting this! As she pulls "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+" up and pulls her thong to the side, you realize why. Her puffy red nethers are a tell-tale sign that she's in heat.\r\rFeminine juices drip from the Felin's cunt onto your "+cockDesc()+" erection as she slides herself on you. You wince and grunt a bit as her pussy is surprisingly tight and she wastes no time before starting to bounce herself up and down on you. Her loud moans echo throughout the area as she finally has what she desires. The heat-driven Felin pounds herself against you repeatedly, using you as a living sex toy.\r\rIt doesn't take her long to drive you, and herself, over the edge and her nethers clasp over your "+cockDesc()+" member tightly, coaxing out your climax. You groan loudly as you buck up into her, shooting your seed deep inside of her and pushing her to another climax. She claws your shoulder and holds onto you tightly, letting out a feral growl as her heat is finally satisfied.\r\rYou both lay there panting heavily, drenched in your own fluids and sweat, as she pulls herself off of you. Cum and juices drip on the street as she throws some coins into your lap. You watch as she staggers off in an almost drunken looking state, her groin covered in fem cum and a small amount of your seed runs down her thigh. \r\rYou can't help but smirk as you notice that her thong is still out of place.");
					hrs = 1;
					cumAmount();
					doLust(-Math.floor(sen/2), 2, 1);
					i++;
				}
				else if (chance == 3 && gender == 2) {
					textL("Walking along the bridges, you are stopped by a gorgeous felin woman. She looks you up and down and gives a nod, saying only, \"Come with me\".\r\rShe leads you to a small cabin on the outskirts of the city. She walks at a quick pace and you have to hurry to keep up with the woman as she doesn’t respond to anything you say. When you reach the cabin, she opens the door and gestures you in first. \r\rAlthough you suspect something is going on here, you decide to go on in. The instant you cross the threshold of the cabin, you feel a quick jolt of pain on the back of your head, and you fall with a thump. \r\rWhen you wake up, you find yourself in what can best be described as a dungeon. There are chains, ropes, and every kind of toy you could possibly imagine... even some you couldn’t! \r\rYou believe you are lying down, and you try to stand up. It is then that you realize that you aren’t lying down. You are chained to an X-cross and completely naked. You squirm in the bindings, only able to rattle the chains a little before you hear a door open.");
					if (ment < 65) {
						textLP("The instant you hear a door open, you begin trying to call for help, quickly realizing you are muzzled, but that doesn’t stop you from making muffled noises. You rattle the chains holding you fiercely, determined to let whoever has you know that you are fully awake. \r\rAs you continue your futile struggle, the woman who brought you here steps into your line of sight, a smile on her face. \"Oh good, you're awake. I was afraid I would have to begin without you.\" Her smile turns evil as she walks up to you. She grabs hold of your nipples and tweaks them painfully. A muffled whine escapes through the gag, one of both pleasure and pain. She continues to play with your nipples, massaging your breasts as well for a few minutes before putting a hand "+legWhere(1)+" your "+legDesc(2)+" and feeling how moist you are. \r\rYou squeak as she does this, squirming uncomfortably as she tortures your breasts. You give a short gasp when she feels "+legWhere(1)+" your "+legDesc(2)+" and you shake your head softly. This is met with a laugh and then the woman leaves your sight. You hear things being moved around. When she walks back into your vision, you simply stare at her. \r\rShe is wearing a strange suit, with feathers on the outside, and she has a strap-on too. She walks right up to you, hugging herself against your bound body. You realize, with a whine, that the feathers were placed in just the right positions that anytime you or she moved, they would tickle you. \r\rShe wastes no time in lining the strap-on up and then thrusting in hard. You are powerless as she pulls out, then slams it back in, over and over in a strong rhythm. It doesn’t take long for you to cum, the only thing faster were your tears of laughter.");
						textLP("\r\rYou have no idea how long she rode you or how many times you came as you lost count after the first few. You do know that she rode and tickled you until you passed out. You wake up back in town, neatly tucked behind one of the treetop stores. You are confused at first, but you gasp softly as the memories come back. Instinctively, You look down at yourself, seeing if anything unexpected had been done while you were unconscious. \r\rThe only thing that seems to have changed is that you have been redressed. There's also an additional weight in your pockets, someone has put a fair number of coins in them. Shaking your head, you make your way back to the main part of town, walking a little awkwardly to deal with the unexpected soreness you're suffering.");
						doLust(-Math.floor(sen/2), 2, 2);
						doLust(-Math.floor(sen/2), 2, 2);
						doLust(-Math.floor(sen/2), 2, 2);
					}
					else {
						textLP("\r\r\rThe instant you hear the door open, you stop squirming and concentrate on slowing down your breathing as someone comes down the stairs. You hear someone walking towards you, stalking almost. Before that person touches you, lightly tracing over your chest with a single sharp claw. \r\r\"Mmmm, you certainly were a good catch...\" she mutters as she traces her claw down your body, stopping right above your vagina"+plural(2)+". You hear her giggle and then feel her breath dance across your pleasure spots. You gasp, unable to keep your guise up but she doesn’t seem to care as her rough tongue begins to run over your wet slit"+plural(2)+". She giggles as you start to squirm and just when you are about to cum, she stops. She backs up and watches you for a moment. \r\rYou whine, trying to rub your "+legDesc(2)+" together. She's left you at the brink and you are unable to do anything. You look at the felin with pleading eyes, your gaze begging her to finish. You also try to ask with your voice, but it comes out as nothing more than \"Mph mm mphhh!!\" due to the muzzle secured tightly to your face. \r\rThe felin gives you a toothy grin, her eyes full of mischief as she walks out of your line of sight. You hear her going through her things for several moments, sometimes swearing lightly before she let's out a very restrained squeal of excitement. She must have found what she was looking for. When she returns, you see that she is holding two things, each covered by a small piece of cloth. \r\r\"Which do you want toy? Number one, or number two?\" she asks as she holds up each of the cloth covered objects. \"Nod once if you want number one, twice if you want number two,\" she then adds, after you fail to speak again.");
						doLust(Math.floor(lib/4), 0, 2);
						if (lust < 60) {
							textLP("\r\rShe gives a grin, pulling the cover from the first item to reveal a box full of white feathers. Your eyes go wide as you realize what she intends to do. You shake your head desperately as she walks towards you with two feathers, one in each hand. Your futile struggles do nothing but make her grin more. She laughs as she begins stroking the feathers all over your body. It doesn't take her long to find where you are most ticklish and assault those areas. You have no way of telling how long the tickling has gone on, hours maybe days for all you know. By the time she is done, your body is soaked with sweat and tears have left trails down your cheeks. Her occasional teasing of your vagina"+plural(2)+" causes thick streams of your sweet nectar to run down your thighs. \r\rShe takes a step back, smiling evilly as she looks at you before she vanishes from your sight again. You don’t see her come back, though you do hear her coming up from behind. In an instant, your face is covered with an odd smelling cloth. You're too tired to struggle and black out in seconds. \r\rYou wake up in a in a shaded part of town. At first, you are dazed and confused. The light streaming through the leaves stings for a moment before your eyes adjust. You blush heavily as the memories of your encounter return. You look down at yourself and find you are unhurt and dressed in your own clothes. You also notice that your wallet is a bit heavier. As you head back out into the light, you walk with a slight limp. Your body is a little sore from the feather treatment.");
							doLust(Math.floor(lib/4), 0, 2);
						}
						else {
							textLP("\r\rShe giggles softly, pulling the cloth off of the second item, revealing a lovely, thick strap-on. You gaze at the thing longingly. A whimper of desire manages to squeak past the gag. With an ecstatic grin, she pushes one end into herself before securing the harness around her waist and thighs. She rubs the tip of the thing as if it were a real cock, moaning softly before walking up to you and thrusting the the artificial penis deep into you. You explode at the first thrust, your juices flowing and oozing all over the toy. She continues to thrust long and hard into you, paying no heed to what she knows is only the first of many orgasms to come. You have no idea how long she fucked you. At some point, your mind simply could not handle the pleasure any longer, causing you to pass out. \r\rWhen you wake up, you find yourself back in town, tucked behind a small shop. You are dazed and confused at first, you feel like you've just woken from a nightmare you can't remember. You blush fiercely as the memories of your bound fucking begin flooding back. Looking down at yourself, you see that you are still quite wet, but you are dressed as well. As another surprise, you realize that your wallet is much heavier than before. With a sigh and a shake of your head, you continue with your day.");
							doLust(-Math.floor(sen/4), 2, 2);
							doLust(-Math.floor(sen/4), 2, 2);
							doLust(-Math.floor(sen/4), 2, 2);
						}
					}
					hrs = 5;
					i++;
				}
				else if (chance == 4 && cockTotal > 1) {
					textL("You stand at the corner of a highly populated area of town, making sure your "+cockDesc()+" dicks are tight against the fabric of your "+currentClothes()+". You hope that any of the female Felins in the area will notice your 'qualities' and that they're also in need of your services.\r\rAfter hanging around for an hour or so, a petite young girl walks to you and says, \"I have a bag of coins with your name on it if you can give me a night that will make me forget my now EX-boyfriend...\" The smell of her heat hits your sensitive nostrils, making you slightly more aroused. Without questioning anything related to her ex, you agree on a price and head to a hotel, which the client gladly pays.\r\rUpon reaching the room, she gets rid of her clothes, showing her young, but not quite childish body.\r\rShe pushes you onto the bed and gets on top of you, kissing you desperately. It's as if she's possessed by a feral need of having someone fuck her brains out. Her fondling doesn't last long though, as the itch in her cunt starts becoming unbearable. She pulls open your "+currentClothes()+" and gasps in amazement when she sees your "+cockTotal+" "+cockDesc()+" cocks.\r\r\"You're CERTAINLY going to make me forget that jackass, AND my heat!\", she says, aroused even further by the discovery of your special anatomy.");
					if (cockTotal == 2) { textLP("\r\rShe grabs your two hard, dripping shafts and puts them in the entrance of both her cunt and her ass."); }
					else { textLP("\r\rShe grabs two of your hard, dripping shafts and puts them in the entrance of both her cunt and her ass."); }
					if (cockSize*cockSizeMod <= 12) { textLP("She easily slides down your manhoods and meowls in ecstasy as she starts going up and down on them. Her youthful tightness pulls a number on you as you feel her insides sucking both of your members with desperation. Your climax is soon to come."); }
					else if (cockSize*cockSizeMod <= 24) { textLP("She forcefully shoves your manhoods in both her cunt and heine-hole. Her moans are a mixture of pain and pleasure as you stretch her further than she's used to. Her long tail swishes from side to side. Slowly, she begins to bobble up and down on your shafts, purring as she orgasms from having both of her holes pleasured by your "+cockDesc()+" cocks. Her youthful tightness pulls a number on you too, as you feel her sucking both of your members with desperation. Your climax is soon to come."); }
					else { textLP("She desperately tries to take you in, but your incredible size makes it impossible. She growls in frustration as she climbs off of you. \"Hmm... I can't say I didn't see this coming. After all, I NEED someone as endowed as you are.\" From her pocket, she pulls a small vial of a strange liquid, some of which she applies on her folds and butthole. She gets back on top of you and, this time, she slides your manhoods in with ease. Her anatomy is somehow now more elastic than before. The vial must have contained octopus jelly in it. After slowly inserting half of your lengths in her, she forces herself the rest of the way down and screams in pain as you see a bulge in the shape of your rod come out of the front of her belly. She puts her hands over the bulge and starts moving up and down in a hypnotizing rhythm. She screams in ecstasy as she has orgasm after orgasm. Her orgasmic contractions pull a number on you too. Your climax is soon to come."); }
					textLP("Up until now, the girl was the only one making any efforts, jumping up and down on your dicks. Nearing your climax, you firmly grab her hips and bring her to a sudden stop. Before she has a chance to say anything about your sudden actions, you stand with her still mounted on your "+cockDesc()+" cocks and slam her into the wall. Despite her complaints, you slam your hips against hers again and again, going faster every time. You both scream in exquisite pleasure as your muscles contract and you both reach an explosive climax. Your "+balls+" cum factories shake and quiver as the girl's holes suck them dry, your cocks gushing your "+domName()+" sperm inside of her. Her belly inflates as your cum pools in her womb and stomach, putting out the fire of her intense heat.\r\rAfter a few minutes of standing there, your anatomy deflates and after two audible pops, you hear splashing sounds as the combination of your fluids starts making a puddle at your "+legDesc(10)+". Carrying her in your arms, you lay her down on the bed.\r\rBefore leaving, you get dressed and grab your payment from her clothing.");
					doLust(-Math.floor(sen/2), 2,1);
					hrs = 2;
					i++;
				}
				else if (chance == 5 && vagTotal > 0) {
					textL("Your day has been passing very slowly as you try out a new spot. Some passerby have given you strange looks, but so far none have asked for your services. You smile as you look at a group of small children playing on the ground below. Watching them has you so distracted that you don't notice someone behind you until their hand grabs your butt.\r\r\"E-ex-excuse me.\" The hand's owner stammers out as you quickly turn around to see a young Felin male. He isn't very tall or broad shouldered, but he is still attractive in his own way.\r\rYou smile at him and grab his shoulder before he can try to run away. There's a group of three more young males at the far end of the bridge watching carefully. It's easy to see that this boy was being picked on by his friends. You ask about the other boys and he gets even more nervous.\r\rHe very rapidly explains that his friends dared him to do it. From his nervous blush you can almost see why. You giggle softly and give him a brief hug. Your gentle laugh continues as you feel his erect member pushing against your thigh. While he is still in your arms, you offer to help him with the problem that he has just developed. Your fingers close his mouth before he can even try to speak. You happily kiss his nose as he nods in agreement.\r\rYou offer your arm and allow him to escort you past the now dumbstruck trio of young felins as you head toward what is apparently his hut in the canopy. The inside is the usual disorganized mess of a bachelor. You don't notice anything too gross as you walk to his bed and sit down. You raise your "+boobDesc()+" breasts and ask him what kind of fun he wants to have.\r\rNot sure how to answer, he asks for you to tell him what you offer. He is almost dumbstruck as you begin to explicitly describe some of your favorite acts and positions while slowly shedding your "+currentClothes()+". You're naked long before you finish, but instead of stopping, you continue while helping him strip down as well.");
					if (cockTotal > 0) { textLP("\r\rHe looks at your dick in slight confusion but you tell him not to worry about it. Though you think he'd look pretty cute while taking a pounding from your "+cockDesc()+" cock, you won't use it on him unless he wants you to."); }
					textLP("Upon seeing his erection, you stop cold. It's not the world's biggest prick, but it looks simply gorgeous as you lean down and kiss the tip. You feel a rush of heat in your loins as you lick it gently and massage his balls. His pre dribbles lightly onto your tongue and you moan softly as you enjoy the taste. You know exactly what to do with this boy.\r\rHe is panting lightly as you stand, confused as to why you stopped when it was feeling so good. He soon figures it out after you lay down on his bed and "+legVerb(3)+" your "+legDesc(2)+" for him. He only hesitates for a fraction of a second before moving between your spread thighs and rubbing his barbed cock against your wet slit.\r\rThe young Felin pushes in and gasps as your hips meet. Your "+legDesc(2)+" wrap around his hips and you gently guide him through the first few strokes. The small barbs on his cock tug at your inner walls with each stroke. Normally you'd be faking your gasps and moans for your client's ego, but it's not necessary this time.\r\rYour passionate cries are nothing compared to his as he continues to pound into you. You're pretty sure that you can both be heard all the way down on the ground, but you don't care. The neighbors are probably screwing away, trying to complete with you and this young male.\r\rYou both let out blissful screams as things come to their climax. A smile lifts the corners of your lips as you watch his body tremble with each wave of his hot cum he fires deep into your cunt."); 
					if (cockTotal > 0) { textLP(" Streams of your own semen fly into the air and land mostly on your chest."); }
					textLP("You've broken in plenty of beginners, but this is one you probably won't be forgetting any time soon.\r\rTired from his exertions, you help him lay down and he pulls a bag of coins from beneath the bed.\r\r\"That was fun.\" He purrs softly as he puts the whole bag in your hands.");
					doLust(-Math.floor(sen/2), 2, 2);
					doImpregnate(4);
					hrs = 2;
					i++;
				}
				else if (chance == 6 && cockTotal > 0 && showBalls == true) {
					textL("Leaning against the side of a tall tree, you watch several Felin amble around, going about their daily routines within the sweltering jungle city. Standing with your arms up above your head, your arms flexing and showing off your midriff, you watch as several eyes turn in your direction with lustful glances coloring their faces. You smirk playfully at several males, teasing them with a saucy sway of your hips in the direction of the onlooking females to entice them. Sadly, no one takes the bait leaving you somewhat disappointed.\r\rSeveral more minutes of teasing nets you nothing but passing winks and stares. It looks like the hour is going to be a bust until you feel someone come up behind you. Your ears perk and you tilt your head to the side only to see a muscular Felin male looking you up and down.\r\rYour eyes gaze wantonly at his handsome face, big pectoral muscles, and long fluffy tail before they find their way down to the swelling mound between his legs. You lick your tongue across your lips and a chuckle pierces the space between the two of you as the Felin lifts his lips up in to a cocksure smile.\r\r\"How much for the hour,\" he asks with a deep voice, making your "+legDesc(6)+" feel a weak. You try to quote a price but before you can do so he grabs you around the waist, groping your plump ass and wrapping a hand around the base of your tail.");
					if (vagTotal > 0) { textLP("\r\rA hand sneaks its way up to your bosom where the Felin caresses each of your breasts. His fingers are just the right texture to make you croon as he rolls your nipples through your shirt.");	}
					textLP("\r\rTurning to see hungry eyes are on the both of you, the studly Felin male lifts and carries you away into a large clearing behind several clumps of bushes for some privacy. Once alone he tells you to strip for him. The forcefulness of his command is a turn on and you comply without hesitation. Pulling off your clothing, slow and leisurely to give him a chance to eye your goods, you stand naked before him and blush as his eye centers on your cock and balls.");
					if (vagTotal > 0) { textLP("\r\rThe throbbing sensation "+legWhere(1)+" your "+legDesc(2)+" feels like you could catch fire. Your pussy clenches as the Felin looks you up and down. His nose wiggles as he catches your feminine scent cloying the air between you and a rising flush crosses your face as you look to see the lust rising in his eyes. You reach a finger down to toy with yourself, pushing inside of your experienced nethers so much you gasp and bounce up on the end of your heels before rolling the digit around for a bit. Seeing your client looking at you with need you pull your moist finger out from your depths and lick over it with your tongue. The taste of yourself is both tart and yet sweet, and you pop your finger from your lips to offer it to the Felin for his opinion."); }
					textLP("\r\rYou aren’t prepared for what happens next as the Felin tackles you.\r\rHis large bulk hits your frame and thankfully the grass underneath your "+legDesc(10)+" breaks your fall. You look up with startled eyes but never get a chance to voice your curiosity at what the Felin thinks he is doing as he dives down onto your crotch. There’s no foreplay in his actions as the Felin begins to lap at your male sex with his raspy tongue while reaching out to palm your hefty balls swaying beneath. It seems like you've found the most aggressive Felin in the city and he’s about to take you for a long ride as his tongue digs into your slit and scoops out the precum trying to bubble up. The length of his tongue curls around and sucks you deep into his heated maw and by the gods do you hope that he keeps it up. Your balls feel like they want to burst but you hold on. After all, things have only just begun.");
					if (vagTotal > 0) { textLP("\r\rHis hand reaches out to hold onto your hips. The strength he displays makes you wiggle in his hold as he purrs at you before delving down to dip his tongue into your cunt. Like a straight shot the tip of his flexible organ goes past your entrance and into your love channel, spreading you open and digging deep as if looking for a hidden treasure. You wail when he presses up against something inside which makes your entire body go taut. The fingers at your sides clench into your body as he keeps you from flailing around while stuck on the edge of his tongue, and it proves to be the kind of struggle the Felin enjoys. He bobs his head and you wonder if that bright light in your eyes was the gates of heaven standing before you."); }
					textLP("\r\rWhile not exactly what you expected, you don’t fight him for control. Instead, you place your hands on his head and your fingers scratch his triangular ears tenderly while the Felin slurps and bobs his head on your cock like the pump of a well. Your eyes roll back into your head and you only have a moment to see the bright forested world around you before your lids slam shut as the pleasure becomes too much for you to bear.");
					if (vagTotal > 0) { textLP("\r\rA finger reaches up and moves next to his tongue to dance inside of your cunt. You suppress a shudder as he rubs over your sensitive spots again and again, stimulating you to orgasm. Moaning and grunting like a Felin female in heat you praise your momentary lover with a loud yowl and a slow clamp of your thighs as you press up as far as you can into his face."); }
					textLP("\r\rPanting from the dexterous and expert tongue rasping over your cockhead, you moan louder as you try to warn him of your approaching climax. His eyes look up at you, not that you notice with your own clamped shut, as he sucks harder trying to make you come as deeply into the back of his throat as possible. A shout of ecstasy breaks free from your lips, the only warning you can manage under the circumstances, as you pump forward twice and then flood the Felin’s mouth with your seed. Gouts of male nectar pour down his throat in rapid succession but finally, with several thick bobs of his throat later, the Felin pulls free from your now somewhat limp cock.");
					if (vagTotal > 0) { textLP("\r\rDown below your pussy clenches around his fingers as you have the most intense orgasm you have experienced so far. Your juices squelch out onto the Felin’s hand and tongue as you cum and cum for several seconds under the skilled teasing of your Felin client. The Felin seems not to be bothered as he slurps up your juice while grinning inside of your folds like a kid at a candy store. He presses his nose into you more and you cry out as his finger teases you through your climax, making you involuntarily shudder and cum again."); }
					textLP("\r\rYour "+legDesc(6)+" quake as your breathing becomes erratic before you slump back onto the ground in complete exhaustion. When you are able to get some measure of control over your body, you open your eyes and look up at the Felin adoringly as he pulls off of you to lick the mess on his lips. He smirks and wipes the side of his muzzle, some wetness still gleaming under the wake of your climax, before reaching into his pocket and handing you some coins.\r\r\"Thanks\", is the last thing he says before getting up and walking away, though not without his tail swaying at your tauntingly. You sit there for a second in awe but decide it’s too much of a bother to try and question things. Instead you look up at the sky with a smirk on your face.");
					doLust(-Math.floor(sen/2), 2, 2);
					hrs = 2;
					i++;
				}
				else if (chance == 7 && gender == 1) {
					var getCum:int = cumAmount();
					textL("While roaming across the wooden bridges, wiggling your "+buttDesc()+" rear in hopes of attracting some sort of attention, you pause as you think you see someone approaching you. It's difficult to tell at first, since the slim felin steps off to the side multiple times along the way, nearly changing his path hesitantly before coming back on course, but sure enough he makes his way to you. Dark hair hanging just past his head, with bangs hanging over his eyes as if to hide behind them, the purple-furred felin takes his time speaking up. \"H-Hello? Umm... I... I think you look kinda cute and might be interested in, well... you know.\" Not once does he look up.\r\rYou smile and nod, gently taking his hand in yours and letting him silently lead the way back to his place. When you arrive, he quietly mumbles, \"W-We're here.\"\r\rYou give him another smile to assure him there's nothing to be nervous about, but you're caught off guard as he begins to strip even before you do. His slender figure has hardly any tone, quite small and lithe overall, covered in an oddly purple fur. You're not sure if the color is natural or if he's just been rolling around in a pile of berries, but the color does seem suitable for his shy demeanor. Even the rings of black fur around his neck and tip of his tail are reminiscent of some sort of collar. And upon his chest is another patch of dark fur in the shape of an ankh that also seems rather odd. But, your curiousity over his markings is quickly dismissed as he pulls down his pants to reveal a half-hardened prick that seems more excited about the upcoming venture than he is. Until he turns towards away and bends forward, his tight butt spreading and tail lifting for your access as he steadies himself against the wall.\r\rStill surrounded by silence, you take his body language as an obvious hint and slide "+pullUD(2)+" your "+clothesBottom()+" as well and begin to rub some life into your "+cockDesc()+" rod"+plural(1)+". You close the distance and lean up against his back, softly running a hand up his spine to soothe his tensions. His tail flicks about in response, you tenderness actually elliciting a soft mewl from the quiet boy. Then you prepare to do what you came for.\r\r");
					if (cockSize*cockSizeMod < 14) { textLP("Taking "+oneYour(1)+" "+cockDesc()+" cock in hand"+plural(1)+", you guide it under his tail. You can feel him quiver beneath your body as you press yourself in, the warm hole tightening down on you."); 	}
					else if (cockSize*cockSizeMod < 28) { textLP("Grabbing up "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+", you angle it under his tail. He noticeably shivers as you drive yourself into his smaller hole, stretching him out. There is no sign of pain as his ass clenches down upon you, though his breathing has definitely increased in pace."); }
					else { textLP("Hefting up "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+", you point it in a general direction under his tail. A much louder mewl escapes his lips as you ram yourself deep into his hole, stretching him tremendously. His legs give out for a moment as his own thorny cock bounces below his belly from the pulsing beat of his heart, nearly climaxing right then and there. After a few moments to gather his wits, though, he doesn't seem to be in much, if any, pain, and adjusts his feet to regain his stance the best he can with your girth stuck in his backside."); }
					textLP("\r\rOnce fully engulfed by his flesh, you slowly begin to drag yourself back out. An erotic sigh accompanies your movements, the slender boy tensing beneath you. Which each subsequent thrust and tug of your member, he grows less and less silent, the air rapidly filling with louder and more frequent mewls and gasps. His legs quiver and dig into the floor while his claws scratch at the wooden wall. Eventually he even begins to thrust his rear back against you when you pull out, eagerly devouring your cock with a voracious hunger. His pointy prick drools with pre, swollen and ready to burst at any moment. Then, as your own pressure begins to rise, he slams back into you, clenching his ass tightly.\r\rHe drinks in your seed while his own flies up to the ankh on his chest, forming webs along his fur across the way. A loud cry of orgasmic pleasure defies his earlier disposition, fading in volume with your waning eruption, until he falls silent as he slumps to the floor, your softening cock slipping out.\r\r");
					if (getCum < 1000) { textLP("Hand pressed against his cum-filled belly, he breathes heavily and curls up on the floor in bliss."); }
					else if (getCum < 5000)	{ textLP("Cradling his swollen belly, so full of hot cum, he huffs and slowly curls up on the floor around his engorged girth in bliss."); }
					else { textLP("Hesitantly stroking his stuffed and distended belly with so much molten cum, he trembles slightly as more of it seeps back out onto the floor. He merely thumps his forehead against the wall, unable to lay down with his bloated state, and blissfully pants for air."); }
					textLP(" He meekly points up to a shelf with a bag on it. \"That is yours. Thank you... I'm just gonna rest here a bit~\"\r\rWiping yourself off and dressing back up, you thank him in turn, retrieving the bag of coins and taking your leave.");
					doLust(-Math.floor(sen/2), 2, 1);
					hrs = 2;
					i++;
				}
				else if (chance == 8 && gender != 0) {
					textL("You walk the swaying rope bridge around town, hoping to catch a customer. It doesn't take long before you are approached by a lean male feline. He's got the markings of a siamese cat and bright blue eyes that regard your "+bodyDesc()+" form with approval. Coins quickly change hands and he leads you into a dimly light house.\r\rHe begins kissing your form, his crotch grind against yours. You feel his erection against your ");
					if (gender == 1) { textLP("hardening"); }
					else if (gender == 2) { textLP("dripping"); }
					else if (gender == 3) { textLP("aroused"); }
					textLP(" sex. With a purr he leans in and begins to nibble your ears, causing your "+legDesc(2)+" to buckle with pleasure.\r\rAs your strength wanes he takes the opportunity to carry you to his silk canopy draped bed. He lays you down and pulls off your "+currentClothes()+" piece by piece, revealing your naked form. He eyes you, then crawls over you, grinding his hardened bulge against your crotch and rubbing your "+boobDesc()+" breasts. His bright blue eyes flick up at you, then he grins and begins sucking on one of your teats as his hand slips down and begins rubbing your sex.\r\rOnce you are aroused to his liking, he begins to strip down, revealing his two massive and completely hard feline cocks. You grin, he must have encountered something in the wild to give him two such large dicks. However you're not complaining. He strokes them both, grunting in pleasure. Then he lowers himself towards you and begins to rub his cockheads against your ");
					if (gender == 1) { textLP(""+buttDesc()+" ass. Without any warning he pushes both into your ass"); }
					else if (gender == 2 || gender == 3) { textLP(""+vulvaDesc()+" puss"+plural(16)+". Without any warning he pushes both into "+oneYour(2)+" slit"+plural(2)+""); }
					textLP(".\r\rYou groan in pleasure as you are penetrated by two cocks, and gasp with a mixture of pain and pleasure as he begins to rapidly push all the way into your hungry hole with a loud and satisfied sounding grunt. It doesn't take him long to hilt inside of you, his massive balls resting against your bottom.\r\rHe stays that way, letting your hole get used to his size, then he begins to hump into you. He starts slowly, then begins to pick up pace, moaning and gasping with each thrust into your quivering hole. As he fucks you, his hands reach around and begin to rub your ");
					if (gender == 2) { textLP(""+clitDesc()+" clit"+plural(2)+""); }
					else if (gender == 2 || gender == 3) { textLP(""+cockDesc()+" cock"+plural(1)+""); }
					textLP(".\r\rEach thrust begins to pick up pace and his moaning grows louder as he pounds into your hole. Then with a loud yowl his thick and hot seed spills out of his both his pricks and into your ");
					if (gender == 1) { textLP("ass"); }
					else if (gender == 2 || gender == 3) { textLP("pussy"); }
					textLP(". Even through his own climax, he keeps rubbing your tender arousal, and brings you to orgasm, making your sexual fluids spill all over the bed.\r\rHe slowly pulls, out grinning at you. \"So, have you ever had a fuck like that sexy?\" he asks, sounding on the arrogant side about his size and skill in the sexual fields. As you turn to leave he presses a few more coins into your hand.\r\r\"A bonus, you're a good fuck.\" he tells you before he steps aside to let you leave his home.");
					if (vagTotal > 0) { doImpregnate(4); }
					if (cockTotal > 0) { cumAmount(); }
					doLust(-Math.floor(sen/2), 2, 1, 2);
					hrs = 2;
					i++;
				}
			}

			//Oviasis whoring
			if (currentZone == 6) {
				chance = Math.floor(Math.random()*(1+3-1))+1;
				if (chance == 1 && cockTotal == 1) {	
					textL("You look around the desert town and smirk as several male and female Lizans eye you wantonly. Scales of various colors gleam as you walk down the middle of the street, wagging your plump ass at potential clientele. Many of the males watch you with lust clearly shining on their faces. Your eyes catch glimpses of more than a few of them talking to others around them while nodding in your direction; the generous bulge "+legWhere(1)+" your "+legDesc(2)+" puffs up some as you see two Lizan males walk up to you and ask you if you’re selling what they think you are. You nod to them and soon find yourself being pulled away from the growing crowd you have amassed.\r\rThe two males take you to a quiet spot inside of what you assume to be a recreational cave area, the scent of sex drifting strongly along the walls making your nose itch, before asking you to strip for them. You smile amorously at them both, reaching down to rub the lumps of their tenting loincloths before you do as you have been asked. Slowly you strip out of your clothes and present yourself to them.\r\rThe two males circle around you, flicking their tongues out across your body as they survey the goods they have just brought. Hands reach out together for your cock and the two males stroke you gently, urging get you to moan for them, one of the Lizans going even so far to stroke across your balls to tease you. The tongues of the two males caress your neck and shoulders tenderly, both in an act of tasting and scenting you at the same time while muttering in your ears about what they are going to do to you.");
					if (vagTotal > 0) { textLP("\r\rOne of them palms your breasts while the other reaches down to finger your behind before chuckling as throaty moans escape you. A slim hand reaches behind your cock only to find your female slit weeping "+legWhere(1)+" your "+legDesc(2)+". The male who did so wiggles two fingers deep inside of you and hisses in pure Lizan passion as he watches you writhe around his fingers.");}
					textLP("\r\rYour "+legDesc(6)+" feel like jelly as they begin quiver. A hand pushes you down onto your "+legDesc(6)+" and without having to be told, you reach up to relieve the Lizan in front of you of his loincloth. A pair of plump, tapered shafts rise up before your eyes, making you almost giddy as the scent of aroused male floods your nose. Behind you the Lizan shuffles himself out of his loincloth and presses himself up against your tailhole, and it is then you feel another pressing against your hole. The presence of four cocks split between your ends makes you groan from the heat as the pair of cocks continue hot-dogging your rump while the others dangle in front of your very eyes. There are no words needed as the two males pull back to line themselves up with your holes; your mouth eagerly opens to receive its due and then you find yourself suddenly filled from both ends with twice the number of throbbing appendages you have been hoping to receive for the last hour.\r\rThe Lizan in front of you fills your mouth quickly as he sinks himself into the warmth of your throat, the twin heads sliding against ahead other as they breach your throat. You gag from his size before catching yourself, your throat stretching to accommodate his girth. His balls under your chin feel like heaven as the Lizan taps his hips into your face over and over, the sensation of taking two cocks into your gaping mouth making you feel so debased and yet so powerful as you manipulate his arousal with a few flicks of your tongue. Your eyes look up and you watch your client’s face indulgently as he loses himself to his passions.\r\rBehind you the Lizan at your rump shoves himself into your ass with a single powerful stroke of his pelvis, the two cocks fighting against each other as they slither into your tight hole. He seems to shudder, as though this is his first time having someone from behind, but then he begins to hump you in earnest. With only a grunt for a warning, almost like a machine, he lets loose long pent up sexual frustration in quick, bursts. His cocks may be thin individually, but as both piston in and out at the same time the dual sensations are enough to reach up into the special place inside of you that makes your ");
					if (skinType == 2) { textLP("fur stand up as he fucks you with furious humps of his hips.");	}
					else { textLP(""+skinDesc()+" tingle as he pounds into your anal vent with growing force."); }
					if (vagTotal > 0) { textLP("\r\rYour cunt is forced to spread wide as the Lizan behind you suddenly slips one of his cocks from your ass and takes your feminine sex at the same time as your ass. He pauses for a moment to groan at the two different sensations and then begins to pump into you with mighty strokes of his hips. His thighs flutter like a moth's wings against your rear as the Lizan uses every one of your rear orifices thoroughly. His cocks seems to find all the right spots inside of you, pressing up against you as your juices leak out from "+legWhere(1)+" your "+legDesc(2)+". The passion is so strong it pours around his shaft like a fountain as your pussy grips him oh so tightly, your ass clenching around his other cock.");  }
					textLP("\r\rThe heat from your combined bodies draws out the scent of the frenzied lustful arousal between the three of you and it quickly reaches the point where it feels like a drug making you almost dizzy. Your rock-hard cock "+legWhere(1)+" your "+legDesc(2)+", dripping pre down onto the cave floor, seems to almost swell to the point of bursting as the cocks inside of you grow quicker in their ministrations and harder in their forcefulness. Your nose almost hurts from being mashed so tightly into the Lizan’s groin in front of you and your ass starts to feel bruised as by the relentless smacks of the rutting male behind you. You decide to speed this up and put all your skills to the test to bring these two off.\r\rA couple of shouts later, you grin in triumph as warm male cum slips inside of your holes and you drink the frothy spooge down hungrily as the two Lizans offer you their thanks for all your hard work.\r\rThe males breathe deeply as they come down from their mutual orgasms together and pull away from you so quickly their cum trails from both your orifices like white ribbons.\r\rWhen the moment between the three of you settles, the two Lizans help you up from the ground before all of you find your respective clothing. One of the Lizans offers you some coins for your efforts and to thank him you politely lick your lips, making a show of tasting the leftover cum from on the side of your face in gratitude. The two males run off together back out into the desert town, leaving you alone and somewhat cold as a draft enters the cave. Hotfooting it out of the cave a few seconds later, you gleefully count your coins up and grin to yourself for a job well done.");
					doLust(-Math.floor(sen/2), 2, 1);
					hrs = 2;
					i++;
				}
				else if (chance == 2 && gender == 1) {
					textL("Either feeling a little short of cash, or because it's a way to have fun and make some gold, you have decided to sell your body. Donning your "+currentClothes()+", you stand on a corner of the hot streets of Oviasis, presenting your form for all to admire. Your "+cockDesc()+" package attracts many lustful gazes, however it seems today's whoring will not pay off.\r\rAs you are about to give up for a while and go find something more interesting to do, like eating, a young femmie male lizan wearing a simple pair of shorts approaches you. His scales are mostly a dark shade the color of deep night, however he also possesses an array of dazzling white tiger stripes. These markings set off his brilliant copper eyes, while his dark scales hide his blush as his eyes drift to your crotch.\r\rHe stumbles over his words as his glittering copper eyes scan you up and down, noting your attributes with apparent satisfaction. As he draws closer you notice a massive bulge in his shorts. He's obviously quite horny, and your body appears to be making him even more so. Not caring the both of your are clearly visible in public, he drops his pants to reveal two massive cocks.\r\rTo your surpise, he doesn't proceed to bend you over and pound you senseless with his two foot long dicks. Instead, he bends over and spreads his cheeks for you, looking over his shoulder in a sultry and submissive manner. He shakes his cute little tush at you, begging for a good fucking. Seeing his winking asshole makes your "+cockDesc()+" cock"+plural(1)+" stand at full stiffness. \r\rHe shakes his ass again and you place your hands on his round cheeks, then press the head of "+oneYour(1)+" "+cockDesc()+" ");
					if (catCocks > 0) { textLP("barbed"); }
					else if (wolfCocks > 0) { textLP("tapered"); }
					else if (horseCocks > 0) { textLP("flaring"); }
					textLP(" cock against his cute little asshole. As you rub against him, precum begins to leak out of your "+cockDesc()+" wang"+plural(1)+", lubricating his sweet round ass.\r\rHe nods to you and you push your "+cockDesc()+" rod into his eager ass, causing him to moan in pleasure as he takes your full length. You begin to pound into his squeezable butt, proceeding slowly at first and only giving him the head. Once you begin to develop a rhythm your pace increases, your thrusts penetrating deeper and deeper. With each grunting thrust he moans and quakes under you, his ass swallowing up your cock.\r\rYou pound all the way into his boyish ass, your "+ballDesc()+" "+balls+" balls slapping against his own massive nuts. As you do you feel your own sack tightening up as you prepare to deposit a massive load in his ass. With one last gasp you thrust all the way into him and spurt several ropes of jizz into his grasping hole. As you unleash your cum into him, his eyes roll back in pleasure, both his lizard cocks shoot several ropey strings of cum into the air.\r\rThe cute male grunts in pleasure as you pull your shlong out of his petite ass, leaving his asshole gaping wide. The lizan moans as your cum spills out, pouring from his ass. He turns back to you with a satisfied look on his face, then kneels and begins to lick the mess of cum off your softening member. Once you're clean, he stands up and presses some coins into your hand. \"Thanks, that's the best fuck I've had in a while baby, \" He tells you with a wink. \"Totally worth it.\"\r\rYou notice that as he walks off he's moving in a rather dainty manner as a result of your reaming of his cute ass.");
					doLust(-Math.floor(sen/2), 2, 1);
					hrs = 2;
					i++;
				}
				else if (chance == 3 && cockTotal > 0) {
					textL("You wait around behind the bazaar, hoping to earn some coin, when the distinct feeling of eyes upon you takes over your mind. Scanning the area around you, you notice a young Lizan woman looking directly at you with desire in her shining yellow eyes. She walks towards you, her mesmerizing hips swaying about with each step.\r\rShe doesn’t have to say anything, and it is apparent you both know what she wants. She draws closer to you, immediately becoming intimate with your body and rubbing the base of your cock(s). Luckily it’s not a very busy night for the bazaar, so it’s unlikely that anyone will be around to catch you doing anything so lewd in public. She crouches down to take care of your "+clothesBottom()+" and pulls out your member"+plural(1)+", already growing erect. With a few strokes, "+plural(7)+" ‘up’ to any task you care to give to "+plural(9)+". She gently shoves you down onto your back and prepares herself, smiling down at you as she straddles herself over your waiting dick.\r\r");
					if (cockSize <= 28) {
						textLP("\"I hope you don’t mind, I just prefer it this way,\" she says with a seductive smile, moaning as she finally lets herself drop down to take you to the hilt. She quickly undoes the buttons on her shirt, letting her ample breasts fall free for you to tend to as she helps herself to your length.\r\r");
						if (cockTotal == 1) { textLP("She slides herself along your manhood, gasping and whimpering as she thrusts herself upon you. You feel her warm lips against you every few moments as her gropeable rump lands against your thighs. You reach up to fondle her breasts, eliciting a loud moan from the young Lizan. Her tail sways back and forth hynotically, eventually stopping to wrap around one of your legs."); }
						if (cockTotal > 1){ textLP("As she rides one of your cocks, she wraps her tail around the rest, the stimulation making sure you’re as satisfied as she is. For a while, she continues stroking your other members with her tail, but she soon grows tired of having only one of her holes plugged. As you feel her tail release its grip, you notice she’s stopped at the tip of your cock. Before you can say anything, you feel the tip of another member prod at her asshole, your precum and her pussy juices providing enough lubrication to make this comfortable for the both of you. Then, your other cock easily glides through her backdoor as she groans in intense pleasure."); }
						textLP("\r\rSoon, her movements become faster and more erratic as she draws closer and closer to her orgasm. Her motions slow as she begins to shudder, arching her back as her orgasm hits with a loud, lengthy moan. During her last movements, you feel the telltale pressure of an orgasm rushing through your dick(s). She clings tightly to you as your cock(s) erupt inside of her, filling her with your cum.\r\rAfter a brief period of rest and recover, the mysterious female rises from your tangle of limbs and passes you a pouch of coins. \"Mmm, that was a lot of fun. I’ll have to tell my friends about you!\"");
					}
					else {
						textLP("To her mild disappointment your pride is too large to fit inside of her. After a moments deliberation she decides to slide herself along the length of your member instead, her juices providing more than enough lubrication to make this process easy. She teases the tip of your cock with her fingers, stroking it lightly as precum starts to drip out. \r\rShe quickly undoes the buttons on her shirt, letting her ample breasts fall free to engulf your cock as she rubs herself along your length. As you feel her plush lips sliding across your giant dick, you feel the telltale pressure of an approaching orgasm. Soon, you are unable to keep yourself from spilling your seed and quickly notify her as she moves herself along your lengthy manhood.");
						if (cockTotal > 1) { textLP("\r\rAs she rides one of your cocks, she wraps her tail around the rest to make sure that you’re as satisfied as she is. Unfortunately for her, your dicks are too large to fit inside any of her orifices so she’s stuck rubbing between your throbbing members."); }
						textLP("\r\rAs soon as she realizes that you’re about to cum, she fits as much of your penis into her mouth as she can and lets you spray load after load into her mouth. She isn’t able to swallow all of it, but she’s satisfied enough to pay you for all your hard work.\r\r\"Mmm, that was a lot of fun. I’ll have to tell my friends about you!\"");
					}
					doLust(-Math.floor(sen/2), 2, 1);
					hrs = 2;
					i++;
				}
				else {
					textL("You walk around, hoping to catch someone's eye. A nondescript figure eventually approaches you, takes you out as an escort, and spends a few hours with you, resulting in nothing worth mentioning save your payment.");
					hrs = 3;
					i++;
				}
			}

			//Sanctuary whoring
			if (currentZone == 12) {
				
					textL("You walk around, hoping to catch someone's eye. A nondescript figure eventually approaches you, takes you out as an escort, and spends a few hours with you, resulting in nothing worth mentioning save your payment.");
					hrs = 3;
					i++;
				
			}
		}
		textLP("\r\r\rFor your efforts and skill, you have gained "+tempInt+" coins!");
		doCoin(tempInt);	
		doEnd();
	}
}
 



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
			if (buttonChoice == 6){	doSoftlik(); }
			if (buttonChoice == 1){	doForest();	}
			if (buttonChoice == 7){	doDairyFarm();	}
			if (buttonChoice == 10){ doPlains();	}
			if (buttonChoice == 9){ doValley();	}
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
			if (buttonChoice == 6){	doFirmshaft();	}
			if (buttonChoice == 3){	doPlains();	}
			if (buttonChoice == 5){	doSavanna(); }
			if (buttonChoice == 9){ doDesert(); }
			if (buttonChoice == 11){ doOldCave(); }
			if (buttonChoice == 1){ doValley();	}
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
			if (buttonChoice == 6){	doTieden();	}
			if (buttonChoice == 5){	doLake(); }
			if (buttonChoice == 7){	doForest();	}
			if (buttonChoice == 10){ doJungle(); }
			if (buttonChoice == 11){ doValley();	}
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
			if (buttonChoice == 6){	doSizCalit(); }
			if (buttonChoice == 2){	doJungle();	}
			if (buttonChoice == 7){ doSavanna(); }
			if (buttonChoice == 9){	doBeach(); }
			if (buttonChoice == 11){ doDesert(); }	
			if (buttonChoice == 3){ doValley();	}
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
			if (buttonChoice == 6){	doOviasis(); }
			if (buttonChoice == 2){	doDesert(); }
			if (buttonChoice == 3){	doDen(); }
		}
	}
	if (currentZone == 12){
		viewButtonOutline(0,0,0,0,1,1,0,0,0,0,0,0);
		viewButtonText(0,0,0,0,1,1,0,0,0,0,0,0);
		buttonWrite(6, "Sanctuary");
		buttonWrite(5, "Cave Descent");
		doListen = function():void{
			if (buttonChoice == 6){	doSanctuary(); }
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
		






/**********
 *Dungeons*
 **********/

function doDungeon():void {

	//Cave Descent
	if (currentDungeon > 1000 && currentDungeon <= 1010) {
		doOldCaveDescent();
	}

}

function doOldCaveDescent():void{ 
	if (currentDungeon == 1001 || currentDungeon == 1002 || currentDungeon == 1003){
		if (defeatedMinotaur == false) {
			textL("With the lantern allowing you to actually see where you're going, you're able to venture much deeper into the old cave. It is surpisingly long for a cave that doesn't open up into a large cavern and there's not terribly much of note either, nothing you could have accidentally bumped into. The only thing particularly interesting are holes that line the bottom of the walls that angle downward, as a sort of natural drainage system for fluids. Otherwise, things are just rather... humid and slimy. It's not something you think too much about, however, as your light eventually begins to glisten off of the back wall of the cave, finally having reached the end. Or so you think it's the end.\r\rAs you reach the back wall, you notice another cave branching off. Yet, it's not exactly another cave. From the way the stone is hewn and the entrance is elevated from the normal floor of the original cave, this appears to have been carved out. You step up inside and immediately notice... There's stairs going down. Since ventured this far in, you continue on, walking down the spiraling staircase.\r\rThis passage appears to be ancient, with many of the steps rather worn from all the footsteps. The walls are slightly warped and scratched, but otherwise in good condition for their age. And they just keep going down and down and down... You quickly lose count of how many steps you've descended and it just becomes a relentless trek downward until... you find a room!\r\rAlthough, it's not much of a room... Rectangular, somewhat large, lighted by a couple torches and relatively boring, with another stairwell against the opposite wall. This is just a sort of waypoint along the stairwell... But it's not empty either.");
			doNext();
			doListen = function():void{
				textL("\"Who go there?!\" A loud grunting voice bellows in your direction.\r\rYou blink at first, the hot and smelly breath catching you off guard, but you quickly grow aware of the large figure towering before you. Large horns nearly scraping the ceiling, the bulky muscular man before you stands in your way. The head of a bull, the body of a human, and the crotch... bulging massively beneath a simple loin cloth, this monster does not look pleased.\r\r\"I am Minotaur!,\" You're not entirely sure if he's stating his name or his ancestry... \"I no know you! I guardian! You no pass!\"\r\rYou don't exactly have time for a diplomatic solution as the creature charges towards you, his massive hands balling up into hard-looking fists as he makes his intentions clear.");
				enemyID = 307;
				currentState = 2;
				enemyBaseStats();
				eMaxHP = eHP;
				doBattle();
			}
		}
		else {
			if (currentDungeon == 1001) { textL("You make your way back to the first 'checkpoint' along the large staircase in the old cave. The Minotaur you had bested is currently facing the wall, grunting and sweating, but quickly jerks to attention as he hears you enter. He quickly spins around to face you, acting like he had been busy guarding attentively the whole time. However, his big fat cock still throbs beneath his lazily drooped loin cloth, the aroused head poking out the side with a gob of pre drooling down. He pretends not to notice so he can tend to his duties, but exhales with a grunt as he sees you.\r\r\"Oh, just you. You can go, I know you now. Unless you want to try Minotaur again?\""); }
			if (currentDungeon == 1002)	{ textL("With the Minotaur sitting in a corner sulking over his loss, you're free to either go up to the surface or venture further down the stairs."); }
			if (currentDungeon == 1003)	{ textL("With the Minotaur laying on the ground, continuing to pleasure himself, you're free to either go up to the surface or venture further down the stairs."); }
			viewButtonOutline(1,1,0,1,0,0,0,0,0,0,0,0);
			viewButtonText(1,1,0,1,0,0,0,0,0,0,0,0);
			buttonWrite(4, "Firmshaft");
			buttonWrite(1, "Fight");
			buttonWrite(2, "Down");
			if (currentDungeon != 1001) {	Choice1.visible = false;	}
			doListen = function():void{
				if (buttonChoice == 2) {
					if (currentDungeon == 1001) { textL("The beast-man gives you a grunt. \"Fine.\"\r\rBefore you're even gone, he's already turning back to the wall and slipping a hand under his loin cloth... You head down the next set of stairs."); }					
					else { textL("You leave the beast-man to himself and head towards the stairs."); }
					doNext();
					doListen = function():void{
						currentDungeon = 1004;
						doOldCaveDescent();
					}
				}
				if (buttonChoice == 4) {
					if (currentDungeon == 1001) { textL("The beast-man gives you a grunt. \"Fine.\"\r\rBefore you're even gone, he's already turning back to the wall and slipping a hand under his loin cloth... You head back out to Firmshaft."); }
					else { textL("You leave the beast-man to himself and head towards the stairs."); }
					doNext();
					doListen = function():void{
						inDungeon = false;
						regionChange(2);
						doEnd();
					}
				}			
				if (buttonChoice == 1) {
					textL("\"Ahh, goody. Me need something to do!\" The beast-man begins to charge after you once more.");
					doNext();
					doListen = function():void{
						enemyID = 307;
						currentState = 2;
						enemyBaseStats();
						eMaxHP = eHP;
						doBattle();
					}
				}
			}
		}
	}
	
	if (currentDungeon == 1004 || currentDungeon == 1005 || currentDungeon == 1006) {
		if (defeatedFreakyGirl == false) {
			textL("Even more stairs than before, you keep going and going, deeper below the surface. You don't know how long it takes, but you do know it's a while before you find the end and step into another room. Just like before, it's nothing too grandoise, just a rectangular room hewn in the ancient stone. And at the far and, you see even more stairs descending down... However, something far more interesting grabs your attention.\r\r\"Ooo, look Mr. Snuggles, someone to pway with!\" The cute little girly voice cuts through the boredom of stairs like a sweet delicate knife.\r\rOnly as the girl gets up from sitting cross-legged do you notice a flash of her white panties. With the short frilly skirt that curls outward and shows off much of her supple legs, she must have been exposing her undergarments to you much longer as she sat on the floor. Although, you quickly try to dash that thought as you realize how young she seems to be. Barely over four feet tall, she hardly has any curves to speak of; a rather flat chest that hardly pushes out her soft shirt just by the slightly puffy nipples beneath and her hips more emphasized by the short bouncy skirt then their own girth. Her hair is bound on either side by big ribbons, pulled into two pigtails the dangle down past her shoulders, brushing across the puffed short sleeves of the otherwise tight-fitting shirt and exposing her large long ears that look almost goofy on her small form.\r\rAnd as she stands, her immaturity is further amplified by the large plushy doll she lifts with her. Nearly as large as herself, it looks like the minotaur you defeated in the previous room, except small and adorable. The thing seems to have seen a fair deal of use, however, as it's completely covered in patches of leather. You can't really tell how old it is, considering much of the leather looks brand new whereas other places look quite worn and faded, with quite a few gashes from some kind of scratches that should probably be patched up as well soon. Nevertheless, the girl hugs it close as she begins to skip around in a circle, her skirt bouncing with small glimpses of her undies as she frolics. \"We're gonna pla-ay~ We're gonna pla-ay~ We're gonna pla-ay~\"\r\rShe seems just so adorable that you almost feel obligated to play. That is... until she stops dead in her tracks and turns to you with a ferocious stare, her eyes looking far darker and her pigtails looking almost like wings as the hair curls outward sinisterly. Her nails dig into the leather of Mr. Snuggles, scratching it like all the other gashes you noticed, and she speaks in a much louder, much more snarling voice. \"IT'S BEEN YEARS SINCE I'VE HAD A GOOD TOY~\"\r\rUh oh...");
			doNext();
			doListen = function():void{
				enemyID = 308;
				currentState = 2;
				enemyBaseStats();
				eMaxHP = eHP;
				doBattle();
			}
		}
		else {
			if (currentDungeon == 1004)	{ textL("Returning to the second floor of the cave descent, the strange little girl sits on the floor playing with Mr. Snuggles in her lap. As she spots you, she lifts the plushy leather minotaur up to her eyes and turns it toward you, using it as a puppet as she speaks in a fake menacing voice. \"Grr, did you come back to play some more~?\""); }
			if (currentDungeon == 1005) { textL("The girl hides behind Mr. Snuggles, grumbling about how you're a \"Big fat meanie face\" and how she's \"GOING TO FEAST ON YOUR BONES\" for having defeated her, but she allows you to go as you please.");	}
			if (currentDungeon == 1006) { textL("The girl cuddles up with Mr. Snuggles, her hips still twitching and thrusting her enlarged clit into the doll, allowing you to go as you please.");	}
			viewButtonOutline(0,1,0,1,0,1,1,0,0,0,0,0);
			viewButtonText(0,1,0,1,0,1,1,0,0,0,0,0);
			buttonWrite(2, "Up");
			buttonWrite(4, "Firmshaft");
			buttonWrite(6, "'Play'");
			buttonWrite(7, "Down");
			if (currentDungeon != 1004) {	Choice11.visible = false;	}
			doListen = function():void{
				if (buttonChoice == 2) {
					if (currentDungeon == 1004)	{ textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you head up to the above floor."); }
					else { textL("She continues on with her doll and you take to the stairs."); }

					doNext();
					doListen = function():void{
						currentDungeon = 1001;
						doOldCaveDescent();
					}
				}
				if (buttonChoice == 4) {
					if (currentDungeon == 1004)	{ textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you head up the stairs and out of the cave to Firmshaft."); }
					else { textL("She continues on with her doll and you take to the stairs."); }
					doNext();
					doListen = function():void{
						inDungeon = false;
						regionChange(2);
						doEnd();
					}
				}			
				if (buttonChoice == 6) {
					textL("\"Ooo, really?! Yay~!\" The girl hops up to her feet, her skirt flipping up a little to flash you her panties. With Mr. Snuggles in hand, the excitement gets the best of her and she bellows out with her fiercer side. \"I'LL TRY NOT TO TEAR YOU TO SHREDS~\"");
					doNext();
					doListen = function():void{
						enemyID = 308;
						currentState = 2;
						enemyBaseStats();
						eMaxHP = eHP;
						doBattle();
					}
				}
				if (buttonChoice == 7) {
					if (currentDungeon == 1004)	{ textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you venture down the next set of stairs."); }
					else { textL("She continues on with her doll and you take to the stairs."); }
					doNext();
					doListen = function():void{
						currentDungeon = 1007;
						doOldCaveDescent();
					}
				}
			}
		}
	}

	if (currentDungeon == 1007 || currentDungeon == 1008 || currentDungeon == 1009) {
		if (defeatedSuccubus == false) {
			textL("The spiraling stairs just keep going down further and further... You don't know how far down below the surface you've traveled, there's no signs of being any deeper. The rock walls look the same, the steps look the same, even the air isn't as stale as you would expect such a deep cavern to be. Even as you muse over these thoughts, the fact that you have reach yet another room almost eludes you until your feet attempt to continue down non-existant steps and slam into the floor abruptly. You've reached another room, just like the others, except your eyes widen in hope as you see a door on the far wall, no more stairs! Yet, your attention is turned as a sweet feminine voice tantalizes your ears and blocks your exit.\r\r\"Well, well. Looks like I've finally got a visitor. So you managed to get past the other two guardians? That's quite the feat. To be honest, that little girl creeps the hell out of me.\"\r\rThe figure steps into your view of the door as she shudders at the thought. Her chest wobbles with two grandoise mounds, the things barely held back by an overburdened red leather bikini top. They look even larger when compared to her surprisingly thin waist that widens back out to some very ample hips, the cheeks of her rump jiggling erotically in the matching red leather panties and her long thin tail tipped with a fleshy spade waves behind her to accentuate the movement further. Garters descend down to help hold up her thigh-high high-heeled boots from a belt that lazily hangs around her waist, adorned with glowing vials and a long beatiful whip. To top the whole image off, her milky white skin, long black hair, short little horns, short bat-like wings, and eyes as red as her outfit, all amount to a single idea. A succubus. A creature popular in legends passed down from earlier generations. A creature that, according to the myths, is known for being extremely attractive and for sucking out the essence of men.\r\rSure you've encountered a lot of strange things, but this is something you already knew about and is something that supposedly did NOT exist. However, you don't have time to contemplate such things further as she proceeds to take her whip in hand and lash it against the floor.\r\r\"On the other hand, if you were able to beat those two, then you must be quite a treat for me. Don't worry, I won't hurt you... much. I doubt you'll be able to pass, but if you do it would be worth it. I'd probably like to try my hand at you again sometime.\" She gives you a wink before lunging in to fight.");
			doNext();
			doListen = function():void{
				enemyID = 309;
				currentState = 2;
				enemyBaseStats();
				eMaxHP = eHP;
				doBattle();
			}
		}
		else {
			if (currentDungeon == 1007) { textL("On the last floor before Sanctuary, the succubus toys around with her vials filled with the masculinity of various victims. She perks up at your presence, something to cut into the boredom. \"Hello again~ Don't worry. Now that you've defeated all of us, you're free to come and go as you please since you've shown you can handle yourself and won't be dead weight, so I won't fight you. Unless you want to go another round~\" She gives you a wink."); }
			if (currentDungeon == 1008)	{ textL("The succubus smiles at you as she leans up against the wall, trying to pretend like you didn't actually hurt her at all and waiting for you to leave so she can rub the achy bits.");	}
			if (currentDungeon == 1008)	{ textL("The succubus smiles at you as she leans up against the wall, trying to pretend like you didn't actually best her in the art of sex and waiting for you to leave so she can rub her tingly bits.");	}
			viewButtonOutline(0,0,0,1,0,0,1,0,0,0,1,1);
			viewButtonText(0,0,0,1,0,0,1,0,0,0,1,1);
			buttonWrite(4, "Firmshaft");
			buttonWrite(7, "Up");
			buttonWrite(11, "Fight");
			buttonWrite(12, "Sanctuary");
			if (defeatedSuccubus == true) {	Choice11Outline.visible = true;	}
			doListen = function():void{
				if (buttonChoice == 7) {
					if (currentDungeon == 1007) { textL("\"Alright, enjoy yourself~\" She returns her focus to her vials."); }
					else { textL("\"Take care~\" She seems relieved as you leave."); }
					doNext();
					doListen = function():void{
						currentDungeon = 1004;
						doOldCaveDescent();
					}
				}
				if (buttonChoice == 4) {
					if (currentDungeon == 1007) { textL("\"Alright, enjoy yourself~\" She returns her focus to her vials while you head up out to Firmshaft."); }
					else { textL("\"Take care~\" She seems relieved as you leave."); }
					doNext();
					doListen = function():void{
						inDungeon = false;
						regionChange(2);
						doEnd();
					}
				}			
				if (buttonChoice == 11) {
					textL("\"Oh, so you want to have another go at little ole me? Don't mind if I do; I could go for a nice snack~\" Her breasts bounce as she steps to attention, grabbing for her whip in anticipation of some excitement.");
					doNext();
					doListen = function():void{
						enemyID = 309;
						currentState = 2;
						enemyBaseStats();
						eMaxHP = eHP;
						doBattle();
					}
				}
				if (buttonChoice == 12) {
					if (currentDungeon == 1007) { textL("\"Alright, try not to do anything I'd want to do~\" She returns her focus to her vials."); }
					else { textL("\"Take care~\" She seems relieved as you leave."); }
					doNext();
					doListen = function():void{
						inDungeon = false;
						regionChange(12);
						doEnd();
					}
				}
			}
		}
	}
	if (currentDungeon == 1010) {
		textL("The succubus shakes off her defeat and congratulates you. \"Gosh, it's been a while since an outsider has made it through. I suppose you'll be fine then.\" She steps back to the door at the end of the room, grunting slightly as she uses a good deal of force to push it open.\r\rGazing through, you mouth goes agape. After all those stairs, this is faaaar more interesting.\r\rA massive cavern stretches out before you, carved and chipped down to provide room for a sizeable city. The door is high up on a wall, giving you a grand view of all the wonder, with wide steps leading down. There's buildings made from all sorts of materials - from wood to stone to mud to things you can't even identify - littering the expansive floor with some stretching up to the high ceiling. All sorts of alien-looking beings walk the streets, faces and races and bodies you never thought imagineable. They peddle their wares, peddle their bodies, play games, play with each other, they... do all sorts of things to entertain their wide variety of cultures. All of this deep, deep underground.\r\r\"Welcome to Sanctuary! This place has been down here a very long time and has become a haven for those who survived the Change. Err... you probably don't know what the 'Change' is, since you're the newest generation and haven't witnessed it... Well... nor have I... or has anybody down here.... If we had witnessed it, we wouldn't be here to tell about it.\" She gives a dry chuckle.\r\r\"Basically, every several decades, the world just... changes. The terrain... the wildlife... the people... And some of us manage to dodge it somehow, either being caught up in some magical mishap or being in the right place at the right time or whatever. We survive while the rest... disappear. And without anybody else, we venture around and many of us wind up gathering here. Sanctuary seems to be one of the places that remains unaffected by the Change. Some of the people down there have even survived multiple Changes!\"\r\r\"That's why us 'guardians' are up here. We aren't here to guard Sanctuary from 'evildoers' or whatever. We're just here to make sure unwary wanderers from the newest generations don't find their way down here and... get a bit more than they bargained for. Except for those rabbits, but they're a different story that I don't know; they supply us with semen in exchange for something, it's not a matter I pay much attention to.\"\r\r\"Anyways, since you've 'defeated' all of us, you're free to come and go as you please, since you won't be a liability. Other than that, I... can't really explain it much more. I'm just from the last generation, so I don't know everything. This job just lets me get a good amount of essence from stronger travelers, like yourself,\" the succubus snickers as she jiggles her vials, \"and they needed someone a bit more eloquent than the other guardians to explain all I've just said. Sooo... yeah. You can go down there and have fun on your own, I'm not paid to babysit. I'll be here if you ever want to go another round, though.\"\r\rThe succubus gives you a wink and gives you a nudge down the steps, allowing you to explore this hidden world on your own.");
		inDungeon = false;
		regionChange(12);
		if (foundSanctuary == false) { foundSanctuary = true;	}
	}
}


/*****************
 *Event Functions*
 *****************/

function gibberish():String{
	var tempStr:String = "GIBBERISH ERROR";
	var chance:int = percent();
	if (chance <= 33) { tempStr = "¤çÑ-| ÇôG+¦æ| EÆáÜaß pOƒ§· +îdvwqe 5dfÑ¯» º¤äÜ¦) ¼ÿæ¤h ·ƒ.";	}
	if (chance > 33 && chance <= 66) { tempStr = "Gs¿ fdfƒæ d§ew ¤-ÿö fs¤£· ÖÅ¢¥¬ ¼«¦ds?";	}
	if (chance > 66) { tempStr = "Tas ªÜhf¤ ÄäÑse çåÅû¿ ÑÜñ?Äsd Ü¥¦»¦ƒ ¦ÜÆ+¿æ£ we¤ rgdA-d»¦± Ü+#A¤$¤-ò. Fi?¤çÑK)^¤2 ges nec ¤?+ÿ• ºñ¡as frtr.";	}
	return tempStr;
}

function gibButt():String{
	var tempStr:String = "GIB BUTTON ERROR";
	var chance:int  = percent();
	if (chance <= 20) { tempStr = "Pk¿ºs"; }
	if (chance > 20 && chance <= 40) { tempStr = "Ju£¥)"; }
	if (chance > 40 && chance <= 60) { tempStr = "§hdsa"; }
	if (chance > 60 && chance <= 80) { tempStr = "Ö¦¤ÄT¦+"; }
	if (chance > 80) { tempStr = "Pancakes"; }
	return tempStr;
}

//Knothole
function knotholeMain(entering:Boolean):void{
	viewButtonOutline(1,0,0,0,0,1,1,0,0,0,0,1);
	viewButtonText(1,0,0,0,0,1,1,0,0,0,0,1);
	buttonWrite(1, "Upstairs");
	buttonWrite(6, "Drum");
	buttonWrite(7, "Dance");
	buttonWrite(12, "Leave");
	hrs += 1;

	if (entering == true) { textL("Inside The Knothole, you come across an almost primal sight.\r\r"); }
	else { textL("You return to the main floor of the Knothole, looking around to see what else you would like to do.\r\r"); }
	textLP("Many Lupans are gathered in the drum-house, beating on sturdy, yet beautifully crafted drums built into the very foundation, the source of the deep, hard thumps that got your heart racing in the first place now pounding at your ears.");
	if (ment <= 20 && entering == true)	{
		textLP("The few who look like they are done for the night that you can see look like they've either just ran a marathon, or have just released after being pent up for a month or five. And to you right now, those vacant drums are looking very inviting.");
	}
	textLP("To the right, you see more Lupans dancing to the beating rhythm. Pheromones and mixed scents fill the Knothole, making your heart race harder. As you start feeling the blood pump through your veins, almost in sync with the beat of the drums, you find your body bouncing slightly with the rhythm.");
	if (lust >= 50 && entering == true)	{
		textLP("As if there was a subtle draft, the scents coming from the dancers start to entice you to join them, the movement of bodies a welcome sight right now. Watching the movement of bodies and tails dancing to the beat, you find your body starting to sway with the flow of the dances, as if the very essence of the drum-house was moving it for you.");
		doLust(10,0);
	}
	textLP("On the left, you spot a wide staircase leading up, and another leading down. A good portion of Lupans are going to the other floors, some holding others on leashes linked to collars wrapped and locked around the necks of the ones being walked. Those on leashes heading up seemed to be more high-spirited than those heading down, which half seemed to be 'zoned out' or in a trance, following their Masters and Mistresses.");

	doListen = function():void{
		if (buttonChoice == 1) { knotholeUpstairs(); }
		if (buttonChoice == 6) { 
			textL("Stepping up to one of the many drums, you feel the beat seeping into your veins. Each thrum of the rhythm resounding through the structure can be felt through the floor. Your fists rise up above your head, not entirely of your will, before swinging down upon the drum. Your fists bounce off the head of the instrument, and both swing down on their own, your rhythm matching that of the one booming throughout the room.\r\rYou decide to add a few quirks to the beat, your hands dancing and slamming into the drum, adding a bit of a different style lead to the rhythmic percussion. Meeting your ear is the sound of more and more of the others around you start going with your new style, soon, the whole house thrums with the rhythm.\r\rAfter quite a while of beating your heart out almost literally, you slowly bring your drumming to a halt, feeling like you just ran a marathon. Yet, there's also a sensation as having just got out of a soothing, relaxing bath and massage.\r\rFeeling no more need to be here, you leave the Knothole and return to Tieden.");
			stats(1,0,-1,0);
			doLust(-20, 0);
			hrs += 2;
			doEnd();
		}
		if (buttonChoice == 7) { 
			if (percent() <= 50) {
				textL("The beat of the drums and movement of the dancers pull you to the crowd, your heartbeat racing hard as your body starts moving.\r\rAt the edge of the crowd, your "+legDesc(10)+" hit the floor with the rhythm, your "+legDesc(2)+" pulsing with each beat of your thumping heart. Your arms bent at your sides, bouncing with your body, the flow of the dancers taking you in, your dance becomes one with the heat and movement of those around you.\r\rAs the drums start thrumming in a more graceful cadence, the dance of everyone around you, and yourself, takes on a smoother, gliding turn. A long stride, harsh stomp, left twist, right glide double stomp. Your "+legDesc(10)+" slam the ground with the drumbeat, the floor vibrating as everyone does so as well.\r\rA good long time of dancing harshly and calmly leads you to the edge of the group again, the dance eventually driven from your body, leaving you feeling exhausted, yet incredibly invigorated.\r\rFinding your time done for now, you leave the Knothole, wiping off the sweat collected on your body.");
				doLust(-15, 0);
				exhaustion += 3;
			}
			else {
				textL("The draw of the dancers pulls you to them, your body already starting to move with the enticing way they dance to the beat of the drums.\r\rReaching the edge of the group, your motions start to match theirs, your heartbeat already racing and pulsing throughout your body. Moving with the others around you, you find yourself being drawn further in, surrounded by bodies shifting to the rhythm. You also slowly come to realize that you feel those same bodies softly rubbing and grinding on yours…\r\rUndaunted, you continue dancing, matching the beat of those around you, until you come across a particularly inviting gesture of a fluffy Lupan tail brushing over your face, with the rump connected to said tail grinding against your hips. Another thing you quickly notice: not everyone is fully clothed, but not naked either, and the scent of pheromones comes to your nose.\r\rYour new dance partner continues to dance circles around you, almost always keeping contact with your body, be it with their tail, hands, or hips. Your hands and hips return the favor by matching their moves, grinding back into them, along with your rump.\r\rYour hands explore their body, finding a bare chest and a skirt over their legs and hips. Both bodies soon dance in sync, theirs pressing back into yours. You could have sworn you could hear them moan, but it's drowned out by the drums, and your hands explore the soft fur regardless. Your right hand moves down and slips under the skirt, finding a soaked pussy between a firm, soft pair of thighs.\r\rYour fingers stroke the soft lips, hips swaying back and forth to the rhythm, and the unoccupied hand keeping itself occupied with the soft mounds on her chest. Her hips grind harder into you, laying her head back on you in need. Your fingers stop stroking her cunny’s labia and start to wriggle in. Your tongue slides out of your mouth and licks her exposed neck, and you can hear her whimpers and moans with her mouth next to your ear.\r\rIn a burst of primal urge out of nowhere, you find yourself bearing your teeth and biting her neck through her fur, causing her to howl as her pussy clamps down over your fingers in ecstasy. Her howl rings out, with other Lupans in the area, a chorus of howls resounding throughout the drum-house. Once her pussy lets go of your fingers and your teeth no longer hold her neck, she slips away into the crowd, dancing with renewed energy.\r\rBefore you know it, you're back outside of the dancing group, with a pair of soaked fingers, and feeling exhausted from the dancing and surprisingly refreshed even though you know you haven't actually 'released'.\r\rWith nothing more to do save smell the woman's scent on your fingers, you leave the Knothole.");
			    doLust(-200, 0);
				exhaustion += 4;
				stats(0,0,1,0);
			}
			hrs += 2;
			doEnd();
		}
		if (buttonChoice == 12) { knotholeLeave(); }
	}
}

function knotholeLeave():void {
	textL("Finished with your time in the Knothole, you return to the fresh air of Tieden.");
	doEnd();
}

function knotholeUpstairs():void {
	viewButtonOutline(1,0,1,0,0,0,0,0,1,0,0,1);
	viewButtonText(1,0,1,0,0,0,0,0,1,0,0,1);
	buttonWrite(1, "Relax");
	buttonWrite(3, "Exhibition");
	buttonWrite(9, "Downstairs");
	buttonWrite(12, "Leave");

	textL("The staircase going up is wide, accommodating as many as five people side by side. With enough space, you make it up without bumping into anyone, though you're sure you felt some eyes on your rear as you climbed the stairs. Looking back, you don’t see anyone staring at you but you still sense eyes admiring your "+bodyDesc()+" figure.\r\rDismissing the odd paranoia, you look around the area, deciding to get accustomed to the environment. The room looks like it covers the whole area above the first floor. Pillars here and there support the roof, standing above pillars and supporting walls you saw below, though these ones have four iron rings midway up their height. Many of these rings sport Lupans, both male and female, chained to the pillars, mostly nude or wearing exotic clothing, and exposing themselves in erotic displays, looking like they are enjoying themselves in front of their audience.\r\rA large area of the room is taken up by rigs. X-crosses, suspension rigs, stockades, padded sawhorses, and cushioning on the walls with more iron rings and padded metal restraints. Aside the pillars and walls with the rings, there are several wooden posts standing in various spots around the room, half of those also linked to what looks to be more personal 'displays' of Lupans acting as pets.\r\rIn the area filled with rigs, there stands a small gathering as submissive Lupans toy, tease, get teased, beg, seduce, and outright presenting themselves for their audience. The apparent Dominants either stand or seat themselves on lavish sofas and chairs; a group of voyeurs enjoying the exhibitions.");
	doListen = function():void{
		if (buttonChoice == 1) {
			if (breastSize > 2 && hips > 2 && body < 20 ){ textL("Feeling the need to relax, you find an empty seat in the corner of the room that looks like you would be alone.\r\rThe moment you take a seat on the soft comfortable cushions, a dark gray collared Lupan takes notice of you and makes their way over to you. Slowly approaching you (and crawling on all fours), you notice that they are male, and he is avoiding eye contact with you, focusing more on your "+legDesc(10)+" and "+legDesc(2)+".\r\rReaching your corner of the room, the collared male kneels at your "+legDesc(10)+", keeping his eyes low and bows his head. “Would you like me to dance for you?” he asks almost indirectly, his voice sounding timid.\r\rYou consider for a moment, looking over the dark fur of the male's slender, nude frame before you."); }
			else { textL("Feeling the need to relax, you find an empty seat in the corner of the room that looks like you would be alone.\r\rThe moment you take a seat on the soft, comfortable cushions, a collared Lupan takes notice of you and makes their way over to you. Getting closer to you (and crawling on all fours), you notice that they are female, and she avoids eye contact despite you almost getting lost in her beautiful deep emerald green eyes.\r\rReaching your corner of the room, she kneels before you, pressing her bare chest out to display her ample breasts, showing her Lupan qualities to you. Her legs spread to expose her snatch between her legs, her hands on her legs with palms up. “Would you like me to dance for you?” she asks, still avoiding eye contact and keeping her head down, her tone of voice very timid.\r\rYou consider for a moment, looking over the dark fur of the female's slender, nude frame before you."); }
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					if (breastSize > 2 && hips > 2 && body < 20 ){ 
						textL("The male Lupan with a collar before you nods and slowly comes to a stand, keeping his head down. With the stand, you have full view of his endowment, an already fully erect deep-red canine cock, with knot and all at attention out of his sheath.\r\rThe beat of the drums below rumbles softly through the floor, being felt through your "+legDesc(10)+". Tapping a toe to the rhythm, the slender Lupan male before you counts himself down, then starts with a spin, and slide, giving you a very nice view of his furred ass.\r\rThe dance quickly turns erotic, his hands sliding over his body as his torso weaves in concert, putting on a rather arousing display for his audience. His tail sways with his motions, in rhythm to the drumbeat.\r\rThe collar he wears has a slight jingle of an oval, golden tag bearing his name. With how he moves, you don't get a good view of it, but you don't believe he is available for an owner anyway. Instead, you enjoy his display, watching the slender figure move and twist, showing off his supple ass and throbbing knotted canine shaft.\r\rAfter a couple hours of watching him dance almost nonstop to the ever-changing rhythm of the drum-house below, he is called by a female Lupan wearing a deep red corset and short skirt holding a couple of leashes. This woman you assume to be his owner and you watch as he obediently heeds her call, bowing to you before crawling back to her on all fours and letting her hook a leash to his collar.\r\rSeeing as you became rather aroused by his performance, you decide to leave the Knothole for now, leaving the male Lupan to his Mistress."); 
						doLust(Math.floor(lib/4), 0);
					}
					else { 
						textL("The female Lupan with a collar before you nods and slowly comes to a stand, keeping her head down. With the stand, you have a wondrous view of her supple bosom and damp pussy.\r\rThe beat of the drums below rumbles softly through the floor, being felt through your "+legDesc(10)+". Tapping a toe to the rhythm, the slender Lupan female before you counts herself down, then starts with a spin, and slide, giving you a very nice view of her soft and firm furred ass.\r\rThe dance quickly turns erotic, her hands sliding over her breasts and slender belly as her torso weaves in concert, putting on a rather arousing display for her audience. Her fluffy tail sways with her motions, in rhythm to the drumbeat.\r\rThe collar she wears has a slight jingle of an oval, golden tag bearing her name. With how she moves, you don't get a good view of it, but you don't believe she is available for an owner anyway. Instead, you enjoy her erotic display, watching the slender figure move and twist, showing off her firm slim ass and damp cunny.\r\rAfter a couple hours of watching her dance almost nonstop to the ever-changing rhythm of the drum-house below, she is called by another female Lupan wearing a deep red corset and short skirt holding a couple of leashes. This woman you assume to be her owner and you watch as she obediently heeds her call, bowing to you before crawling back to her on all fours and letting her hook a leash to her collar.\r\rSeeing as you became rather aroused by her performance, you decide to leave the Knothole for now, leaving the female Lupan to her Mistress."); 
						doLust(Math.floor(lib/4), 0);
					}
					hrs += 3;
					doEnd();
				}
				else {
					textL("Dismissing the submissive Lupan before you, you lay your head back and relax, listening to the dulled beat of the drum-house below and the mixed sounds of pleasure, conversation, and ecstasy around the large room.\r\rSometime later, you don't know how long, you take a heavy yawn and stretch, having your rest filled with wet dreams and imaginings of the events around you. Seeing not much else to do, you take your leave of the Knothole.");
					hrs += 1;
					doLust(10, 0);
					doEnd();
				}
			}
		}

		if (buttonChoice == 3) {
			textL("Feeling like showing off, you walk to an open area of the room, swaying your hips a bit.\r\rAlmost right away, you notice you've already caught someone's eye, relaxing on a bench. A smirk crosses your lips as your motions, now directed in their general direction, make your body sway and twist.\r\rWhile turned away from your observer, you slowly strip off your "+currentClothes()+", letting the outfit drop to the floor. The patron you are entertaining, now standing and a bit closer to watch, a Lupan male, nude, with a full erection and deep-red throbbing knot, raises his brow to your naked backside, intrigued by what he sees.\r\rWithout breaking stride, feeling the beat of the drum-house through the floor, and your "+legDesc(10)+", you swirl your hips and twirl, giving him a round-view of your naked body. This gets both his brows raised, and leaving him licking his lips as he watches.\r\rYour now-exposed rump has his attention now, his eyes following it whenever you spin and twist as you dance before him. Having a bit more fun, you inch closer to the Lupan, teasing with your ass as you wiggle it, only to pull it away.");
			doNext();
			doListen = function():void{
				if (gender == 2) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your lower lips. You wiggle your ass teasingly and spread your pussy lips wide, giving him a nice view of your nethers. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you wriggle a finger into your lips with a moan, starting to please yourself in front of the Lupan male.\r\rOne finger not enough, you push in another, pulling out a loud moan as you finger yourself, getting lost in the pleasure.\r\rWet, moaning, and so lost in yourself, you don't notice the male now behind you. He grabs your hips, making you gasp in surprise, your fingers pulling out of your soaking wet cunn"+plural(16)+". The next thing you feel, is a thick, canine shaft thrusting into "+oneYour(2)+" puss"+plural(16)+", a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your quivering lips.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your cunny drives you up towards your climax, not quite reaching it. Feeling him grip your waist and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your cunny stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your pussy feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
				if (gender == 1) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your stiffened shaft. You wiggle your ass teasingly and spread your legs wide, giving him a nice view of your tailhole. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you start to tease your cock, lightly stroking it with a few fingers, starting to please yourself in front of the Lupan male.\r\rThe teasing not enough, you grip your rod tighter, stroking faster, pulling out a loud moan as you finger yourself, getting lost in the pleasure.\r\rHard, moaning, and so lost in yourself, you don't notice the male now behind you. The next thing you feel, is a thick, canine shaft thrusting into your ass, a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your tight hole.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your ass drives you up towards your climax, not quite reaching it. Feeling him grip your waist, and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your tailhole stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your rump feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
				if (gender == 3) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your lower lips. You wiggle your ass teasingly and spread pussy lips wide and pressing "+oneYour(1)+" shaft"+plural(1)+" down "+legWhere(1)+" your "+legDesc(2)+", giving him a nice view of your nethers. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you wriggle a finger into your lips with a moan, your other hand stroking and playing with your throbbing cock, starting to please yourself in front of the Lupan male.\r\rOne finger not enough, you push in another, pulling out a loud moan as you finger yourself, getting lost in the pleasure, stroking your shaft harder and faster.\r\rWet, moaning, and so lost in yourself, you don't notice the male now behind you. He grabs your hips, making you gasp in surprise, your fingers pulling out of your soaking wet cunn"+plural(16)+". The next thing you feel, is a thick, canine shaft thrusting into "+oneYour(2)+" puss"+plural(16)+", a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your quivering lips.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your cunny drives you up towards your climax, not quite reaching it. Feeling him grip your waist, and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your cunny stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, your cock spraying your load all over the ground and pillar in front of you, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your pussy feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
				doNext();
				doListen = function():void{
					textL("A couple hours later, you wake up and find yourself laying on a bench, clothes stacked next to you, and feeling very relieved from the experience.\r\rGathering your clothes, and trying to stand, you wobble a bit, still feeling the fuck you had not long ago, your ");
					if (vagTotal > 0) {
						textLP("pussy");
						doImpregnate(3);
					}
					else{ textLP("ass"); }
					textLP(" dripping a bit from the cum still filling it as you -slowly- take your leave of the knothole.");
					doLust(-Math.floor(sen/2), 2, 2, 5);
					hrs += 2;
					doEnd();
				}
			}
		}

		if (buttonChoice == 9) { knotholeMain(false);	}
		if (buttonChoice == 12)	{ knotholeLeave(); }
	}
}




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

