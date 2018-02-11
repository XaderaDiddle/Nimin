/************
 *Game Setup*
 ************/
/* 
Set up stats
Set up first screen
*/

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
var breastSizeMod:Number = 1;
var nippleSizeMod:Number = 1;
var nipNarrowMod:Number = 1.07;
var cockNarrowMod:Number = 1.3;
var clitNarrowMod:Number = 1.5;
var ballSizeMod:Number = 1;

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
Option8.addEventListener(MouseEvent.CLICK, option7Event);
Option8a.addEventListener(MouseEvent.CLICK, option7Event);

scrollBar1.scrollTarget = outputWindow;
scrollBar2.scrollTarget = sideWindow;
statPane.visible = false;
strNum.visible = false;
mentNum.visible = false;
libNum.visible = false;
senNum.visible = false;
hpNum.visible = false;
lustNum.visible = false;
hungerNum.visible = false;
hpText.visible = false;
lustText.visible = false;
hungerText.visible = false;
levelPane.visible = false;
levelNum.visible = false;
sexPNum.visible = false;
coinNum.visible = false;
currentRegion.visible = false;
region.visible = false;
saveGame.visible = false;
saveGameOutline.visible = false;
DayPane.visible = false;
dayNum.visible = false;
hourNum.visible = false;
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