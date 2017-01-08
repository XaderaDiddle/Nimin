/*************
 *Alchemizing*
 *************/

function doAlchemy():void{
	viewButtonOutline(1,0,0,0,0,1,0,0,0,0,1,1);
	viewButtonText(1,0,0,0,0,1,0,0,0,0,1,1);
	buttonWrite(1, "Simple");
	buttonWrite(6, "Complex");
	buttonWrite(11, "Advanced");
	buttonWrite(12, "Return");
	textL("Choose which list of alchemy you would like to choose from.");
	doListen = function():void{
		if (buttonChoice == 1)	{ simpleAlchemy();	}
		if (buttonChoice == 6)	{ complexAlchemy(); }
		if (buttonChoice == 11)	{ advancedAlchemy(); }
		if (buttonChoice == 12)	{ doReturn(); }
	}
}

function simpleAlchemy():void{
	
	choiceListArray = [];	
	textL("Click on an item you would like to create.");

	choiceListArray.push("Blondie");
	if (choiceListCheck("Blondie")) { textLP("\r\rBlondie - Dye that will turn your hair blonde.\rRequires 7 Grain."); }
	
	choiceListArray.push("Reduc Reduc");
	if (choiceListCheck("Reduc Reduc")) { textLP("\r\rReduced Reduction - For when you don't want the more powerful shrinkage from a Reduction, this Reduced version shrinks things at a static rate.\rRequires 2 Reductions.");  }
	
	if (knowLustDraft == true) {
		choiceListArray.push("Lust Draft");
		if (choiceListCheck("Lust Draft")) {
			textLP("\r\rLust Draft - When you're having difficulty performing, a quick sip of this will get you up and ready in no time.\rRequires 1 Grain, plus either 1 Sweet Sap, 1 Cum Vial, or moderately moist genitals at the time of creation.");
		}
	}

	if (knowRejuvPot == true) {
		choiceListArray.push("Rejuv Pot");
		if (choiceListCheck("Rejuv Pot")) {
			textLP("\r\rRejuvenating Potion - Both heals and soothes the body.\rRequires 1 Poultice and 1 Wolf Fur.");
		}
	}

	if (knowExpPreg == true) {
		choiceListArray.push("Exp Preg");
		if (choiceListCheck("Exp Preg")) {
			textLP("\r\rExpress Pregnancy Potion - Tired of waiting for that baby to come? Drink one of these to get a jump on the gestation period!\rRequires 1 Sweet Sap and 1 Fresh Egg.");
		}
	}

	if (knowBallSwell == true) {
		choiceListArray.push("Ball Swell");
		if (choiceListCheck("Ball Swell")) {
			textLP("\r\rBall Sweller - When you're ejaculating often, your testicles have difficulty keeping up. A dose of this will help speed up your sperm production for the next volley.\r\rRequires 1 Blo Berry.");
		}
	}

	if (knowMaleEnhance == true) {
		choiceListArray.push("Male Enhance");
		if (choiceListCheck("Male Enhance")) {
			textLP("\r\rMale Enhancement Drug - A simple concoction to help streamline one's masculine growth.\rRequires 2 Co-Sn Ven and either 1 Blo Berry or 1 Bul Berry.");
		}
	}

	
	choiceListButtons("Simple");
	doListen = function():void{

		choiceListSelect("Simple");
		if (buttonChoice == 4 || buttonChoice == 8) { simpleAlchemy(); }
		else { choicePage = 1; }

		if (choiceListResult[0] == "Blondie") { makeAlchemy(220, 1); }
		if (choiceListResult[0] == "Reduc Reduc") { makeAlchemy(533, 1); }
		if (choiceListResult[0] == "Lust Draft") { makeAlchemy(503, 1); }
		if (choiceListResult[0] == "Rejuv Pot") { makeAlchemy(504, 1); }
		if (choiceListResult[0] == "Exp Preg") { makeAlchemy(506, 1); }
		if (choiceListResult[0] == "Ball Swell") { makeAlchemy(507, 1); }
		if (choiceListResult[0] == "Male Enhance") { makeAlchemy(534, 1); }
		
		if (buttonChoice == 12)	{ doAlchemy(); }
	}
}

