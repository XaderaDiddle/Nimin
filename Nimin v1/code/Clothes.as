/*********
 *Clothes*
 *********/

/*

This is where all clothes-related logic sits.

Sentence building:
clothesTop() - The word for the current piece of clothing for the top-half for sentences.
clothesBottom() - The word for the current piece of clothing for the bottom-half for sentences.
currentClothes() - Total outfit description fo sentences.
pullUD(1-2) - Adverb for which way a piece of clothing is pulled (up, down, open, etc). 1 = Top. 2 = Bottom.





doTailor - The shop for tailoring.
clothesName - The names for each piece of clothing, for store and inventory.
clothesID - The correlation of different town's tailoring to the id of the clothes they have.
clothesValue - The value of all the outfits.
clothesDescription - How the clothes are described in the story and inventory.

clothesChange - Equips the clothes to the top or bottom as appropriate.
changeTop - Stat changes for the top piece of clothing.
changeBot - Stat changes for the bottom piece of clothing.
*/

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
