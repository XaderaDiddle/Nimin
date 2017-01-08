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
 *		Hair Salon				   *
 *		Tailoring				   *
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
 *Statuses and Transformations	   *
 *General Descriptions			   *
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

/************
 *Hair Salon*
 ************/

function doSalon():void {
	bc();
	var buy:int = 0;
	viewButtonOutline(1,1,1,1,1,1,1,0,1,1,1,1);
	viewButtonText(1,1,1,1,1,1,1,0,1,1,1,1);
	i = 1
	while(i < 12){
		if(i != 4 && i != 8){ buttonWrite(i, hairstyleName(hairstyleID(i))); }
		i++;
	}
	buttonWrite(4, "Buy");
	buttonWrite(12, "Return");
	textL("Click on a hairstyle to view a description of the hairstyle. If you would like to purchase it, click the Buy button.\r\rNote: Buying hairstyles automatically replaces your current hairstyle. You cannot sell hairstyles.");
	doListen = function():void{
		if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && clothesID(buttonChoice) != 0){
			textL(hairstyleDescription(hairstyleID(buttonChoice))+"\r\rCost: "+hairstyleValue(hairstyleID(buttonChoice))+" coins.");
			buy = buttonChoice;
		}
		if (buttonChoice == 4 && buy != 0){
			textLP("\r\rAre you sure you would like to buy "+hairstyleName(hairstyleID(buy))+"?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (coin < hairstyleValue(hairstyleID(buy))){
						textL("Sorry, but you only have "+coin+" coins. You require at least "+(hairstyleValue(hairstyleID(buy))-coin)+" more coins to purchase "+hairstyleName(hairstyleID(buy))+".");
						doNext();
						doListen = function():void { doTailor(); }
					}
					else{
						hair = hairstyleID(buy);
						doCoin(-hairstyleValue(hairstyleID(buy)));
						if (hairstyleLength(hairstyleID(buy))) {
							viewButtonOutline(1,1,0,0,1,1,1,0,0,0,0,0);
							viewButtonText(1,1,0,0,1,1,1,0,0,0,0,0);
							buttonWrite(1, "Short");
							buttonWrite(2, "Medium");
							buttonWrite(5, "Long");
							buttonWrite(6, "X-Long");
							buttonWrite(7, "XX-Long");
							textLP("What length would you like your hair to be? This does not affect its cost.\r\rShort - Doesn't hang past head.\r\rMedium - Reaches shoulders.\r\rLong - Reaches past shoulderblades.\r\rX-Long - Hangs past your butt.\r\rXX-Long - Reaches the ground.");
							doListen = function():void {
								if (buttonChoice == 1) { hairLength = 2; }
								else if (buttonChoice == 2) { hairLength = 4; }
								else if (buttonChoice == 5) { hairLength = 6; }
								else if (buttonChoice == 6) { hairLength = 8; }
								else if (buttonChoice == 7) { hairLength = 10; }
								doSalon();
							}
						}
						else { doSalon(); }
					}
				}
				else {
					doSalon();
				}
			}
		}
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function hairstyleName(ID:int):String{
	var tempStr:String = "HAIRSTYLE NAME ERROR "+hair;
	if (ID == 0){ tempStr = "None";	}
	if (ID == 1){ tempStr = "Wavy"; }
	if (ID == 2){ tempStr = "Pigtail"; }
	if (ID == 3){ tempStr = "Ponytail"; }
	if (ID == 4){ tempStr = "Straight"; }
	if (ID == 5){ tempStr = "Buzzcut"; }
	if (ID == 6){ tempStr = "Mohawk"; }
	if (ID == 7){ tempStr = "Bun"; }
	if (ID == 8){ tempStr = "Curly"; }
	if (ID == 9){ tempStr = "B Pigtail"; }
	if (ID == 10){ tempStr = "B Ponytail"; }
	if (ID == 11){ tempStr = "Braided"; }
	if (ID == 12){ tempStr = "Spiky"; }
	if (ID == 13){ tempStr = "Emo"; }
	if (ID == 14){ tempStr = "Afro"; }
	return tempStr;
}

function hairDesc():String{
	var tempStr:String = "HAIR DESC ERROR "+hair;
	if (hair == 1){ tempStr = "wavy hair"; }
	if (hair == 2){ tempStr = "hair pulled to the sides of your head in pigtails"; }
	if (hair == 3){ tempStr = "hair pulled back into a ponytail"; }
	if (hair == 4){ tempStr = "straight hair"; }
	if (hair == 5){ tempStr = "really short hair"; }
	if (hair == 6){ tempStr = "hair styled up into a mohawk"; }
	if (hair == 7){ tempStr = "hair curled up into a bun"; }
	if (hair == 8){ tempStr = "curly hair"; }
	if (hair == 9){ tempStr = "hair pulled to the sides of your head in braided pigtails"; }
	if (hair == 10){ tempStr = "hair pulled back into a braided ponytail"; }
	if (hair == 11){ tempStr = "braided hair"; }
	if (hair == 12){ tempStr = "spiky hair"; }
	if (hair == 13){ tempStr = "straight, stiff hair covering an eye"; }
	if (hair == 14){ tempStr = "giant poofball of hair"; }
	return tempStr;
}

function hairC():String{
	var tempStr:String = "HAIR COLOR ERROR "+hairColor
	if (hairColor == 0) { tempStr = ""; }
	if (hairColor == 1) { tempStr = "black "; }
	if (hairColor == 2) { tempStr = "blonde "; }
	if (hairColor == 3) { tempStr = "red "; }
	if (hairColor == 4) { tempStr = "blue "; }
	if (hairColor == 5) { tempStr = "coral pink "; }
	if (hairColor == 6) { tempStr = "auburn "; }
	if (hairColor == 7) { tempStr = "brown "; }
	if (hairColor == 8) { tempStr = "grey "; }
	if (hairColor == 9) { tempStr = "white "; }

	return tempStr;
}

function hairL():String{
	var tempStr:String = "HAIR LENGTH ERROR "+hairLength;
	if (hairLength == 2) { tempStr = "that is short enough to not dangle past your head";	}
	if (hairLength == 4) { tempStr = "that reaches down to your shoulders";	}
	if (hairLength == 6) { tempStr = "that reaches down your back";	}
	if (hairLength == 8) { tempStr = "that reaches down to your butt";	}
	if (hairLength == 10) { tempStr = "that reaches down to the ground";	}
	return tempStr;
}


function hairstyleID(choice:int):int{
	var tempNum:int = 0;
	if (currentZone == 1){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 2;}
		if (choice == 6) { tempNum = 3;}
		if (choice == 7) { tempNum = 12;}
		if (choice == 9) { tempNum = 14;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 2){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 3;}
		if (choice == 6) { tempNum = 10;}
		if (choice == 7) { tempNum = 5;}
		if (choice == 9) { tempNum = 6;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 3){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 6;}
		if (choice == 6) { tempNum = 11;}
		if (choice == 7) { tempNum = 12;}
		if (choice == 9) { tempNum = 13;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 4){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 2;}
		if (choice == 6) { tempNum = 9;}
		if (choice == 7) { tempNum = 7;}
		if (choice == 9) { tempNum = 13;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 6){
		if (choice == 1) { tempNum = 2;}
		if (choice == 2) { tempNum = 3;}
		if (choice == 3) { tempNum = 4;}
		if (choice == 5) { tempNum = 9;}
		if (choice == 6) { tempNum = 10;}
		if (choice == 7) { tempNum = 11;}
		if (choice == 9) { tempNum = 12;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 12){
		if (choice == 1) { tempNum = 2;}
		if (choice == 2) { tempNum = 9;}
		if (choice == 3) { tempNum = 6;}
		if (choice == 5) { tempNum = 12;}
		if (choice == 6) { tempNum = 13;}
		if (choice == 7) { tempNum = 1;}
		if (choice == 9) { tempNum = 4;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}

	return tempNum;
}

function hairstyleValue(ID:int):int{
	var tempNum:int = 0;
	if (ID == 0){ tempNum = 0; }
	if (ID == 1){ tempNum = 5; }
	if (ID == 2){ tempNum = 8; }
	if (ID == 3){ tempNum = 8; }
	if (ID == 4){ tempNum = 5; }
	if (ID == 5){ tempNum = 7; }
	if (ID == 6){ tempNum = 20; }
	if (ID == 7){ tempNum = 10; }
	if (ID == 8){ tempNum = 5; }
	if (ID == 9){ tempNum = 15; }
	if (ID == 10){ tempNum = 15; }
	if (ID == 11){ tempNum = 23; }
	if (ID == 12){ tempNum = 18; }
	if (ID == 13){ tempNum = 18; }
	if (ID == 14){ tempNum = 20; }
	return tempNum;
}

function hairstyleLength(ID:int):Boolean{
	var tempBool:Boolean = false;
	if (ID == 1) { tempBool = true; }
	if (ID == 2) { tempBool = true; }
	if (ID == 3) { tempBool = true; }
	if (ID == 4) { tempBool = true; }
	if (ID == 8) { tempBool = true; }
	if (ID == 9) { tempBool = true; }
	if (ID == 10) { tempBool = true; }
	if (ID == 11) { tempBool = true; }
	if (ID == 13) { tempBool = true; }
	return tempBool;
}

function hairstyleDescription(ID:int):String{
	var tempStr:String = "CLOTHES NAME ERROR "+ID;
	if (ID == 0) { tempStr = "No hairstyle whatsoever. Choosing this option removes any mention of hair from your appearance description."; }
	if (ID == 1) { tempStr = "Wavy hair has subtle curves that make it seem more flowing.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 2) { tempStr = "Pigtails are straight/wavy/curvy hair pulled away from the face and gathered towards the sides of your head, where it is bundled and tied at the base, allowing it to hang freely over your shoulders.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 3) { tempStr = "A Ponytail is straight/wavy/curvy hair pulled away from the face and gathered at the back of your head, where it is bundled and tied at the base, allowing it to hang freely over your back.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 4) { tempStr = "Straight hair has been combed out to be nice and straight.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 5) { tempStr = "A Buzzcut is hair cut quite short, less than a quarter inch from your head."; }
	if (ID == 6) { tempStr = "A Mohawk leaves only the hair along the center, from front to back, left, shaving the rest. It's usually a couple inches long."; }
	if (ID == 7) { tempStr = "A Bun is straight or wavy hair pulled up into a bun-like shape on top of the back of your head."; }
	if (ID == 8) { tempStr = "Curly hair has been treated to make it nice and curly with a bit of spring.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 9) { tempStr = "Braided Pigtails are pigtails that have been braided, keeping the dangling hair in a nice tight formation.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 10) { tempStr = "A Braided Ponytail is a ponytail that has been braided, keeping the dangling hair in a nice tight formation.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 11) { tempStr = "Braided hair involves tying all your hair into many braids, keeping it all in multiple tight formations.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 12) { tempStr = "Spiky hair is hair that has been treated to stand away from your head, defying gravity. Due to limitations, it can only reach a few inches in length."; }
	if (ID == 13) { tempStr = "Emo hair is hair that has been treated to sit straight at all times, with bangs often hanging over one eye.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 14) { tempStr = "An Afro is a giant poofball of curly hair. Due to limitations, it only reaches about half a foot from your head."; }
	return tempStr;
}

/***********
 *Tailoring*
 ***********/

function doTailor():void {
	bc();
	var buy:int = 0;
	viewButtonOutline(1,1,1,1,1,1,1,0,1,1,1,1);
	viewButtonText(1,1,1,1,1,1,1,0,1,1,1,1);
	i = 1
	while(i < 12){
		if(i != 4 && i != 8){ buttonWrite(i, clothesName(clothesID(i))); }
		i++;
	}
	buttonWrite(4, "Buy");
	buttonWrite(12, "Return");
	textL("Click on a piece of clothing to view a description for the piece. If you would like to purchase it, click the Buy button.\r\rNote: Buying clothes automatically replaces what you're already wearing. You cannot sell outfits.");
	doListen = function():void{
		if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && clothesID(buttonChoice) != 0){
			textL(clothesDescription(clothesID(buttonChoice))+"\r\rCost: "+clothesValue(clothesID(buttonChoice))+" coins.");
			buy = buttonChoice;
		}
		if (buttonChoice == 4 && buy != 0){
			textLP("\r\rAre you sure you would like to buy "+clothesName(clothesID(buy))+"?");
			if (attireTop == attireBot)	{ textLP("\r\rBe wary, replacing your "+clothesTop()+" with something that only takes a single clothes slot, your other clothes slot will default to the basic shirt/pants."); }
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (coin < clothesValue(clothesID(buy))){
						textL("Sorry, but you only have "+coin+" coins. You require at least "+(clothesValue(clothesID(buy))-coin)+" more coins to purchase "+clothesName(clothesID(buy))+".");
						doNext();
						doListen = function():void { doTailor(); }
					}
					else{
						clothesChange(clothesID(buy));
						doCoin(-clothesValue(clothesID(buy)));
						doTailor();
					}
				}
				else {
					doTailor();
				}
			}
		}
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function clothesName(ID:int):String{
	var tempStr:String = "CLOTHES NAME ERROR";
	if (ID == 1){ tempStr = "Shirt"; }
	if (ID == 2){ tempStr = "Pants"; }
	if (ID == 3){ tempStr = "Bikini Top"; }
	if (ID == 4){ tempStr = "Bikini Bottom"; }
	if (ID == 5){ tempStr = "Elegant Dress"; }
	if (ID == 6){ tempStr = "Latex Suit"; }
	if (ID == 7){ tempStr = "Skirt"; }
	if (ID == 8){ tempStr = "Shorts"; }
	if (ID == 9){ tempStr = "Blouse"; }
	if (ID == 10){ tempStr = "Diaper"; }
	if (ID == 11){ tempStr = "Poofy Diaper"; }
	if (ID == 12){ tempStr = "Sundress"; }
	if (ID == 13){ tempStr = "Skimpy Dress"; }
	if (ID == 14){ tempStr = "Short Skirt"; }
	if (ID == 15){ tempStr = "Short Shorts"; }
	if (ID == 16){ tempStr = "Loin Cloth"; }
	if (ID == 17){ tempStr = "Bathing Suit"; }
	if (ID == 18){ tempStr = "Muscle Shirt"; }
	if (ID == 19){ tempStr = "Corset"; }
	if (ID == 20){ tempStr = "Silk Panties"; }
	if (ID == 21){ tempStr = "Slingkini"; }
	if (ID == 22){ tempStr = "Thong"; }
	if (ID == 23){ tempStr = "Bloomers"; }
	if (ID == 24){ tempStr = "Tights"; }
	if (ID == 25){ tempStr = "Gothic Dress"; }
	if (ID == 26){ tempStr = "Tube Top"; }
	if (ID == 27){ tempStr = "Nipple Pasties"; }
	if (ID == 28){ tempStr = "Camisole"; }
	if (ID == 29){ tempStr = "Training Suit"; }
	if (ID == 30){ tempStr = "Bouncy Bra"; }
	return tempStr;
}

function clothesID(choice:int):int{
	var tempNum:int = 0;
	if (currentZone == 1){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 6;}
		if (choice == 6) { tempNum = 9;}
		if (choice == 7) { tempNum = 10;}
		if (choice == 9) { tempNum = 13;}
		if (choice == 10) { tempNum = 22;}
		if (choice == 11) { tempNum = 27;}
	}
	if (currentZone == 2){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 8;}
		if (choice == 6) { tempNum = 9;}
		if (choice == 7) { tempNum = 15;}
		if (choice == 9) { tempNum = 18;}
		if (choice == 10) { tempNum = 24;}
		if (choice == 11) { tempNum = 26;}
	}
	if (currentZone == 3){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 5;}
		if (choice == 6) { tempNum = 13;}
		if (choice == 7) { tempNum = 19;}
		if (choice == 9) { tempNum = 22;}
		if (choice == 10) { tempNum = 23;}
		if (choice == 11) { tempNum = 25;}
	}
	if (currentZone == 4){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 3;}
		if (choice == 6) { tempNum = 4;}
		if (choice == 7) { tempNum = 11;}
		if (choice == 9) { tempNum = 12;}
		if (choice == 10) { tempNum = 20;}
		if (choice == 11) { tempNum = 28;}
	}
	if (currentZone == 6){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 7;}
		if (choice == 6) { tempNum = 14;}
		if (choice == 7) { tempNum = 16;}
		if (choice == 9) { tempNum = 17;}
		if (choice == 10) { tempNum = 19;}
		if (choice == 11) { tempNum = 21;}
	}
	if (currentZone == 12){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 2;}
		if (choice == 3) { tempNum = 29;}
		if (choice == 5) { tempNum = 28;}
		if (choice == 6) { tempNum = 30;}
		if (choice == 7) { tempNum = 25;}
		if (choice == 9) { tempNum = 23;}
		if (choice == 10) { tempNum = 22;}
		if (choice == 11) { tempNum = 19;}
	}
	return tempNum;
}

function clothesValue(ID:int):int{
	var tempNum:int = 0;
	if (ID == 1){ tempNum = 5; }
	if (ID == 2){ tempNum = 5; }
	if (ID == 3){ tempNum = 25; }
	if (ID == 4){ tempNum = 25; }
	if (ID == 5){ tempNum = 45; }
	if (ID == 6){ tempNum = 60; }
	if (ID == 7){ tempNum = 25; }
	if (ID == 8){ tempNum = 25; }
	if (ID == 9){ tempNum = 25; }
	if (ID == 10){ tempNum = 30; }
	if (ID == 11){ tempNum = 40; }
	if (ID == 12){ tempNum = 40; }
	if (ID == 13){ tempNum = 50; }
	if (ID == 14){ tempNum = 35; }
	if (ID == 15){ tempNum = 35; }
	if (ID == 16){ tempNum = 40; }
	if (ID == 17){ tempNum = 55; }
	if (ID == 18){ tempNum = 15; }
	if (ID == 19){ tempNum = 50; }
	if (ID == 20){ tempNum = 35; }
	if (ID == 21){ tempNum = 65; }
	if (ID == 22){ tempNum = 40; }
	if (ID == 23){ tempNum = 30; }
	if (ID == 24){ tempNum = 35; }
	if (ID == 25){ tempNum = 60; }
	if (ID == 26){ tempNum = 20; }
	if (ID == 27){ tempNum = 45; }
	if (ID == 28){ tempNum = 40; }
	if (ID == 29){ tempNum = 35; }
	if (ID == 30){ tempNum = 45; }
	return tempNum;

}