function complexAlchemy():void{
	
	choiceListArray = [];
	textL("Click on an item you would like to create.");
	
	choiceListArray.push("Black Dye");
	if (choiceListCheck("Black Dye")) { textLP("\r\rBlack Dye - Dye that will turn your hair black.\rRequires 5 Wolf Fur."); }
	
	if (knowSLustDraft == true) {
		choiceListArray.push("S Lust Draft");
		if (choiceListCheck("S Lust Draft")) {
			textLP("\r\rSuperior Lust Draft - When you're having difficulty performing, a quick sip of this will get you up so fast that you may want to avoid pointing towards any nearby eyes.\rRequires 3 Grain plus either 2 Bol Juice, 1 Cum Bottle, or really moist genitals at the time of creation.");
		}
	}
	
	if (knowSRejuvPot == true) {
		choiceListArray.push("S Rejuv Pot");
		if (choiceListCheck("S Rejuv Pot")) {
			textLP("\r\rSuperior Rejuvenating Potion - Both greatly heals and soothes the body.\rRequires 1 Lust Draft (to be reversed) and either 1 Milk Jug or 3 Milk Bottle .");
		}
	}
	
	if (knowSExpPreg == true) {
		choiceListArray.push("S Exp Preg");
		if (choiceListCheck("S Exp Preg")) {
			textLP("\r\rSuperior Express Pregnancy Potion - Tired of waiting for that baby to come? Drink one of these and that baby will be wanting out in no time!\rRequires 1 Wet Cloth and 3 Fresh Eggs.");
		}
	}
	
	if (knowSBallSwell == true) {
		choiceListArray.push("S Ball Swell");
		if (choiceListCheck("S Ball Swell")) {
			textLP("\r\rSuperior Ball Sweller - When you're ejaculating often, your testicles have difficulty keeping up. A dose of this will help speed up your sperm production so much that you may wanna be wary of explosions.\rRequires 1 Blo Berry and 1 Bul Berry.");
		}
	}
	
	if (knowBabyFree == true) {
		choiceListArray.push("Baby Free");
		if (choiceListCheck("Baby Free")) {
			textLP("\r\rBaby Free Potion - Though this potion may lack babies as an ingredient, it also reduces the chances of any woman who takes it from getting pregnant for a period of time.\rRequires 1 Reduction and 1 Wolf Fur.");
		}
	}
	
	if (knowPotPot == true) {
		choiceListArray.push("Pot Pot");
		if (choiceListCheck("Pot Pot")) {
			textLP("\r\rPotency Potion - Not happy with the amount of cum you're producing with your measly testicles? This will make your nuts more effective at their job!\rRequires 3 Ball Swell and 1 Cum Vial.");
		}
	}
	
	if (knowGenSwap == true) {
		choiceListArray.push("Gen Swap");
		if (choiceListCheck("Gen Swap")) {
			textLP("\r\rGender Swap Potion - If you've ever wondered how the other sex feels, this is a great way to do it. Although you may lose your proportions, you'll know what it feels to be like the opposite gender in no time. Unless you're both, in which case you'd just know how a rather undeveloped version of both genders feels, or androgynous, in which case who knows which gender you'll end up as.\rRequires 1 Neuter and 1 Reduction.");
		}
	}
	
	if (knowMasoPot == true) {
		choiceListArray.push("Maso Pot");
		if (choiceListCheck("Maso Pot")) {
			textLP("\r\rMasochism Potion - This little drink messes up your nervous system for a while, making you perceive some damage as pleasure instead. A batch of Masochism Potion results in 2 potions.\rRequires 2 Wolf Fur and 1 Lust Draft.");
		}
	}

	if (knowMilkSuppress == true) {
		choiceListArray.push("Milk Suppress");
		if (choiceListCheck("Milk Suppress")) {
			textLP("\r\rMilk Suppressant - A little embarassed by your inopportune leaking? This drug will help prevent any milk from flowing out, though it does not stop the production of milk.\rRequires 1 Milk C Pois and 1 Reduc Reduc.");
		}
	}

	choiceListButtons("Complex");
	doListen = function():void{

		choiceListSelect("Complex");
		if (buttonChoice == 4 || buttonChoice == 8) { complexAlchemy(); }
		else { choicePage = 1; }

		if (choiceListResult[0] == "Black Dye") { makeAlchemy(515, 1); }
		if (choiceListResult[0] == "S Lust Draft") { makeAlchemy(508, 1); }
		if (choiceListResult[0] == "S Rejuv Pot") { makeAlchemy(509, 1); }
		if (choiceListResult[0] == "S Exp Preg") { makeAlchemy(511, 1); }
		if (choiceListResult[0] == "S Ball Swell") { makeAlchemy(512, 1); }
		if (choiceListResult[0] == "Baby Free") { makeAlchemy(516, 1); }
		if (choiceListResult[0] == "Pot Pot") { makeAlchemy(517, 1); }
		if (choiceListResult[0] == "Gen Swap") { makeAlchemy(513, 1); }
		if (choiceListResult[0] == "Maso Pot") { makeAlchemy(514, 1); }
		if (choiceListResult[0] == "Milk Suppress") { makeAlchemy(535, 1); }

		
		if (buttonChoice == 12)	{ doAlchemy(); }
	}
}

