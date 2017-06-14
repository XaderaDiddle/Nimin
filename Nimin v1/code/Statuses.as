/*Statuses


This is where all the time-based status tracking occurs, for the player and around the world, after every event ends.

Could probably be split out to be more readable. 
*/



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
			if (pregArray[i+3] > birthTime(pregArray[i+1])) {
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
			if (udders == true) { textLP(" and udder");		}
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
	if ((blueBalls+ Math.floor(time*ballSize*ballSizeMod/336)) > blueBallsCap() && blueBalls <= blueBallsCap() && showBalls == true && balls > 0){ 
		textLP("\r\rYour "+ballDesc()+" balls feel swollen and heavy within your "+clothesBottom()+". The need to spill your seed makes you a little aroused.");
		doLust(Math.ceil(ballSize/4), 0);
	}
	if (balls > 0) { blueBalls += Math.ceiling(time*ballSize*ballSizeMod/336); } //Increase blue balls by 1/7 of 50% of ball size per day
	if (blueBalls > blueBallsCap()) { blueBalls = blueBallsCap(); }

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