function clothesDescription(ID:int):String{
	var tempStr:String = "CLOTHES NAME ERROR";
	if (ID == 1){ tempStr = "A generic shirt with no special attributes.\r\rTakes top clothes slot."; }
	if (ID == 2){ tempStr = "A generic pair of pants with no special attributes.\r\rTakes bottom clothes slot."; }
	if (ID == 3){ tempStr = "A rather revealing bikini top/s, covering all your breasts, looking good and hugging tightly to improve enticement and sensitivity, but reduces your mentality and milk production.\r\rTakes top clothes slot."; }
	if (ID == 4){ tempStr = "A rather revealing bikini bottom, covering your groin, looking good and hugging tightly to improve enticement and sensitivity, but reduces your mentality and cum production.\r\rTakes bottom clothes slot."; }
	if (ID == 5){ tempStr = "A courtly dress that's more about giving a good impression than a slutty one, improving mentality, but the caution to prevent ripping reduces strength. It also increases the speed of your pregnancies slightly, in the attempt to not look slutty, or something.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 6){ tempStr = "A suit made of a thin, very tight material that covers most of your body and greatly improves enticement and sensitivity, but also reduces mentality, run chance, cum and milk production.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 7){ tempStr = "A modest skirt, very helpful in terms of function. Improves run chance, strength, and cum production, but reduces mentality and increases pregnancy chance with its 'ease of access'.\r\rTakes bottom clothes slot."; }
	if (ID == 8){ tempStr = "A pair of shorts, very helpful in terms of function. Improves run chance and strength, but reduces libido with its lackluster appearance.\r\rTakes bottom clothes slot."; }
	if (ID == 9){ tempStr = "A buttoned shirt that allows your breasts to produce more milk while looking good to increase mentality, but reduces sensitivity and strength.\r\rTakes top clothes slot."; }
	if (ID == 10){ tempStr = "A diaper that helps soak up some of your moistness and makes your hips look bigger, but reduces mentality.\r\rWarning: Removing the diaper after wearing it could potentially make you even wetter than before you put it on, your body depending too much on it.\r\rTakes bottom clothes slot."; }
	if (ID == 11){ tempStr = "A poofy diaper that helps soak up a lot of your moistness and makes both your hips and butt look bigger, but reduces mentality and libido.\r\rWarning: Removing the poofy diaper after wearing it could potentially make you even wetter than before you put it on, your body depending too much on it.\r\rTakes bottom clothes slot."; }
	if (ID == 12){ tempStr = "A casual dress that gives your body a lot of exposure, improving sensitivity, cum production, and libido, but reduces run chance, strength, and increases pregnancy chance.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 13){ tempStr = "A skimpy dress that really hugs your curves, improving sensitivity, enticement, and libido, but reduces strength and mentality with its slutty appearance, and increases pregnancy chance with its ease of access.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 14){ tempStr = "A short skirt that's more attractive than modest, improving cum production, sensitivity, and enticement, but reduces mentality and increases pregnancy chance with its ease of access.\r\rTakes bottom clothes slot."; }
	if (ID == 15){ tempStr = "A pair of short shorts that are more skimpy than functional, hugging tightly to improve sensitivity, enticement, and run chance, but reduces cum production, mentality, and strength.\r\rTakes bottom clothes slot."; }
	if (ID == 16){ tempStr = "A loin cloth that is more suited for the simplicity of the wild, but also a bit uncivilized, improving cum production, run chance, strength, and sensitivity, but reduces mentality and increases pregnancy chance.\r\rTakes bottom clothes slot."; }
	if (ID == 17){ tempStr = "A one-piece bathing suit that covers both chest and groin and is great for swimming, it acts as a barrier to liquids. The suit prevents your sexual lubrication from drying away as easily, thus increasing your moistness, as well as increasing strength and sensitivity while reducing mentality and pregnancy chance.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 18){ tempStr = "A simple muscle shirt that is more functional than civilized. Increases strength but reduces mentality, and makes your chest look slightly bigger.\r\rTakes top clothes slot."; }
	if (ID == 19){ tempStr = "A corset that ties tightly around your waist, greatly magnifying your bust and hips, increasing your mentality and libido, but is also quite restrictive and hard to breath in, reducing strength and your maximum HP.\r\rTakes top clothes slot."; }
	if (ID == 20){ tempStr = "A pair of silken panties, this underwear looks and feels good, amplifying your vulva size, increasing your enticement, libido, and sensitivity, but also reduces mentality, cum production, and run chance as you're afraid of tearing them.\r\rTakes bottom clothes slot."; }
	if (ID == 21){ tempStr = "A very scant bathing suit that consists of thin fabric that barely covers your crotch and forks to sling around your body and just barely cover your nipples. Largely increases enticement, as well as increasing libido and sensitivity. However, it largely reduces your mentality, reduces your strength, keeps you constantly slightly aroused, and is rather difficult to run in as it easily rides up your rear.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 22){ tempStr = "A quite small piece of underwear that shows off much of your posterior, the thong is quite enticing and raises your libido, but reduces strength, mentality, and sensitivity, and is slightly difficult to run in as it rides up your rear.\r\rTakes bottom clothes slot."; }
	if (ID == 23){ tempStr = "A pair of form-fitting athletic bloomers, they are very nice to run in and increases strength and libido, but also reduces mentality and is slightly difficult to rape others while wearing them.\r\rTakes bottom clothes slot."; }
	if (ID == 24){ tempStr = "A pair of form-fitting, stretchy, agile tights, they are easy to run in and increase your sensitivity, but their tightness reduces cum production and ability to get pregnant.\r\rTakes bottom clothes slot."; }
	if (ID == 25){ tempStr = "A dark and decorated frilly dress of the gothic variety, it increases your mentality and the intimidation helps you rape others, but it also makes vaginal passages more stretchy for some strange reason.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 26){ tempStr = "A single piece of stretchy fabric that wraps around the chest, the tube top is slightly enticing and slightly increases milk production. However, it tends to outline nipples so well that it seems to make them bigger and also lowers mentality.\r\rTakes top clothes slot."; }
	if (ID == 27){ tempStr = "A simple bunch of adhesive stickers that paste to the nipples to cover them and only them. Extremely lewd, it lowers your mentality significantly, but also raises enticement, libido, and sensitivity, and increases the amount of milk your breasts can hold by literally capping your nipples.\r\rTakes top clothes slot."; }
	if (ID == 28){ tempStr = "A soft and loose piece of lingerie, this camisole is an attractive and smart way to cover your breasts, increasing enticement, mentality, and sensitivity. The soft fabric constantly teasing your nipples also reduces the rate at which your breasts dry up, should they be lactating.\r\rTakes top clothes slot."; }
	if (ID == 29){ tempStr = "A yellow tracksuit with black stripes up the sides, this training suit makes you feel much stronger and heartier while wearing it, perfect for fighting. However, it looks fairly silly, basically the opposite of attractive, and reduces your mentality, libido, and sensitivity.\r\rTakes both top and bottom clothes slots."; }
	if (ID == 30){ tempStr = "A bra that allows for a little more bounce to your step by allowing you to withstand a bit more weight. And it's so wonderful that it helps you carry -any- extra weight, even beyond your breasts!\r\rTakes top clothes slot."; }
	return tempStr;
}

function clothesTop():String{
	var tempStr:String = "CLOTHES TOP ERROR "+attireTop;
	if (attireTop == -1) { tempStr = "tattered shreds"; }
	if (attireTop == 0) { tempStr = "invisible underwear"; }
	if (attireTop == 1) { tempStr = "shirt"; }
	if (attireTop == 3) { 
		if (boobTotal == 2){ tempStr = "bikini top"; }
		if (boobTotal >= 4){ tempStr = "bikini tops"; }
	}
	if (attireTop == 5) { tempStr = "elegant dress"; }
	if (attireTop == 6) { tempStr = "latex suit"; }
	if (attireTop == 9) { tempStr = "blouse"; }
	if (attireTop == 12) { tempStr = "sundress"; }
	if (attireTop == 13) { tempStr = "skimpy dress"; }
	if (attireTop == 17) { tempStr = "bathing suit"; }
	if (attireTop == 18) { tempStr = "muscle shirt"; }
	if (attireTop == 19) { tempStr = "corset"; }
	if (attireTop == 21) { tempStr = "slingkini"; }
	if (attireTop == 25) { tempStr = "gothic dress"; }
	if (attireTop == 26) { tempStr = "tube top"; }
	if (attireTop == 27) { tempStr = "nipple pasties"; }
	if (attireTop == 28) { tempStr = "camisole"; }
	if (attireTop == 29) { tempStr = "training suit"; }
	if (attireTop == 30) { tempStr = "bouncy bra"; }
	return tempStr;
}

function clothesBottom():String{
	var tempStr:String = "CLOTHES BOTTOM ERROR "+attireBot;
	if (attireBot == -1) { tempStr = "tattered shreds"; }
	if (attireBot == 0) { tempStr = "invisible underwear"; }
	if (attireBot == 2) { tempStr = "pants"; }
	if (attireBot == 4) { tempStr = "bikini bottom"; }
	if (attireBot == 5) { tempStr = "elegant dress"; }
	if (attireBot == 6) { tempStr = "latex suit"; }
	if (attireBot == 7) { tempStr = "skirt"; }
	if (attireBot == 8) { tempStr = "shorts"; }
	if (attireBot == 10) { tempStr = "diaper"; }
	if (attireBot == 11) { tempStr = "poofy diaper"; }
	if (attireBot == 12) { tempStr = "sundress"; }
	if (attireBot == 13) { tempStr = "skimpy dress"; }
	if (attireBot == 14) { tempStr = "short skirt"; }
	if (attireBot == 15) { tempStr = "short shorts"; }
	if (attireBot == 16) { tempStr = "loincloth"; }
	if (attireBot == 17) { tempStr = "bathing suit"; }
	if (attireBot == 20) { tempStr = "silken panties"; }
	if (attireBot == 21) { tempStr = "slingkini"; }
	if (attireBot == 22) { tempStr = "thong"; }
	if (attireBot == 23) { tempStr = "bloomer"; }
	if (attireBot == 24) { tempStr = "tights"; }
	if (attireBot == 25) { tempStr = "gothic dress"; }
	if (attireBot == 29) { tempStr = "training suit"; }
	return tempStr;
}

function currentClothes():String{
	var tempStr:String = "CURRENT CLOTHES ERROR";
	if (attireTop == attireBot) { tempStr = ""+clothesTop()+"";	}
	else { tempStr = ""+clothesTop()+" and "+clothesBottom()+""; }
	return tempStr;
}

function pullUD(source:int):String{
	var tempStr:String = "PULL UP/DOWN ERROR "+attireTop+" "+attireBot;
	if (source == 1){
		if (attireTop == -1) { tempStr = "open"; }
		if (attireTop == 0) { tempStr = "up"; }
		if (attireTop == 1) { tempStr = "up"; }
		if (attireTop == 3) { tempStr = "down"; }
		if (attireTop == 5) { tempStr = "down"; }
		if (attireTop == 6) { tempStr = "open"; }
		if (attireTop == 9) { tempStr = "open"; }
		if (attireTop == 12) { tempStr = "down"; }
		if (attireTop == 13) { tempStr = "down"; }
		if (attireTop == 17) { tempStr = "down"; }
		if (attireTop == 18) { tempStr = "up"; }
		if (attireTop == 19) { tempStr = "down"; }
		if (attireTop == 21) { tempStr = "open"; }
		if (attireTop == 25) { tempStr = "down"; }
		if (attireTop == 26) { tempStr = "down"; }
		if (attireTop == 27) { tempStr = "off"; }
		if (attireTop == 28) { tempStr = "up"; }
		if (attireTop == 29) { tempStr = "open"; }
		if (attireTop == 30) { tempStr = "down"; }
	}
	if (source == 2){
		if (attireBot == -1) { tempStr = "open"; }
		if (attireBot == 0) { tempStr = "down"; }
		if (attireBot == 2) { tempStr = "down"; }
		if (attireBot == 4) { tempStr = "down"; }
		if (attireBot == 5) { tempStr = "up"; }
		if (attireBot == 6) { tempStr = "open"; }
		if (attireBot == 7) { tempStr = "up"; }
		if (attireBot == 8) { tempStr = "down"; }
		if (attireBot == 10) { tempStr = "down"; }
		if (attireBot == 11) { tempStr = "down"; }
		if (attireBot == 12) { tempStr = "up"; }
		if (attireBot == 13) { tempStr = "up"; }
		if (attireBot == 14) { tempStr = "up"; }
		if (attireBot == 15) { tempStr = "down"; }
		if (attireBot == 16) { tempStr = "up"; }
		if (attireBot == 17) { tempStr = "aside"; }
		if (attireBot == 20) { tempStr = "down"; }
		if (attireBot == 21) { tempStr = "aside"; }
		if (attireBot == 22) { tempStr = "down"; }
		if (attireBot == 23) { tempStr = "down"; }
		if (attireBot == 24) { tempStr = "down"; }
		if (attireBot == 25) { tempStr = "up"; }
		if (attireBot == 29) { tempStr = "open"; }
	}
	return tempStr;
}


function clothesChange(ID:int):void{
	if (ID == 1){ changeTop(1); }
	if (ID == 2){ changeBot(2); }
	if (ID == 3){ changeTop(3); }
	if (ID == 4){ changeBot(4); }
	if (ID == 5){ 
		changeTop(5);
		changeBot(5); 
	}
	if (ID == 6){ 
		changeTop(6);
		changeBot(6);
	}
	if (ID == 7){ changeBot(7); }
	if (ID == 8){ changeBot(8); }
	if (ID == 9){ changeTop(9); }
	if (ID == 10){ changeBot(10); }
	if (ID == 11){ changeBot(11); }
	if (ID == 12){ 
		changeTop(12)
		changeBot(12);
	}
	if (ID == 13){ 
		changeTop(13);
		changeBot(13);
	}
	if (ID == 14){ changeBot(14); }
	if (ID == 15){ changeBot(15); }
	if (ID == 16){ changeBot(16); }
	if (ID == 17){ 
		changeTop(17);
		changeBot(17);
	}
	if (ID == 18){ changeTop(18); }
	if (ID == 19){ changeTop(19); }
	if (ID == 20){ changeBot(20); }
	if (ID == 21){ 
		changeTop(21);
		changeBot(21);
	}
	if (ID == 22){ changeBot(22); }
	if (ID == 23){ changeBot(23); }
	if (ID == 24){ changeBot(24); }
	if (ID == 25){ 
		changeTop(25);
		changeBot(25);
	}
	if (ID == 26){ changeTop(26); }
	if (ID == 27){ changeTop(27); }
	if (ID == 28){ changeTop(28); }
	if (ID == 29){ 
		changeTop(29);
		changeBot(29);
	}
	if (ID == 30){ changeTop(30); }
}

function changeTop(ID:int):void{
	//Remove bonus
	if (ID != attireTop) {

		if (attireTop == -1){ statsMod(2,2,0,0); }
		if (attireTop == 0){ statsMod(0,4,0,0); }
		if (attireTop == 1){ }
		if (attireTop == 3){
			enticeMod -= 6;
			statsMod(0,2,0,-2);
			milkMod += 15;
		}
		if (attireTop == 5){
			statsMod(2,-4,0,0);
			pregRate -= .2
		}
		if (attireTop == 6){
			enticeMod -= 8;
			statsMod(0,2,0,-8);
			cumMod += .2;
			milkMod += 10;
			runMod += 5;
		}
		if (attireTop == 9){
			statsMod(2,-2,0,1);
			milkMod -= 20;
		}
		if (attireTop == 12){
			statsMod(2,0,-2,-2);
			cumMod -= .2;
			runMod += 5;
			pregChanceMod -= 5;
		}
		if (attireTop == 13){
			statsMod(2,3,-2,-3);
			enticeMod -= 14;
			pregChanceMod -= 5;
		}
		if (attireTop == 17){
			statsMod(-2,2,0,-2);
			vagMoistMod -= 2;
			cockMoistMod -= 2;
			pregChanceMod += 5;
		}
		if (attireTop == 18){
			statsMod(-2,2,0,0);
			breastSize -= 1;
		}
		if (attireTop == 19){
			statsMod(2,-2,-2,0);
			breastSize -= 4;
			hips -= 2;
			HPMod += 5;
		}
		if (attireTop == 21){
			enticeMod -= 18;
			statsMod(2,6,-4,-4);
			runMod += 10;
			minLust -= 5;
		}
		if (attireTop == 25){
			statsMod(0,-4,0,0);
			rapeMod -= 3;
			vagElastic -= .2;
		}
		if (attireTop == 26){
			enticeMod -= 2;
			statsMod(0,2,0,0);
			milkMod -= 5;
			nippleSize -= 2;
		}
		if (attireTop == 27){
			statsMod(0,6,-2,-4);
			milkCap -= 250;
			enticeMod -= 6;
		}
		if (attireTop == 28){
			statsMod(0,-2,0,-4);
			enticeMod -= 4;
		}
		if (attireTop == 29){
			statsMod(-10,2,2,2);
			enticeMod += 10;
			HPMod -= 10;
		}
		if (attireTop == 30){
			carryMod -= 15;
		}
		
		//Add bonus
		if (ID == -1){ 
			if (attireTop == attireBot && attireBot != -1)	{
				attireTop = ID;
				changeBot(-1); 
			}
			statsMod(-2,-2,0,0); 
		}
		if (ID == 0){ statsMod(0,-4,0,0); }
		if (ID == 1){ }
		if (ID == 3){ 
			enticeMod += 6;
			statsMod(0,-2,0,2);
			milkMod -= 15;
		}
		if (ID == 5){
			statsMod(-2,4,0,0);
			pregRate += .2
		}
		if (ID == 6){ 
			enticeMod += 8;
			statsMod(0,-2,0,8);
			cumMod -= .2;
			milkMod -= 10;
			runMod -= 5;
		}
		if (ID == 9){ 
			statsMod(-2,2,0,-1);
			milkMod += 20;
		}
		if (ID == 12){ 
			statsMod(-2,0,2,2);
			cumMod += .2;
			runMod -= 5;
			pregChanceMod += 5;
		}
		if (ID == 13){ 
			statsMod(-2,-3,2,3);
			enticeMod += 14;
			pregChanceMod += 5;
		}
		if (ID == 17){
			statsMod(2,-2,0,2);
			vagMoistMod += 2;
			cockMoistMod += 2;
			pregChanceMod -= 5;
		}
		if (ID == 18){
			statsMod(2,-2,0,0);
			breastSize += 1;
		}
		if (ID == 19){
			statsMod(-2,2,2,0);
			breastSize += 4;
			hips += 2;
			HPMod -= 5;
		}
		if (ID == 21){
			enticeMod += 18;
			statsMod(-2,-6,4,4);
			runMod -= 10;
			minLust += 5;
		}
		if (ID == 25){
			statsMod(0,4,0,0);
			rapeMod += 3;
			vagElastic += .2;
		}
		if (ID == 26){
			enticeMod += 2;
			statsMod(0,-2,0,0);
			milkMod += 5;
			nippleSize += 2;
		}
		if (ID == 27){
			statsMod(0,-6,2,4);
			milkCap += 250;
			enticeMod += 6;
		}
		if (ID == 28){
			statsMod(0,2,0,4);
			enticeMod += 4;
		}
		if (ID == 29){
			statsMod(10,-2,-2,-2);
			enticeMod -= 10;
			HPMod += 10;
		}
		if (ID == 30){
			carryMod += 15;
		}
	
	
		//change
		if (attireTop == attireBot && ID != 0 && ID != -1){ 
			attireTop = ID;
			changeBot(2); 
		}
		else { attireTop = ID; }
	}
}

function changeBot(ID:int):void{
	//Remove bonus
	if (ID != attireBot) {
		
		if (attireBot == -1){ statsMod(2,2,0,0); }
		if (attireBot == 0){ statsMod(0,4,0,0); }
		if (attireBot == 2){ }
		if (attireBot == 4){ 
			enticeMod -= 6;
			statsMod(0,2,0,-2);
			cumMod += .2;
		}
		if (attireBot == 7){ 
			runMod -= 3;
			cumMod -= .2;
			statsMod(-2,2,0,0);
			pregChanceMod -= 4;
		}
		if (attireBot == 8){
			runMod -= 3;
			statsMod(-2,0,3,0);
		}
		if (attireBot == 10){
			vagMoistMod += 2;
			cockMoistMod += 2;
			hips -= 1;
			statsMod(0,4,0,0);
		}
		if (attireBot == 11){
			vagMoistMod += 5;
			cockMoistMod += 5;
			hips -= 1;
			butt -= 2;
			statsMod(0,4,4,0);
		}
		if (attireBot == 14){
			cumMod -= .2;
			enticeMod -= 7;
			statsMod(0,4,0,-2);
			pregChanceMod -= 6;
		}
		if (attireBot == 15){
			cumMod += .2;
			runMod -= 5;
			enticeMod -= 4;
			statsMod(2,3,0,-2);
		}
		if (attireBot == 16){
			cumMod -= .2;
			runMod -= 4;
			pregChanceMod -= 5;
			statsMod(-2,4,0,-2);
		}
		if (attireBot == 20){
			cumMod += .3;
			runMod += 3;
			vulvaSize -= 1;
			enticeMod -= 7;
			statsMod(0,2,-2,-2);
		}
		if (attireBot == 22){
			runMod += 5;
			enticeMod -= 9;
			statsMod(2,2,-4,2);
		}
		if (attireBot == 23){
			runMod -= 6;
			rapeMod += 4;
			statsMod(-2,2,-2,0);
		}
		if (attireBot == 24){
			runMod -= 4;
			cumMod += .2;
			pregChanceMod += 3;
			statsMod(0,0,0,-2);
		}

		//Add bonus
		if (ID == -1){ 
			if (attireTop == attireBot && attireTop != -1)	{
				attireBot = ID;

				changeTop(-1);
			}
			statsMod(-2,-2,0,0); 
		}
		if (ID == 0){ statsMod(0,-4,0,0); }
		if (ID == 2){ }
		if (ID == 4){
			enticeMod += 6;
			statsMod(0,-2,0,2);
			cumMod -= .2;
		}
		if (ID == 7){
			runMod += 3;
			cumMod += .2;
			statsMod(2,-2,0,0);
			pregChanceMod += 4;
		}
		if (ID == 8){
			runMod += 3;
			statsMod(2,0,-3,0);
		}
		if (ID == 10){
			vagMoistMod -= 2;
			cockMoistMod -= 2;
			hips += 1;
			statsMod(0,-4,0,0);
		}
		if (ID == 11){
			vagMoistMod -= 5;
			cockMoistMod -= 5;
			hips += 1;
			butt += 2;
			statsMod(0,-4,-4,0);
		}
		if (ID == 14){
			cumMod += .2;
			enticeMod += 7;
			statsMod(0,-4,0,2);
			pregChanceMod += 6;
		}
		if (ID == 15){ 
			cumMod -= .2;
			runMod += 5;
			enticeMod += 4;
			statsMod(-2,-3,0,2);
		}
		if (ID == 16){
			cumMod += .2;
			runMod += 4;
			pregChanceMod += 5;
			statsMod(2,-4,0,2);
		}
		if (ID == 20){
			cumMod -= .3;
			runMod -= 3;
			vulvaSize += 1;
			enticeMod += 7;
			statsMod(0,-2,2,2);
		}
		if (ID == 22){
			runMod -= 5;
			enticeMod += 9;
			statsMod(-2,-2,4,-2);
		}
		if (ID == 23){
			runMod += 6;
			rapeMod -= 4;
			statsMod(2,-2,2,0);
		}
		if (ID == 24){
			runMod += 4;
			cumMod -= .2;
			pregChanceMod -= 3;
			statsMod(0,0,0,2);
		}
		
		if (attireTop == attireBot && ID != 0 && ID != -1){
			attireBot = ID;
			changeTop(1); 
		}
		else { attireBot = ID; }
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

//Lila Description
function lilaDesc():void{
	if (lilaMilk == 0) { textLP("\r\rHer small breasts leak only a few drops of milk as she stands there, but her nipples are quite erect and peek through her fur as she blushes at you staring at her."); }
	else if (lilaMilk <= 2) { textLP("\r\rThin trails of white milk travel through her fur from her many erect nipples, slowly dripping onto the floor as she stands there and waits for you, a slight blush crossing her cheeks as the air chills her wet areolas and makes her shiver."); }
	else if (lilaMilk <= 5) { textLP("\r\rHer nipples push out from her fur, drops almost continually forming around them and drizzling down her naked body. Shyly, she brings a hand up to squeeze one that's especially stiff and sensitive, making her cheeks red as a squirt of milk launches across the floor of your room." ); }
	else if (lilaMilk <= 8) { textLP("\r\rThick streams of white milk dribble down her body, her puffy nipples bulging from their retained milk. Her arms cross over a few of them in embarrassment at how obvious they are, but milk squirts out around them and runs down over her pussy, mixing with the fluids there, and pooling on the floor."); }
	else if (lilaMilk <= 12) { textLP("\r\rThough not completely engorged thanks to her 'sharing', her nipples are still quite puffy. A hand reaches up to massage one of the breasts as it feels a bit full to her and it spews several thin spurts in different directions from the slight touch, making her blush furiously."); }
	else if (lilaMilk <= 18) { textLP("\r\rDespite having just fed some of her friends, her breasts are still swollen, her nipples puffing out further than ever before. Stiff and long, she can't help but play with them with her fingers, milk spilling profusely down her hand and body, and making her moan before you even get to her. With her eager actions, her face grows red with embarrassment."); }
	else if (lilaMilk <= 19) { textLP("\r\rShe stands there, short and happy as her breasts squirt thin sprays of milk simply by moving a little. Her hands often pass over them, squeezing her thick stiff nipples and moaning as thick streams gush from them, spilling down her body. Rather used to them by now, she hardly blushes at all, and is quite eager for you to get back to her."); }
	if (lilaVulva == 0) { textLP(" Her dainty little vulva also dribbles onto her thighs, her pink lips panting with lubrication in excitement."); }
	else if (lilaVulva <= 2) { textLP(" She also twists her hips back and forth while she waits, still trying to figure out how to stand with her thick developed labia filling much the gap between her thighs, making slick webs spread back and forth between them.");   }
	else if (lilaVulva <= 5) { textLP(" Her nose seems somewhat red from a different kind of blush, a heat filling her face as her thighs tense and relax, squeezing the thick vulva between her legs again and again. You can see her clit peek out from its hood through the cleft, aroused and urging on the slimy coating about her thighs."); }
	else if (lilaVulva <= 8) { textLP(" She still holds onto her swollen vulva, with much of the flesh bulging out from between her fingers. Standing with her legs slightly spread so as to not squeeze it, she still manages to cause long strands of thick lubricant to spill from her fingers as she kneads the mass about, afraid to stop or it'll drop from body."); }
	else if (lilaVulva <= 12) { textLP(" She also stands with her legs spread, her thighs unable to touch due to the thick lips between them. Each outer labia is as big as her fist, with the inner labia dangling down and nearly red with arousal, drizzling thick strands of clear honey down to the floor without her even touching it. Which she puts a great deal of effort into doing, afraid that she won't stop rubbing the thick clit that sticks out slightly."); }
	else if (lilaVulva <= 18) { textLP(" And between her knees hangs her overgrown lips, making her stand slightly bow-legged. Her legs almost constantly twist about, using her knees to squish the flesh again and again since her hands can hardly hold it all if she tried. Her clitoris can hardly be called a button, stroked like a small penis as it pushes out from the massive folds. Her inner lips are so pink with arousal that they seem to be growing longer, due to the the amount of slickness flowing down them that creates the illusion and forms a puddle around her feet."); }
	else if (lilaVulva <= 19) { textLP(" And she hardly seems like's she's standing at all. With how much her legs bend around and squeeze the large squishy labia that fills the space between them, it seems like she's nearly sitting on her own pussy. However, it barely hovers over the floor, the inner labia dangling down and brushing across it when she presses down slightly to push her clit against the floor to please it a bit. If she curled up and actually wrapped her whole hand around the sensitive thing, there would have still been some more length to cover. Which only makes her original 'wetness' problem worse, the overall size of her genitals causing a flood about her feet and leaving them almost constantly slick and wet with a trail of more following her wherever she goes. However, thanks to her size, when she slips from her moisture she simply lets out an erotic mewl as she falls down onto her soft flesh.");  }
	if (lilaPreg <= 35 && lilaVulva >= 11){ textLP(" Her belly seems to be sporting some extra cushioning as well. Not exactly chubby, her excess vaginal flesh from all the growth causes it to protrude, her lower breasts pushing out even more."); }
	else if (lilaPreg <= 70 && lilaPreg > 35) { textLP(" Her hands have a tendancy to cup her growing belly as well, imagining how big she will get. Already protruding quite a bit, her belly button just beginning to stick out, she giggles a little to herself at the thoughts of what's to come."); }
	else if (lilaPreg <= 100 && lilaPreg > 70){ textLP("Yet, despite all of that, her focus mostly remains on her large belly. Nearly as large as herself if she were to curl up, the thing hangs forward to the point where she can't see her messy arousal below. Her hands often roam over the taut fur, taking her naked opportunity to caress it and pleasure in it, cradling it gently."); }
}

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



/******************************
 *Statuses and Transformations*
 ******************************/

//doStatus or whatever is already in, just fix this to fill it.
function doStatus(time:int):void{
	
	textL("Afterwards...");
	hrs = 0;
	//Pregnancy
	pregnancyTime = 0;
	var birthCount:int = 0;
	var pregMilk:int = 0;
	i = 0;
	while (i < pregArray.length) {
		if (pregArray[i] == true) {
			if (pregArray[i+1] != 503) { 
				pregArray[i+3] += Math.ceil(time*pregRate); 
				pregChanges(i);
			}
			if (pregArray[i+3] > birthTime(pregArray[i+1]) {
				doBirth(i, birthCount);
				birthCount++;
				pregArray[i] = false;
				pregArray[i+3] = 0;
			}
			else {
				pregnancyTime += pregArray[i+3];
			}
		}

		i += 5;
	}

	if (pregMilk > 0) {
		lactChange(1,pregMilk);
		lactChange(2,pregMilk);
		if (lactation - 50 <= 0){ textLP("\r\rYour body must be getting ready for the baby that's growing inside of you. Your breasts feel heavier as they fill with a nutritious fluid..."); }
		else { textLP("\r\rYour breasts are producing even more milk, feeling even fuller... Your body must be getting ready for the baby that's growing inside of you."); }	
		if (pregMilk > 10) {  //Fast lactation boost leads to growth
			textLP(" With so much production, your breasts");
			if (udders == true) { textLP(" and udder";		}
			textLP(" have swollen larger from the maternity growth.");
			boobChange(Math.floor(pregMilk/10));
			udderChange(Math.floor(pregMilk/10));
		}
	}
	
	/*
	if (pregnancyTime >= 80 && pregnancyTime < 140 && pregStatus < 1)	{
		pregStatus = 1;
		lactChange(1, 10);
		lactChange(2, 10);
		boobChange(1);
		udderChange(1);
			}
	else if (pregnancyTime >= 140 && pregnancyTime < 210 && pregStatus < 2)	{
		pregStatus = 2;
		lactChange(1, 20);
		lactChange(2, 20);
		boobChange(2);
		udderChange(2);
		textLP("\r\rYour breasts feel sore from the all the milky swelling. They've grown three cup sizes since you've gotten pregnant and dribble more and more!");
	}
	else if (pregnancyTime >= 210 && pregStatus < 3) {
		pregStatus = 3;
		lactChange(1, 50);
		lactChange(2, 50);
		boobChange(1);
		udderChange(1);
		textLP("\r\rYour breasts have slowed in their pregnant swelling. They should definitely be prepared for whatever you might give birth to... you hope.");
	}
	if (pregnancyTime < 80 && pregStatus > 0) { pregStatus = 0; }
	*/
	/*if (pregnancy == true){
		stats(0,0,-Math.floor((pregnancyTime)/25),-Math.floor((pregnancyTime)/25));
		if ((pregnancyTime + Math.ceil(time*pregRate)) > pregMaxTime + pregTimeMod){	
			doBirth();
			pregnancyTime = 0;
			pregnancy = false;
		}
		else{
			if ((pregnancyTime + Math.ceil(time*pregRate)) >= 80 && pregnancyTime < 80) {
				lactChange(1);
				boobChange(1);
				if (lactation == 1){ textLP(" Your body must be getting ready for the baby that's growing inside of you. Even your breasts feel fuller..."); }
				else { textLP("\r\rYour breasts are producing even more milk than normal. They're even a little fuller... Your body must be getting ready for the baby that's growing inside of you."); }
			}
			else if ((pregnancyTime + Math.ceil(time*pregRate)) >= 140 && pregnancyTime < 140) {
				lactChange(1);
				boobChange(2);
				textLP("\r\rYour breasts feel sore from the all the milky swelling. They've grown three cup sizes since you've gotten pregnant and dribble more and more!");
			}
			else if ((pregnancyTime + Math.ceil(time*pregRate)) >= 210 && pregnancyTime < 210) {
				lactChange(2);
				boobChange(1);
				textLP("\r\rYour breasts have slowed in their pregnant swelling. They should definitely be prepared for whatever you might give birth to... you hope.");
			}
			pregnancyTime += Math.ceil(time*pregRate);		
			stats(0,0,Math.floor(pregnancyTime/25),Math.floor(pregnancyTime/25)); 
		}
	}*/

	//Egg laying
	if (eggLaying > 0 && vagTotal > 0 && pregCheck(1) && time > 0){
		var tempInt:int = time + 2*eggRate;
		var tempInt2:int = 0;
		while (tempInt > 0) {
			eggTime--;
			tempInt--;
			if (eggTime <=0) {
				tempInt2++;
				eggTime = eggMaxTime;
			}
		}
		if (tempInt2 == 1)	{
			if (percent() < ment/2 + 20)	{
				if (eggType == 0) { textLP("\r\rHaving missed your body's signals, you suddenly double over and begin to groan as you feel something press against the inside of "+oneYour(2)+" "+vulvaDesc()+" nether-lips. Your thighs clench to hold it back, but the smooth slick object spreads your cunt wide, squeezing out into your "+clothesBottom()+" where it cracks and spreads into a wet mess.\r\rYolky goop squishing in your groin with little bits of white shell jabbing you here and there, you take a moment to pull out the broken unfertilized egg and attempt to clean up after yourself..."); }
				if (eggType == 1) { textLP("\r\rHaving missed your body's signals, you suddenly double over and begin to groan as you feel something press against the inside of "+oneYour(2)+" "+vulvaDesc()+" nether-lips. Your thighs clench to hold it back, but the smooth slick object spreads your cunt wide, squeezing out into your "+clothesBottom()+" where it squishes and spreads into a wet mess.\r\rSlimy goop squishing in your groin with little bits of squishy shell sliding about, you take a moment to pull out the broken unfertilized bug egg and attempt to clean up after yourself..."); }
			}
			else {
				if (eggType == 0) {
					textLP("\r\rYou pause for a moment as you feel something drop within your womb. Groaning a bit, you "+legVerb(1)+" your "+legDesc(2)+" in preparation, a hand pushing your "+clothesBottom()+" aside and helping spread "+vulvaDesc()+" nether-lips. You hold your breath and with a quick push, you feel "+oneYour(2)+" cunt"+plural(2)+" stretch wide. Your fingers feel the hard shell beginning to crown and with a grunt it slips out into your palm.\r\rYou take a moment to gather yourself, slipping the smooth, round egg through your slit, still wet from your inner-slime, before you finally pull it out from your "+clothesBottom()+". Drying it off, you have something to snack on later.");
					itemAdd(219);
				}
				if (eggType == 1) {
					textLP("\r\rYou pause for a moment as you feel something drop within your womb. Groaning a bit, you "+legVerb(1)+" your "+legDesc(2)+" in preparation, a hand pushing your "+clothesBottom()+" aside and helping spread "+vulvaDesc()+" nether-lips. You hold your breath and with a quick push, you feel "+oneYour(2)+" cunt"+plural(2)+" stretch wide. Your fingers feel the soft shell beginning to crown and with a grunt it slips out into your palm.\r\rYou take a moment to gather yourself, slipping the squishy round egg through your slit, still wet from your inner-slime, before you finally pull it out from your "+clothesBottom()+". Drying it off, you have something to snack on later.");
					itemAdd(253);
				}
			}
		}
		if (tempInt2 > 1) {
			if (percent() < ment/2 + 20 - 4*tempInt2)	{
				if (eggType == 0) { textLP("\r\rHaving been distracted and unable to lay for such a long time, you are unprepared for the buildup of ovid objects within your womb. You double over as you feel them crowd against the inside of your "+vulvaDesc()+" nether-lips, your thighs clenching to hold them back, but the smooth slick objects press on through anyways. They squeeze out into your "+clothesBottom()+" where they pile up and crack, spreading into a wet mess.\r\rYolky goop squishing in your groin with little bits of white shell jabbing you here and there, you take a moment to pull out the broken unfertilized eggs and attempt to clean up after yourself..."); }
				if (eggType == 1) { textLP("\r\rHaving been distracted and unable to lay for such a long time, you are unprepared for the buildup of spherical objects within your womb. You double over as you feel them crowd against the inside of your "+vulvaDesc()+" nether-lips, your thighs clenching to hold them back, but the smooth slick objects press on through anyways. They squeeze out into your "+clothesBottom()+" where they pile up and squish, spreading into a wet mess.\r\rSlimy goop squishing in your groin with little bits of squishy shell sliding about, you take a moment to pull out the broken unfertilized bug eggs and attempt to clean up after yourself..."); }
			}
			else {
				if (eggType == 0) {
					textLP("\r\rHaving been distracted and unable to lay for such a long time, you pause for a moment as you prepare for the objects that have built up within your womb. Groaning a bit, you "+legVerb(1)+" your "+legDesc(2)+" in preparation, a hand pushing your "+clothesBottom()+" aside and helping spread "+vulvaDesc()+" nether-lips. You hold your breath and with a quick push, you feel "+oneYour(2)+" cunt"+plural(2)+" stretch wide. Your fingers feel the hard shell beginning to crown and with a grunt it slips out into your palm. You place it down beside you and continue to lay until you are completely empty.\r\rYou take a moment to gather yourself, slipping the last smooth, round egg through your slit, still wet from your inner-slime, before you finally pull it out from your "+clothesBottom()+". Drying them all off, you have some snacks for later.");
					while (tempInt2 > 0) {
						itemAdd(219);
						tempInt2--;					
					}
				}
				if (eggType == 1) {
					textLP("\r\rHaving been distracted and unable to lay for such a long time, you pause for a moment as you prepare for the objects that have built up within your womb. Groaning a bit, you "+legVerb(1)+" your "+legDesc(2)+" in preparation, a hand pushing your "+clothesBottom()+" aside and helping spread "+vulvaDesc()+" nether-lips. You hold your breath and with a quick push, you feel "+oneYour(2)+" cunt"+plural(2)+" stretch wide. Your fingers feel the soft shell beginning to crown and with a grunt it slips out into your palm. You place it down beside you and continue to lay until you are completely empty.\r\rYou take a moment to gather yourself, slipping the last squishy round egg through your slit, still wet from your inner-slime, before you finally pull it out from your "+clothesBottom()+". Drying them all off, you have some snacks for later.");
					while (tempInt2 > 0) {
						itemAdd(253);
						tempInt2--;					
					}
				}
			}
		}
	}

	//Cock-Snake Pregnancy
	if (cockSnakePreg > 0) {
		if (cockSnakePreg - time <= 0) {
			var birthCount:int = 0;
			textLP("\r\rYou feel a sudden squirming within your womb. You brace yourself as you feel the cock-snake within slither its way through your passage. Your "+clothesBottom()+" becomes drenched by your feminine lubricant as a bunch of it splashes out, the phallic head of the snake breaching your "+vulvaDesc()+" lips. Its body constantly drags over your sensitive flesh as it flees what is about to come, making you shudder in mild orgasm as the creature descends down your "+legDesc(1)+". You gasp and regain yourself, the snake slithering away. It must have been too hungry too survive inside you any longer...");
			cockSnakePreg = 0;
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i + 1] == 1503) {
					pregArray[i] = false;
					pregArray[i+3] = 0;
					birthCount++;
					if (birthCount == 2) { textLP("\r\rAnd it's not the first; you shudder again as another snake in another womb escapes out from your "+clothesBottom()+" and down your "+legDesc(1)+", giving up on you like the first.");	}
					if (birthCount == 3) { textLP("\r\rFollowed by another...");	}
					if (birthCount > 3)	{ textLP("\r\rAnd another...");	}
					doLust(-Math.floor(sen/4), 2, 2);
				}
				i += 5;
			}
		}
		else if (cockSnakePreg - time <= 10) {
			textLP("\r\rYour "+bellyDesc()+" belly twists and jiggles about as the snake inside boinks about your womb. It seems to know all the best places to touch, greatly arousing you over time with its squirming, teasing you much more vigorously to make you thirst for cum down below...");
			cockSnakePreg -= time;
			doLust(5*time, 1);
		}
		else if (cockSnakePreg - time <= 30) {
			textLP("\r\rYour "+bellyDesc()+" belly shudders as the snake inside clamors for cum, arousing you over time with its twisting and squirming, helping your passage grow sensitive and thirsty for penetration...");
			cockSnakePreg -= time;
			doLust(3*time, 1);
		}
		else if (cockSnakePreg - time <= 50) {
			textLP("\r\rYour "+bellyDesc()+" belly wiggles a bit as the snake inside tries to tease your passage, making you thirsty for cock below and arousing you over time...");
			cockSnakePreg -= time;
			doLust(time, 1);
		}
		else { cockSnakePreg -= time; }
	}

	//Malon Pregnancy
	if (malonRep == 4){	malonPreg +=time; }

	//Lila Pregnancy
	if ((lilaPreg + time) > 40 && lilaPreg <= 40 && lilaPreg > 0) { 
		lilaMilk++;
		if (lilaMilk > 19) { lilaMilk = 19; }
	}
	if ((lilaPreg + time) > 80 && lilaPreg <= 80 && lilaPreg > 0) { 
		lilaMilk += 2;	
		if (lilaMilk > 19) { lilaMilk = 19; }
	}
	if (lilaPreg > 0){ lilaPreg += time; }

	//Silandrias Pregnancy
	if (silPreg > 0 && silRep < 5 && time > 0) {
		silPreg += time + 2*silRate;
		var tempInt:int = time + silRate;
		if (silPreg > 30 && silTied == false){
			while (tempInt > 0) {
				silLay--;
				tempInt--;
				if (silLay <= 0) {
					silPreg -= 10;
					silLay = 10;
				}
			}
		}				
	}
	else if (silPreg > 0 && silRep == 5 && time > 0 && silGrowthTime <= 360 && silPreg < 10000) {
		silPreg += time + 2*silRate;
		silGrowthTime += time;
	}

	//Heat
	if (heat > 0 && vagTotal > 0 && !pregCheck(0)){		
		if (heatTime >= 0 && (heatTime - time) < 0) {
			textLP("\r\rYour crotch feels hot and tingly, your face becoming flush. Thoughts of sex, being pounded and filled with seed until your womb has been sufficiently impregnated, permeate your mind and makes you greatly aroused. You're feeling especially fertile and extremely lustful as you go into heat...");
			pregChanceMod += 15;
			statsMod(0,-5,10,0);
			doLust(15, 0);
			vagMoistMod += 3;
			heatTime = -24;
		}
		else if (heatTime < 0 &&(heatTime + time) >= 0){
			textLP("\r\rYou breath a sigh of relief as the heat finally passes, your body calming and no longer needing to reproduce as much.");
			pregChanceMod -= 15;
			statsMod(0,5,-10,0);
			vagMoistMod -= 3;
			heatTime = heatMaxTime;
		}
		else if (heatTime > 0 && (heatTime - time) > 0) { heatTime -= time; }
		else if (heatTime < 0 && (heatTime + time) < 0) { heatTime += time;	}
	}
	else if (heat > 0 && heatTime < 0 && pregCheck(0)){
		textLP("\r\rYou breath a sigh of relief as the heat passes, your body calming and no longer needing to reproduce as much. However, it seems to have ended a bit early...");
		pregChanceMod -= 15;
		statsMod(0,5,-10,0);
		vagMoistMod -= 3;
		heatTime = heatMaxTime;
	}
	else if (heat > 0 && heatTime != heatMaxTime && pregCheck(0)) { heatTime = heatMaxTime; }
	else if (heat < 1 && heatTime > 0){
		heatMaxTime = 0;
		heatTime = 0;
	}
	else if ((heat < 1 || vagTotal < 1) && heatTime < 0){
		pregChanceMod -= 15;
		statsMod(0,5,-10,0);
		vagMoistMod -= 3;
		heatMaxTime = 0;
		heatTime = 0;
	}

	//Milk engorgement
	if (lactation > 0){
		if (milkEngorgementLevel < 3 && milkEngorgement + ((lactation+milkMod)*time) > ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2 && milkEngorgement <= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2) {
			textLP("\r\rPulling "+pullUD(1)+" your "+clothesTop()+", streams of milk shoot from your aching tits. Your nipples dribble uncontrollably, occasionally spitting the milk quite far. Your mammaries are producing far more milk than your breasts can hold and will continue to waste breastmilk until you drain them or they dry up from lack of demand.");
			if (milkEngorgementLevel < 1) { boobChange(3); }
			else if (milkEngorgementLevel < 2) { boobChange(2); }
			else { boobChange(1); }
			milkEngorgementLevel++;
		}
		else if (milkEngorgementLevel < 2 && milkEngorgement + ((lactation+milkMod)*time) > ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1.5 && milkEngorgement <= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1.5) {
			textLP("\r\rYour "+clothesTop()+" is soaked in front. Milk dribbles from your nipples almost constantly, your breasts slightly overfull and engorged. The abundant supply is getting to be a little more than the plush mounds can handle.");
			if (milkEngorgementLevel < 1) { boobChange(2); }
			else { boobChange(1); }
			milkEngorgementLevel++;
		}
		else if (milkEngorgementLevel < 1 && milkEngorgement + ((lactation+milkMod)*time) > (breastSize*(breastSize+1) + tallness/4)*4+milkCap && milkEngorgement <= (breastSize*(breastSize+1) + tallness/4)*4 +milkCap) {
			textLP("\r\rYour "+clothesTop()+" feels moist around your nipples. Your breasts feel slightly swollen as the wet blotches spread, milk leaking from your laden mammaries. It's a sign that they are nice and full for a good breastfeeding, or whatever your kinky mind has for them.");
			milkEngorgementLevel++;
			boobChange(1);
		}
		milkEngorgement += ((lactation+milkMod)*time);
	}
	if (udderLactation > 0 && udders == true) {
		if (udderEngorgementLevel < 3 && udderEngorgement + ((udderLactation+milkMod)*time) > ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2 && udderEngorgement <= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2) {
			textLP("\r\rJets of milk shoot from the teats of your udder with each step. When standing still, it dribbles constantly, your udder so big and sore and especially sensitive from being stretched and heavy with engorgement. The production of milk far exceeds its capacities, wasting milk until you drain it or it dries up.");
			if (udderEngorgementLevel < 1) { udderChange(5); }
			else if (udderEngorgementLevel == 1) { udderChange(3); }
			udderEngorgementLevel++;
			udderChange(3);
		}
		else if (udderEngorgementLevel < 2 && udderEngorgement + ((udderLactation+milkMod)*time) > ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1.5 && udderEngorgement <= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1.5) {
			textLP("\r\rYour "+clothesBottom()+" is soaked in front. Milk dribbles from your teats almost constantly, too much to retain. The abundant supply seems to be overwhelming the lack of demand...");
			if (udderEngorgementLevel < 1) { udderChange(2); }
			udderEngorgementLevel++;
			udderChange(3);
		}
		else if (udderEngorgementLevel < 1 && udderEngorgement + ((udderLactation+milkMod)*time) > (udderSize*(udderSize+1) + tallness/4)*4 +milkCap && udderEngorgement <= (udderSize*(udderSize+1) + tallness/4)*4 +milkCap) {
			textLP("\r\rYour "+clothesBottom()+" feels moist beneath your teats. Your udder feels slightly swollen as milk leaks out. It is nice and full enough for a good milking.");
			udderEngorgementLevel++;
			udderChange(2);
		}

		udderEngorgement += ((udderLactation+milkMod)*time);
	}
	//Nipple determines increase in milk production (in doBoobMasturbate) or lackthereof
	/*if ((nipplePlay - time/nipplePlay) == 0 && lactation > 0 && nipplePlay > 0) { nipplePlay = -nipplePlay; }
	if ((udderPlay - time/udderPlay) == 0 && lactation > 0 && udderPlay > 0) { udderPlay = -udderPlay; }
	if (lactation > 0 && nipplePlay > 0) { nipplePlay -= time/nipplePlay; }
	if (udderLactation > 0 && udderPlay >= 0){ udderPlay -= time/udderPlay; }
	if (lactation > 0 && nipplePlay < 0) { nipplePlay -= time*nipplePlay; }
	if (udderLactation > 0 && udderPlay < 0){ udderPlay -= time*udderPlay; }
	trace("play "+nipplePlay+", lactation "+lactation);*/
	

	if (nipplePlay > 100 && lactation > 0){
		lactChange(1, 15);
		textLP("\r\rYour breasts feel even more active, the high demand on their motherly supply increase your production rate.");
		nipplePlay  = 0;
	}
	if (udderPlay > 100 && udderLactation > 0){
		lactChange(2, 25);
		textLP("\r\rYour breasts feel even more active, the high demand on their motherly supply increase your production rate.");
		udderPlay  = 0;
	}

	if (lactation > 0 && !(attireTop == 28 && percent() < 50)) { nipplePlay -= time; }
	if (nipplePlay > 100 && lactation <= 0) {
		lactChange(1, 15);
		textLP(" All of the attention to your nipples has induced your milky state.");
		nipplePlay = 0;
	}
	if (udderLactation > 0 && udders == true) { udderPlay -= time; }
	else if (udderPlay > 100) {
		lactChange(2, 25);
		textLP(" All of the attention to your teats has induced your milky state.");
		udderPlay = 0;
	}

	if (lactation >0 && nipplePlay < -20) {
		lactChange(1, -10);
		if (lactation == 0) { textLP(" It seems as though the mammary glands in your breasts have adapted to the lack of demand."); }
		nipplePlay = 0;
	}
	if (udderLactation >0 && udderPlay < -20 && udders == true) {
		lactChange(2, -15);
		if (udderLactation == 0) { textLP(" It seems as though the mammary glands in your udder have adapted to the lack of demand."); }
		udderPlay = 0;
	}

	//Milk Suppressant
	if ((lactation > 0 || udderLactation > 0) && milkSuppressant > 0 ){
		textLP("\r\rThe flow of milk quickly seizes up and stops as the milk suppressant takes over and prevents any more from escaping.");
		milkSuppressantLact += lactation;
		milkSuppressantUdder += udderLactation;
		lactation = 0;
		udderLactation = 0;
	}

	if (milkSuppressant > 0) {

		if (milkSuppressantLact > 0){
			if (milkEngorgementLevel < 3 && milkEngorgement + ((milkSuppressantLact+milkMod)*time) > ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2 && milkEngorgement <= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2) {
				textLP("\r\rYour breasts are so swollen that they feel like balloons on your chest. When standing still, it takes a while for the fluid inside to stop swishing, they're so big and sore and especially sensitive from being stretched and heavy with engorgement. The production of milk far exceeds their capacities, but the excess just gets absorbed back into your body since the milk suppressant prevents any other escape...");
				if (milkEngorgementLevel < 1) { boobChange(3); }
				else if (milkEngorgementLevel < 2) { boobChange(2); }
				else { boobChange(1); }
				milkEngorgementLevel++;
			}
			else if (milkEngorgementLevel < 2 && milkEngorgement + ((milkSuppressantLact+milkMod)*time) > ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1.5 && milkEngorgement <= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1.5) {
				textLP("\r\rYour breasts feel stretched and heavy, so full of milk and almost aching because none of the white fluid will escape with the milk suppressant active...");
				if (milkEngorgementLevel < 1) { boobChange(2); }
				else { boobChange(1); }
				milkEngorgementLevel++;
			}
			else if (milkEngorgementLevel < 1 && milkEngorgement + ((milkSuppressantLact+milkMod)*time) > (breastSize*(breastSize+1) + tallness/4)*4+milkCap && milkEngorgement <= (breastSize*(breastSize+1) + tallness/4)*4 +milkCap) {
				textLP("\r\Your breasts feel slightly swollen and heavy, your mammaries laden with milk. It's a sign that they are nice and full for a good breastfeeding, or whatever your kinky mind has for them, if you could only leak...");
				milkEngorgementLevel++;
				boobChange(1);
			}
			milkEngorgement += ((milkSuppressantLact+milkMod)*time);
			
			if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*7) { milkEngorgement = ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*7; }
		}
		if (milkSuppressantUdder > 0 && udders == true) {
			if (udderEngorgementLevel < 3 && udderEngorgement + ((milkSuppressantUdder+milkMod)*time) > ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2 && udderEngorgement <= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2) {
				textLP("\r\rYour udder is so swollen that it feels like a balloon. When standing still, it takes a while for the fluid inside to stop swishing, it's so big and sore and especially sensitive from being stretched and heavy with engorgement. The production of milk far exceeds its capacities, but the excess just gets absorbed back into your body since the milk suppressant prevents any other escape...");
				if (udderEngorgementLevel < 1) { udderChange(5); }
				else if (udderEngorgementLevel == 1) { udderChange(3); }
				udderEngorgementLevel++;
				udderChange(3);
			}
			else if (udderEngorgementLevel < 2 && udderEngorgement + ((milkSuppressantUdder+milkMod)*time) > ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1.5 && udderEngorgement <= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1.5) {
				textLP("\r\rYour udder feels so stretch and heavy, so full of milk and almost aching because none of the white fluid will escape with the milk suppressant active...");
				if (udderEngorgementLevel < 1) { udderChange(2); }
				udderEngorgementLevel++;
				udderChange(3);
			}
			else if (udderEngorgementLevel < 1 && udderEngorgement + ((milkSuppressantUdder+milkMod)*time) > (udderSize*(udderSize+1) + tallness/4)*4 +milkCap && udderEngorgement <= (udderSize*(udderSize+1) + tallness/4)*4 +milkCap) {
				textLP("\r\rYour udder feels slightly swollen, even though there is no milk flowing. It is nice and full enough for a good milking, if the milk suppressant wasn't stopping it.");
				udderEngorgementLevel++;
				udderChange(2);
			}

			udderEngorgement += ((milkSuppressantUdder+milkMod)*time);
			if (udderEngorgement >=((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*7){ udderEngorgement = ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*7; }
		}

		milkSuppressant -= time;

		if (milkSuppressant <= 0) {

			if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*6){
				textLP("\r\rYou feel a rumbling in your breasts as the milk suppressant begins to wear off. Your arms shake as you try to take care of your "+clothesTop()+", but to no avail.\r\rYou only see white as a roaring sound escapes your chest. Milk explodes from your nipples, spraying around and around, tearing apart your "+clothesTop()+" from the sheer pressure and drenching everything in the area. You can't hear or see anything and milk end up in nearly every hole. It takes a few minutes before the eruption dies down, leaving your nipples feeling limp and de-sensitized, your breasts still huge from the engorgement though feeling much more lighter. There's not much that can be said about your "+clothesTop()+" anymore though...");
				milkEngorgement = ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*.5;
				milkEngorgementLevel = 0;
				stats(0,0,0,-5);
				changeTop(-1);
			}
			else if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*4){
				textLP("\r\rYou suddenly can't breath as your chest tenses up. For an instant, you feel your "+nipDesc()+" nipples soften.\r\rMilk sprays with fervor all around you, spewing from your nipples like hoses. You shudder in orgasm from the force, milk getting everywhere. There's so much in there that you nearly tear apart your "+clothesTop()+" from the pressure of the gushing. But thankfully, the fabric survives and your nipples die back down, allowing you to see again... So much milk lost, but your breasts have returned to normal in those few moments...");
				milkAmount(1);
				doLust(-Math.floor(sen/2), 2, 3);				
			}
			else if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2){
				textLP("\r\rJets of milk spray from beneath your "+clothesTop()+" as the milk suppressant wears off. It quickly dies down without losing much milk, but you're now leaking again.");
				milkEngorgement = ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*2;
			}
			else if (milkEngorgement >= ((breastSize*(breastSize+1) + tallness/4)*4+milkCap)*1){
				textLP("\r\rMilk spurts up and begins dribbling down your chest as the milk suppressant wears off, your nipples calming down and leaking again.");
			}
			else { textLP("\r\rYour nipples soften up as the milk suppressant wears off, allowing you to leak once more."); }

			if (udderEngorgement >= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*6 && udders == true){
				textLP("\r\rYou feel a rumbling in your udder as the milk suppressant begins to wear off. Your legs shake as you try to take care of your "+clothesBottom()+", but to no avail.\r\rYou only see white as a roaring sound echoes around your belly. Milk explodes from your teats, spraying around and around, tearing apart your "+clothesBottom()+" from the sheer pressure and drenching everything in the area. You can't hear or see anything and milk end up in nearly every hole. It takes a few minutes before the eruption dies down, leaving your teats feeling limp and de-sensitized, your udder still huge from the engorgement though feeling much more lighter. There's not much that can be said about your "+clothesBottom()+" anymore though...");
				udderEngorgement = ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*.5;
				udderEngorgementLevel = 0;
				stats(0,0,0,-5);
				changeBot(-1);
			}
			else if (udderEngorgement >= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*4 && udders == true){
				textLP("\r\rYou suddenly feel sick as your belly tenses up. For an instant, you feel your "+teatDesc()+" teats soften.\r\rMilk sprays with fervor all around you, spewing from your teats like hoses. You shudder in orgasm from the force, milk getting everywhere. There's so much in there that you nearly tear apart your "+clothesBottom()+" from the pressure of the gushing. But thankfully, the fabric survives and your teats die back down, allowing you to see again... So much milk lost, but your udder has returned to normal in those few moments...");
				milkAmount(1);
				doLust(-Math.floor(sen/2), 2, 4);				
			}
			else if (udderEngorgement >= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2 && udders == true){
				textLP("\r\rJets of milk spray from beneath your "+clothesBottom()+" as the milk suppressant wears off. It quickly dies down without losing much milk, but you're now leaking again.");
				udderEngorgement = ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*2;
			}
			else if (udderEngorgement >= ((udderSize*(udderSize+1) + tallness/4)*4+milkCap)*1 && udders == true){
				textLP("\r\rMilk spurts up and begins dribbling down your "+legDesc(2)+" as the milk suppressant wears off, your teats calming down and leaking again.");
			}
			else { textLP("\r\rYour teats soften up as the milk suppressant wears off, allowing you to leak once more."); }
			

			lactation = milkSuppressantLact;
			udderLactation = milkSuppressantUdder;
			milkSuppressantLact = 0;
			milkSuppressantUdder = 0;
			milkSuppressant = 0;
		}

	}
	
	//Hunger
	if (hunger - time <= -50) {
		textLP("\r\rWith the lack of eating and all the action, you've managed to shave off a bit of your excess weight around your belly.");
		bellyMod -= 2;
		hunger = 0; 
		if (bellyMod <= 0) { 
			textLP(" Although, you don't exactly have any belly to shave off anymore, so instead your stomach growls with the hunger pains...");
			//doHP(-25);
			hunger = 0; 
			bellyMod = 0;
		}
	}
	else if (hunger - time >= 100) {
		textLP("\r\rYou notice a bit more chub around your belly thanks to all you've been eating lately. You may want to watch your diet more closely.");
		bellyMod += 5;
		hunger = hunger - time - 30;
	}
	else { hunger -= time; }

	//Exhaustion
	if (skipExhaustion == true) { skipExhaustion = false; }
	else { exhaustion += time; }
	if (exhaustion > 20 && exhaustion <= 32){
		textLP("\r\rYour body is getting tired, affecting your ability to do things. Sleep is sounding like a nice idea...");
		if (exhaustionPenalty == 0){
			exhaustionPenalty = 1;
			statsMod(-3,-3,0,0);
		}
	}
	else if (exhaustion > 32 && exhaustion <= 44){
		textLP("\r\rExhaustion is creeping over you, making any task seem tedious. Your wits are a lot less witty and your muscles are fatigued.");
		if (exhaustionPenalty == 1){
			exhaustionPenalty = 2;
			statsMod(-8,-8,0,0);
		}
		if (exhaustionPenalty == 0) {
			exhaustionPenalty = 2;
			statsMod(-11,-11,0,0);
		}
	}
	else if (exhaustion > 44){ 
		currentState = 1;
	}
	else {
		if (exhaustionPenalty == 1 && exhaustion <= 20){
			exhaustionPenalty = 0;
			statsMod(3,3,0,0);
		}
		if (exhaustionPenalty == 2 && exhaustion <= 20){
			exhaustionPenalty = 0;
			statsMod(11,11,0,0);
		}
		if (exhaustionPenalty == 2 && exhaustion <= 32){
			exhaustionPenalty = 1;
			statsMod(8,8,0,0);
		}
	}

	//Natural Lust Gain
	if (time > 0){
		if (percent() <= lib && lust < 90) { doLust(Math.floor(lib/25 + 1),0); }
	}

	//Lust Check
	if (lust < 90 && lustPenalty == 3){
		textLP("\r\rYour "+skinDesc()+" feels calmer, no longer hypersensitive.");
		statsMod(0,0,0,-10);
		lustPenalty = 2;
	}
	if (lust < 60 && lustPenalty == 2){
		textLP("\r\rStrength returns to your muscles now that the strong arousal has been sated.");
		statsMod(+5,0,0,0);
		lustPenalty = 1;
	}
	if (lust < 30 && lustPenalty == 1){
		textLP("\r\rWith the distracting 'itch' lifted from your mind, you're now able to focus better than before.");
		statsMod(0,+4,0,0);
		lustPenalty = 0;
	}
	
	
	//Vag belly check
	vagBellyChange(0,0);

	//Blue Balls
	if ((blueBalls+time) > 84 && blueBalls <= 84 && showBalls == true && balls > 0){ 
		textLP("\r\rYour "+ballDesc()+" balls feel swollen and heavy within your "+clothesBottom()+". The need to spill your seed makes you a little aroused.");
		doLust(Math.ceil(ballSize/4), 0);
	}
	if (balls > 0) { blueBalls += time; }

	//Body Oil
	if (bodyOil > 0){
		if (bodyOil - time <= 0){
			textLP("\r\rThe body oil finally dries off, leaving you "+skinDesc()+" not looking quite as shiny and attractive as before.");
			enticeMod -= 5;
			bodyOil = 0;
		}
		else { bodyOil -= 5; }
	}

	//Masochism Potion
	if ((masoPot - time) <= 0 && masoPot > 0 ){
		textLP("\r\rYou shiver a little as your nerves seem to feel more... normal. The effects of the Masochism Potion have apparently worn off, so you might want to be slightly more cautious once again.");
		masoPot = 0;
	}
	else if (masoPot > 0){	masoPot -= time; }

	//S Masochism Potion
	if ((sMasoPot - time) <= 0 && sMasoPot > 0 ){
		textLP("\r\rYou shiver a lot as your nerves seem to feel more... normal. The effects of the Superior Masochism Potion have apparently worn off, so you might want to be much more cautious once again.");
		sMasoPot = 0;
	}
	else if (sMasoPot > 0){	sMasoPot -= time; }

	//Baby Free Potion
	if ((babyFree - time) <= 0 && babyFree > 0 ){
		textLP("\r\rYour belly groans as you feel your fertility return to you, urging you to remain cautious of becoming pregnant again. It seems as though you're no longer as baby free as before.");
		if (vagTotal < 1) { textLP(" Not that any of that means anything to you, considering you don't even have a womb to become pregnant in the first place."); }
		babyFree = 0;
	}
	else if (babyFree > 0){	babyFree -= time; }

	//Charmed Status
	if (charmTime > 0) {
		if (charmTime - time <= 0) {
			textLP("\r\rYour charming effect wears off, making you not so alluring as before.");
			charmTime = 0;
			enticeMod -= 13;
		}
		else { charmTime -= time; }
	}

	//Pheromone
	if (pheromone > 0) {
		if (pheromone - time <= 0) {
			textLP("\r\rThe scent of pheromones finally fades away, leaving you not so unexpectedly desireable to nearly everything.");
			pheromone = 0;
			enticeMod -= 25;
			statsMod(0,0,-3,0);
		}
		else { pheromone -= time; }
	}

	//Eggcelerator
	if (eggceleratorTime > 0){
		if (eggceleratorTime - time <= 0) {
			textLP("\r\rYour belly feels calmer as the eggcelerator wears off, allowing your womb to relax a little.");
			eggceleratorTime = 0;
			eggRate -= eggceleratorDose;
			eggceleratorDose = 0;
		}
		else { eggceleratorTime -= time; }
	}

	//Fertile Gel
	if (fertileGel > 0){
		if (fertileGel - time <= 0) {
			textLP("\r\rYour womb cools off a little as the fertile gel wears off.");
			fertileGel = 0;
			pregChanceMod -= 10;
		}
		else { fertileGel -= time; }
	}

	//Plump Quat
	if (plumpQuats > 0){
		if (plumpQuats - time <= 0) {
			textLP("\r\rThe last of the quat dissolves inside your stomach, your belly bloating further as the abundant energy is added to your figure. Your stomach cools off, finished with the digestive process.");
			bellyMod += 5*plumpQuats;
			plumpQuats = 0;
		}
		else { 
			textLP("\r\rYour stomach gurgles warmly as it continues to digest the quat. So much energy from the fruit's flesh gets absorbed by your body, swelling your belly a little and giving you a bit more girth...");
			bellyMod += 5*time;
			plumpQuats -= time; 
		}
	}

	//Fertility Statue Curse
	if (fertilityStatueCurse > 0) {
		if (fertilityStatueCurse - time <= 0){
			textLP("\r\rThe overbearing feeling of lust finally subdues. Seems as though the statue's curse has finally worn off, so you won't be getting as much of a lesson about how to please the female gender. Well, at least for now...");
			fertilityStatueCurse = 0;
			minLust -= 10;
		}
		else { fertilityStatueCurse -= time; }
	}

	//Lila Wet Status
	if (lilaWetStatus > 0) {
		if (lilaWetStatus - time <= 0){
			textLP("\r\rThe flow in your loins calms down a bit after not having been influenced by a certain little felin in a while.");
			lilaWetStatus = 0;
			cockMoistMod -= 6;
			vagMoistMod -= 6;
			minLust -= 5;
		}
		else { lilaWetStatus -= time; }

	}

	//Milk Creeper Poison
	if (milkCPoisonNip > 0) {
		if (milkCPoisonNip - time <= 0){
			textLP("\r\rThe warmth from the poison in your bosom fades, no longer as tingly.");
			milkCPoisonNip = 0;
		}
		else { milkCPoisonNip -= time; }
	}
	if (milkCPoisonUdd > 0) {
		if (milkCPoisonUdd - time <= 0){
			textLP("\r\rThe warmth from the poison in your bosom fades, no longer as tingly.");
			milkCPoisonUdd = 0;
		}
		else { milkCPoisonUdd -= time; }
	}

	//Cock-Snake Venom
	if (cockSnakeVenom > 0) {
		if (cockSnakeVenom - time <= 0){
			textLP("\r\rThe warmth from the venom in your loins fades, your body fully metabolizing it and rendering it neutral.");
			cockSnakeVenom = 0;
		}
		else { cockSnakeVenom -= time; }
	}
	
	statDisplay();
	if (currentText == "Afterwards..."){ 
		textL("");
		doProcess(); 
	}
	else{ doEnd(); }
}

function affinity(humanChange:int, horseChange:int, wolfChange:int, catChange:int, cowChange:int, lizardChange:int, rabbitChange:int):void{
	human += Math.ceil(humanChange*changeMod);
	horse += Math.ceil(horseChange*changeMod);
	wolf += Math.ceil(wolfChange*changeMod);
	cat += Math.ceil(catChange*changeMod);
	cow += Math.ceil(cowChange*changeMod);
	lizard += Math.ceil(lizardChange*changeMod);
	rabbit += Math.ceil(rabbitChange*changeMod);
}

function aff(tempRace, tempChange, otherChange):void{
	human += Math.ceil(otherChange*changeMod);
	horse += Math.ceil(otherChange*changeMod);
	wolf += Math.ceil(otherChange*changeMod);
	cat += Math.ceil(otherChange*changeMod);
	cow +=	Math.ceil(otherChange*changeMod);
	lizard += Math.ceil(otherChange*changeMod);
	rabbit += Math.ceil(otherChange*changeMod);
	mouse += Math.ceil(otherChange*changeMod);
	bird += Math.ceil(otherChange*changeMod);
	pig += Math.ceil(otherChange*changeMod);
	pig += Math.ceil(otherChange*changeMod);
	skunk += Math.ceil(otherChange*changeMod);
	bug += Math.ceil(otherChange*changeMod);


	twoBoobAffinity += Math.ceil(otherChange*changeMod);
	fourBoobAffinity += Math.ceil(otherChange*changeMod);
	sixBoobAffinity += Math.ceil(otherChange*changeMod);
	eightBoobAffinity += Math.ceil(otherChange*changeMod);
	tenBoobAffinity += Math.ceil(otherChange*changeMod);

	cowTaurAffinity += Math.ceil(otherChange*changeMod);
	humanTaurAffinity += Math.ceil(otherChange*changeMod);

	if (tempRace == 1) { human += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 2) { horse += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 3) { wolf += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 4) { cat += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 5) { cow += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 6) { lizard += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 7) { rabbit += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 8) { mouse += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 9) { bird += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 10) { pig += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 11) { skunk += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
	if (tempRace == 12) { bug += Math.ceil(tempChange*changeMod) - Math.ceil(otherChange*changeMod); }
}

function affinityChange():void {
	textL("Something feels odd...");
	var chance:int = percent();

	//Simpler dom and second checker
	var affinityCheckArray:Array = [];

	affinityCheckArray.push(humanAffinity + human);
	affinityCheckArray.push(horseAffinity + horse);
	affinityCheckArray.push(wolfAffinity + wolf);
	affinityCheckArray.push(catAffinity + cat);
	affinityCheckArray.push(cowAffinity + cow);
	affinityCheckArray.push(lizardAffinity + lizard);
	affinityCheckArray.push(rabbitAffinity + rabbit);
	affinityCheckArray.push(mouseAffinity + mouse);
	affinityCheckArray.push(birdAffinity + bird);
	affinityCheckArray.push(pigAffinity + pig);
	affinityCheckArray.push(skunkAffinity + skunk);
	affinityCheckArray.push(bugAffinity + bug);

	//16 = numeric sort
	affinityCheckArray.sort(16);
	
	var domCheck:int = affinityCheckArray.pop();

	var second:int = affinityCheckArray.pop();

	
	//Checking for dominant blood
	//var domCheck:int = Math.max(humanAffinity + human, horseAffinity + horse, wolfAffinity + wolf, catAffinity + cat, cowAffinity + cow, lizardAffinity + lizard, rabbitAffinity + rabbit, mouseAffinity + mouse, birdAffinity + bird, pigAffinity + pig, skunkAffinity + skunk);

	if (domCheck == humanAffinity + human && human >= 0) { dominant = 1; }
	else if (domCheck == horseAffinity + horse && horse >= 0) { dominant = 2; }
	else if (domCheck == wolfAffinity + wolf && wolf >= 0) { dominant = 3; }
	else if (domCheck == catAffinity + cat && cat >= 0) { dominant = 4; }
	else if (domCheck == cowAffinity + cow && cow >= 0) { dominant = 5; }
	else if (domCheck == lizardAffinity + lizard && lizard >= 0) { dominant = 6; }
	else if (domCheck == rabbitAffinity + rabbit && rabbit >= 0) { dominant = 7; }
	else if (domCheck == mouseAffinity + mouse && mouse >= 0) { dominant = 8; }
	else if (domCheck == birdAffinity + bird && bird >= 0) { dominant = 9; }
	else if (domCheck == pigAffinity + pig && pig >= 0) { dominant = 10; }
	else if (domCheck == skunkAffinity + skunk && skunk >= 0) { dominant = 11; }
	else if (domCheck == bugAffinity + bug && bug >= 0) { dominant = 12; }

	//Specific Racial Changes
	//Human
	if (humanAffinity+human >= 40 && humanAffinity < 40) {
		textLP("\r\rYour body feels quite... adaptive? There's a strange sense of being more susceptible to change");
		changeMod += .5;
	}
	if (humanAffinity+human < 40 && humanAffinity >= 40) {
		textLP("\r\rYour body feels less ready to bend to your surroundings as much as it had anymore.");
		changeMod -= .5;
	}
	//Horse
	if ((horseAffinity+horse) >= 40 && horseAffinity < 40) {
		if (cockTotal > 0){	textLP("\r\rYour "+clothesBottom()+" grows tight, filling with extra cockflesh. Opening the "+clothesBottom()+", your cock"+plural(1)+" spill"+plural(3)+" out, dangling while swelling larger and larger. The growth slows to a halt, much, much longer than before. 'Hung like a horse' seems like the appropriate phrase. And you're also going to have to sneak back into town while you hide your perverse excess flesh, rushing to a tailor to refit you."); }
		if (vagTotal > 0) { textLP("\r\rDoubling over, you hug your belly as it begins to cramp. You can clearly feel your vaginal flesh grow within, the walls growing much deeper. By the time it's over, you feel somewhat like a mare, able to take cocks much larger than you could have before...");  	}
		cockSizeMod += 1;
		vagSizeMod += 1;
		vagBellyChange(0,0);
	}
	if ((horseAffinity+horse) < 40 && horseAffinity >= 40) {
		if (cockTotal > 0){	textLP("\r\rYour "+clothesBottom()+" feel baggier. Opening the "+clothesBottom()+", your cock"+plural(1)+" shrinking towards your groin, losing a great deal of length. It seems like you have lost your equine engorgement."); }
		if (vagTotal > 0) { textLP("\r\rYour belly feels rather empty all of a sudden. Placing your hand over it, you can feel the vaginal flesh recede, no longer built like mare.");	}
		cockSizeMod -= 1;
		vagSizeMod -= 1;
		vagBellyChange(0,0);
	}
	//Wolf
	if ((wolfAffinity+wolf) >= 40 && wolfAffinity < 40) {
		if (cockTotal > 0){	textLP("\r\rA sudden wave of lust washes over you, your cock"+plural(1)+" growing stiff in your "+clothesBottom()+". You quickly open open your "+clothesBottom()+" to see what's going on. Within, the base"+plural(1)+" of your shaft"+plural(1)+" swell"+plural(3)+". In an instant, you're surprised by spurts of cum that shower you, a small volley from a quick unexpected orgasm. Wiping your eyes so you can see, the swelling persists as you continue to come for a while. It would be very difficult to remove your cock from a hot hole with a large 'knot' like that, until finished draining your seed."); }
		knot = true;
		cumMod += .5;
	}
	if ((wolfAffinity+wolf) < 40 && wolfAffinity >= 40) {
		if(cockTotal > 0){ textLP("\r\rAn odd draining fills your "+clothesBottom()+". Looking within, you see your cock"+plural(1)+" grow slightly stiff, your knot"+plural(1)+" swelling. Pre lazily seeps from your urethra"+plural(1)+" as the knot"+plural(1)+" deflate"+plural(1)+" immediately while your cock"+plural(1)+" remain"+plural(3)+" stiff. It seems as though you have lost your knot"+plural(1)+"."); }
		knot = false;
		cumMod -= .5;
	}
	//Cat
	if ((catAffinity+cat) >= 40 && catAffinity < 40) {
		if (vagTotal > 0){ textLP("\r\rYour "+clothesBottom()+" grows slightly moist, your cunt"+plural(2)+" burning with arousal. The feeling quickly fades, but something tells you your reproductive instincts might occasionally take over..."); }
		if (heat < 1) { 
			heatMaxTime = 96;
			heatTime = 96;
			heat++;
		}
		else if (heat >= 1) { 
			heatMaxTime -= 12; 
			heat++;
		} 
	}
	if ((catAffinity+cat) < 40 && catAffinity >= 40) {
		if(vagTotal > 0){ textLP(" You also feel your vagina"+plural(2)+" cool a little, no longer as eager to be impregnated on certain days."); }
		if (heat >= 2) { heatMaxTime += 12; }
		heat--;
	}
	//Cow
	trace(cowAffinity+cow);
	if ((cowAffinity+cow) >= 10 && cowAffinity < 10) {
		textLP("\r\rYour nipples stiffen beneath your "+clothesTop()+". They protrude nearly half an inch further than before!");
		nippleSize += 2;
		milkMod += 50;
	}
	if ((cowAffinity+cow) >= 25 && cowAffinity < 25) {
		textLP("\r\rYour nipples stiffen beneath your "+clothesTop()+". They protrude an inch further than before! And your hips seem slightly broader...");
		lactChange(1, 75);
		nippleSize += 5;
		hips += 4;
		milkMod += 50;
	}
	if ((cowAffinity+cow) >= 40 && cowAffinity < 40) {
		textLP("\r\rYour nipples squirm within your "+clothesTop()+". They've grown over an inch and a half in length! And your hips feel like they're more 'square' than before...");
		lactChange(1, 75);
		nippleSize += 8;
		hips += 6;
		milkMod += 50;
	}
	if ((cowAffinity+cow) >= 55 && cowAffinity < 55) {
		textLP("\r\rJust above your groin, your belly begins to feel bloated. You wince as it pushes against your "+clothesBottom()+", especially noticing the increased sensitivity of four spots in particular. Before you can act, your "+clothesBottom()+" tears at the waist, as a mound crashes through. Hanging naked and free, with four teats twice as long as your nipples, an udder about twice as large as your chest dribbles milk. You'll definitely be getting a special bra or perhaps adjust your "+clothesBottom()+" when you get back to town, at least to account for your surprisingly wider hips... ");
		lactChange(1, 150);
		lactChange(2, lactation);
		hips += 8;
		udders = true;
		udderSize = 2*breastSize;
		teatSize = 2*nippleSize;
	}
	if ((cowAffinity+cow) < 10 && cowAffinity >= 10) {
		textLP("\r\rYour nipples are less noticeable, shrinking by nearly half an inch.");
		nippleSize -= 2;
		milkMod -= 50;
	}
	if ((cowAffinity+cow) < 25 && cowAffinity >= 25) {
		textLP("\r\rYour nipples seem less noticeable as they shrink by an inch and your hips are less wide.");
		lactChange(1, -50);
		if (udders == true)	{ lactChange(2, -50); }
		nippleSize -= 5;
		hips -= 4;
		milkMod -= 50;
	}
	if ((cowAffinity+cow) < 40 && cowAffinity >= 40) {
		textLP("\r\rYour "+clothesTop()+" feels slightly looser, as your nipples shrink by over an inch and a half. You hips also narrow a little, protruding less than before.");
		lactChange(1, -50);
		if (udders == true)	{ lactChange(2, -50); }
		hips -= 6;
		nippleSize -= 8;
		milkMod -= 50;
	}
	if ((cowAffinity+cow) < 55 && cowAffinity >= 55) {
		if (!udderCheck(1)) {
			textLP("\r\rThe fleshy bag of milk at your abdomen shrinks to nothing, disappearing along with its teats. You're no longer lugging around an udder. Plus your waistbands seem quite loose after your hips shrink by a few inches." );
			lactChange(1, -100);
			hips -= 8;
			udders = false;
			udderLactation = 0;
			udderEngorgement = 0;
			udderEngorgementLevel = 0;
			udderPlay = 0;
			udderSize = 0;
			teatSize = 0;
		}
		else {
			textLP("\r\rYour waistbands seem quite loose after your hips shrink by a few inches.");
			lactChange(1, -100);
			hips -= 8;
		}
	}
	//Lizard
	if ((lizardAffinity+lizard) >= 40 && lizardAffinity < 40) {
		if (cockTotal == 1) { cockChange(0,1);	}
		if (vagTotal > 0) {	textLP("\r\rAn odd sensation of warmth fills your womb"+plural(2)+". You can literally feel your eggs stir within, preparing themselves to cycle much more frequently, growing hard shells to protect them, whenever you're not pregnant."); }
		if (eggLaying == 0)	{
			eggLaying++;
			eggType = 0;
			eggMaxTime = 36;
			eggTime = 36;
		}
		else { 
			eggMaxTime -= 6; 
			eggLaying++;
		}
	}
	if ((lizardAffinity+lizard) < 40 && lizardAffinity >= 40) {
		if (cockTotal == 2) { cockChange(0,-1);	}
		if (vagTotal > 0) {	textLP("\r\rYour womb"+plural(2)+" calm"+plural(4)+" down, no longer working as hard to pop out more eggs."); }
		if (eggLaying == 1)	{
			eggLaying--;
			eggMaxTime = 0;
			eggTime = 0;
		}
		else if (eggLaying > 1) { 
			eggMaxTime += 6; 
			eggLaying--;
		}
	}
	//Rabbit
	if ((rabbitAffinity+rabbit) >= 10 && rabbitAffinity < 10) {	stats(0,0,2,0); }
	if ((rabbitAffinity+rabbit) >= 30 && rabbitAffinity < 30) {	stats(0,0,5,0); }
	if ((rabbitAffinity+rabbit) >= 50 && rabbitAffinity < 50) {	stats(0,0,7,0); }
	if ((rabbitAffinity+rabbit) >= 40 && rabbitAffinity < 40) {	
		if (vagTotal > 0) { textLP("\r\rYour womb"+plural(2)+" feel"+plural(4)+" a bit... hyperactive. It feels as though you could breed like some sort of cute, small, fuzzy animal."); }
		pregRate += 1;
	}
	if ((rabbitAffinity+rabbit) < 10 && rabbitAffinity >= 10) {	stats(0,0,-2,0); }
	if ((rabbitAffinity+rabbit) < 30 && rabbitAffinity >= 30) {	stats(0,0,-5,0); }
	if ((rabbitAffinity+rabbit) < 50 && rabbitAffinity >= 50) {	stats(0,0,-7,0); }
	if ((rabbitAffinity+rabbit) < 40 && rabbitAffinity >= 40) {	
		if (vagTotal > 0) { textLP("\r\rYour womb"+plural(2)+" feel"+plural(4)+" calmer. Now you can take your fertility nice and easy... relatively."); }
		pregRate -= 1;
	}
	//Mouse
	if ((mouseAffinity+mouse) >= 40 && mouseAffinity < 40) {	
		textLP("\r\rA slight paranoia lingers in your mind, making you feel quite skittish. If you needed to, you could probably run from a threat at the drop of a needle.");
		if (balls > 0 && showBalls == true) { textLP(" Your "+ballDesc()+" nuts also feel slightly 'skittish', like they're making far more than they just were...");	}
		runMod += 25;
		cumMod += 3;
	}
	if ((mouseAffinity+mouse) < 40 && mouseAffinity >= 40) {	
		textLP("\r\rThe paranoia dissipates from your mind, your body languishing and no longer as flighty.");
		if (balls > 0 && showBalls == true) { textLP(" Your "+ballDesc()+" nuts also calm down, their production diminishing."); }
		runMod -= 25;
		cumMod -= 3;
	}
	//Bird
	if ((birdAffinity+bird) >= 40 && birdAffinity < 40) {
		textLP("\r\rYours eyes dart about for a moment as shiny things become suddenly more noticeable. After a few moments, you calm down, but your definitely able to spot shiny things more accurately, able to find an extra couple coins whenever you come across any."); 
		coinMod += 2;
		if (vagTotal > 0) {	textLP("\r\rAn odd sensation of warmth fills your womb"+plural(2)+". You can literally feel your eggs stir within, preparing themselves to cycle much more frequently, growing hard shells to protect them, whenever you're not pregnant."); }
		if (eggLaying == 0)	{
			eggLaying++;
			eggMaxTime = 36;
			eggTime = 36;
			eggType = 0;
		}
		else { 
			eggMaxTime -= 6; 
			eggLaying++;
		}
	}
	if ((birdAffinity+bird) < 40 && birdAffinity >= 40) {
		textLP("\r\rYour affinity for shinies dissipates. Not quite as focused on them, you aren't able to find an extra couple coins anymore.");
		coinMod -= 2;
		if (vagTotal > 0) {	textLP("\r\rYour womb"+plural(2)+" calm"+plural(4)+" down, no longer working as hard to pop out more eggs."); }
		if (eggLaying == 1)	{
			eggLaying--;
			eggMaxTime = 0;
			eggTime = 0;
		}
		else if (eggLaying > 1) { 
			eggLaying--;
			eggMaxTime += 6;
		}
	}
	//Pig
	if ((pigAffinity+pig) >= 10 && pigAffinity < 10) {	
		textLP("\r\rYour belly jiggles a bit more than you remember. Seems you've gotten a bit chubbier, despite what you have eaten...");
		bellyMod += 20;
	}
	if ((pigAffinity+pig) >= 30 && pigAffinity < 30) {	
		textLP("\r\rYour belly jiggles a bit more than you remember. Seems you've gotten a bit chubbier, despite what you have eaten...");
		bellyMod += 20;
	}
	if ((pigAffinity+pig) >= 50 && pigAffinity < 50) {	
		textLP("\r\rYour belly jiggles a bit more than you remember. Seems you've gotten a bit chubbier, despite what you have eaten...");
		bellyMod += 20;
	}
	if ((pigAffinity+pig) >= 70 && pigAffinity < 70) {	
		textLP("\r\rYour belly jiggles a bit more than you remember. Seems you've gotten a bit chubbier, despite what you have eaten...");
		bellyMod += 20;
	}
	if ((pigAffinity+pig) >= 40 && pigAffinity < 40) {	
		textLP("\r\rYou groan as you feel some of your extra weight grow heavier. Your hips grow wider and your ass grows larger, exaggerating your chubbiness.");
		if (balls > 0 && showBalls == true) { textLP(" Your "+ballDesc()+" balls also feel rather 'fat', growing heavy with seed...");	}
		cumMod += 5;
		hipMod += .5;
		buttMod += .5;

	}
	if ((pigAffinity+pig) < 10 && pigAffinity >= 10) {
		textLP("\r\rYour belly feels lighter, your extra porkiness dissipating.");
		bellyMod -= 20;
	}
	if ((pigAffinity+pig) < 30 && pigAffinity >= 30) {	
		textLP("\r\rYour belly feels lighter, your extra porkiness diminishing.");
		bellyMod -= 20;
	}
	if ((pigAffinity+pig) < 50 && pigAffinity >= 50) {	
		textLP("\r\rYour belly feels lighter, your extra porkiness diminishing.");
		bellyMod -= 20;
	}
	if ((pigAffinity+pig) < 70 && pigAffinity >= 70) {	
		textLP("\r\rYour belly feels lighter, your extra porkiness diminishing.");
		bellyMod -= 20;
	}
	if ((pigAffinity+pig) < 40 && pigAffinity >= 40) {	
		textLP("\r\rYou moan as you feel some of your extra weight lift from you. Your hips and rump shrink, no longer nearly as chubby.");
		if (balls > 0 && showBalls == true) { textLP(" Your "+ballDesc()+" balls also feel lighter, no longer producing as much seed.");	}
		cumMod -= 5;
		hipMod -= .5;
		buttMod -= .5;
	}

	//Skunk
	if ((skunkAffinity+skunk) >= 40 && skunkAffinity < 40) {	
		textLP("\r\rYou feel your "+buttDesc()+" rump grow slightly larger. Then a strange scent fills your nose, casually rising from your backside. It... It doesn't stink at all like you would expect from the area, but rather smells quite pleasant. A nice, pleasing, and even somewhat alluring aroma.\r\rYou try to see if you can control this scent, pushing some glands inside you never noticed before. And sure enough, you manage to spray out a more concentrated mist. However, you immediately start gagging. It smells horrible... Not something you want to try normally, but rather reserve for more severe occassions.");
		if (skinType == 2) { 
			textLP("\r\rAnd to accentuate the change further, two parallel stripes emerge in your fur, connecting together at your brow and rung over your head all the way down to your rump");
			if (tail == 11)	{ textLP(" where it connects to the stripes on your tail");	}
			textLP("."); 
		}
		enticeMod += 10;
		butt += 2;
	}
	if ((skunkAffinity+skunk) < 40 && skunkAffinity >= 40) {	
		textLP("\r\rYou feel your "+buttDesc()+" rump shrink slightly. The pleasant scent that exudes from it disappears, as well as the other scent you could produce.");
		if (skinType == 2) { 
			textLP("\r\rThe twin stripes in your fur from your head to your rump also fade");
			if (tail == 11)	{ textLP(", though the ones on your tail remain"); }
			textLP("."); 
		}
		enticeMod -= 10;
		butt -= 2;
	}

	//Bug
	if ((bugAffinity+bug) >= 40 && bugAffinity < 40) {
		if (vagTotal > 0) {	textLP("\r\rAn odd sensation of warmth fills your womb"+plural(2)+". You can literally feel your eggs stir within, preparing themselves to cycle much more frequently, growing soft shells to protect them, whenever you're not pregnant."); }
		if (eggLaying == 0)	{
			eggLaying++;
			eggType = 1;
			eggMaxTime = 14;
			eggTime = 14;
		}
		else { 
			eggMaxTime -= 6; 
			eggLaying++;
		}
	}
	if ((bugAffinity+bug) < 40 && bugAffinity >= 40) {
		if (vagTotal > 0) {	textLP("\r\rYour womb"+plural(2)+" calm"+plural(4)+" down, no longer working as hard to pop out more insect-like eggs."); }
		if (eggLaying == 1)	{
			eggLaying--;
			eggMaxTime = 0;
			eggTime = 0;
		}
		else if (eggLaying > 1) { 
			eggMaxTime += 6; 
			eggLaying--;
		}
	}





	
	//Check for secondary blood

	//var second:int = 0;


	
	/*if (dominant == 1) { humanAffinity = -1; }
	if (dominant == 2) { horseAffinity = -1; }
	if (dominant == 3) { wolfAffinity = -1; }
	if (dominant == 4) { catAffinity = -1; }
	if (dominant == 5) { cowAffinity = -1; }
	if (dominant == 6) { lizardAffinity = -1; }
	if (dominant == 7) { rabbitAffinity = -1; }
	if (dominant == 8) { mouseAffinity = -1; }
	if (dominant == 9) { birdAffinity = -1; }
	if (dominant == 10) { pigAffinity = -1; }
	second = Math.max(humanAffinity + human, horseAffinity + horse, wolfAffinity + wolf, catAffinity + cat, cowAffinity + cow, lizardAffinity + lizard, rabbitAffinity + rabbit, mouseAffinity + mouse, birdAffinity + bird, pigAffinity + pig);
	if (dominant == 1) { humanAffinity = domCheck - human; }
	if (dominant == 2) { horseAffinity = domCheck - horse; }
	if (dominant == 3) { wolfAffinity = domCheck - wolf; }
	if (dominant == 4) { catAffinity = domCheck - cat; }
	if (dominant == 5) { cowAffinity = domCheck - cow; }
	if (dominant == 6) { lizardAffinity = domCheck - lizard; }
	if (dominant == 7) { rabbitAffinity = domCheck - rabbit; }
	if (dominant == 8) { mouseAffinity = domCheck - mouse; }
	if (dominant == 9) { birdAffinity = domCheck - bird; }
	if (dominant == 10) { pigAffinity = domCheck - pig; }*/

	if ((humanAffinity + human) < 0){ humanAffinity = 0; }
	else if ((humanAffinity + human) > 100){ humanAffinity = 100; }
	else { humanAffinity += human; }
	if ((horseAffinity + horse) < 0){ horseAffinity = 0; }
	else if ((horseAffinity + horse) > 100){ horseAffinity = 100; }
	else { horseAffinity += horse; }
	if ((wolfAffinity + wolf) < 0){ wolfAffinity = 0; }
	else if ((wolfAffinity + wolf) > 100){ wolfAffinity = 100; }
	else { wolfAffinity += wolf; }
	if ((catAffinity + cat) < 0){ catAffinity = 0; }
	else if ((catAffinity + cat) > 100){ catAffinity = 100; }
	else { catAffinity += cat; }
	if ((cowAffinity + cow) < 0){ cowAffinity = 0; }
	else if ((cowAffinity + cow) > 100){ cowAffinity = 100; }
	else { cowAffinity += cow; }
	if ((lizardAffinity + lizard) < 0){ lizardAffinity = 0; }
	else if ((lizardAffinity + lizard) > 100){ lizardAffinity = 100; }
	else { lizardAffinity += lizard; }
	if ((rabbitAffinity + rabbit) < 0){ rabbitAffinity = 0; }
	else if ((rabbitAffinity + rabbit) > 100){ rabbitAffinity = 100; }
	else { rabbitAffinity += rabbit; }
	if ((mouseAffinity + mouse) < 0){ mouseAffinity = 0; }
	else if ((mouseAffinity + mouse) > 100){ mouseAffinity = 100; }
	else { mouseAffinity += mouse; }
	if ((birdAffinity + bird) < 0){ birdAffinity = 0; }
	else if ((birdAffinity + bird) > 100){ birdAffinity = 100; }
	else { birdAffinity += bird; }
	if ((pigAffinity + pig) < 0){ pigAffinity = 0; }
	else if ((pigAffinity + pig) > 100){ pigAffinity = 100; }
	else { pigAffinity += pig; }
	if ((skunkAffinity + skunk) < 0){ skunkAffinity = 0; }
	else if ((skunkAffinity + skunk) > 100){ skunkAffinity = 100; }
	else { skunkAffinity += skunk; }
	if ((bugAffinity + bug) < 0){ bugAffinity = 0; }
	else if ((bugAffinity + bug) > 100){ bugAffinity = 100; }
	else { bugAffinity += bug; }
	
	
	//Skin Change

	var maxSkin = Math.max(humanAffinity, pigAffinity);
	var maxFur = Math.max(horseAffinity,  wolfAffinity, catAffinity, cowAffinity, rabbitAffinity, mouseAffinity, skunkAffinity);
	var maxScale = Math.max(lizardAffinity);
	var maxFeather = Math.max(birdAffinity);
	var maxChitin = Math.max(bugAffinity);

	var maxNonSkin = Math.max(maxFur, maxScale, maxFeather, maxChitin);
	var maxNonFur = Math.max(maxSkin, maxScale, maxFeather, maxChitin);
	var maxNonScale = Math.max(maxFur, maxSkin, maxFeather, maxChitin);
	var maxNonFeather = Math.max(maxFur, maxScale, maxSkin, maxChitin);
	var maxNonChitin = Math.max(maxFur, maxScale, maxSkin, maxFeather);
	if (lockSkin == 0){
		if (maxSkin > (maxNonSkin + 35) && skinType != 1) {
			textLP("\r\rYour "+skinDesc()+" feels oddly cool. Looking at it, your "+skinDesc()+" shrinks into your skin, leaving you 'bald' all over. You feel a little naked as you get used to your bare skin.");
			skinType = 1;
		}
		if (maxFur > (maxNonFur + 35) && skinType != 2) {
			textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
			skinType = 2;
			if (skunkAffinity >= 40) { 
				textLP(" The fur is mostly a single color, except for two parallel stripes that connect at your brow and run over your head and down your back to your rump"); 
				if (tail == 11) { textLP(" where it connects to the stripes on your tail");	}
				textLP(".");
			}
		}
		if (maxScale > (maxNonScale + 35) && skinType != 3) {
			textLP("\r\rYour "+skinDesc()+" begins to feel oddly dry, feeling somewhat flaky. Before you know it, your whole body feels soft and extremely smooth, covered in a thin layer of scales.");
			skinType = 3;
		}
		if (maxFeather > (maxNonFeather + 35) && skinType != 4) {
			textLP("\r\rYour "+skinDesc()+" begins to tickle all over, tiny hair sprouting up all over and collecting into groups. Before you know it, you're rustling and fluffing up, sleeking back a layer of feathers.");
			skinType = 4;
		}
		if (maxChitin > (maxNonChitin + 35) && skinType != 5) {
			textLP("\r\rYour "+skinDesc()+" begins to feel stiff, as though it were getting harder. Before you know it, your whole body is covered with a layer of chitin, almost like full suit of segmented armor. However, unlike armor, this doesn't really afford you any protection, since you seem to have all the usual sensations through it like any other kind of skin.");
			if (legDesc(10) == "feet") { textLP(" And more of the chitin extends from your heels, making you stand higher without actually being taller as you walk more on your toes."); }
			skinType = 5;
		}
	}

	
	/*var maxNonScale = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, cowAffinity, rabbitAffinity, mouseAffinity, birdAffinity, pigAffinity);
	var maxNonSkin = Math.max(horseAffinity, wolfAffinity, catAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, birdAffinity);
	var maxNonFur = Math.max(humanAffinity, lizardAffinity, birdAffinity, pigAffinity);
	var maxNonFeather = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, pigAffinity);

	if (dominant == 1 && humanAffinity > (maxNonSkin + 35) && skinType != 1) {
		textLP("\r\rYour "+skinDesc()+" feels oddly cool. Looking at it, your "+skinDesc()+" shrinks into your skin, leaving you 'bald' all over. You feel a little naked as you get used to your bare skin.");
		skinType = 1;
	}
	if (dominant == 2 && horseAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 3 && wolfAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 4 && catAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 5 && cowAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 6 && lizardAffinity > (maxNonScale + 35) && skinType != 3) {
		textLP("\r\rYour "+skinDesc()+" begins to feel oddly dry, feeling somewhat flaky. Before you know it, your whole body feels soft and extremely smooth, covered in a thin layer of scales.");
		skinType = 3;
	}	
	if (dominant == 7 && rabbitAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 8 && mouseAffinity > (maxNonFur + 35) && skinType != 2) {
		textLP("\r\rYour "+skinDesc()+" begins to itch all over as soft hairs begin to sprout in patches. Before you know it, your whole body is soon covered in a coat of fur.");
		skinType = 2;
	}
	if (dominant == 9 && birdAffinity > (maxNonFeather + 35) && skinType != 4) {
		textLP("\r\rYour "+skinDesc()+" begins to tickle all over, tiny hair sprouting up all over and collecting into groups. Before you know it, you're rustling and fluffing up, sleeking back a layer of feathers.");
		skinType = 4;
	}
	if (dominant == 10 && pigAffinity > (maxNonSkin + 35) && skinType != 1) {
		textLP("\r\rYour "+skinDesc()+" feels oddly cool. Looking at it, your "+skinDesc()+" shrinks into your skin, leaving you 'bald' all over. You feel a little naked as you get used to your bare skin.");
		skinType = 1;
	}*/

	//Face Change
	//Faces = race x 10, + extra for additional changes
	var hasMuzzle:Boolean = false;
	if (lockFace == 0) {
		if (faceType == 21 || faceType == 31 || faceType == 61) { hasMuzzle = true;	}
		if (dominant == 1 && faceType != 10) {
			textLP("\r\r");
			if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
			textLP("Your face rounds out and your nose resizes so it nestles neatly between your eyes, reaching from your brow down to just above your mouth and looks much like a human's.");
			faceType = 10;
			hasMuzzle = false;
		}
		if (dominant == 2 && (faceType != 20 || faceType != 21) ) {
			if (faceType != 20 && faceType != 21) {
				if (hasMuzzle == true)	{ textLP("\r\rYour facial demeanor softens and becomes more focused as your eyes grow wide and round, giving you a more considerate yet strong appearance."); }
				else { textLP("\r\rYour jaw seems to be a bit low and wide, your face looking longer than average. Your nose also appears wider to make up for the slightly stretched appearance."); }
				faceType = 20;
			}
			else if (faceType != 21 && horseAffinity > 70)	{
				if (hasMuzzle == true) { textLP("\r\rYour muzzle widens along with your teeth until your smile is full and your teeth gently rest flatly upon each other. With your large eyes peering down the strong jaw, you seem to have a more equine appearance.");	}
				else { textLP("\r\rYour jaw juts outward, growing forward, taking your mouth and the end of your nose with it. The bridge of your nose flattens as it reaches away from your face, molding around your upper teeth and forming a distinct muzzle. With its width and strength of character, you look much more like a horse."); }
				faceType = 21;
				hasMuzzle = true;
			}
		}
		if (dominant == 3 && (faceType != 30 || faceType != 31) ) {
			if (faceType != 30 && faceType != 31) {
				if (hasMuzzle == true)	{ textLP("\r\rYour facial demeanor becomes more fierce as your eyes narrow slightly and your teeth become sharper, giving you a more carnivorous appearance."); }
				else { textLP("\r\rYour teeth grow sharper and your eyes focus more. The tip of your nose also moistens and becomes softer, giving you a more feral appearance."); } 
				faceType = 30;
			}
			else if (faceType != 31 && wolfAffinity > 70)	{
				if (hasMuzzle == true) { textLP("\r\rYour muzzle narrows and your teeth grow long and sharp, your canines especially visible. With your narrow eyes peering down the vicious jaw, you seem to have a more lupin appearance.");	}
				else { textLP("\r\rYour jaw juts outward, growing forward, taking your mouth and nose with it. The bridge of your nose flattens as it stretches from your brow, molding around your upper teeth and forming a distinct muzzle. The whole muzzle narrow and filled with sharp teeth, you look much more like a wolf."); }
				faceType = 31;
				hasMuzzle = true;
			}
		}
		if (dominant == 4 && (faceType != 40 || faceType != 41)) {
			if (faceType != 40 && faceType != 41) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your face flattens and your nose shrinks a bit, the tip changing color slightly and becoming softer. Your eyes grow narrow as well, making you seem like a hunter.");
				faceType = 40;
				hasMuzzle = false;
			}
			else if (faceType != 41 && catAffinity > 60) {
				textLP("\r\rYour upper lip curls up at the center and long stiff thin whiskers sprout from the front of your cheeks. They're a bit sensitive when you touch them and give you a rather cat-like appearance.");
				faceType = 41;
			}
		}
		if (dominant == 5 && (faceType != 50 || faceType != 51) ) {
			if (faceType != 50 && faceType != 51) {
				if (hasMuzzle == true)	{ textLP("\r\rYour facial demeanor softens and becomes more focused as your eyes grow round and slightly droopy, giving you a domesticated appearance."); }
				else { textLP("\r\rYour jaw seems to be a bit low and wide, your face looking longer than average. Your nose also seems noticeably broader."); }
				faceType = 50;
			}
			else if (faceType != 51 && cowAffinity > 70)	{
				if (hasMuzzle == true) { textLP("\r\rYour muzzle widens along with your teeth until your smile is full and your teeth gently rest flatly upon each other. With your large droopy eyes peering down the broad muzzle, you seem to have a more bovine appearance.");	}
				else { textLP("\r\rYour jaw juts outward, growing forward, taking your mouth and the end of your nose with it. The bridge of your nose flattens as it reaches away from your face, molding around your upper teeth and forming a distinct muzzle. With its broadness and rather sedate appearance, you look much more like a cow."); }
				faceType = 51;
				hasMuzzle = true;
			}
		}
		if (dominant == 6 && (faceType != 60 || faceType != 61) ) {
			if (faceType != 60 && faceType != 61) {
				if (hasMuzzle == true)	{ textLP("\r\rYour nostrils flatten into slits against your muzzle, giving you a more reptillian appearance."); }
				else { textLP("\r\rYour nose flattens until your nostrils are almost merely slits. Your lips also thin slightly, giving you a more reptillian appearance."); }
				faceType = 60;
			}
			else if (faceType != 61 && lizardAffinity > 70)	{
				if (hasMuzzle == true) { textLP("\r\rYour muzzle narrows and flattens out a bit more, making you look more like some kind of lizard.");	}
				else { textLP("\r\rYour jaw juts outward, growing forward, taking your mouth and nostrils with it, forming a sort of muzzle. It narrows almost to a point as it stretches, making you look like some kind of lizard."); }
				faceType = 61;
				hasMuzzle = true;
			}
		}
		if (dominant == 7 && (faceType != 70 || faceType != 71)) {
			if (faceType != 70 && faceType != 71) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your face flattens while your nose shrinks a bit, the tip changing color slightly and becoming softer and twitchy. Your eyes become round and soft, making you seem relatively meek.");
				faceType = 70;
				hasMuzzle = false;
			}
			else if (faceType != 71 && rabbitAffinity > 60) {
				textLP("\r\rYour upper lip curls up at the center and long stiff thin whiskers sprout from the front of your cheeks. Your two front teeth stick out from the rest, almost protruding from your lips, making you look much like a bunny.");
				faceType = 71;
			}
		}
		if (dominant == 8 && (faceType != 80 || faceType != 81)) {
			if (faceType != 80 && faceType != 81) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your lower face protrudes outward while your nose shrinks a bit, the tip changing color slightly and becoming softer and twitchy. Your eyes become slightly smaller yet more open, making you seem more cautious of your surroundings.");
				faceType = 80;
				hasMuzzle = false;
			}
			else if (faceType != 81 && mouseAffinity > 60) {
				textLP("\r\rThin whiskers sprout from the front of your cheeks. Your two front teeth stick out from the rest, almost protruding from your lips, making you look much like a mouse.");
				faceType = 81;
			}
		}
		if (dominant == 9 && (faceType != 90 || faceType != 91)) {
			if (faceType != 90 && faceType != 91) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your jaw becomes sharper while your nose grows larger from the rest of your face, almost have a hooked shape. Your eyes become wide and aware, making you seem more focused.");
				faceType = 90;
				hasMuzzle = false;
			}
			else if (faceType != 91 && birdAffinity > 70) {
				textLP("\r\rYour upper lip molds up against your large nose, becoming stiff and hard while the bottom lip protrudes and matches the hooked shape. Your nose and mouth morph into a sturdy powerful beak, making you look much like a bird.");
				faceType = 91;
			}
		}
		if (dominant == 10 && (faceType != 100 || faceType != 101 || faceType != 102)) {
			if (faceType != 100 && faceType != 101 && faceType != 102) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your cheeks become fuller, your face growing fatter, giving you a bit of a pudgy look.");
				faceType = 100;
				hasMuzzle = false;
			}
			else if (faceType != 101 && faceType != 102 && pigAffinity > 60) {
				textLP("\r\rYour nose flattens and turns upward, your nostrils growing larger and pointing straight out, making you look much like a pig.");
				faceType = 101;
			}
			else if (faceType != 102 && pigAffinity > 85) {
				textLP("\r\rTwo of your lower teeth suddenly begin to surge outward, growing rapidly into two large tusks that stick out from your lips and curl upward.");
				faceType = 102;
			}
		}
		if (dominant == 11 && (faceType != 110 || faceType != 111)) {
			if (faceType != 110 && faceType != 111) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your face stretches out along your nose a bit, the tip growing smaller and more narrow and becoming softer. Your eyes become soft and gentle, but with the potential to become defensive and vicious at any moment.");
				faceType = 110;
				hasMuzzle = false;
			}
			else if (faceType != 111 && skunkAffinity > 60) {
				textLP("\r\rLong stiff thin whiskers sprout from the front of your cheeks. They're a bit sensitive when you touch them and give you a rather skunk-like appearance.");
				faceType = 111;
			}
		}
		if (dominant == 12 && (faceType != 120 || faceType != 121)) {
			if (faceType != 120 && faceType != 121) {
				textLP("\r\r");
				if (hasMuzzle == true) { textLP("The muzzle that stretches from your face begins to shrink back, your jaw returning to the rest of your skull. ");	}
				textLP("Your face flattens and your nose shrinks a bit, a chitinous 'bandage' forming over the bridge of your nose to protect it. Your eyes grow much larger compared to the rest of your face, almost alien but still able to show plenty of emotion.");
				faceType = 120;
				hasMuzzle = false;
			}
			else if (faceType != 121 && bugAffinity > 60) {
				textLP("\r\rYour lips grow large and plush, looking like they could suck nectar out of even the largest flowers. Your eyes also turn completely black, and with their large size they give you a rather bug-like appearance.");
				faceType = 121;
			}
		}
	}

	
	trace("Face :"+faceType);


	//Tail Change
	var tempTailArray:Array = [horseAffinity, wolfAffinity, catAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, pigAffinity, skunkAffinity, bugAffinity, humanTaurAffinity];
	tempTailArray.sort(16);
	var maxTail = tempTailArray.pop();
	var secondTail = tempTailArray.pop();
	var maxNonTail = Math.max(humanAffinity);
	if (lockTail == 0){
		if (tail < 1){
			if (dominant == 2 && horseAffinity > (maxNonTail + 15)){ tail = 2; }
			if (dominant == 3 && wolfAffinity > (maxNonTail + 15)){ tail = 3; }
			if (dominant == 4 && catAffinity > (maxNonTail + 15)){ tail = 4; }
			if (dominant == 5 && cowAffinity > (maxNonTail + 15)){ tail = 5; }
			if (dominant == 6 && lizardAffinity > (maxNonTail + 15)){ tail = 6; }
			if (dominant == 7 && rabbitAffinity > (maxNonTail + 15)){ tail = 7; }
			if (dominant == 8 && mouseAffinity > (maxNonTail + 15)){ tail = 8; }
			if (dominant == 9 && birdAffinity > (maxNonTail + 15)){ tail = 9; }
			if (dominant == 10 && pigAffinity > (maxNonTail + 15)){ tail = 10; }
			if (dominant == 11 && skunkAffinity > (maxNonTail + 15)){ tail = 11; }
			if (dominant == 12 && bugAffinity > (maxNonTail + 15)){ tail = 12; }
			if (tail > 1){
				textLP("\r\rYou feel a tickle upon your backside as your "+clothesBottom()+" feels tight. With a groan, the pressure builds behind you, until a tearing sound fills the air and the pain is gone. Checking your backside, you see a new "+tailDesc()+" tail bobbing above your "+buttDesc()+" bum. Next time you go to town, you'll be visiting a tailor to fix your clothes to account for your new appendage...");
			}
		}
		if (dominant == 1 && humanAffinity > (maxTail + 10) && tail > 1){
			tail = 0;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it shrinks into your back, disappearing altogether. You no longer have a tail.");
		}
		if (dominant == 2 && horseAffinity > (secondTail + 10) && tail > 1 && tail != 2){
			tail = 2;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it bursts into hundreds of long hairs. Any control you had over it before is gone, save for the muscles at the base that allow you to swish it with your mood and swat against your thighs. Just like a horse's.");
		}
		if (dominant == 3 && wolfAffinity > (secondTail + 10) && tail > 1 && tail != 3){
			tail = 3;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it widens with long hairs around a skeletal base. It wags with your mood and reflexes, though you don't really have control over it otherwise, and it's oh so fluffy. Just like a wolf's.");
		}
		if (dominant == 4 && catAffinity > (secondTail + 10) && tail > 1 && tail != 4){
			tail = 4;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it narrows with short hairs around a skeletal base. It wags with your mood and reflexes and likes to curl around your touch with limited control, and it's oh so soft. Just like a cat's.");
		}
		if (dominant == 5 && cowAffinity > (secondTail + 10) && tail > 1 && tail != 5){
			tail = 5;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it narrows with short hairs around a skeletal base and a tuft of long hair bursts at the tip. It sways lazily across your "+buttDesc()+" backside and you can swat yourself with the tip like a soft whip. Just like a cow's.");
		}
		if (dominant == 6 && lizardAffinity > (secondTail + 10) && tail > 1 && tail != 6){
			tail = 6;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it thickens at the base and narrows gradually to a point. It's quite agile, able to move at your whim, the tip even being slightly prehensile. Much like a lizard's.");
		}
		if (dominant == 7 && rabbitAffinity > (secondTail + 10) && tail > 1 && tail != 7){
			tail = 7;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as shrinks into your back, exploding into a tuft of soft puffy hair before it disappears. It wiggles above your "+buttDesc()+" bum cutely and quite fluffy. Much like a rabbit's.");
		}
		if (dominant == 8 && mouseAffinity > (secondTail + 10) && tail > 1 && tail != 8){
			tail = 8;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it narrows with fine hairs around a skeletal base. Thin and lithe, the fur doesn't really hide the pink skin underneath. It whips above your "+buttDesc()+" bum and you can curl it around with limited control. Just like a mouse's.");
		}
		if (dominant == 9 && birdAffinity > (secondTail + 10) && tail > 1 && tail != 9){
			tail = 9;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it shrinks to your back and burst into a plume of feathers. Long and somewhat controllable, you can adjust their direction for aerodynamic turning. Just like a bird's.");
		}
		if (dominant == 10 && pigAffinity > (secondTail + 10) && tail > 1 && tail != 10){
			tail = 10;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it shrinks into your back, shriveling in girth and coiling around. It twitches a bit when you try to wiggle it and you can try to straighten it out but it pops right back into its curly state. Just like a pig's.");
		}
		if (dominant == 11 && skunkAffinity > (secondTail + 10) && tail > 1 && tail != 11){
			tail = 11;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it poofs into a large, long, wide fluffy tail that curls up behind your back with the pointed tip gently sagging away from you. Two parrallel stripes run closely together from the tip of your tail, widening with the tail, and down to the base");
			if (skinType == 2 && skunkAffinity >= 40) { textLP(" where it meets up with the stripes of your fur"); }
			textLP(". Just like a skunk's.");
		}
		if (dominant == 12 && bugAffinity > (secondTail + 10) && tail > 1 && tail != 12){
			tail = 12;
			textLP("\r\rYour tail begins to tingle. As you turn around, you watch as it bloats up, growing nearly as thick as your waist and nearly as stout. It's so big and weighty with flesh that you can hardly move it, merely resting against your "+buttDesc()+" butt. And at the tip where it's rather blunt, you can feel another hole. It's not terribly large, but it looks large enough to fit a small-ish egg, your finger able to easily poke up inside to feel the warm moist interior. If you were to venture a guess, it seems more like an ovipositor than an actual tail, though such a large change to your anatomy would be impossible, so what could it be for?");
		}

		if (weapon == 127 && tail != 4 && tail != 5 && tail != 6 && tail != 8) { weapon = 10; }
	}

	//Wing Change

	var maxNonWings = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, pigAffinity);
	var maxWings = Math.max(birdAffinity);

	if (wings < 1 && maxWings > (maxNonWings + 60)){
		if (dominant == 9 && birdAffinity > (maxNonWings + 60)) { 
			textLP("\r\rA sharp pain engulfs your back, centered around your shoulder blades. You keel forward, falling to your hands and "+legDesc(6)+" as you try to brace yourself against the sharp ache. Then, you cry out as feathers tear through your "+clothesTop()+", stretching out across new appendages. As soon as they grow, the pain stops and you gather yourself.\r\rStanding, you flap your new feathery wings. While not strong enough to carry you long distances, they'll definitely help you flee from unwanted threats.");	
			wings = 9;
		}
		runMod += 20;
	}
	if (wings > 0 && maxNonWings > (maxWings + 60)) {
		textLP("\r\rYour wings feel strange and rapidly begin to shrivel. Shrinking down, they disappear into your shoulder blades, the "+skinDesc()+" left smooth as though there were never anything there. You have lost your wings, it seems.");
		runMod -= 20;
		wings = 0;
	}
	if (wings > 0 && dominant != wings)	{
	}



	//Ear Change
	if (lockEars == 0) {
		if (dominant == 1 && humanAffinity > (second+15) && ears != 1){
			ears = 1;
			textLP("\r\rYour ears twitch as they become rounded and hug the sides of you head, looking more like a human's.");
		}
		if (dominant == 2 && horseAffinity > (second+15) && ears != 2){
			ears = 2;
			textLP("\r\rYour ears twitch as they become rounded and pointed at the tip, flicking atop your head, looking more like a horse's.");
		}
		if (dominant == 3 && wolfAffinity > (second+15) && ears != 3){
			ears = 3;
			textLP("\r\rYour ears twitch as they become triangular, standing pert atop your head, looking more like a wolf's.");
		}
		if (dominant == 4 && catAffinity > (second+15) && ears != 4){
			ears = 4;
			textLP("\r\rYour ears twitch as they become triangular, standing pert atop your head, looking more like a cat's.");
		}
		if (dominant == 5 && cowAffinity > (second+15) && ears != 5){
			ears = 5;
			textLP("\r\rYour ears twitch as they become rounded and large, standing several inches out from the sides of your head, looking more like a cow's.");
		}
		if (dominant == 6 && lizardAffinity > (second+15) && ears != 6){
			ears = 6;
			textLP("\r\rYour ears feel quite strange, shrinking into the sides of your head before they disappear, becoming sleek holes.");
		}
		if (dominant == 7 && rabbitAffinity > (second+15) && ears != 7){
			ears = 7;
			textLP("\r\rYour ears twitch as they become quite long, standing several inches high atop your head, looking more like a rabbit's.");
		}
		if (dominant == 8 && mouseAffinity > (second+15) && ears != 8){
			ears = 8;
			textLP("\r\rYour ears twitch as they grow larger and larger, rounding out into thin discs standing out from the sides of your head, looking more like a mouse's.");
		}
		if (dominant == 9 && birdAffinity > (second+15) && ears != 9){
			ears = 9;
			textLP("\r\rYour ears feel quite strange, shrinking into the sides of your head before disappearing behind a small patch of feathers, looking more like a bird's.");
		}
		if (dominant == 10 && pigAffinity > (second+15) && ears != 10){
			ears = 10;
			textLP("\r\rYour ears feel quite strange, growing long and triangular out the sides of your head, folding over and dropping as they get too long, looking more like a pig's.");
		}
		if (dominant == 11 && skunkAffinity > (second+15) && ears != 11){
			ears = 11;
			textLP("\r\rYour ears twitch as they become rounded and small, standing pert atop your head, looking more like a skunk's.");
		}
		if (dominant == 12 && bugAffinity > (second+15) && ears != 12){
			ears = 12;
			textLP("\r\rYour ears twitch as they grow long and narrow to a point on the sides of your head, becoming a vibrant color while the lobes become wavy with a delicate design, looking almost like butterfly wings.");
		}
	}

	//Boob Change
	var twoBoob:int = Math.max(twoBoobAffinity, humanAffinity, horseAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, birdAffinity);
	var sixBoob:int = Math.max(sixBoobAffinity, catAffinity, wolfAffinity, skunkAffinity);
	var fourBoob:int = Math.max(fourBoobAffinity);
	var eightBoob:int = Math.max(eightBoobAffinity, pigAffinity);
	var tenBoob:int = Math.max(tenBoobAffinity, bugAffinity);

	var nonTwoBoob:int = Math.max(sixBoob, fourBoob, eightBoob, tenBoob);
	var nonSixBoob:int = Math.max(twoBoob, fourBoob, eightBoob, tenBoob);
	var nonFourBoob:int = Math.max(twoBoob, sixBoob, eightBoob, tenBoob);
	var nonEightBoob:int = Math.max(twoBoob, sixBoob, fourBoob, tenBoob);
	var nonTenBoob:int = Math.max(twoBoob, fourBoob, eightBoob, sixBoob);
	if (lockBreasts == 0){
		if (twoBoob > nonTwoBoob + 20 && boobTotal != 2) {
			if (boobTotal == 4)	{
				textLP("\r\rYour lower chest tickles");
				if (breastSize > 4){ textLP(", both growing much lighter"); }
				textLP(". Checking, you catch your second set of nipples disappear flat into your "+skinDesc()+", leaving you with only the highest pair on your chest.");
			}
			if (boobTotal == 6)	{
				textLP("\r\rYour lower chest and belly tickle");
				if (breastSize > 4){ textLP(", both growing much lighter"); }
				textLP(". Checking, you catch your extra sets of nipples disappear flat into your "+skinDesc()+", leaving you with only the primary pair on your chest.");
			}
			if (boobTotal == 8)	{
				textLP("\r\rYour lower chest and belly tickle");
				if (breastSize > 4){ textLP(", both growing much lighter"); }
				textLP(". Checking, you catch your extra sets of nipples disappear flat into your "+skinDesc()+", leaving you with only the primary pair on your chest, which seems to have grown larger.");
			}
			if (boobTotal == 10)	{
				textLP("\r\rYour lower chest and belly tickle");
				if (breastSize > 4){ textLP(", both growing much lighter"); }
				textLP(". Checking, you catch your extra sets of nipples disappear flat into your "+skinDesc()+", leaving you with only the primary pair on your chest, which seems to have grown larger.");
			}
			boobTotal = 2;
		}
		if (fourBoob > nonFourBoob + 20 && boobTotal != 4){
			if (boobTotal == 2)	{
				textLP("\r\rYour lower chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
				if (breastSize > 4)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 6)	{
				textLP("\r\rYour belly tickles");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your bottom set of nipples disappear flat into your "+skinDesc()+", while your middle pair swells to match the first, leaving you with two sets of equally sized breasts, the top resting upon the bottom.");
			}
			if (boobTotal == 8) {
				textLP("\r\rYour belly tickles");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your two lowest sets of nipples disappear flat into your "+skinDesc()+", while the other two pairs swell slightly, leaving you with two sets of breasts larger than before.");
			}
			if (boobTotal == 10) {
				textLP("\r\rYour belly tickles");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your three lowest sets of nipples disappear flat into your "+skinDesc()+", while the other two pairs swell slightly, leaving you with two sets of breasts larger than before.");
			}
			boobTotal = 4;
		}
		if (sixBoob > nonSixBoob + 20 && boobTotal != 6) {
			if (boobTotal == 2)	{
				textLP("\r\rYour lower chest and belly tickle. Four new nipples form amongst your "+skinDesc()+", a fresh pair below your original two and another pair below that, leaving you with three rows of two breasts from your chest down to your upper belly.");
				if (breastSize > 4){ textLP(" The nipples protrude as fleshy mounds form beneath them. Breast-flesh wobbles, each row a fraction in size of the one above it. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 4) {
				textLP("\r\rYour belly tickles. Two new nipples form amongst your "+skinDesc()+", right below your second pair on your upper belly, leaving you with three rows of two breasts.");
				if (breastSize > 4){ textLP(" The nipples protrude as fleshy mounds form beneath them, while your second pair seems to shrink in turn. Breast-flesh wobbles, each row a fraction in size of the one above it. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 8) {
				textLP("\r\rYour lower belly tickles");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your lowest set of nipples disappear flat into your "+skinDesc()+", while the next lowest pair shrinks and the top pair swells, giving you a slope of three rows of breasts.");
			}
			if (boobTotal == 10) {
				textLP("\r\rYour lower belly and the area above your crotch tickle");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your two lowest sets of nipples disappear flat into your "+skinDesc()+", while the next lowest pair shrinks and the top pair swells, giving you a slope of three rows of breasts.");
			}
			boobTotal = 6;
		}
		if (eightBoob > nonEightBoob + 20 && boobTotal != 8){
			if (boobTotal == 2)	{
				textLP("\r\rYour lower chest and belly, close beneath your nipples, begin to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals. The process repeats twice more, for a total of 8 breasts from your chest to your lower belly! And they're all slightly smaller than your original pair.");
				if (breastSize > 4)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 4) {
				textLP("\r\rYour chest and belly tickle. Four new nipples form amongst your "+skinDesc()+", right below your second pair above your belly, leaving you with four rows of two breasts, from your chest to your lower belly.");
				if (breastSize > 4){ textLP(" Your original breasts shrink a little to match the ingrowing ones, until they're all the same size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 6) {
				textLP("\r\rYour belly tickles. Two new nipples form amongst your "+skinDesc()+", right below your second pair above your belly, leaving you with four rows of two breasts, from your chest to your lower belly.");
				if (breastSize > 4){ textLP(" The lower pairs continue to grow while your top pair shrinks a little, all equalizing in size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 10) {
				textLP("\r\rThe area above your crotch tickles");
				if (breastSize > 4){ textLP(", growing much lighter"); }
				textLP(". Checking, you catch your two lowest sets of nipples disappear flat into your "+skinDesc()+", while the rest grow slightly larger.");
			}
			boobTotal = 8;
		}
		if (tenBoob > nonTenBoob + 20 && boobTotal != 10){
			if (boobTotal == 2)	{
				textLP("\r\rYour lower chest and belly, close beneath your nipples, begin to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals. The process repeats three more times, for a total of 10 breasts from your chest to your just above your crotch! And they're all slightly smaller than your original pair.");
				if (breastSize > 4)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 4) {
				textLP("\r\rYour chest and belly tickle. Six new nipples form amongst your "+skinDesc()+", right below your second pair above your belly, leaving you with five rows of two breasts, from your chest to just above your crtoch.");
				if (breastSize > 4){ textLP(" Your original breasts shrink a little to match the ingrowing ones, until they're all the same size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 6) {
				textLP("\r\rYour lower belly  and the area above your crotch tickle. Four new nipples form amongst your "+skinDesc()+", right below your third pair, leaving you with five rows of two breasts, from your chest down to your crotch.");
				if (breastSize > 4){ textLP(" The lower pairs continue to grow while your top pair shrinks a little, all equalizing in size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}
			if (boobTotal == 8) {
				textLP("\r\rThe area above your crotch tickles. Two new nipples form amongst your "+skinDesc()+", right below your fourth pair below your belly, leaving you with five rows of two breasts, from your chest to your crotch.");
				if (breastSize > 4){ textLP(" The lower pairs continue to grow while your top pair shrinks a little, all equalizing in size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			}

			boobTotal = 10;
		}
	}

	//Leg Change
	//0 = basic bipedal
	//1 = biped digitigrade paw
	//100+ = taur
	//101 = cow taur
	var bipedal:int = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, cowAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, birdAffinity, pigAffinity);
	var bipedalDigiPaw:int = Math.max(skunkAffinity);
	var otherLegs:Array = [cowTaurAffinity, humanTaurAffinity];
	
	var legArray:Array = [bipedal, bipedalDigiPaw, 0];
	legArray = legArray.concat(otherLegs);
	legArray.sort(16);
	legArray.pop();
	var secondLegs:int =legArray.pop();
	
	if(lockLegs == 0){
		//Biped Digigrade with Paws
		if (bipedalDigiPaw > secondLegs + 50 && legType != 1) { legChange(1);	}
		
		//Normal Biped
		if (bipedal > secondLegs + 50 && legType != 0) { legChange(0); }
		
		//Other Legs
		if (cowTaurAffinity > secondLegs + 50 && legType != 1001) { legChange(1001);	}
		if (humanTaurAffinity > secondLegs + 50 && legType != 1002) { legChange(1002); }
	}

	//Nipple Change
	//nip0 = normal nipples
	//nip1 = quad nipples
	//nip2 = inverted nipples
	var nip0:int = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, lizardAffinity, rabbitAffinity, mouseAffinity, birdAffinity, pigAffinity);
	var nip1:int = Math.max(cowAffinity);
	var nip2:int = Math.max(bugAffinity);

	var nonNip0:int = Math.max(nip1, nip2);
	var nonNip1:int = Math.max(nip0, nip2);
	var nonNip2:int = Math.max(nip0, nip1);
	if (lockNipples == 0) {
		if (nip0 > nonNip0 + 60 && nipType != 0) {
			if (nipType == 1) {
				textLP("\r\rMany of your nipples begin to tickle. They begin to shrink beneath your "+clothesTop()+", receding back into your breasts. As you lift the clothing away to see what's going on, the extra three nipples on each of your breasts fade away, leaving you with only one each.");
			}
			if (nipType == 2) {
				textLP("\r\rYour nipples pop out from your breast, no longer sunken or hidden within.");
			}
			nipType = 0
		}

		if (nip1 > nonNip1 + 60 && nipType != 1) {
			if (nipType == 2) {
				textLP("\r\rYour nipples pop out from your breast, no longer sunken or hidden within.");
			}
			if (nipType == 0 || nipType == 2) {
				textLP("\r\rSpots begin to tingle around your nipples. Your hand roves under your "+clothesTop()+" to inspect the areas, noticeably more sensitive than before. The patches grow softer and puff up beneath your fingertips, feeling rather... familiar? Pulling your "+clothesTop()+" "+pullUD(1)+", you can see extra nipples form around the ones you already have, complete with darkened areoles and matching size.\r\rYour breasts now each have four nipples equidistant from each other, just as functional as the originals, and just as sensitive, each looking almost like a cow's udder...");
			}
			nipType = 1;
		}
		if (nip2 > nonNip2 + 60 && nipType != 2) {
			if (nipType == 1) {
				textLP("\r\rMany of your nipples begin to tickle. They begin to shrink beneath your "+clothesTop()+", receding back into your breasts. As you lift the clothing away to see what's going on, the extra three nipples on each of your breasts fade away, leaving you with only one each.");
			}
			if (nipType == 0 || nipType == 1) {
				textLP("\r\rYour nipples sink into your breasts, becoming inverted slits within your areola, only coming out when aroused.");
			}
			nipType = 2;
		}
	}

	//Egg Change
	//Egg Type 0 = Fresh Eggs
	//1 = Bug Eggs
	if (eggLaying > 0) {
		var egg0:int = Math.max(lizardAffinity, birdAffinity);
		var egg1:int = Math.max(bugAffinity);
	
		var nonEgg0 = Math.max(egg1);
		var nonEgg1 = Math.max(egg0);
		
		if (egg0 > nonEgg0 + 20 && eggType != 0) {
			textLP("\r\rYou sense your womb shifting, the eggs inside feeling like their forming somehow differently than they did before.");
			if (eggType == 1) {
				eggMaxTime += 22;
			}
			eggType = 0;
		}
		if (egg1 > nonEgg1 + 20 && eggType != 1) {
			textLP("\r\rYou sense your womb shifting, the eggs inside feeling like their forming somehow differently than they did before.");
			if (eggType == 0) {
				eggMaxTime -= 22;
			}
			eggType = 1;
		}
	}


	
		
	
	//Cock Change
	if (lockCock == 0) {
		if (dominant == 1 && humanAffinity > (second + 25) && human > 0 && cockTotal > 0 && humanCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to see "+oneYour(1)+" cock"+plural(1)+" hanging out from your body, limp and flaccid. It's smooth and fleshy, easily teased into erection. Its skin is slightly less sensitive, but the thick mushroom-like head twitches in your grip. It looks very much like a human's.");
			humanCocks++;
			cockLoss();
		}
		if (dominant == 2 && horseAffinity > (second + 25) && horse > 0 && cockTotal > 0 && horseCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to watch as a thick sheath envelopes "+oneYour(1)+" cock"+plural(1)+". Relaxing your muscles, the cock slowly droops out over your "+clothesBottom()+". It's long and smooth, with the prepuce only reaching halfway down its length making an obvious ring. The head is flat and as you knead it in your hand, it flares wide. It looks very much like a horse's.");
			horseCocks++;
			cockLoss();
		}
		if (dominant == 3 && wolfAffinity > (second + 25) && wolf > 0 && cockTotal > 0 && wolfCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to watch as a thin sheath envelopes "+oneYour(1)+" cock"+plural(1)+". Flexing your muscles, "+oneYour(1)+" cock"+plural(1)+" slowly pushes out, red and hard, no matter how aroused you are. It's veiny and smooth, already a bit moist from being within the sheath. The head narrows off to a pointy tip where you can feel the urethra resides. It looks very much like a wolf's.");
			wolfCocks++;
			cockLoss();
		}
		if (dominant == 4 && catAffinity > (second + 25) && cat > 0 && cockTotal > 0 && catCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to watch as a thin sheath envelopes "+oneYour(1)+" cock"+plural(1)+". Flexing your muscles, "+oneYour(1)+" cock"+plural(1)+" slowly pushes out, pink and soft. It's smooth and already a bit moist from being within the sheath, covered in tiny barbs that feel rough as your hand strokes against them. The head narrows off to a pointy tip where you can feel the urethra resides. It looks very much like a cat's.");
			catCocks++;
			cockLoss();
		}
		if (dominant == 6 && lizardAffinity > (second + 25) && lizard > 0 && cockTotal > 0 && lizardCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to watch as your cock"+plural(1)+" sink"+plural(3)+" into your body, leaving behind a small slit at the front. Flexing your muscles, the slit pushes open and "+oneYour(1)+" cock"+plural(1)+" slowly pushes out, looking quite purple. It's bumpy, with ribs along its upper side and a head that looks bulbous before rapidly narrowing into a pointy tip where you can feel the urethra resides. You think it looks like a lizard's?");
			lizardCocks++;
			cockLoss();
		}
		if (dominant == 7 && rabbitAffinity > (second + 25) && rabbit > 0 && cockTotal > 0 && rabbitCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to watch as a thin sheath envelopes "+oneYour(1)+" cock"+plural(1)+". Flexing your muscles, "+oneYour(1)+" cock"+plural(1)+" slowly pushes out, red and pointy. It's smooth and already a bit moist from being within the sheath, its whole length gradually narrowing to the pointy tip, reminiscent of a carrot. It looks very much like a rabbit's.");
			rabbitCocks++;
			cockLoss();
		}
		if (dominant == 12 && bugAffinity > (second + 25) && bug > 0 && cockTotal > 0 && bugCocks < cockTotal){
			textLP("\r\rYour "+hipDesc()+" hips twitch as "+oneYour(1)+" cock"+plural(1)+" begins to feel strange. You open your "+clothesBottom()+" to see what is happening, only to see "+oneYour(1)+" cock"+plural(1)+" hanging out from your body, with four fleshy spikes pointing back towards you from the rim of the glans, not hard enough to hurt but enough to definitely get a grip inside tender walls. The underside is also adorned with extra grip, a ridge following down the middle with many bumps along its length. You're not really sure what it is, but some bugs do have rather... 'wild' penises that could come close.");
			bugCocks++;
			cockLoss();
		}
	}

	human = 0;
	horse = 0;
	wolf = 0;
	cat = 0;
	cow = 0;
	lizard = 0;
	rabbit = 0;
	mouse = 0;
	bird = 0;
	pig = 0;
	skunk = 0;
	bug = 0;
	
	if (currentText == "Something feels odd..."){
		textL("");
		doProcess(); 
	}
	else { doEnd(); }
}

function cockChange(sizeChange:int, totalChange:int):void{
	var maxCock:int = Math.max(humanAffinity, horseAffinity, wolfAffinity, catAffinity, lizardAffinity, rabbitAffinity, bugAffinity);
	var nonCock:Boolean = false;
	if (dominant == 5 || dominant == 8 || dominant == 9 || dominant == 10 || dominant == 11) { nonCock = true; }
	if ((cockSize+sizeChange <= 0 || (cockTotal + totalChange) < 1) && cockSize > 0 && cockTotal > 0){
		textLP("\r\rYou shiver a little as your cock"+plural(1)+" and balls shrink into your body, disappearing");
		if (vagTotal > 0){
			textLP(", leaving you with only your vagina"+plural(2)+" and making you solely female.");
			gender = 2;
		}
		if (vagTotal < 1){
			textLP(", leaving you with no genitals whatsoever. This is going to make things tough...");
			gender = 0;
		}
		balls = 0;
		stats(0,0,-(2*cockTotal),0);
		ballSize = 0;
		cockSize = 0;
		cockTotal = 0;
		humanCocks = 0;
		horseCocks = 0;
		wolfCocks = 0;
		catCocks = 0;
		lizardCocks = 0;
		rabbitCocks = 0;
		bugCocks = 0;
	}
	else if ((cockTotal + totalChange) > 0 && cockTotal < 1){
		textLP("\r\rA strange sensation of arousal engulfs your groin. Your "+clothesBottom()+" grows tight as you feel something swell within. You don't have much time to pull "+pullUD(2)+" your "+clothesBottom()+" as flesh bulges over the fitted garment. Throbbing and dripping with pre, a fresh, new ");
		if (dominant == 1 || (nonCock == true && maxCock == humanAffinity)){ 
			textLP("human "); 
			humanCocks++;
		}
		else if (dominant == 2 || (nonCock == true && maxCock == horseAffinity)){ 
			textLP("equine ");

			horseCocks++;			
		}
		else if (dominant == 3 || (nonCock == true && maxCock == wolfAffinity)){ 
			textLP("canine "); 
			wolfCocks++;
		}
		else if (dominant == 4 || (nonCock == true && maxCock == catAffinity)){ 
			textLP("feline "); 
			catCocks++;
		}
		else if (dominant == 6 || (nonCock == true && maxCock == lizardAffinity)){ 
			textLP("reptillian "); 
			lizardCocks ++;
		}
		else if (dominant == 7 || (nonCock == true && maxCock == rabbitAffinity)){ 
			textLP("lapin "); 
			rabbitCocks++;
		}
		else if (dominant == 12 || (nonCock == true && maxCock == bugAffinity)){ 
			textLP("insectile "); 
			bugCocks++;
		}
		textLP("penis stands erect and balls to match settle within your crotch beneath");
		if (vagTotal > 0){
			textLP(", slipping into your "+vulvaDesc()+" lips. You now are considered a cross between genders, a herm." );
			gender = 3;
		}
		else {
			textLP(". You have now graduated from androgynous to male, congratulations!");
			gender = 1;
		}
		ballSize = 1;
		balls = 2;
		showBalls = true;
		cockSize = 1;
		stats(0,0,2,0);
		cockTotal = 1;
		cockSize += sizeChange;
		totalChange--;
		cockChange(0,totalChange);
	}
	else if (totalChange > 0 && cockTotal > 0) { 
		textLP("\r\rA strange sensation of arousal engulfs your groin. Your "+clothesBottom()+" grows tight as you feel something swell within. You don't have much time to open your "+clothesBottom()+" as flesh bulges over the fitted garment. Throbbing and dripping with pre, fresh and new,");
		if (totalChange > 1) { textLP(" "+totalChange); }
		if (dominant == 1 || (nonCock == true && maxCock == humanAffinity)){ 
			textLP(" human "); 
			humanCocks += totalChange;
		}
		else if (dominant == 2 || (nonCock == true && maxCock == horseAffinity)){ 
			textLP(" equine ");
			horseCocks += totalChange;			
		}
		else if (dominant == 3 || (nonCock == true && maxCock == wolfAffinity)){ 
			textLP(" canine "); 
			wolfCocks += totalChange;
		}
		else if (dominant == 4 || (nonCock == true && maxCock == catAffinity)){ 
			textLP(" feline "); 
			catCocks += totalChange;
		}
		else if (dominant == 6 || (nonCock == true && maxCock == lizardAffinity)){ 
			textLP(" reptillian "); 
			lizardCocks += totalChange;
		}
		else if (dominant == 7 || (nonCock == true && maxCock == rabbitAffinity)){ 
			textLP(" lapin "); 
			rabbitCocks += totalChange;
		}
		else if (dominant == 12 || (nonCock == true && maxCock == bugAffinity)){ 
			textLP(" insectile "); 
			bugCocks += totalChange;
		}
		textLP("penis");
		if (totalChange > 1) { textLP("es"); }
		textLP( " standing erect with the other"+plural(1)+".");
		stats(0,0,(2*totalChange),0);
		cockTotal += totalChange;
		cockSize += sizeChange;
	}
	else if (totalChange < 0 && cockTotal > 0 && cockSize > 0){
		textLP("\r\rYou notice an odd sensation of numbness within your groin. Your "+clothesBottom()+" feels looser, something going missing within. By the time you open your "+clothesBottom()+" you notice that you have lost something.");
		cockTotal += totalChange;
		while (totalChange < 0){
			cockLoss();
			totalChange++;
		}
		stats(0,0,(2*totalChange),0);
	}
	else if (cockTotal > 0)	{ cockSize += sizeChange; }
}

function cockLoss():void{
	var hasHumanCock:int = 101;
	var hasHorseCock:int = 101;
	var hasWolfCock:int = 101;
	var hasCatCock:int = 101;
	var hasLizardCock:int = 101;
	var hasRabbitCock:int = 101;
	var hasBugCock:int = 101;
	
	if (humanCocks > 0) { hasHumanCock = humanAffinity; }
	if (horseCocks > 0) { hasHorseCock = horseAffinity; }
	if (wolfCocks > 0) { hasWolfCock = wolfAffinity; }
	if (catCocks > 0) { hasCatCock = catAffinity; }
	if (lizardCocks > 0) { hasLizardCock = lizardAffinity; }
	if (rabbitCocks > 0) { hasRabbitCock = rabbitAffinity; }
	if (bugCocks > 0) { hasBugCock = bugAffinity; }
	
	var minCock:int = Math.min(hasHumanCock, hasHorseCock, hasWolfCock, hasCatCock, hasLizardCock, hasRabbitCock, hasBugCock);

	if (minCock == humanAffinity && humanCocks > 0){ 
		textLP("\r\rYou have lost one human cock.");
		humanCocks--; 
	}
	else if (minCock == horseAffinity && horseCocks > 0){ 
		textLP("\r\rYou have lost one horse cock.");
		horseCocks--; 
	}
	else if (minCock == wolfAffinity && wolfCocks > 0){ 
		textLP("\r\rYou have lost one wolf cock.");
		wolfCocks--; 
	}
	else if (minCock == catAffinity && catCocks > 0){ 
		textLP("\r\rYou have lost one cat cock.");
		catCocks--; 
	}
	else if (minCock == lizardAffinity && lizardCocks > 0){ 
		textLP("\r\rYou have lost one lizard cock.");
		lizardCocks--; 
	}
	else if (minCock == rabbitAffinity && rabbitCocks > 0){ 
		textLP("\r\rYou have lost one rabbit cock.");
		rabbitCocks--; 
	}
	else if (minCock == bugAffinity && bugCocks > 0){ 
		textLP("\r\rYou have lost one bug cock.");
		bugCocks--; 
	}
}


function vagChange(sizeChange:int, totalChange:int):void{
	//Cock-Snake Escape
	if (cockSnakePreg > 0) {
		var birthCount:int = 0;
		if (sizeChange < 0 || totalChange < 0) {
			textLP("\r\rWith the changing size of your passageway, you feel a sudden squirming within your womb. You brace yourself as you feel the cock-snake within slither its way through your passage. Your "+clothesBottom()+" becomes drenched by your feminine lubricant as a bunch of it splashes out, the phallic head of the snake breaching your "+vulvaDesc()+" lips. Its body constantly drags over your sensitive flesh as it flees what is about to come, making you shudder in mild orgasm as the creature descends down your "+legDesc(1)+". You gasp and regain yourself, the snake slithering away. It must have been frightened by the shrinking of its home and fleed...");
			cockSnakePreg = 0;
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i + 1] == 503) {
					pregArray[i] = false;
					pregArray[i+3] = 0;
					birthCount++;
					if (birthCount == 2) { textLP("\r\rAnd it's not the first; you shudder again as another snake in another womb escapes out from your "+clothesBottom()+" and down your "+legDesc(1)+", fleeing like the first.");	}
					if (birthCount == 3) { textLP("\r\rFollowed by another...");	}
					if (birthCount > 3)	{ textLP("\r\rAnd another...");	}
					doLust(-Math.floor(sen/4), 2, 2);
				}
				i += 5;
			}
			cockSnakePreg = 0;
		}
	}

	if (((vagSize+sizeChange) <= 0 || (vagTotal + totalChange) < 1) && vagSize > 0 && vagTotal > 0){
		textLP("\r\rSudden intense cramping makes you double over. A slight moistness in your "+clothesBottom()+" causes your hand to inspect the situation. It reaches your once "+vulvaDesc()+" vulva just in time to feel it shrink to nothing, sealing over with "+skinDesc()+". It seems you have lost your vagina"+plural(2)+", ");
		if (cockTotal > 0) {
			textLP("leaving only your cock"+plural(1)+" remaining. You are now considered only male.");
			gender = 1;
		}
		if (cockTotal < 1){
			textLP("leaving you with no genetalia, completely androgynous where it matters. Things might be difficult...");
			gender = 0;
		}
		vagBellyChange(sizeChange, totalChange);
		stats(0,0,(2*vagTotal),0);
		vagSize = 0;
		vagTotal = 0;
		vulvaSize = 0;
		clitSize = 0;

		i = 0;
		
		while (i < pregArray.length) {
			if (pregArray[i] == false) { 
				pregArray.splice(i, 5);
				i = -5;
			}
			i += 5;
		}
	}
	else if ((vagTotal + totalChange) > 0 && vagTotal < 1){
		textLP("\r\rYour tummy feels weird as your thighs rub against each other. Your "+clothesBottom()+" feels wet in the crotch, an oddly new sensation. Reaching in, your hand slips across sensitive and supple flesh. It splits beneath your touch, letting your finger slip in between the moist folds. You let out a moan as your palm slips across the sensitive bump at the front of the crevice, your finger sinking into a hole. The tip brushes against an even more sensitive ring that sinks further into your body - a fresh womb.");
		if (totalChange > 1) {	textLP(" Yet, that's simply the first. More moistness slimes your hand as "+totalChange+" more gashes fill your "+vulvaDesc()+" groin, all as sensitive and large as the first. A bevy of pussies for your fingers to slip into, your hand rolling over all the labia and making you gasp with all the separate erotic thrills."); }
		vagSize = 1;
		vulvaSize = 1;
		clitSize = 1;
		stats(0,0,(2*totalChange),0);
		vagBellyChange(sizeChange, totalChange);
		vagTotal += totalChange;
		vagSize += sizeChange;
		if (cockTotal > 0){
			textLP("\r\rYou lay your "+cockDesc()+" cock back down to cover your new slit, as you're now considered to be both genders... A herm." );
			gender = 3;
		}
		else {
			textLP("\r\rYou have now graduated from androgynous to female, congratulations!");
			gender = 2;
		}
		
		while (totalChange > 0)	{
			if (pregArray.length/5 < vagTotal) {
				pregArray.push(false, 0, 0, 0, 0);
				totalChange--;
			}
			else {totalChange = 0; }
		}
	}
	else if (totalChange > 0 && vagTotal > 0) {
		textLP("\r\rYour "+clothesBottom()+" feels wet in the crotch, an oddly new sensation. Reaching in, your hand slips across another slit of sensitive and supple flesh. It splits beneath your touch, letting your finger slip in between the moist folds. You let out a moan as your palm slips across another bump at the front of the crevice, your finger sinking into a hole. A brand new vagina to go with the rest.");
		if (totalChange > 1) {	textLP(" Yet, that's simply the first. More moistness slimes your hand as "+totalChange+" more gashes fill your "+vulvaDesc()+" groin, all as sensitive and large as the first. A bevy of pussies for your fingers to slip into, your hand rolling over all the labia and making you gasp with all the separate erotic thrills."); }
		vagBellyChange(sizeChange, totalChange);
		stats(0,0,(2*totalChange),0);
		vagTotal += totalChange;
		vagSize += sizeChange;
		
		while (totalChange > 0)	{
			if (pregArray.length/5 < vagTotal) {
				pregArray.push(false, 0, 0, 0, 0);
				totalChange--;
			}
			else { totalChange = 0; }
		}
		
	}
	else if (totalChange < 0 && (vagTotal + totalChange) > 0){
		textLP("\r\rYou notice an odd sensation of numbness within your groin. Slipping a hand into your "+clothesBottom()+", you notice you're missing "+(-totalChange)+" of your vaginas.");
		vagBellyChange(sizeChange, totalChange);
		stats(0,0,(2*totalChange),0);
		vagTotal += totalChange;
		vagSize += sizeChange;

		while (totalChange < 0)	{
			if (pregCheck(1)) {

				i = 0;
				while (i < pregArray.length) {
					if (pregArray[i] == false) { 
						totalChange++;
						pregArray.splice(i, 5);
						i += pregArray.length;
					}
					i += 5;
				}
			}
			else { totalChange = 0; }
		}
	}
	else if (vagTotal > 0) { 
		vagBellyChange(sizeChange, totalChange);
		vagSize += sizeChange; 
	}
}

function vagBellyChange(sizeChange:int, totalChange:int):void{
	var newBelly:int = (vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod - tallness/2;
	if (newBelly < 0) { newBelly = 0; }
	if (newBelly < vagBellyMod) { textLP("\r\rYour belly flattens slightly as the amount of vaginal flesh within becomes less disproportionate to your body."); }
	else if (newBelly > vagBellyMod) { textLP("\r\rYour belly bulges slightly more as the vaginal flesh within takes up more room than your belly can handle..."); }
	vagBellyMod = newBelly;
	if (vagBellyMod < 0) { vagBellyMod = 0; }
	
	/*if ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod > tallness/2 && (vagSize+sizeChange)*(vagTotal+totalChange) > (vagSize*vagTotal)){
		textLP("\r\rYour belly bulges slightly more as the vaginal flesh within takes up more room than your belly can handle...")
		if ((vagSize*vagTotal*vagSizeMod) > tallness/2) { vagBellyMod += (vagSizeMod*sizeChange*totalChange); }
		if ((vagSize*vagTotal*vagSizeMod) <= tallness/2) { vagBellyMod += (((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) - Math.ceil(tallness/2)); }
	}
	if ((vagSize*vagTotal*vagSizeMod) > tallness/2 && (vagSize+sizeChange)*(vagTotal+totalChange) < (vagSize*vagTotal)){
		textLP("\r\rYour belly flattens slightly as the amount of vaginal flesh within shrinks a bit.");
		if (((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) > tallness/2) { vagBellyMod += (vagSizeMod*sizeChange*totalChange); }
		if (((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) <= tallness/2) { 
			if (tallness/2 + ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) >= 0) { vagBellyMod += (Math.ceil(tallness/2) + ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod)); }
			else if (tallness/2 + ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) < 0) { vagBellyMod += ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod) + Math.abs((Math.ceil(tallness/2) + ((vagSize+sizeChange)*(vagTotal+totalChange)*vagSizeMod))); }
		}
	}*/
}

function legChange(which:int):void {

	//Tauric Loss
	if (legType > 1000 && which < 1000) {
		textLP("\r\rA strange sensation envelopes your tauric half. Things pop and grow tight as the backside shrinks, your back legs dwindling down into your rear crotch while your secondary chest shrivels and your spine shortens up. The entirety of your tauric half shrinks back to your primary body, leaving you to fall back onto your "+buttDesc()+" ass while your crotch shifts forward to nestle between your front legs.");
		if (legType == 1001)	{
			textLP(" Your keratin hooves soften and elongate into bipedal feet, the black and white fur disappearing to match your "+skinDesc()+".");
			if (!udderCheck(2) && udders == true) { 
				textLP(" Your udder also shrinks away into nothing..."); 
				udders = false;
				udderLactation = 0;
				udderEngorgement = 0;
				udderEngorgementLevel = 0;
				udderPlay = 0;
				udderSize = 0;
				teatSize = 0;
			}
			else { textLP(" Your udder is still there, though, hanging just below your belly, having slipped up through your legs just before your crotch came through."); }
		}
		if (legType == 1002) { 
			if (tail == 1002) {
				textLP(" Your "+tailDesc()+" tail, also disappears with your extra half, no longer swishing above your backside.");
				tail = 0;
			}
			runMod += 10;
			carryMod -= 15;
		}
		textLP("\r\rIt takes several minutes before you can manage to stand without the extra legs to square you off... It feels so strange, like a great weight has been lifted yet at the same time things feel heavier. It's going to take a bit of walking to get used to...");
		carryMod -= 100;
	}

	//Bipedal Changes
	//Bipedal
	if (legType != 0 && which == 0) {
		if (legType == 1) { 
			textLP("\r\rYour paws feel strange as they begin to narrow and shrink. You almost lose your balance and fall over, but your ankles touch against the floor, having grown away from your knees and forming heels. The space between your paws and ankles thicken, providing a wider base to stand upon. Feet. Not quite as agile, but a bit sturdier.");
		}
	}

	//Biped Digigrade with Paws
	if (legType != 1 && which == 1) {
		if (legType == 0) {
			textLP("\r\rYour feet ache as your ankles lengthen and your lower-leg shortens. Your knees bend out to keep you balanced and you rise up onto your toes to stand digitigrade. Your toes also change to help, growing larger and rounder, with soft pads beneath, until the ends of your feet become a paws. Eventually, you quickly learn to balance and walk with these paws on your digitigrade legs, feeling much lighter on your 'feet', though it's more difficult to carry as much weight on such agile things."); 
		}
		if (legType >= 1000) { 
			textLP("\r\rBut then, your feet ache as your ankles lengthen and your lower-leg shortens. Your knees bend out to keep you balanced and you rise up onto your toes to stand digitigrade. Your toes also change to help, growing larger and rounder, with soft pads beneath, until the ends of your feet become a paws. Eventually, you quickly learn to balance and walk with these paws on your digitigrade legs, feeling much lighter on your 'feet', though it's more difficult to carry as much weight on such agile things."); 
		}
		carryMod -= 10;
		runMod += 10;
	}
	if (legType == 1 && which != 1) {
		carryMod += 10;
		runMod -= 10;
	}

	//Tauric Changes
	//Tauric Gain
	if (legType < 1000 && which > 1000) {
		if (legType == 0 || legType == 1) {
			textLP("\r\rYour "+hipDesc()+" hips begin to ache as you feel something grow from them within your "+clothesBottom()+". Not outward, however, but towards your backside. As your hands grasp them, you can feel your thickening pelvis split in two. Your "+buttDesc()+" rear moves away from your body as the second pelvis grows along your tailbone, your spine forming more vertebrae to extend further. You collapse to your knees while your ass tears through your "+clothesBottom()+", taking your crotch away from your original legs with it. Bumps form from the new pelvis as two new limbs begin to grow from the sides of your crotch, a second set of legs that touch down upon the ground, making you stumble as they grow longer and turn your rump and crotch upwards to face straight out, as though you were bending over. Your insides feel even stranger as many of your internal organs shift around, doubling or expanding down in between your two sets of legs. More ribs sprout from the lengthening spine, forming a second chest cavity that guards the organs.\r\rIt takes a few minutes before your body finishes growing its second set of legs and nearly a complete second body. A tauric body. You falter a bit as you try to stand on all 4 of your legs, your arms helping pick you up from the ground but waving for balance as your original torso teeters on top. It's a very strange sensation as your mind adjusts to account for a second set of legs, working them in unison until you can walk while your second belly swings between them. Though you do feel like you can hold up much more with this strong, broader frame, so that's a plus. On the other hand, your ass and genital region are much further away now, while your original crotch feels more like a neck to the second body, so that's going to take some getting used to...");
		}
		if (legType == 1) {
			carryMod += 10;
			runMod -= 10;			
		}
		changeBot(-1);
		carryMod += 100;
	}	

	//Cowtaur
	if (legType != 1001 && which == 1001) {
		textLP("\r\rYour tauric half feels strange and tingly.");
		if (skinType != 2) { textLP(" Short fur sprouts up from your "+skinDesc()+", only on your tauric half, white in color with large black spots"); }
		else { textLP(" The fur on your tauric half turns white in color, with large black spots around it"); }
		textLP(", while your "+buttDesc()+" ass grows larger and more square from the second hips. The ends of your legs harden, your ankles rising as the balls of your feet terminate in keratin hooves.");
		if (udders == false) {
			textLP(" And you feel a weight growing from your tauric belly. You look around yourself to see 4 long teats extend, an udder growing beneath you, making your lower half look much like a dairy cow...");
			udders = true;
			udderSize = 2*breastSize;
			teatSize = 2*nippleSize;
		}
		else { textLP(" Your udder also went along with the rest of your crotch, now hanging down from your tauric belly and threatening to drag across the ground if it gets too big, instead of sitting at your normal waist."); }
	}
	if (legType == 1001 && which != 1001 && which > 1000) {
		if (!udderCheck(2) && udders == true) { 
			textLP("\r\rYour udder shrinks into your "+skinDesc()+" and disappears..."); 
			udders = false;
			udderLactation = 0;
			udderEngorgement = 0;
			udderEngorgementLevel = 0;
			udderPlay = 0;
			udderSize = 0;
			teatSize = 0;
		}
	}

	//Humantaur
	if (legType != 1002 && which == 1002) {
		textLP("\r\rAll four feet relax themselves against the ground, level from toes to heels, standing plantigrade and sturdy. Not exactly fast and a bit awkward, but they can hold much more weight, especially considering your second half is as thin as the first and would have otherwise not been the best frame for carrying things across your extended back.");
		if (tail > 0 && tail != 1002 && hair != 0) { textLP(" And your "+tailDesc()+" shifts into hairs that matches the hair on your head."); }
		else if (tail == 0 && hair != 0) { textLP(" And to finish off the transformation, just above your butt sprouts a tail of hairs from your tailbone that matches the hair on your head and swishes with your control.");	}
		else { textLP(" You also feel some extra muscle control above your butt, around your tailbone, where it feels like you've got a tail, but there's nothing there to speak of yet."); }
		tail = 1002;
		runMod -= 10;
		carryMod += 15;
	}
	if (legType == 1002 && which != 1002 && which > 1000){
		runMod += 10;
		carryMod -= 15;
	}
	
	legType = which;	
}

function boobChange(sizeChange:int):void {
	breastSize += sizeChange;
	nippleSize += sizeChange;
}

function udderChange(sizeChange:int):void {
	udderSize += sizeChange;
	teatSize += sizeChange;
}

function udderCheck(which:int):Boolean {
	//which determines what should -not- be checked
	//False means there's no other udder sources besides which
	var tempBool:Boolean = false;

	if (which != 1 && cowAffinity >= 55) { tempBool = true;	}
	if (which != 2 && legType == 1001) { tempBool = true;	}

	return tempBool;
}


function lactChange(which:int, amount:int):void{
	if (which == 1 && (lactation + amount) >= 1 && lactation < 1){
		textLP("\r\rBlotches spread across your "+clothesTop()+" around your nipples. Curiously, you dab your finger in the moistness and take a taste. Milk... Your breasts seem to have begun lactating!");
		nipplePlay = 20;
	}
	if (which == 2 && (udderLactation + amount) >= 1 && udderLactation < 1 && udders == true){
		textLP("\r\rBlotches spread across your "+clothesBottom()+", starting from your teats. Curiously, you dab your finger in the moistness and take a taste. Milk... Your udder seems to have begun lactating!");
		udderPlay = 20;
	}
	if (which == 1 && (lactation + amount) < 1 && lactation >= 1) {
		textLP("\r\rYour nipples feel exceptionally dry... It seems your breasts are no longer producing milk.");
		nipplePlay = 0;		
		if (milkEngorgementLevel == 1) { boobChange(-1); }	
		if (milkEngorgementLevel == 2) { boobChange(-2); }		
		if (milkEngorgementLevel == 3) { boobChange(-3); }		
		milkEngorgementLevel = 0;		
		milkEngorgement = 0;		
	}

	if (which == 2 && (udderLactation + amount) < 1 && udderLactation >= 1 && udders == true){
		textLP("\r\rYour teats feel exceptionally dry... It seems your udder is no longer producing milk.");
		if (udderEngorgementLevel == 1) { udderChange (-2);	}
		if (udderEngorgementLevel == 2) { udderChange (-5);	}
		if (udderEngorgementLevel == 3) { udderChange (-8); }
		udderEngorgementLevel = 0;
		udderEngorgement = 0;
		udderPlay = 0;
	}

	if (which == 1){ lactation += amount; }
	if (which == 2){ udderLactation += amount; }

	if (milkSuppressant <= 0){ 
		if ((lactation <= 0 || (udderLactation <= 0 && udders == true)) && pregStatus > 0) { 
			textLP(" ...However a few minutes later your milk starts right back up. Seems your body needs the milk for something else.");  
			lactation = 20;
			if (udders == true) { udderLactation = 20; }
		}
	
		if ((lactation < 3000 || (udderLactation < 3000 && udders == true)) && checkItem(252)) { 
			textLP(" ...However a few minutes later you begin to squirt again, soaking your outfit. The milky pendant feels warmer than usual, suffusing its essence back into your body and preventing you from being less drippy...");  
			lactation = 3000;
			if (udders == true) { udderLactation = 3000; }
		}
	}
	
	if (lactation < 0){ lactation = 0; }
	if (udderLactation < 0){ udderLactation = 0; }
}