function advancedAlchemy():void{
	
	choiceListArray = [];
	textL("Click on an item you would like to create.");
	
	choiceListArray.push("Red Dye");
	if (choiceListCheck("Red Dye")) {textLP("\r\rRed Dye - Dye that will turn your hair red.\rRequires 1 Pink Ink and 3 Red Mush."); }
	if (knowSBabyFree == true) {
		choiceListArray.push("S Baby Free");
		if (choiceListCheck("S Baby Free")) {
			textLP("\r\rSuperior Baby Free Potion - This potion really has no babies in it I swear! Seriously. Please believe me! If you drink it you'll be nearly baby free as well for over a week!\rRequires 1 Neuter and 1 Puss Fruit.");
		}
	}
	if (knowSPotPot == true) {
		choiceListArray.push("S Pot Pot");
		if (choiceListCheck("S Pot Pot")) {
			textLP("\r\rSuperior Potency Potion - Not happy with the amount of cum you're producing with your measly testicles? This will definitely kick them... into gear!\rRequires 3 S Ball Swell and 1 Cum Bottle.");
		}
	}
	if (knowSGenSwap == true) {
		choiceListArray.push("S Gen Swap");
		if (choiceListCheck("S Gen Swap")) {
			textLP("\r\rSuperior Gender Swap Potion - If you've ever wondered how the other sex feels, this is a great way to do it. And the best part is your endowments will be of equal proportion! Unless you're both, in which case your proportions will swap, or androgynous, in which case who knows which gender you'll end up as.\rRequires 1 Puss Fruit, 1 Co-Sn Ven, 1 Milk C Pois, and 1 Cock Carv.");
		}
	}
	if (knowSMasoPot == true) {
		choiceListArray.push("S Maso Pot");
		if (choiceListCheck("S Maso Pot")) {
			textLP("\r\rSuperior Masochism Potion - This little drink messes up your nervous system for a while, making you perceive all damage as pleasure instead.\rRequires 1 Kinky Carr, 1 Rejuv Pot, and 1 Trinket.");
		}
	}
	if (knowPussJuice == true){
		choiceListArray.push("Puss Juice");
		if (choiceListCheck("Puss Juice")) {
			textLP("\r\rConcentrated Pussy Fruit Juice - A recipe learned from the felin mistress in Siz'Calit, this mixture increases the potency of the Pussy Fruit and guarantees some interesting reactions. Requires 6 Puss Fruit and 1 Sweet Sap.");
		}
	}
	if (knowPheromone == true) {
		choiceListArray.push("Pheromone");
		if (choiceListCheck("Pheromone")) {
			textLP("\r\rStrong Pheromone - A recipe learned from an elderly lupan fisherman at the lake outside of Tieden, this concoction supposedly attracts fish quite well and makes great bait. However, due to some missing notes, your results may be a bit more... potent than advertised. Requires 1 Charmed Egg, 1 Red Mush, and 1 Trinket.");
		}
	}
	if (knowBazoomba == true) {
		choiceListArray.push("Bazoomba!");
		if (choiceListCheck("Bazoomba!")) {
			textLP("\r\rBazoomba! - A secret and powerful recipe that creates more of one of the best things in the world... Requires 1 Strange Egg, 1 Milk Jug, 2 Cock Carv, and 3 Red Mush.");
		}
	}

	choiceListButtons("Advanced");
	doListen = function():void{
		
		choiceListSelect("Advanced");
		if (buttonChoice == 4 || buttonChoice == 8) { advancedAlchemy(); }
		else { choicePage = 1; }

		if (choiceListResult[0] == "Red Dye") { makeAlchemy(520, 1); }
		if (choiceListResult[0] == "S Baby free") { makeAlchemy(521, 1); }
		if (choiceListResult[0] == "S Pot Pot") { makeAlchemy(522, 1); }
		if (choiceListResult[0] == "S Gen Swap") { makeAlchemy(518, 1); }
		if (choiceListResult[0] == "S Maso Pot") { makeAlchemy(519, 1); }
		if (choiceListResult[0] == "Puss Juice") { makeAlchemy(221, 1); }
		if (choiceListResult[0] == "Pheromone") { makeAlchemy(532, 1); }
		if (choiceListResult[0] == "Bazoomba!") { makeAlchemy(536, 1); }
		
		
		if (buttonChoice == 12)	{ doAlchemy(); }
	}
}

