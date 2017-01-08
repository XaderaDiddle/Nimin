package code {

	public class Character {
		public var cstr:int  = 0;
		//Time
		public var day:int = 0;
		public var hour:int = 8;
		public var inDungeon:Boolean = false;
		public var currentDungeon:int = 0;
		public var currentState:int = 0;
		public var currentZone:int = 0;

		//Visible Stats
		public var str:int  = 0;
		public var ment:int = 0;
		public var lib:int  = 0;
		public var sen:int  = 0;
		public var HP:int  = 0;
		public var lust:int = 0;
		public var coin:int = 0;
		public var strMod:int = 0;
		public var mentMod:int = 0;
		public var libMod:int = 0;
		public var senMod:int = 0;
		public var strength:int  = 0;
		public var mentality:int = 0;
		public var libido:int  = 0;
		public var sensitivity:int  = 0;
		public var hunger:int = 0;

		//Leveling stuff
		public var SexP:int = 0;
		public var levelUP:int = 0;
		public var level:int = 0;

		//Modifying variables
		public var runMod:int = 0;
		public var rapeMod:int = 0;
		public var cumMod:Number = 1;
		public var cockSizeMod:Number = 1;
		public var vagSizeMod:Number = 1;
		public var vagElastic:Number = 1;
		public var milkMod:int = 0;
		public var carryMod:int = 0;
		public var vagBellyMod:int = 0;
		public var pregChanceMod:int = 0;
		public var extraPregChance:int = 0;
		public var pregTimeMod:int = 0;
		public var enticeMod:int = 0;
		public var milkHPMod:int = 0;
		public var changeMod:Number = 1;
		public var HPMod:int = 0;
		public var SexPMod:Number = 1;
		public var minLust:int = 0;
		public var milkCap:int = 0;
		public var coinMod:int = 0;
		public var hipMod:int = 1;
		public var buttMod:int = 1;
		public var bellyMod:int = 0;
		public var cockMoistMod:int = 0;
		public var vagMoistMod:int = 0;
		public var lockTail:int = 0;
		public var lockFace:int = 0;
		public var lockSkin:int = 0;
		public var lockBreasts:int = 0;
		public var lockEars:int = 0;
		public var lockLegs:int = 0;
		public var lockNipples:int = 0;
		public var lockCock:int = 0;

		//Body is a visual descriptor as well as a determination of max weight carryable
		public var gender:int = 0;
		public var race:int = 0;
		public var body:int = 0;
		public var dominant:int = 0;
		public var hips:int = 0;
		public var butt:int = 0;
		public var tallness:int = 0;
		public var skinType:int = 0;
		public var tail:int = 0;
		public var ears:int = 0;
		public var hair:int = 0;
		public var hairLength:int = 0;
		public var hairColor:int = 0;
		public var legType:int = 0;
		public var wings:int = 0;
		public var faceType:int = 0;
		public var skinColor:int = 0;

		public var cockTotal:int = 0;
		public var humanCocks:int = 0;
		public var horseCocks:int = 0;
		public var wolfCocks:int = 0;
		public var catCocks:int = 0;
		public var lizardCocks:int = 0;
		public var rabbitCocks:int = 0;
		public var cockSize:int = 0;
		public var cockMoist:int = 0;
		public var balls:int = 0;
		public var ballSize:int = 0;
		public var showBalls:Boolean = true;
		public var knot:Boolean = false;
		public var bugCocks:int = 0;

		public var breastSize:int = 0;
		public var boobTotal:int = 0;
		public var nippleSize:int = 1;
		public var udders:Boolean = false;
		public var udderSize:int = 0;
		public var teatSize:int = 0;
		public var clitSize:int = 0;
		public var vagTotal:int = 0;
		public var vagSize:int = 0;
		public var vagMoist:int = 0;
		public var vulvaSize:int = 0;
		public var nipType:int = 0;


		public var attireTop:int = 1;
		public var attireBot:int = 2;
		public var weapon:Number = 10;
		//weapon determines the random damage divisor. 10 = unarmed, 4 = sword, etc. Lower weapon value, higher damage.

		//Statuses
		public var pregArray:Array = [];
		public var pregStatus:int = 0;
		public var pregnancyTime:int = 0;
		public var pregRate:Number = 1;
		public var eggLaying:int = 0;
		public var eggMaxTime:int = 0;
		public var eggTime:int = 0;
		public var eggRate:int = 0;
		public var exhaustion:int = 0;
		public var exhaustionPenalty:int = 0;
		public var milkEngorgement:int = 0;
		public var milkEngorgementLevel:int = 0;
		public var udderEngorgement:int = 0;
		public var udderEngorgementLevel:int = 0;
		public var heat:int = 0;
		public var heatTime:int = 0;
		public var heatMaxTime:int = 0;
		public var lactation:int = 0;
		public var udderLactation:int = 0;
		public var nipplePlay:Number = 0;
		public var udderPlay:Number = 0;
		public var blueBalls:int = 0;
		public var teatPump:int = 0;
		public var nipPump:int = 0;
		public var cockPump:int = 0;
		public var clitPump:int = 0;
		public var vulvaPump:int = 0;
		public var masoPot:int = 0;
		public var sMasoPot:int = 0;
		public var babyFree:int = 0;
		public var charmTime:int = 0;
		public var pheromone:int = 0;
		public var eggceleratorTime:int = 0;
		public var eggceleratorDose:int = 0;
		public var bodyOil:int = 0;
		public var lustPenalty:int = 0;
		public var snuggleBall:Boolean = false;
		public var fertileGel:int = 0;
		public var eggType:int = 0;
		public var milkSuppressant:int = 0;
		public var milkSuppressantLact:int = 0;
		public var milkSuppressantUdder:int = 0;
		public var suppHarness:Boolean = false;
		public var fertilityStatueCurse:int = 0;
		public var plumpQuats:int = 0;
		public var lilaWetStatus:int = 0;
		public var cockSnakePreg:int = 0;
		public var milkCPoisonNip:int = 0;
		public var milkCPoisonUdd:int = 0;
		public var cockSnakeVenom:int = 0;

		//Affinities
		public var humanAffinity:int = 0;
		public var horseAffinity:int = 0;
		public var wolfAffinity:int = 0;
		public var catAffinity:int = 0;
		public var cowAffinity:int = 0;
		public var lizardAffinity:int = 0;
		public var rabbitAffinity:int = 0;
		public var fourBoobAffinity:int = 0;
		public var mouseAffinity:int = 0;
		public var birdAffinity:int = 0;
		public var pigAffinity:int = 0;
		public var twoBoobAffinity:int = 0;
		public var sixBoobAffinity:int = 0;
		public var eightBoobAffinity:int = 0;
		public var tenBoobAffinity:int = 0;
		public var cowTaurAffinity:int = 0;
		public var humanTaurAffinity:int = 0;
		public var skunkAffinity:int = 0;
		public var bugAffinity:int = 0;

		//Reputations for specific people/places
		public var lilaRep:int = 0;
		public var lilaVulva:int = 0;
		public var lilaMilk:int = 0;
		public var lilaPreg:int = -2;
		public var malonRep:int = 0;
		public var malonPreg:int = 0;
		public var malonChildren:int = 0;
		public var mistressRep:int = 0;
		public var jamieRep:int = 0;
		public var jamieSize:int = 4;
		public var jamieChildren:int = 0;
		public var silRep:int = 0;
		public var silPreg:int = 0;
		public var silRate:int = 0;
		public var silLay:int = 10;
		public var silTied:Boolean = false;
		public var silGrowthTime:int = 0;
		public var lilaUB:Boolean = false;
		public var dairyFarmBrand = false;
		public var jamieRep1:int = 0;
		public var jamieRep2:int = 0;
		public var jamieRep3:int = 0;
		public var lilaWetness:int = 0;
		public var jamieButt:Boolean = false;
		public var jamieBreasts:Boolean = false;
		public var jamieHair:Boolean = false;

		//Travelers
		public var travArray:Array = [];

		//Discoveries
		public var foundSoftlik:Boolean = false;
		public var foundFirmshaft:Boolean = false;
		public var foundTieden:Boolean = false;
		public var foundSizCalit:Boolean = false;
		public var foundOviasis:Boolean = false;
		public var foundValley:Boolean = false;
		public var foundSanctuary:Boolean = false;
		public var defeatedMinotaur:Boolean = false;
		public var defeatedFreakyGirl:Boolean = false;
		public var defeatedSuccubus:Boolean = false;
		public var firstExplore:Boolean = false;


		//Alchemy Know: Simple

		public var knowLustDraft:Boolean = false;
		public var knowRejuvPot:Boolean = false;
		public var knowExpPreg:Boolean = false;
		public var knowBallSwell:Boolean = false;
		public var knowMaleEnhance:Boolean = false;

		//Alchemy Know: Complex

		public var knowSLustDraft:Boolean = false;
		public var knowSRejuvPot:Boolean = false;
		public var knowSExpPreg:Boolean = false;
		public var knowSBallSwell:Boolean = false;
		public var knowBabyFree:Boolean = false;
		public var knowPotPot:Boolean = false;
		public var knowGenSwap:Boolean = false;
		public var knowMasoPot:Boolean = false;
		public var knowMilkSuppress:Boolean = false;

		//Alchemy Know: Advanced

		public var knowSGenSwap:Boolean = false;
		public var knowSMasoPot:Boolean = false;
		public var knowSBabyFree:Boolean = false;
		public var knowSPotPot:Boolean = false;
		public var knowPussJuice:Boolean = false;
		public var knowPheromone:Boolean = false;
		public var knowBazoomba:Boolean = false;

		//Class levels
		public var babyFactLevel:int = 0;
		public var bodyBuildLevel:int = 0;
		public var hyperHappyLevel:int = 0;
		public var alchemistLevel:int = 0;
		public var fetishMasterLevel:int = 0;
		public var milkMaidLevel:int = 0;
		public var shapeshiftyLevel:int = 0;
		public var shapeshiftyFirst:String = "";
		public var shapeshiftySecond:String = "";


		//Major Fetishes
		public var maleFetish:Number = 1;
		public var femaleFetish:Number = 1;
		public var hermFetish:Number = 1;
		public var narcissistFetish:Number = 1;
		public var dependentFetish:Number = 1;

		//Moderate Fetishes
		public var dominantFetish:Number = 1;
		public var submissiveFetish:Number = 1;
		public var lboobFetish:Number = 1;
		public var sboobFetish:Number = 1;
		public var furryFetish:Number = 1;
		public var scalyFetish:Number = 1;
		public var smoothyFetish:Number = 1;

		//Minor Fetishes
		public var pregnancyFetish:Number = 1;
		public var bestialityFetish:Number = 1;
		public var milkFetish:Number = 1;
		public var sizeFetish:Number = 1;
		public var unbirthingFetish:Number = 1;
		public var ovipositionFetish:Number = 1;
		public var toyFetish:Number = 1;
		public var hyperFetish:Number = 1;

		//Babies

		public var currentDayCare:int = 0;

		public var humanChildren:int = 0;
		public var equanChildren:int = 0;
		public var lupanChildren:int = 0;
		public var felinChildren:int = 0;
		public var cowChildren:int = 0;
		public var lizanEggs:int = 0;
		public var lizanChildren:int = 0;
		public var bunnionChildren:int = 0;
		public var wolfPupChildren:int = 0;
		public var miceChildren:int = 0;
		public var birdEggs:int = 0;
		public var birdChildren:int = 0;
		public var pigChildren:int = 0;
		public var calfChildren:int = 0;
		public var bugEggs:int = 0;
		public var bugChildren:int = 0;
		public var skunkChildren:int = 0;
		public var minotaurChildren:int = 0;
		public var freakyGirlChildren:int = 0;
	}

}