/*******************
 *Appearance Button*
 *******************/
 
//Display Appearance


function appearanceGo():void{
	var tempStr:String = "";
	tempStr += "You began your journey as a "+raceName()+".\r\r"+Math.floor(tallness/12)+" feet and "+(tallness - Math.floor(tallness/12)*12)+" inches tall, you wield "+hipDesc()+" hips and a "+buttDesc()+" butt on an overall "+bodyDesc()+" figure.";
	if (hair > 0) { tempStr += " With "+hairC()+""+hairDesc()+"";	}
	if (hairstyleLength(hair)) { tempStr += " "+hairL()+"";	}
	if (hair > 0){ tempStr += ", you look much like a"+genName()+" "+domName()+""; }
	else { tempStr += " You look much like a"+genName()+" "+domName()+""; }
	tempStr += ""+faceDesc()+"";
	if (tail > 1){ tempStr += ", and a "+tailDesc()+" tail swishing upon your backside"; }

	if (skunkAffinity >= 40) { 
		tempStr += ". A rather alluring scent constant lingers from your rump, sweet and pleasant, but with the potential for something far worse";	
		if (skinType == 2) { 
			tempStr += ". Your fur also sports two stripes that connect at your brow and runs over your head down to the scented area";
			if (tail == 11)	{ tempStr += " where they connect to the stripes on your tail";	}
		}
	}

	tempStr += ". "+earDesc()+".";
	if (checkItem(234)) { tempStr += " Large, multi-pointed, slightly fuzzy antlers grow out from atop your head, feeling slightly heavy but perfectly melded to your skull so you can easily lift them."; }
	if (checkItem (101)){ tempStr += " Soft padding protects the palms of your hands, making them look much like paws, your nails being sharp claws.";	}
	else if (dominant == 9) { tempStr += " Pointy talons grow from the tips of your fingers, more menacing than normal nails but not useful enough to be a threat."; }
	if (legType >= 1000)	{
		tempStr += " From your waist down extends an almost second body, complete with a second belly and set of legs, standing on four "+legDesc(10)+". 'Taur' tends to be the term for such a being, with your crotch and rump far back at the end of the continued body."; 
		if (legType == 1001) { tempStr += " This second body is covered in white fur with large black patches, and your ass is squared off a bit from the bulky rear hips.";	}
		if (legType == 1002) { tempStr += " This second body matches the "+skinDesc()+" of your upper half, with a thin and lithe torso, looking somewhat like a humans and not exactly made for riding but makes up for the frailness with plantigrade feet that easily support yourself, even though they aren't the speediest.";	}
	}
	if (checkItem (102) || legType == 1001){ tempStr += " Keratin extends from your combined toes like hooves, your ankle angled upward and high up like a second backwards knee, making you walk on the tips of your hooved toes with a clap against the ground every step.";	}
	else if (legType == 1) { tempStr += " Your ankles elongated and lithe, the front of your feet are large wide paws that help balance you as you walk digitigrade, your steps nothing but a soft and gentle patter against the ground.";	}
	else if (skinType == 5 && legDesc(10) == "feet") { tempStr += " Chitin extends further past your heels, making you stand higher and balancing more on your toes."; }
	if (checkItem(234)) { tempStr += " Your "+buttDesc()+" butt also looks a bit tighter for its size with the "+skinDesc()+" around it a lighter color than the rest, acting like a bullseye to your nethers. Below, the bone structure of your "+legDesc(2)+" is also fairly lithe, causing you to step with a graceful swagger and wave your "+hipDesc()+" hips erotically with every footfall."; }

	tempStr += "\r\rYou are currently wearing a ";
	if (attireTop != attireBot){ tempStr += ""+clothesTop()+" and "+clothesBottom()+" that cover"; }
	else { tempStr += clothesTop()+" that covers";  }
	if (snuggleBall == true) { tempStr += " the thick and soft layer of plushy snuggliness which coats";	}
	tempStr += " your "+ skinDesc()+" ";
	if (weapon == 10) { tempStr += "while you defend yourself unarmed."; }
	else { tempStr += "while you defend yourself with a "+itemName(weapon)+" as your weapon."; }
	if (lilaWetStatus > 0 && (attireBot == 10 || attireBot == 11)) { tempStr += " Although, your "+clothesBottom()+" doesn't do much to stem your squishy flow of slick fluids, just like a certain little felin girl."; }

	if (legType >= 1000) { tempStr += " Your tauric waist measures "+decGet(tallness*.75 + pregnancyTime/10 + vagBellyMod/8 + bellyMod/10, 1)+" inches around, your "+bellyDesc()+" belly swinging underneath."; }
	else { tempStr += " Your waist measures "+decGet(tallness/2 + pregnancyTime/10 + vagBellyMod/8 + bellyMod/10, 1)+" inches around, sporting a "+bellyDesc()+" belly beneath your "+clothesTop()+".";	}

	if (dominant == 10) { tempStr += " There's also a bit of extra pudge around your waist, some chubbiness to add to your pig-like nature."; }

	if (wings > 0) {
		tempStr += " Holes over your shoulders help your ";
		if (wings == 9)	{ tempStr += "feathery"; }
		tempStr += " wings stretch freely, even though they're not of much use beyond hopping around and fly out of battle.";
	}

	if (dairyFarmBrand == true) { tempStr += " Beneath your "+clothesBottom()+", the shape of a bucket with milk splashing out over the edges is forever imprinted upon your "+buttDesc()+" hind, marking you as property of the Softlik Dairy Farm."; }

	
	if (breastSize > 0){
		if (boobTotal == 2)	{
			tempStr += "\r\rUpon your chest heaves "+boobTotal+" "+boobDesc()+" breasts. Your bust measures "+decGet(breastSize*.5, 1)+" inches in circumference beyond that of your chest, with "+nipDesc();
		}		
		if (boobTotal == 4)	{
			tempStr += "\r\rUpon your chest heaves "+boobTotal+" "+boobDesc()+" breasts; two pairs of equal size, one close below the other. Your dual busts each measure "+decGet(breastSize*.5, 1)+" inches in circumference beyond that of your chest, with "+nipDesc();
		}
		if (boobTotal == 6){
			tempStr += "\r\rUpon your chest and down to your belly heaves "+boobTotal+" "+boobDesc()+" breasts; three pairs diminishing in size the lower they go. Your bust measures "+decGet(breastSize*.5, 1)+" inches in circumference beyond that of your chest, the next pair measuring "+decGet(breastSize*.25, 2)+" inches and the next measuring "+decGet(breastSize*.15, 2)+" inches; each with "+nipDesc();
		}
		if (boobTotal == 8){
			tempStr += "\r\rUpon your chest and down to your lower belly heaves "+boobTotal+" "+boobDesc()+" breasts; four pairs all the same size and practically stacked on top of each other. Your bust measures "+decGet(breastSize*.38, 1)+" inches in circumference beyond that of your chest, the lower pairs just as large; each with "+nipDesc();
		}
		if (boobTotal == 10){
			tempStr += "\r\rUpon your chest and down to just above your crotch heaves "+boobTotal+" "+boobDesc()+" breasts; five pairs all the same size and practically stacked on top of each other. Your bust measures "+decGet(breastSize*.4, 1)+" inches in circumference beyond that of your chest, the lower pairs just as large; each with "+nipDesc();
		}
		if (dominant == 5){	tempStr += "teats"; }
		if (dominant != 5) { tempStr += "nipples"; }
		if (nipType == 2) { tempStr += " hidden within slits in your areola."; 	}
		else if (lust < 50) { tempStr += " softly bulging "+decGet(nippleSize*.1, 1)+" inches beyond that."; }
		else if (lust < 75) { tempStr += " stiffly standing "+decGet(nippleSize*.2, 1)+" inches beyond that."; }
		else { tempStr += " achingly hard and reaching "+decGet(nippleSize*.25, 1)+" inches beyond that."; }
		if (nipType == 1) { tempStr += " With four nubs each, your breasts look quite similar to cows' udders."; }
		if (lactation > 0){
			if (milkEngorgementLevel == 2) { tempStr += " A few drops of milk dangle from each nipple as you pull your "+clothesTop()+" from your engorged breasts to inspect yourself."; }
			if (milkEngorgementLevel == 3) { tempStr += " Milk sprays from each of your nipples as you pull your "+clothesTop()+" from your heavily engorged breasts to inspect yourself, and continue to dribble down your belly and soaking into your "+clothesBottom()+"."; }
		}
		if (milkSuppressantLact > 0){
			if (milkEngorgementLevel == 2) { tempStr += " The mounds beneath your nipples feel a bit swollen and sensitive, holding back all their milk."; }
			if (milkEngorgementLevel == 3) { tempStr += " The mounds beneath your nipples stand more perk than ever, despite feeling so heavy; so stuffed with milk that they're fairly hard."; }
		}
	}

	if (udders == true){
		if (legType == 1001) { tempStr += "\r\rJust behind your tauric belly, squishing between your rear legs, hangs a "+udderDesc()+" udder ";	}
		else if (cowAffinity >= 55) { tempStr += "\r\rJust below your belly hangs a "+udderDesc()+" udder "; }		
		tempStr += "with 4 "+teatDesc()+" teats, each "+decGet(teatSize*.2, 1)+" inches long";
		if (udderLactation > 0){
			if (udderEngorgementLevel == 2) { tempStr += " and dribbling milk from your engorgement"; }
			if (udderEngorgementLevel == 3) { tempStr += " and practically spraying milk onto the ground before you from your excessive engorgment"; }
		}
		if (milkSuppressantUdder > 0){
			if (milkEngorgementLevel == 2) { tempStr += " feeling stiff as the bag beneath them is swollen with milk"; }
			if (milkEngorgementLevel == 3) { tempStr += " feeling quite hard and almost pointing straight out from the very swollen bag beneath them"; }
		}
		tempStr += ".";
	}

	if (cockTotal > 0){
		tempStr += "\r\rAbove your groin rests "+cockTotal+" "+cockDesc()+" wang"+plural(1)+".";
		if (lust <= 30){
			if (humanCocks > 0){ tempStr += " "+humanCocks+" dangle"+plural(3)+" flaccidly from your groin, reaching "+decGet(cockSize*cockSizeMod*.25, 2)+" inches down, with smooth skin and a mushroom-like glans, just like a human's."; }
			if (horseCocks > 0){ tempStr += " "+horseCocks+" hide"+plural(3)+" within a fuzzy sheath that protrudes from your groin, around "+decGet(cockSize*cockSizeMod/12, 1)+" inches in thickness."; }
			if (wolfCocks > 0 || catCocks > 0 || rabbitCocks > 0){ tempStr += " "+(wolfCocks+catCocks+rabbitCocks)+" hide"+plural(3)+" within a fuzzy sheath that protrudes from your groin, around "+decGet(cockSize*cockSizeMod/16, 1)+" inches in thickness."; }
			if (lizardCocks > 0) { tempStr += " "+lizardCocks+" hide"+plural(3)+" in a slit, flush against your body."; }
			if (bugCocks > 0) { tempStr += " "+bugCocks+" dangle"+plural(3)+" flaccidly from your groin, reaching "+decGet(cockSize*cockSizeMod*.25, 2)+" inches down, its four spikes around glans soft and blunt at the moment, the bumpy ridge underneath soft, almost like a bug's."; }	
			if (moistCalc(1) > 2) { 
				tempStr += " Drops of pre slowly bead at the tip of your cock"+plural(1)+", ";
				if (horseCocks > 0 || wolfCocks > 0 || catCocks > 0 || rabbitCocks > 0){ tempStr +=  " pooling within your sheath"+plural(1)+","; }
				tempStr += " running down your thighs as it continually blotches your "+clothesBottom()+", even though you're barely aroused at all. The slime is enough to slip yourself into a pussy smaller than you are long, at least.";
			}
		}
		if (lust > 30 && lust <= 70){
			if (humanCocks > 0){ tempStr += " "+humanCocks+" stand"+plural(3)+" erect, reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches up, with smooth skin and a mushroom-like glans, just like a human's."; }
			if (horseCocks > 0){ tempStr += " "+horseCocks+" droop"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/12, 1)+"-inch thick smooth sheath, reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches down your thigh with a ring of prepuce halfway down its length and a flat head at the end, just like a horse's."; }
			if (wolfCocks > 0 ){ tempStr += " "+wolfCocks+" poke"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, red and hard, smooth and covered in veins with a narrowing tip"+plural(1)+", standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a wolf's."; }
			if (catCocks > 0 ){ tempStr += " "+catCocks+" poke"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, pink and soft, with tender barbs near the narrowing tip"+plural(1)+", standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a cat's."; }
			if (lizardCocks> 0){ tempStr += " "+lizardCocks+" poke"+plural(3)+" through the slit, stretching it wide as the purple flesh pulses with the ribbing along the top slightly stiff and the bulbous head feeling squishy to the touch, the narrow tip reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, probably like a reptile's."; }
			if (rabbitCocks > 0 ){ tempStr += " "+rabbitCocks+" poke"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, red and pointy, gently narrowing to their tip"+plural(1)+", somewhat like a carrot, standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a rabbit's."; }
			if (bugCocks > 0){ tempStr += " "+bugCocks+" stand"+plural(3)+" erect, reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches up, with four fleshy spikes poking out from the rim of the glans and a sturdy bumpy ridge lining the underside, almost like a bug's."; }
			if (knot == true) { tempStr += " Your cock"+plural(1)+" swell"+plural(3)+" a little near the base, preparing for a chance for the knot"+plural(1)+" to expand.";	}
			if (moistCalc(1) > 2 && moistCalc(1) <= 5) { 
				tempStr += " Drops of pre slowly bead at the tip of your cock"+plural(1)+", ";
				tempStr += " running down your thighs as it blotches your "+clothesBottom()+". The slime is enough to slip yourself into a pussy smaller than you are long, at least.";
			}
			if (moistCalc(1) > 5) { tempStr += " Pre steadily drips from your groin, making a large wet spot on your "+clothesBottom()+", looking more like you had peed yourself from all the seminal fluid.  Fortunately, you could probably slip "+oneYour(1)+" cock"+plural(1)+" into a pussy smaller than you are, thanks to all the lubrication."; }
		}
		if (lust > 70){
			if (humanCocks > 0){ tempStr += " "+humanCocks+" stand"+plural(3)+" erect, reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches up, throbbing strongly with smooth skin and a mushroom-like glans that is nearly purple in color, just like a human's."; }
			if (horseCocks > 0){ tempStr += " "+horseCocks+" twitches out of a "+decGet(cockSize*cockSizeMod/12, 1)+"-inch thick smooth sheath, trying to stand "+decGet(cockSize*cockSizeMod*.5, 1)+" inches from your body with a ring of prepuce halfway down its length and a flaring flat head at the end, just like a horse's."; }
			if (wolfCocks > 0 ){ tempStr += " "+wolfCocks+" throb"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, red and hard, smooth and covered in veins that almost look purple, they're so full of blood, with a narrowing tip"+plural(1)+", standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a wolf's."; }
			if (catCocks > 0 ){ tempStr += " "+catCocks+" stiffly stand"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, pink and nearly hard, with tender barbs bristling out near the narrowing tip"+plural(1)+", standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a cat's."; }
			if (lizardCocks> 0){ tempStr += " "+lizardCocks+" harden"+plural(3)+" through the slit, stretching it wide as the purple flesh throbs with the ribbing along the top nearly like actual bone and the bulbous head feeling quite swollen, the narrow tip reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, probably like a reptile's."; }
			if (rabbitCocks > 0 ){ tempStr += " "+rabbitCocks+" stiffly stand"+plural(3)+" out of a "+decGet(cockSize*cockSizeMod/16, 1)+"-inch thick fuzzy sheath, red and throbbing, almost breaking the conical shape with the pulsing, and standing "+decGet(cockSize*cockSizeMod*.5, 1)+" inches high, just like a rabbit's."; }
			if (bugCocks > 0){ tempStr += " "+bugCocks+" stand"+plural(3)+" erect, reaching "+decGet(cockSize*cockSizeMod*.5, 1)+" inches up, throbbing strongly with four spikes jutting out around the glans, hard and pointy, and a bumpy ridge lining the underside that presses outward, almost like a bug's."; }
			if (knot == true) { tempStr += " Your cock"+plural(1)+" bulge"+plural(3)+" tremendously at "+plural(5)+" base"+plural(1)+", the knot"+plural(1)+" completely expecting to come at any moment and nearly "+decGet(cockSize*cockSizeMod/4, 1)+" inches thick."; }
			if (moistCalc(1) > 2 && moistCalc(1) <= 5) { 
				tempStr += " Drops of pre slowly bead at the tip of your cock"+plural(1)+", ";
				tempStr += " running down your thighs as it blotches your "+clothesBottom()+". The slime is enough to slip yourself into a pussy smaller than you are long, at least.";
			}
			if (moistCalc(1) > 5 && moistCalc(1) <= 10) { tempStr += " Pre steadily drips from your groin, making a large wet spot on your "+clothesBottom()+", looking more like you had peed yourself from all the seminal fluid. Fortunately, you could probably slip "+oneYour(1)+" cock"+plural(1)+" into a pussy smaller than you are, thanks to all the lubrication."; }
			if (moistCalc(1) > 10) { tempStr += " Your "+clothesBottom()+" feels completely swamped as pre flies from your lower half as you move about. Standing still for too long, you quickly form a small puddle of the slick stuff. You could probably stuff "+oneYour(1)+" cock"+plural(1)+" into a pussy half your size without any difficulty, you're so slimy!"; }
		}
	}

	if (showBalls == true && balls > 0){
		tempStr += "\r\rBeneath your cock"+plural(1)+" swing"+plural(3)+" a scrotum filled with "+balls+" "+ballDesc()+" testicles.";
		if (blueBalls > 36 && blueBalls <= 84){	tempStr += " They groan and squirm, full of hot cum just waiting to blow.";	}
		if (blueBalls > 84){ tempStr += " They groan so strongly you shudder slightly. They're so full of cum that they ache a bit, desperately wanting to come."; }
	}

	if (vagTotal > 0){
		tempStr += "\r\rAlso, "+legWhere(1)+" your "+legDesc(2)+" nestles "+vagTotal+" "+vulvaDesc()+" pair"+plural(2)+" of feminine nether-lips, about "+decGet(vagSize*vagSizeMod*.5, 1)+" inches deep, when aroused.";
		if ((vagSize*vagSizeMod*vagTotal) > tallness/2)	{ tempStr += " So deep, in fact, that your belly bulges more because of the excess vaginal flesh.";	}
		if (lust <= 30) {
			if (clitSize > (vulvaSize*3)) { tempStr += " Although you're hardly aroused, your "+clitDesc()+" clit"+plural(2)+" dangle"+plural(4)+" softly from the front of your slit"+plural(2)+", measuring nearly "+decGet(clitSize*.1, 1)+" inches in length."; }
			if (moistCalc(2) > 2) { tempStr += " Lubrication makes your cunt"+plural(2)+" slick, the lips slipping past each other as you walk, while the slime continually blotches the crotch of your "+clothesBottom()+", whether you're horny or not. Fortunately, you could take a cock slightly bigger than you are deep, thanks to the slickness.";	}
		}
		if (lust > 30 && lust <= 70) {
			tempStr += " Your "+clitDesc()+" clit"+plural(2)+" swell"+plural(4)+" from the hood"+plural(2)+" at the front of your slit"+plural(2)+", reaching "+decGet(clitSize*.2, 1)+" inches in length and making you walk awkwardly as the sensitive button"+plural(2)+" rub"+plural(4)+" between your thighs.";
			if (moistCalc(2) > 2 && moistCalc(2) <= 5) { tempStr += " Lubrication makes your cunt"+plural(2)+" slick, the lips slipping past each other as you walk, while the slime continually blotches the crotch of your "+clothesBottom()+", whether you're horny or not. Fortunately, you could take a cock slightly bigger than you are deep, thanks to the slickness.";	}
			if (moistCalc(2) > 5) { tempStr += " So much feminine honey drips from your cunt"+plural(2)+" that it looks like you have peed in your "+clothesBottom()+" and webs of slime form sheets "+legWhere(2)+" your "+legDesc(2)+". But, with all that lubrication you could take a cock around one and a half times long as you are deep."; }
		}
		if (lust > 70) {
			tempStr += " Your "+clitDesc()+" clit"+plural(2)+" swell"+plural(4)+" tremendously from the hood"+plural(2)+" at the front of your slit"+plural(2)+", reaching "+decGet(clitSize*.25, 2)+" inches in length. You walk awkwardly half the time as squeezing the clit"+plural(2)+" and swollen lips between your thighs is often too much, making you hunger to hump something.";
			if (moistCalc(2) > 2 && moistCalc(2) <= 5) { tempStr += " Lubrication makes your cunt"+plural(2)+" slick, the lips slipping past each other as you walk, while the slime continually blotches the crotch of your "+clothesBottom()+", whether you're horny or not. Fortunately, you could take a cock slightly bigger than you are deep, thanks to the slickness.";	}
			if (moistCalc(2) > 5 && moistCalc(2) <= 10) { tempStr += " So much feminine honey drips from your cunt"+plural(2)+" that it looks like you have peed in your "+clothesBottom()+" and webs of slime form sheets "+legWhere(2)+" your "+legDesc(2)+". But, with all that lubrication you could take a cock around one and a half times long as you are deep."; }
			if (moistCalc(2) > 10) { tempStr += " A slow waterfall of feminine honey drips from your crotch, your "+clothesBottom()+" completely soaked. If you stand for too long, you worry your "+legDesc(10)+" will slip in the puddle you quickly make beneath you. It's so much that you could probably take a cock twice as large as you are deep!"; }
		}
		if (heat > 0 && heatTime < 0) { tempStr += " Your nether-lips are also puffier and redder than usual, heat emanating from your loins, an oven just waiting to cook something..."; }
	}

	if (showSide == true) { outputSideText(tempStr, true);	}
	
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,1,1,1,0,0,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedStats():void{
	var tempStr:String = "";
	tempStr += "These are the modifiers and multipliers for more detailed stats beyond your base stats:\r";

	tempStr += "\rStrength Modifier:\t\t\t"+strMod;
	tempStr += "\rMentality Modifier:\t\t\t"+mentMod;
	tempStr += "\rLibidio Modifier:\t\t\t"+libMod;
	tempStr += "\rSensitivity Modifier:\t\t\t"+senMod;

	tempStr += "\r";
	
	tempStr += "\rSexP Multiplier:\t\t\t\t"+SexPMod+"";
	tempStr += "\rAdapting Multiplier:\t\t\t"+changeMod+"";
	tempStr += "\rCarry Capacity Modifier:\t"+carryMod+"";
	tempStr += "\rHit Point Modifier:\t\t\t+"+HPMod+"";
	tempStr += "\rBonus Coin Gain:\t\t\t+"+coinMod+"";
	
	tempStr += "\r";

	tempStr += "\rPenis Size Multiplier:\t\t"+cockSizeMod+"";
	tempStr += "\rVagina Size Multiplier:\t\t"+vagSizeMod+"";
	tempStr += "\rSemen Multiplier:\t\t\t"+cumMod+"";
	tempStr += "\rButt Size Multiplier:\t\t\t"+buttMod+"";
	tempStr += "\rHip Size Multiplier:\t\t\t"+buttMod+"";
	var tempPregMod:int = 0;
	if (babyFree > 0){ tempPregMod -= 50; }
	tempStr += "\rPregnancy Chance:\t\t\t"+ (10 + pregChanceMod + tempPregMod)+"%";
	tempStr += "\rExtra Baby Chance Mod:\t+"+ (extraPregChance)+"%";
	tempStr += "\rPregnancy Time Mod:\t\t"+ (pregTimeMod)+"hrs";
	tempStr += "\rPregnancy Time Rate:\t\t"+ (pregRate)+"x";
	tempStr += "\rBoob Lactation Rate:\t\t"+lactation+"ml/hr";
	if (udders == true){ tempStr += "\rUdder Lactation Rate:\t\t"+udderLactation+"ml/hr"; }
	tempStr += "\rMilk Modifier:\t\t\t\t+"+milkMod+"ml/hr";
	tempStr += "\rBonus Milk Capacity:\t\t"+milkCap+"ml";
	tempStr += "\r";

	tempStr += "\rRape Modifier:\t\t\t\t+"+rapeMod+"";
	tempStr += "\rEnticement Modifier:\t\t+"+enticeMod+"";
	tempStr += "\rRun Chance:\t\t\t\t"+ (20 + runMod)+"%";

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(0,1,1,0,1,1,1,0,1,0,1,1);
		buttonWrite(9, "Appearance");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedTitles():void{
	var tempStr:String = "";
	tempStr += "Around town, you are thought of as being:\r";

	if (enticeMod >= 10 && (ment + 40) < lib && lib > 75 ) { tempStr += "\rA Sex Monster";	}
	else if ((ment + 40) < lib && lib > 60) { tempStr += "\rA Sex Fiend"; }
	else if (enticeMod >= 10 && lib > 60) { tempStr += "\rA Slut"; }
	else if (enticeMod >= 10) { tempStr += "\rA Whore"; }


	if (cockSize*cockSizeMod > tallness && breastSize > tallness * 3 && cockTotal > 0 && (vulvaSize > 50 || clitSize*3 > tallness) && vagTotal > 0) { tempStr += "\rA Mobile Pile of Naughtiness"; }
	else if (cockSize*cockSizeMod > tallness && cockSize*cockSizeMod > 300 && cockTotal > 0) { tempStr += "\rCock Mountain"; }
	else if (vulvaSize * tallness > 300 && vulvaSize > 50 && vagTotal > 0) { tempStr += "\rThe Mobile Fuckable Hill"; }
	else if (cockSize*cockSizeMod*2 > tallness && cockSize*cockSizeMod > 100 && cockTotal > 0) { tempStr += "\rA Massive Dick"; }
	else if (vulvaSize * tallness > 100 && vulvaSize > 50 && vagTotal > 0) { tempStr += "\rA Giant Pussy"; }

	if (cockTotal > 10) { tempStr += "\rA Cock-Forest"; }
	else if (cockTotal > 4) { tempStr += "\rA Cock-Tree"; }

	if (vagTotal > 10) { tempStr += "\rPussy Galore"; }
	else if (vagTotal > 4) { tempStr += "\rGreat for Orgies"; }



	if ((ballSize*(ballSize/2)*balls*cumMod*2) > 20000){ tempStr += "\rThe 'Cum Flooder'"; }
	else if ((ballSize*(ballSize/2)*balls*cumMod*2) > 5000){ tempStr += "\rDangerous When You Come"; }
	else if ((ballSize*(ballSize/2)*balls*cumMod*2) > 1000){ tempStr += "\rOverflowing With Seed"; }

	if (breastSize > tallness * 3) { tempStr += "\rMissus Tits"; }
	else if (breastSize > tallness * 2) { tempStr += "\rWildly Top-Heavy"; }
	else if (breastSize > tallness) { tempStr += "\rBlessed by the Boob Goddess"; }
	else if (breastSize*2 > tallness) { tempStr += "\rSurprisingly Stacked"; }
	else if (breastSize*4 > tallness) { tempStr += "\rThe Beautiful Bouncy Boobs that Everyone Stares At"; }

	if (((lactation+milkMod) > 15000 && lactation > 0) || ((udderLactation+milkMod) > 30000 && udderLactation > 0)) { tempStr += "\rThe Milk Cannon"; }
	else if (((lactation+milkMod) > 5000 && lactation > 0) || ((udderLactation+milkMod) > 10000 && udderLactation > 0)) { tempStr += "\rA Walking Milk Tank"; }
	else if (((lactation+milkMod) > 500 && lactation > 0) || ((udderLactation+milkMod) > 1000 && udderLactation > 0)) { tempStr += "\rA Dairy Cow"; }

	if (pregnancyTime + vagBellyMod > 500 && vagTotal > 0) { tempStr += "\rThe 'Extraordinary Enormous Pregnant Belly'"; }
	else if (pregnancyTime + vagBellyMod > 300 && vagTotal > 0) { tempStr += "\rA Fertility Goddess"; }


	tempStr += "\r\rWithin "+regionName(currentZone)+" specifically, you are considered to be:\r";

	if (dominant == currentZone) { tempStr += "\rA Fellow Native"; }
	else { tempStr += "\rA Strange Outsider"; }
	if (currentZone == 1) {
		if (cowAffinity > 50) { tempStr += "\rFrom the Dairy Farm"; }
		if (malonRep == 2) { tempStr += "\rMalon's Personal Milker"; }
		if (malonRep == 3) { tempStr += "\rMalon's Lover"; }
		if (malonRep > 3) { tempStr += "\rMalon's Loving Partner"; }
		if (malonChildren > 4) { tempStr += "\rThe Progenitor of a New Race"; }
	}
	if (currentZone == 2) {
	}
	if (currentZone == 3) {
	}
	if (currentZone == 4) {
		if (lilaRep == 2) { tempStr += "\rLila's Friend"; }
		if (lilaRep == 3) { tempStr += "\rLila's 'Playmate'"; }
		if (lilaRep == 4) { tempStr += "\rLila's Close Friend"; }
		if (lilaRep == 5) { tempStr += "\rLila's Kinky Mate"; }
	}
	if (currentZone == 6) {
		if (silRep == 1) { tempStr += "\rA Friend of the Strange Woman"; }
		if (silRep > 1 && silRep < 4) { tempStr += "\rSilandrias' Virile Companion"; }
		if (silRep > 3 && silRep < 6) { tempStr += "\rSilandrias' Excessively Fertile Companion"; }
		if (silRep == 6) { tempStr += "\rSilandrias' Trusted Lover and Mate"; }
		if (silRep == 6 && silPreg > 5000) { tempStr += "\rThe Progenitor of an Extinct Race";	}
	}

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,0,1,0,1,1,1,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(9, "Appearance");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedStatuses():void{
	var tempStr:String = "";
	tempStr += "The following status effects are currently active on you that you are aware of: (Name - Hours Left)\r";
	
	if (masoPot > 0) { tempStr += "\rMasochism Potion\t\t"+masoPot+"";	}
	if (sMasoPot > 0) { tempStr += "\rSupererior Maso. Pot.\t\t"+sMasoPot+"";	}
	if (babyFree > 0) { tempStr += "\rBaby Free\t\t\t\t"+babyFree+"";	}
	if (charmTime > 0) { tempStr += "\rCharmed\t\t\t\t"+charmTime+"";	}
	if (pheromone > 0) { tempStr += "\rPheromones\t\t\t"+pheromone+"";	}
	if (eggceleratorTime > 0) { tempStr += "\rEggcelerator\t\t\t"+eggceleratorTime+"";	}
	if (bodyOil > 0) { tempStr += "\rBody Oil\t\t\t\t"+bodyOil+"";	}
	if (fertileGel > 0) { tempStr += "\rFertile Gel\t\t\t"+fertileGel+"";	}
	if (milkSuppressant > 0) { tempStr += "\rMilk Suppressant\t"+milkSuppressant+"";	}

	tempStr += "\r";

	if (exhaustionPenalty == 2) { tempStr += "\rExhausted";	}
	if (exhaustionPenalty == 1) { tempStr += "\rTired";	}
	if (lustPenalty > 0) { tempStr += "\rHorny";	}
	if (heatTime < 0) { tempStr += "\rIn Heat";	}
	if (milkEngorgementLevel > 0) { tempStr += "\rEngorged Breasts";	}
	if (udderEngorgementLevel > 0) { tempStr += "\rEngorged Udder";	}
	if (blueBalls > 84) { tempStr += "\rBlue Balls";	}
	if (pregnancyTime > 36) { tempStr += "\rPregnant";	}

	tempStr += "\r";


	if (lockTail > 0) { tempStr += "\rRacial-locked Tail"; }
	if (lockFace > 0) { tempStr += "\rRacial-locked Face"; }
	if (lockSkin > 0) { tempStr += "\rRacial-locked Skin"; }
	if (lockBreasts > 0) { tempStr += "\rRacial-locked Breasts"; }
	if (lockEars > 0) { tempStr += "\rRacial-locked Ears"; }
	if (lockLegs > 0) { tempStr += "\rRacial-locked Legs"; }
	if (lockNipples > 0) { tempStr += "\rRacial-locked Nipples"; }
	if (lockCock > 0) { tempStr += "\rRacial-locked Cocks"; }

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,0,0,1,1,1,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(9, "Appearance");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedLevels():void{
	var tempStr:String = "";
	tempStr += "You have the following perks and their respective ranks:\r";

	if (babyFactLevel > 0) { tempStr += "\rBaby Factory\t\t"+babyFactLevel+""; }
	if (bodyBuildLevel > 0) { tempStr += "\rBody Builder\t\t"+bodyBuildLevel+""; }
	if (hyperHappyLevel > 0) { tempStr += "\rHyper Happy\t\t"+hyperHappyLevel+""; }
	if (alchemistLevel > 0) { tempStr += "\rAlchemist\t\t"+alchemistLevel+""; }
	if (milkMaidLevel > 0) { tempStr += "\rMilk Maid\t\t"+milkMaidLevel+""; }
	if (shapeshiftyLevel > 0) { tempStr += "\rShapeshifty\t\t"+shapeshiftyLevel+""; }
	
	tempStr += "\r\rFor a total of "+level+" levels.";

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,0,1,1,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(9, "Appearance");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedGear():void{
	var tempStr:String = "";
	tempStr += "You have the following items in your Bag:\r";

	for (i = 0;i <= bagArray.length ; i++) {
		if (bagArray[i] != 0) { tempStr += "\r"+itemName(bagArray[i]); }
		if (bagStackArray[i] > 1) { tempStr += " x"+bagStackArray[i];	}
	}
	
	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,1,0,1,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(9, "Appearance");
		buttonWrite(7, "Help");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedFetishes():void{
	var tempStr:String = "";
	tempStr += "You have the following interests in kinks (0 being no interest, 1 being average interest, etc):\r";

	tempStr += "\rMajor kinks (affects most situations):\r";
	tempStr += "\rMen\t\t\t"+maleFetish+"";
	tempStr += "\rWomen\t\t\t"+femaleFetish+"";
	tempStr += "\rHerms\t\t\t"+hermFetish+"";
	tempStr += "\rYourself\t\t"+narcissistFetish+"";
	tempStr += "\rOthers\t\t\t"+dependentFetish+"";
	
	tempStr += "\r\rModerate kinks (affects many situations):\r";
	tempStr += "\rDominant\t\t"+dominantFetish+"";
	tempStr += "\rSubmissive\t\t"+submissiveFetish+"";
	tempStr += "\rLarge Boobs\t"+lboobFetish+"";
	tempStr += "\rSmall Boobs\t"+sboobFetish+"";
	tempStr += "\rFurries\t\t\t"+furryFetish+"";
	tempStr += "\rScalies\t\t\t"+scalyFetish+"";
	tempStr += "\rSmoothies\t\t"+smoothyFetish+"";

	tempStr += "\r\rMinor kinks (affects few situations):\r";
	tempStr += "\rPregnancy\t\t"+pregnancyFetish+"";
	tempStr += "\rBestiality\t\t"+bestialityFetish+"";
	tempStr += "\rMilk\t\t\t"+milkFetish+"";
	tempStr += "\rSize\t\t\t"+sizeFetish+"";
	tempStr += "\rUnbirthing\t\t"+unbirthingFetish+"";
	tempStr += "\rOviposition\t\t"+ovipositionFetish+"";
	tempStr += "\rToys\t\t\t"+toyFetish+"";
	tempStr += "\rHyper\t\t\t"+hyperFetish+"";

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,1,1,0,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(9, "Appearance");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

function detailedHelp():void{
	var tempStr:String = "";

	tempStr += "<b><u>Stats</u></b>\r";
	tempStr += "\r-Strength - Adds to damage, rape chance, carry capacity, and HP. Reduces SexP gain from sex and masturbation.";
	tempStr += "\r-Mentality - Fights hostile lust gain, improves helpful lust loss.";
	tempStr += "\r-Libido - Increases lust gain, can hinder mentality in events.";
	tempStr += "\r-Sensitivity - Increases damage taken and increases lust loss.";
	tempStr += "\r-HP - Your Hit Points. Lose too much and you'll pass out.";
	tempStr += "\r-Lust - Can overwhelm your actions, resulting in getting raped in battle, but large pleasant losses of lust grant SexP.";

	tempStr += "\r\r<b><u>Actions</u></b>\r";
	tempStr += "\r-Stash - Extra inventory space that you cannot carry, but moves with you from town to town.";
	tempStr += "\r-Prostitute - When desparate for money, you can resort to prostitution. Remember, beggars can't be choosers and you may not like the company.";
	tempStr += "\r-Alchemy - Mix items together to get other items. Learn recipes around the world.";
	tempStr += "\r-Bag - Where you hold all your items. Shift+Click will allow you to select an item to move, Shift+Click a slot to move it to.";
	tempStr += "\r-Rape - A combat action to attempt to overpower your opponent and sex their brains out. An aroused opponent is easier to rape.";
	tempStr += "\r-Entice - A combat action to raise opponent's lust (if they find you attractive).";
	tempStr += "\r-Run - A combat action to flee from battle. Running in a dungeon will leave the dungeon.";
	tempStr += "\r-Submit - Because some people can't wait to be king- I mean raped.";

	tempStr += "\r\r<b><u>Tips</u></b>\r";
	tempStr += "\r-Carry Capacity - Determined by strength, height, body type, and modifiers. Determines how much of yourself you can carry.";
	tempStr += "\r-Shops - Each town has unique wares in many of their shops, so it's good to look around.";
	tempStr += "\r-Race - Some racial features are based on whatever blood is most dominant. Some features can be shared.";
	tempStr += "\r-Bust Size - 1 inch of bust circumference = 1 cup in real life. 1 inch = A-cup, 4 inches = D-cup, 4.5 inches = DD-cup, 26 inches = Z-cup.";
	tempStr += "\r-Breasts - Everybody has breasts. Yes, even males. How many is determined by your race.";
	tempStr += "\r-Empty Button - Outside of inventories, these mean you have access to something, but do not currently have the correct item/requirements.";

	tempStr += "\r\r<b><u>Hotkeys</u></b>\r";
	tempStr += "\rOnly function when they show.";
	tempStr += "\r-Save = F2, Load = F4, New Game = Backspace, Appearance = U";
	tempStr += "\r-Font Size+ = Up, Font Size- = Down, Theme = Left, Font Color = Right";
	tempStr += "\r-Reset Font Size = Ctrl, Font Bold = /?, Toggle Side Window = .";

	tempStr += "\r-Side window buttons (in order):";
	tempStr += "\r\tUIOP";
	tempStr += "\r\tHJKL";

	tempStr += "\r-Main choice buttons (both keyboard and NumPad in order):";
	tempStr += "\r\tQWER\t789-";
	tempStr += "\r\tASDF\t456+";
	tempStr += "\r\tZXCV\t123Enter";

	if (showSide == true) { outputSideText(tempStr, true);	}
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,1,1,0,0,1,0,1,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(9, "Appearance");
		buttonWrite(11, "Credits");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 9) { appearanceGo(); }
			if (buttonChoice == 11) { detailedCredits(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}	

function detailedCredits():void {
	var tempStr:String = "";
	tempStr += "Nimin v"+versionNumber+"\rCreated by:\t--Xadera\r\twww.furaffinity.net/user/xadera/\r\rOriginal concept by:\t--Fenoxo\r\tfenoxo.com";
	tempStr += "\r\rSpecial thanks to SumigakiFox (owner of Silandrias) and Arlyurl (made the Nimin image) on FA.";
	tempStr += "\r\rProstitution scene editors (thanks for the work!): Torakazu, Bahamad, and omegaokami on FA.";
	tempStr += "\r\rProstitution scene writers:\r\t--Buncubus, BantinNysam, TheAbyssalWatcher, mike12345, V, grottokraft, Ludoergosum, perrothetraveler, reikonova, shockblock99, Kidou, bunnybunbun, supernaut, shaesullivan, m3chawolf, Kizzneth, barkbarkboom, Torakazu";

	if (showSide == true) { outputSideText(tempStr, true);	}
	
	else { 
		textL(tempStr);
		viewButtonOutline(1,1,1,0,1,1,1,0,1,0,1,1);
		viewButtonText(1,1,1,0,1,1,1,0,1,0,0,1);
		buttonWrite(1, "More Stats");
		buttonWrite(2, "Titles");
		buttonWrite(3, "Statuses");
		buttonWrite(5, "Levels");
		buttonWrite(6, "Gear");
		buttonWrite(7, "Help");
		buttonWrite(9, "Appearance");
		buttonWrite(12, "Return");
		doListen = function():void{
			if (buttonChoice == 1) { detailedStats(); }
			if (buttonChoice == 2) { detailedTitles(); }
			if (buttonChoice == 3) { detailedStatuses(); }
			if (buttonChoice == 5) { detailedLevels(); }
			if (buttonChoice == 6) { detailedGear(); }
			if (buttonChoice == 7) { detailedHelp(); }
			if (buttonChoice == 11) { appearanceGo(); }
			if (buttonChoice == 12)	{ doProcess();	}
		}
	}
}