function makeAlchemy(ID:int, level:int){
	buttonConfirm();
	textL("You have chosen to make a "+itemName(ID)+".\r\rAre you sure?");
	doListen = function():void{ 
		if (buttonChoice == 6){
			var tempBool:Boolean = false;
			if (ID == 220 && countItem(209) >= 7) { tempBool = true; }
			if (ID == 221 && countItem(210) >= 6 && checkItem(114))	{ tempBool = true;	}
			if (ID == 503 && checkItem(209) && (checkItem(114) || checkItem(523) || (moistCalc(2)*10*lust > 3000) || (moistCalc(1)*10*lust > 3000))) { tempBool = true; }
			if (ID == 504 && checkItem(115) && checkItem(203)) { tempBool = true; }
			if (ID == 506 && checkItem(114) && checkItem(219)) { tempBool = true; }
			if (ID == 507 && checkItem(208)) { tempBool = true; }
			if (ID == 508 && countItem(209) >= 3 && (countItem(112) >= 2 || checkItem(524) ||(moistCalc(2)*10*lust > 6000) || (moistCalc(1)*10*lust > 6000))) { tempBool = true; }
			if (ID == 509 && checkItem(503) && (checkItem(501) || countItem(500) >= 3)) { tempBool = true; }
			if (ID == 511 && checkItem(213) && countItem(219) >= 3) { tempBool = true; }
			if (ID == 512 && checkItem(208) && checkItem(218)) { tempBool = true; }
			if (ID == 513 && checkItem(110) && checkItem(120)) { tempBool = true; }
			if (ID == 514 && countItem(203) >= 2 && checkItem(503)) { tempBool = true; }
			if (ID == 515 && countItem(203) >= 5) { tempBool = true; }
			if (ID == 516 && checkItem(110) && checkItem(203)) { tempBool = true; }
			if (ID == 517 && countItem(507) >= 3 && checkItem(523)) { tempBool = true; }
			if (ID == 518 && checkItem(201) && checkItem(202) && checkItem(207) && checkItem(210)) { tempBool = true; }
			if (ID == 519 && checkItem(222) && checkItem(206) && checkItem(504)) { tempBool = true; }
			if (ID == 520 && checkItem(216) && countItem(212) >= 3) { tempBool = true; }
			if (ID == 521 && checkItem(120) && checkItem(210)) { tempBool = true; }
			if (ID == 522 && countItem(512) >= 3 && checkItem(524)) { tempBool = true; }
			if (ID == 532 && checkItem(530) && checkItem(212) && checkItem(206)) { tempBool = true; }
			if (ID == 533 && countItem(110) >= 2) { tempBool = true; }
			if (ID == 534 && countItem(202) >= 2 && (checkItem(208) || checkItem(218))) { tempBool = true; }
			if (ID == 535 && checkItem(201) && checkItem(533)) { tempBool = true; }
			if (ID == 536 && countItem(207) >= 2 && countItem(212) >= 3 && checkItem(501) && checkItem(529)) { tempBool = true; }

			if (tempBool == true) {
				if (ID == 220) { loseManyItem(209, 7); }
				if (ID == 221) {
					loseManyItem(210, 6);
					loseManyItem(114, 1);
				}
				if (ID == 503) { 
					loseManyItem(209, 1);
					if ((moistCalc(2)*10*lust > 3000) || (moistCalc(1)*10*lust > 3000)) {	}
					else if (checkItem(523)){ loseManyItem(523, 1);	}
					else { loseManyItem(114, 1); }
				}
				if (ID == 504) { 
					loseManyItem(115, 1);
					loseManyItem(203, 1);
				}
				if (ID == 506) { 
					loseManyItem(114, 1);
					loseManyItem(219, 1);
				}
				if (ID == 507) { loseManyItem(208, 1); }
				if (ID == 508) { 
					loseManyItem(209, 3);
					if ((moistCalc(2)*10*lust > 6000) || (moistCalc(1)*10*lust > 6000)) {	}
					else if (checkItem(524)){ loseManyItem(524, 1);	}
					else { loseManyItem(112, 2); }
				}
				if (ID == 509) { 
					loseManyItem(503, 1);
					if (countItem(500) >= 3){ loseManyItem(500, 3); }
					else { loseManyItem(501, 1); }
				}
				if (ID == 511) { 
					loseManyItem(213, 1);
					loseManyItem(219, 3);
				}
				if (ID == 512) { 
					loseManyItem(208, 1);
					loseManyItem(218, 1);
				}
				if (ID == 513) { 
					loseManyItem(110, 1);
					loseManyItem(120, 1);
				}
				if (ID == 514) { 
					loseManyItem(203, 2);
					loseManyItem(503, 1);
				}
				if (ID == 515) { loseManyItem(203, 5); }
				if (ID == 516) { 
					loseManyItem(110, 1);
					loseManyItem(203, 1);
				}
				if (ID == 517) { 
					loseManyItem(507, 3);
					loseManyItem(523, 1);
				}
				if (ID == 518) {
					loseManyItem(201, 1);
					loseManyItem(202, 1);
					loseManyItem(207, 1);
					loseManyItem(210, 1);
				}
				if (ID == 519) { 
					loseManyItem(206, 1);
					loseManyItem(222, 1);
					loseManyItem(504, 1);
				}
				if (ID == 520) { 
					loseManyItem(212, 3);
					loseManyItem(216, 1);
				}
				if (ID == 521) { 
					loseManyItem(120, 1);
					loseManyItem(210, 1);
				}
				if (ID == 522) { 
					loseManyItem(512, 3);
					loseManyItem(524, 1);
				}
				if (ID == 532) {
					loseManyItem(530, 1);
					loseManyItem(212, 1);
					loseManyItem(206, 1);
				}
				if (ID == 533) { 
					loseManyItem(110, 2);
				}
				if (ID == 534) {
					loseManyItem(202, 2);
					if (checkItem(208))	{ loseManyItem(208, 1); }
					else { loseManyItem(218, 1); }
				}
				if (ID == 535) {
					loseManyItem(201, 1);
					loseManyItem(533, 1);
				}
				if (ID == 536) {
					loseManyItem(501, 1);
					loseManyItem(529, 1);
					loseManyItem(207, 2);
					loseManyItem(212, 3);
				}

				if (level == 1) {
					itemAdd(ID);
					if (percent() <= (55 + alchemistLevel*2)) { itemAdd(ID); }
					if (percent() <= (25 + alchemistLevel*2)) { itemAdd(ID); }
					if (percent() <= (5 + alchemistLevel*2)) { itemAdd(ID); }
				}
				if (level == 2) {
					itemAdd(ID);
					if (percent() <= (55 + alchemistLevel)) { itemAdd(ID); }
					if (percent() <= (25 + alchemistLevel)) { itemAdd(ID); }
					if (percent() <= (5 + alchemistLevel)) { itemAdd(ID); }
				}
				if (level == 3) {
					itemAdd(ID);
					if (percent() <= (55 + alchemistLevel*2/3)) { itemAdd(ID); }
					if (percent() <= (25 + alchemistLevel*2/3)) { itemAdd(ID); }
					if (percent() <= (5 + alchemistLevel*2/3)) { itemAdd(ID); }
				}

				//Items that give more per creation
				if (ID == 533) { 
					itemAdd(ID);
					itemAdd(ID);
					itemAdd(ID);
					itemAdd(ID);
				}

				doProcess();
			}

			else{
				textL("Sorry, but you do not have the necessary ingredients on hand. Please choose something else.");
				doNext();
				doListen = function():void{
					if (level == 1)	{ simpleAlchemy();	}
					if (level == 2)	{ complexAlchemy();	}
					if (level == 3)	{ advancedAlchemy(); }
				}
			}
		}
		else { 
			if (level == 1)	{ simpleAlchemy();	}
			if (level == 2)	{ complexAlchemy();	}
			if (level == 3)	{ advancedAlchemy(); }
		}
	}
}
