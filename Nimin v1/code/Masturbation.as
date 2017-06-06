/*********
 *Fapping*
 *********/

function doMasturbate():void{
	bc();
	currentState = 3;
	viewButtonOutline(1,0,1,1,0,0,1,0,0,1,0,1);
	viewButtonText(0,0,0,1,0,0,1,0,0,0,0,1);
	buttonWrite(1, "Penis");
	buttonWrite(2, "Both");
	buttonWrite(3, "Vagina");
	buttonWrite(4, "Bag");
	buttonWrite(7, "Breasts");
	buttonWrite(10, "Udder");
	buttonWrite(12, "Return");
	if (cockTotal > 0){	Choice1.visible = true;	}
	if (vagTotal > 0){ Choice3.visible = true; }
	//BOTH OFF if (vagTotal > 0 && cockTotal > 0){ Choice2.visible = true; }
	if (udders == true){ Choice10.visible = true; }
	textL("How would you like to masturbate?");
	doListen = function():void{
		if (buttonChoice == 1){ doCockMasturbate(); }
		if (buttonChoice == 3){ doVagMasturbate(); }
		if (buttonChoice == 2){ doBothMasturbate(); }
		if (buttonChoice == 4){ doBag(); }
		if (buttonChoice == 7){ doBoobMasturbate(); }
		if (buttonChoice == 10){ doUdderMasturbate(); }
		if (buttonChoice == 12){ doGeneral(); }
	}
}

function doCockMasturbate():void{
	rndArray = [];
	if (humanCocks > 0) { rndArray.push(1) }
	if (horseCocks > 0) { rndArray.push(2) }
	if (wolfCocks > 0) { rndArray.push(3) }
	if (catCocks > 0) { rndArray.push(4) }
	if (lizardCocks > 0) { rndArray.push(6) }
	if (rabbitCocks > 0) { rndArray.push(7) }
	if (bugCocks > 0) { rndArray.push(12) }
					
	var tempInt:int = chooseFrom();
	var whichCock:String = "WHICH COCK ERROR";
					
	if (tempInt == 1) { whichCock = "hard human rod"; }
	if (tempInt == 2) { whichCock = "long equine flesh"; }
	if (tempInt == 3) { whichCock = "pointy wolf meat"; }
	if (tempInt == 4) { whichCock = "pink thorny cat prick"; }
	if (tempInt == 6) { whichCock = "purple ribbed reptile rod"; }
	if (tempInt == 7) { whichCock = "throbbing bunny carrot"; }
	if (tempInt == 12) { whichCock = "bumpy-ridged spiked bug wang"; }
	
	if (lust < 20){
		textL("You're hardly aroused enough to get your cock"+plural(1)+" standing, let alone masturbate. You'll just have to settle for something else.");
		doEnd();
	}
	else{
		var tempInt:int = Math.floor(percent()/20+ment/5+lib/5);
		var getCum:int = cumAmount();
		i = 0;
		while (i == 0) {
			var chance:int = Math.floor(Math.random()*(1+7-1))+1;
			if (chance == 1) {
				{
					if (ment >= (lib-10)){ textL("You sneak off to the private place where you sleep in "+regionName(currentZone)+" with a bunch of towels in hand. Carefully, so as to not let anybody hear, you pull "+pullUD(2)+" your "+clothesBottom()+", your "+cockDesc()+" erection"+plural(1)+" bobbing out.\r\rYou wrap your "); }
					if (ment < (lib-10) && ment >= (lib-25)){ textL("You quickly head off to the private place where you sleep with your intentions clear as those around "+regionName(currentZone)+" can easily see your "+cockDesc()+" bulge growing in your "+clothesBottom()+". Before you even reach your destination, you're already pulling the "+clothesBottom()+" "+pullUD(2)+", your cock"+plural(1)+" flopping out.\r\rYou're not too sure if anybody saw it before you disappeared into solitude, but that doesn't matter as you wrap your "); }
					if (ment < (lib-25) && ment >= (lib-50)){ textL("Your chest heaving with your heavy breathing, you don't think you can reach the private place where you sleep without blowing your load, the thought of coming hanging so heavily on your mind.\r\rInstead, you duck into one of the more hidden corners of "+regionName(currentZone)+" as you pull "+pullUD(2)+" your "+clothesBottom()+" and let your "+cockDesc()+" cock"+plural(1)+" spring out. You hear somebody pass nearby, but you don't care as you wrap your "); }
					if (ment < (lib-50)){ textL("Without a second thought, right in the middle of "+regionName(currentZone)+" you pull "+pullUD(2)+" your "+clothesBottom()+" and whip out your "+cockDesc()+" wang"+plural(1)+".\r\rPeople gasp and stare as you wrap your ");	}
				
					if ((cockSize*cockSizeMod) <= (tallness/3.75)) { textLP("hand around your "+whichCock+" and slowly pump it, building stronger and stronger."); }
					if ((cockSize*cockSizeMod) > (tallness/3.75) && (cockSize*cockSizeMod) <= (tallness*1.2)) { 
						textLP("hands around your "+whichCock+" , "); 
						if ((cockSize*cockSizeMod) > (tallness/1.5)){
							if (bustRatio() > 1.07)	{ textLP("hugging it between your "+boobTotal+" breasts, ");	}
							else { textLP("hugging it to your chest, "); }
						}
						textLP("pounding your fists up and down its length.");
					}
					if ((cockSize*cockSizeMod) > (tallness*1.2)){ textLP("arms around your "+whichCock+", hugging it close and trying to jerk yourself the best you can."); }
					
					if (moistCalc(1) > 0 && moistCalc(1) <= 3) { textLP(" Drops of pre help aid your efforts, though it's still a little rough."); }
					if (moistCalc(1) > 3 && moistCalc(1) <= 7) { textLP(" A dribble of pre leaks out, sufficiently coating your "+cockDesc()+" cock and making your efforts so much easier."); }
					if (moistCalc(1) > 7 && moistCalc(1) <= 11) { textLP(" Pre squeezes out of your cock and more than coat your "+cockDesc()+" cock, with plenty extra drooling down across your "+skinDesc()+"."); }
					if (moistCalc(1) > 11) { textLP(" A flood of pre gushes out from the tip, sufficiently coating yourself, your "+cockDesc()+" cock and then some in slick lubrication."); }
					
					if (showBalls == true) { textLP(" One of your hands reaches down to knead your "+ballDesc()+" scrotum, letting your "+balls+" cum-factories know it's time."); }
					
					if (lust <= 30){ textLP("\r\rSlowly,"); }
					if (lust > 30 && lust <= 70){ textLP("\r\rQuickly,"); }
					if (lust > 70){ textLP("\r\rAlmost instantly,"); }
					
					textLP(" your "+whichCock+" throbs, a pressure building at the base of your spine");
					if (knot == true){ textLP(", the base of your cock swelling into a thick knot that you begin to tug"); }
					textLP(".");
					if (cockTotal > 1) { textLP(" Your other cocks do the same, your hands dashing back and forth between them, attempting to not leave them completely ignored."); }
					textLP("Your "+hipDesc()+" hips soon jerk as thick strands of hot spunk launch from your cock-tip"+plural(1)+",");
				
					if (getCum <= 24) { textLP(" with a bit more drooling down to the floor."); }
					if (getCum > 24 && getCum <= 72) { textLP(" spitting small wads again and again until it's done."); }
					if (getCum > 72 && getCum <= 1000) { textLP(" spewing large gobs again and again until you've made a heck of a mess."); }
					if (getCum > 1000 && getCum <= 2200) { textLP(" coming more and more, like it can't stop, until you've made so much cum that you could feed a person with it for a day..."); }
					if (getCum > 2200 && getCum <= 4500) { textLP(" the stuff gushing like a fire-hose. Somewhere between half and a full gallon, you're not sure what to do with it all!"); }
					if (getCum > 4500 && getCum <= 20000) { textLP(" gallons upon gallons of it spewing and spraying out, nearly nonstop. If you had a tub with you, you could have taken a bath in it all!"); }
					if (getCum > 20000) { 
						textLP(" so much, so strong, it keeps on spewing out! Gallons and gallons, your body is wracked by the long ejaculation. After a while, your mind can't take any more and you pass out, only to wake up in a pool of cum and no way to take care of it all... You sneak away."); 
						doLust(-Math.floor(sen/2), 2, 1);
						hrs = 5;
						exhaustion -= 2;
						i++;
					}
					else {
					
						if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up your mess with the towels you have brought along, hiding them until you can safely clean them without being caught. Except for the smell that permeates the area, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
						if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rComing down from your high, you clean up your mess the best you can, though its likely some cum was left behind. At least, it smells like some was. And as you leave the place, one of your neighbors eyes you with a surprised look. You were probably a bit loud... Or maybe you have a wad of cum in your hair?"); }
						if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place is a mess as you come to your senses. Before you're caught, you quickly don your "+clothesBottom()+" again, even though your cock is still drooling and leaving quite the blotch. As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. You then dash off before anybody tries to check out what you left behind."); }
						if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some women, and they all gaze out you in amazement. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull "+pullUD(2)+" your "+clothesBottom()+", cum dripping down the front and smearing about within, and you slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }
					
						if (getCum < 1000)	{ textLP("\r\r\rYou have produced "+getCum+" ml of spooge!"); }
						else if (getCum >= 1000) { textLP("\r\r\rYou have produced "+decGet(getCum/1000, 1)+" liters of spooge!"); }
						
						doLust(-Math.floor(sen/2), 2, 1);
						hrs = 1;
						i++;
					}
				}
			}
			if (chance == 2 && cockSize*cockSizeMod*6 > tallness && cockSize*cockSizeMod*8 < tallness*3) {
			}
			if (chance == 3 && getCum > 2000) {
			}
			if (chance == 4 && ment < (lib - 50)) {
			}
			if (chance == 5 && (attireBot == 6 || attireBot == 17) && lust > 80) {
			}
			if (chance == 6 && (attireBot == 5 || attireBot == 7 || attireBot == 12 || attireBot == 13 || attireBot == 14 || attireBot == 16) && lust > 45) {
				textL("Already half hard from your lingering lust, just the thought of masturbating makes your "+cockDesc()+" erection"+plural(1)+" stiffen to full length. Which produces a slight problem... Your arousal is fairly evident through your "+clothesBottom()+" as your rod"+plural(1)+" lift"+plural(3)+" the fabric forward. You do your best to press it back down in an attempt to hide "+plural(9)+", but ");
				if (cockSize*cockSizeMod > 10) { textLP(""+plural(11)+" wind up popping out beneath, accidentally flashing a random passerby who quickly pick up their pace to get away before you can try to catch your long thing"+plural(1)+" back within the cloth.");	}
				else{ textLP(""+plural(11)+" inevitably slide back up anyways, making your efforts futile."); }
				textLP("\r\rLooking for a quick escape, you slink behind the closest structure you can find. Glancing left and right to ensure nobody can see you, you pant as you look down at your tented "+clothesBottom()+".");
				if (moistCalc(1) > 8) { textLP(" Pre seeping through the fabric and drizzling down in a steady strand over the edge"); }
				else if (moistCalc(1) > 4)	{ textLP(" Pre soaking through the fabric and glistening with a large drop on the outside");	}
				else { textLP(" Pre blotching the fabric with a large moist spot"); }
				textLP(", you have no choice but to pull the clothing up, letting your wang"+plural(1)+" bounce out. Grabbing "+plural(9)+" the best you can in your impetuous state, you stroke strongly and swiftly. You lean back against the structure, with people openly walking and talking just on the other side, as you masturbate fervently.\r\rThe fear of being caught only makes your heart beat faster, quickly producing results in your loins. You hardly hold back for a second to let the pressure build, before you release it in a spurting torrent of white fluid. You continue to pet yourself, squeezing out the leftover cum, while your mind savors the dwindling orgasm.\r\rHalf-aware of what you had just done, your mind still in a fuzz, you simply catch your cock"+plural(1)+" within your "+clothesBottom()+" once more, staining it slightly with the gobs of seed at your tip"+plural(1)+", and leave your secluded area to head back into the public, leaving behind your puddle of lewd mess for someone else to stumble across...");
				doLust(-Math.floor(sen/2), 2, 1);
				i++;
			}
			if (chance == 7 && (attireBot == 4 || attireBot == 15 || attireBot == 20)) {
				textL("With the thought of masturbating on your mind, you can feel your cock"+plural(1)+" begin to swell in anticipation. The tight confines of your "+clothesBottom()+" rapidly growing tighter, you hurry on home.\r\rJust as you step through the doorway to your private abode, the waistband of your "+clothesBottom()+" can no longer contain the "+cockDesc()+" bulge. Your length"+plural(1)+" leap"+plural(3)+" out, flinging ");
				if (moistCalc(1) > 8) { textLP("ropes");	}
				else if (moistCalc(1) > 4)	{ textLP("strands");	}
				else { textLP("drops"); }
				textLP(" of pre out across the floor while the shaft"+plural(1)+" droop"+plural(3)+" half-flaccidly over the edge. You slump against the nearest wall, gripping yourself as you eagerly start the stroking process. Free of "+plural(5)+" small prison, the blood-flow picks up, quickly allowing "+plural(9)+" to stiffen to full size while your hands stroke the sensitive skin. Your stroking turns to rhythmic pumps and your back presses against the wall, your hips bucking back in turn.");
				if (showBalls == true) { textLP(" You can wholly feel the pressure in your "+ballDesc()+" balls building, especially as the "+clothesBottom()+" continues to grip and squeeze them as it hugs your bottom to stay on amidst your efforts."); 	}
				textLP("\r\rBefore long, you wince as you try to hold back a little, one last moment of restraint until you let the fluids spray freely, escaping from your body with enough force to shoot across your room. So strong an orgasm, your "+legDesc(2)+" grow"+legPlural(1)+" weak and you slide down the wall, until you're sitting on the floor while the last spurts of cum shoot out between your "+legDesc(6)+".\r\rA bit tired, you sit there for a little while longer as the stuff drools from your tip"+plural(1)+".");
				if (knot == true) { textLP(" Despite being done, your swollen knot"+plural(1)+" refuse to allow your member"+plural(1)+" to slip back into the "+clothesBottom()+", standing defiantly against the waistband. The most you can do for now is stuff the knot"+plural(1)+" into the crotch of the piece and hope you soften up later as you proceed to clean up your mess.");	}
				else { textLP(" Your softening member"+plural(1)+" slowly recede back into the "+clothesBottom()+", leaving a slight slimy trail in the process, but at least allows you to tuck "+plural(9)+" away for now as you proceed to clean up the mess you made."); }
				doLust(-Math.floor(sen/2), 2, 1);
				i++;
			}
			if (chance == 8 && (attireBot == 10 || attireBot == 11) && lust > 60) {
			}

		}
		doEnd();
	}
}

function doVagMasturbate():void{
	
	if (lust < 20){
		textL("You're not really in the mood to play with yourself. You'll just have to settle for something else.");
		doEnd();
	}
	else{
		var tempInt:int = Math.floor(percent()/20+ment/5+lib/5);
		i = 0;
		while (i == 0) {
			var chance:int = Math.floor(Math.random()*(1+6-1))+1;
			if (chance == 1) {
				if (ment >= (lib-10)){ textL("You sneak off to the private place where you sleep in "+regionName(currentZone)+" with a bunch of towels in hand. Carefully, so as to not let anybody hear, you pull "+pullUD(2)+" your "+clothesBottom()+", and gently squeeze your "+vulvaDesc()+" nether-lips.\r\rYou lay down on your back and slide your fingers through the front of the cleft"+plural(2)+" at your crotch, you tease your "+clitDesc()+" button"+plural(2)+". Stiff and erect, you rub "); }
				if (ment < (lib-10) && ment >= (lib-25)){ textL("You quickly head off to the private place where you sleep with your intentions clear as those around "+regionName(currentZone)+" can easily see you rub your "+vulvaDesc()+" groin through your "+clothesBottom()+". Before you even reach your destination, you're already pulling the "+clothesBottom()+" "+pullUD(2)+", accidentally flashing someone your "+buttDesc()+" bum.\r\rNevertheless, you squeeze your nether-lips, rubbing your hands down through your "+vulvaDesc()+" crotch, grinding your "+clitDesc()+" button"+plural(2)+" and kneading "); }
				if (ment < (lib-25) && ment >= (lib-50)){ textL("Your chest heaving with your heavy breathing, you don't think you can reach the private place where you sleep without crouching and "+legVerb(2)+" your "+legDesc(2)+" erotically, the thought of coming hanging so heavily on your mind.\r\rInstead, you duck into one of the more hidden corners of "+regionName(currentZone)+" as you pull "+pullUD(2)+" your "+clothesBottom()+", squeezing your "+vulvaDesc()+" nether-lips with anticipation and tug at your "+clitDesc()+" clit"+plural(2)+" grinding "); }
				if (ment < (lib-50)){ textL("Without a second thought, right in the middle of "+regionName(currentZone)+" you pull "+pullUD(2)+" your "+clothesBottom()+", rubbing a hand across your "+vulvaDesc()+" cunt and pinching your "+clitDesc()+" clit"+plural(2)+".\r\rPeople gasp as you continue to grind ");	}
			
				if (vagTotal > 1) { textLP("them ");	}
				if (vagTotal == 1) { textLP("it ");	}
				textLP("vigorously, making ");
				if (vagTotal > 1) { textLP("them ");	}
				if (vagTotal == 1) { textLP("it ");	}
				textLP("stiff. Faster and faster you go, until your "+vulvaDesc()+" vulva swells with blood.");
			
				if (moistCalc(2) > 0 && moistCalc(2) <= 3){ textLP(" A bit of sweet feminine honey slips out from "+legWhere(1)+" your "+legDesc(2)+", your hand taking as much as possible to meagerly lubricate your sex."); }
				if (moistCalc(2) > 3 && moistCalc(2) <= 7){ textLP(" Some sweet feminine honey dribbles from "+legWhere(1)+" your "+legDesc(2)+", slipping back across your "+buttDesc()+" tush and smearing across your thighs, plenty to take care of business."); }
				if (moistCalc(2) > 7 && moistCalc(2) <= 11){ textLP(" Lubricant spills from your slit"+plural(2)+", running down your "+legDesc(2)+" and smearing across your "+buttDesc()+" backside, dribbling off your body, more than enough to frig yourself silly."); }
				if (moistCalc(2) > 11){ textLP(" Fem-cum floods your crotch, loudly slurping as your hands, all the way up to your elbows, become slick with the stuff. Your "+buttDesc()+" ass is practically sopping with it and more flings across your "+legDesc(2)+" and down below you as you go."); }
			
				if (lust <= 30){ textLP("\r\rSlowly,"); }
				if (lust > 30 && lust <= 70){ textLP("\r\rQuickly,"); }
				if (lust > 70){ textLP("\r\rAlmost instantly,"); }
			
				textLP(" your cunt"+plural(2)+" begin"+plural(4)+" to quake and shiver, your whole body tingling. So eager, you ram ");
			
				if (vagLimit()  <= (tallness/5)) { textLP("a finger"); }
				if (vagLimit() > (tallness/5) && vagLimit() <= (tallness/2.2)) { textLP("your fingers"); }
				if (vagLimit() > (tallness/2.2) && vagLimit() <= (tallness/1.25)) { textLP("your hand"); }
				if (vagLimit() > (tallness/1.25) && vagLimit() <= (tallness*1.2)) { textLP("both hands"); }
				if (vagLimit() > (tallness*1.2) && vagLimit() <= (tallness*1.7)) { textLP("your forearm"); }
				if (vagLimit() > (tallness*1.7)) { textLP("as much of one arm as possible"); }
			
				textLP(" into "+oneYour(2)+" hungry hole"+plural(2)+", pounding away at yourself. Your body twitches and jerks as you come again and again.");
				
				if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up your mess with the towels you have brought along, hiding them until you can safely clean them without being caught. Except for the smell that permeates the area and the bit of slurping that echoed, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
				if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rComing down from your high, you clean up your mess the best you can, though its likely some of your slick lubricant has seeped in somewhere. At least, you're cautious of your step, in case of slipping and falling back on your "+buttDesc()+" ass... And as you leave the place, one of your neighbors eyes you with a surprised look. You were probably a bit loud... Well... you were definitely loud, actually."); }
				if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place probably echoed your moans as you come to your senses. Before you're caught, you quickly don your "+clothesBottom()+" again, even though fem-cum is still slathered about and making your "+clothesBottom()+" blotch. As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. With an awkward flutter in your step, you dash off, your body still slightly in mid-orgasm."); }
				if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some men, and they all gaze out you in amazement. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull "+pullUD(2)+" your "+clothesBottom()+", slick slime dripping down your "+legDesc(2)+" and smearing about within, and you slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }
			
				doLust(-Math.floor(sen/2), 2, 1);
				hrs = 1;
				i++
			}
			if (chance == 2 && cockSize*cockSizeMod*6 > tallness && cockSize*cockSizeMod*8 < tallness*3) {
			}
			if (chance == 3) {
			}
			if (chance == 4 && ment < (lib - 50)) {
			}
			if (chance == 5 && (attireBot == 6 || attireBot == 17 || attireBot == 20) && lust > 60) {
			}
			if (chance == 6 && (attireBot == 13 || attireBot == 14) && lust > 80) {
				textL("With the cooler air easily breezing underneath your "+clothesBottom()+" and over your moistened nethers, the thought of masturbating just makes your "+legDesc(2)+" weak and buckle. Even if your place was only ten feet away, it would be an eternity to get there in this state. You don't think you could ever make it... So you manage to convince yourself you have no other choice.\r\rYou manuever your bag to your front, feigning an attempt to look through it for something. Adjusting it slightly, it very easily manages to cover the high edge of your "+clothesBottom()+". While one hand holds up the bag, the other slinks behind, sneaking underneath your scant outfit. Right out in the middle of "+regionName(currentZone)+", with people walking by just a few feet away, your fingers touch your intimate region.\r\r"); 
				if (vulvaSize < 30)	{ textLP("Swiftly slipping through your fingers through the tender folds, your "+hipDesc()+" hips start to rock gently as you stand there. Soft slurps slip out from your thighs as you cautiously masturbate in public, with the rustling of the bag in front of you thankfully drowning it out.");	}
				else { textLP("Sloshing your entire hand through the quite obvious folds, you actually wonder if the "+vulvaDesc()+" lips normally poke out from under the cloth... The thought of modesty is quickly pushed aside, however, as your hips rock against your fist, making you gasp in pleasure. The lewd slurping is quite obvious over the heavy rustling of your bag, drawing some eyes to your direction, but you're too lost with pushing through your meaty lips to care."); }
				if (clitSize > 20) { textLP(" You can feel your clit"+plural(2)+" tent the "+clothesBottom()+" and gently scrape against the back of the bag whenever your thumb wraps around and rubs "+plural(10)+" with each pass of your hand.");	}
				else { textLP(" Your thumb wraps around and rubs across your clit"+plural(2)+" with each pass of your hand, making you buck against the back of the bag."); }
				if (cockTotal > 0) { textLP(" Along with your movements, your cock"+plural(1)+" also knock"+plural(3)+" upon your bag from behind, completely neglected as any more stroking would be far to obvious in this state."); 	}
				textLP(" With the heated slick-friction in your loins and the anxiety of doing this amidst complete strangers, your heart beats so powerfully that it doesn't take long for your whole body to begin burning with orgasm.\r\r"); 
				if (moistCalc(2) > 8) { textLP("Managing to muffle the moans building in your throat as you peak, your stealthy pleasuring is betrayed by the waterfall of juices that descend "+legWhere(1)+" your "+legDesc(2)+". Splashing loudly across the ground, your fem-cum draws the attention of several others, their eyes turning to stare at the drooling strands of thick slime that slowly falls post-orgasm. Webs of the stuff stretch over the gap "+legWhere(1)+" your "+legDesc(2)+", with large gobs of the lubricant forming puddles about your "+legDesc(10)+".\r\rIn the seconds it takes to catch your breath and realize you've been caught, a heavy blush fills your cheeks. You lower your head and lift your bag back up, more slime trailing from the guilty hand, and proceed to run off, a slight limp and squish in your step as the excess fluids allow your thighs to slip erotically over your sensitive bits...");	}
				else if (moistCalc(2) > 4) { textLP("Muffling most of the moan that builds with your climax, you can feel your fluids spill down to your "+legDesc(6)+". The audible squishing and slurping of the spilling lubrication quickly cut your orgasm short, bringing your attention to the few eyes that have turned toward you. Blush warming your face and the tinges of climax still lingering, you do your best to act as casually as possible.\r\rLowering the bag even further to disguise the fem-cum that drizzles lightly down your "+legDesc(2)+", you turn and rush away, hoping nobody notices the shimmering strands that reach back to your sensitive bits as the drops slowly spill to the ground beneath you..."); }
				else { textLP("Muffling your moans as you come, you're able to take a few breaths of relief and relaxation as you relish the sensations. Not a soul knows what you have done, allowing you to fully enjoy your orgasm. And when you slip your hand back out from behind the bag, you take a moment to quickly lick off the moistness upon them, your pleasured flavor quite tasty.\r\rAs if nothing had happened at all, you're able to pick up your bag and strut off, your thighs sqeezing the sensitive lips slightly with each step."); }
				doLust(-Math.floor(sen/2), 2, 1);
				hrs = 1;
				i++;
			}
			if (chance == 7 && (attireBot == 4 || attireBot == 15)) {
			}
			if (chance == 8 && (attireBot == 10 || attireBot == 11) && lust > 60) {
			}
		}
		doEnd();
	}
}

function doBothMasturbate():void{
	if (ment >= (lib-10)){	textL("");
	}
	if (ment < (lib-10) && ment >= (lib-25)){
		textL("");
	}
	if (ment < (lib-25) && ment >= (lib-50)){
		textL("");
	}
	if (ment < (lib-50)){
		textL("");
	}
	if (lust > 20) { doSexP(10); }
}

function doBoobMasturbate():void{
	lustArray = [4];
	if (breastSize > 16) { lustArray.push(23); }
	else if (breastSize < 5) { lustArray.push(24);	}


	i = 0;
	while (i == 0) {
		var chance:int = Math.floor(Math.random()*(1+6-1))+1;
		if (chance == 1) {
			if (lactation > 0) { lustArray.push(53); }
				
			if (ment >= (lib-10)){ textL("You sneak off to the private place where you sleep in "+regionName(currentZone)+". Carefully, so as to not let anybody hear, you pull "+pullUD(1)+" your "+clothesTop()+" and gently knead your "+boobDesc()+" breasts.\r\rHunching over at the side of the bed, you massage your "+nipDesc()+"nipples, tugging and squeezing them each with"); }
			if (ment < (lib-10) && ment >= (lib-25)){ textL("You quickly head off to the private place where you sleep with your intentions clear as those around "+regionName(currentZone)+" can easily see you rub your "+boobDesc()+" chest through your "+clothesTop()+". Before you even reach your destination, your hands are already reaching under your "+clothesTop()+" to play with your "+nipDesc()+"nipples, giving someone a good view of your under-boob.\r\rBy the time you're hidden inside, both hands are fondling your chest, kneading and massaging your nipples with"); } 
			if (ment < (lib-25) && ment >= (lib-50)){ textL("Your "+boobDesc()+" breasts heave with your heavy breathing as you think about playing with them. You don't think you can reach the private place where you sleep without your hands diving underneath your "+clothesTop()+" and massaging them roughly.\r\rInstead, you duck into one of the more hidden corners of "+regionName(currentZone)+" and without even taking off your "+clothesTop()+", you grope your chest through the fabric before reaching underneath, kneading and massaging your "+nipDesc()+"nipples with"); }
			if (ment < (lib-50)){ textL("Without a second thought, right in the middle of "+regionName(currentZone)+" you pull "+pullUD(1)+" your "+clothesTop()+", rubbing a hand across your "+boobDesc()+" breasts and making them jiggle obscenely.\r\rPeople gasp and stare as you knead and massage your "+nipDesc()+"nipples with");	}

			if (nippleSize <= 25){ textLP(" your fingers"); }
			else if (nippleSize > 25 && nippleSize <= 60){ textLP(" your hands"); }
			else if (nippleSize > 60 && nippleSize <= 180){ textLP(" both hands"); }
			else if (nippleSize > 180) { textLP(" the nearby wall"); }

			textLP(" until they begin to feel warm and tingly."); 

			if (boobTotal == 4){ textLP(" Your hands even double their work as they fondle your second set of breasts as well, molding and massaging them just as much as the first pair, feeling twice as much pleasure."); }
			if (boobTotal == 6){ textLP(" Your hands have their work cut out for them as they attempt to give all 6 of your breasts attention, running up and down, from chest to belly, caressing them restlessly as you heave to control yourself just a little longer."); }
			if (boobTotal == 8) { textLP(" From chest to lower belly, your hands continue to rove to fondle all four sets of tits, fervently groping them all with great pleasure.");	}
			
			if (sen <= 30){ 
				textLP(" Unfortunately, you can't really come as your breasts simply aren't sensitive enough. But, it does feel nice as you continue to play with your nipples."); 
				doLust(-Math.floor(sen/5), 2, 3);
			}
			else{
				if (lust <= 30){ textLP("\r\rSlowly,"); }
				if (lust > 30 && lust <= 70){ textLP("\r\rQuickly,"); }
				if (lust > 70){ textLP("\r\rAlmost instantly,"); }
			
				textLP(" your whole body begins to quiver,"); 
			
				if ((moistCalc(1) > 0 && moistCalc(1) <= 3) || (moistCalc(2) > 0 && moistCalc(2) <= 3)){ textLP(" your "+clothesBottom()+" growing a tad moist,"); }
				if ((moistCalc(1) > 3 && moistCalc(1) <= 7) || (moistCalc(2) > 3 && moistCalc(2) <= 7)){ textLP(" your "+clothesBottom()+" growing wet,"); }
				if ((moistCalc(1) > 7 && moistCalc(1) <= 11) || (moistCalc(2) > 7 && moistCalc(2) <= 11)){ textLP(" your "+clothesBottom()+" becoming soaked through,"); }
				if (moistCalc(1) > 11 || moistCalc(2)  > 11){ textLP(" your "+clothesBottom()+" becoming drenched, your "+buttDesc()+" bum absolutely swamped,"); }
			
				textLP(" being wracked by a boobgasm.");


				doLust(-Math.floor(sen/2), 2, 3);
			}
			
			
			
			if (lactation > 0){
				hrs++;
				var getMilk:int = milkAmount(1);
				textLP("\r\rMilk ");
				if (getMilk <= 500) { textLP("spits"); }
				if (getMilk > 500 && getMilk <= 1000) { textLP("squirts"); }
				if (getMilk > 1000 && getMilk <= 2000) { textLP("spews"); }
				if (getMilk > 2000 && getMilk <= 8000) { textLP("gushes"); }
				if (getMilk > 8000 && getMilk <= 19000) { textLP("erupts"); }
				if (getMilk > 19000) { textLP("explodes"); }
				
				textLP(" from your nipples and dribbles down your front as you begin to lactate. You continue to pump it out in ");
				if (getMilk <= 500) { textLP("small dribbles"); }
				if (getMilk > 500 && getMilk <= 1000) { textLP("spurts"); }
				if (getMilk > 1000 && getMilk <= 2000) { textLP("sprays"); }
				if (getMilk > 2000 && getMilk <= 8000) { textLP("jets"); }
				if (getMilk > 8000 && getMilk <= 19000) { textLP("steady streams"); }
				if (getMilk > 19000) { textLP("small floods"); }
			
				textLP(", relieving your "+boobDesc()+" breasts of their supply");
				if (dominant == 5)	{ textLP(" as you let out a contented 'mooo~'"); }
				textLP("."); 
			}
			
			/*if (sen <= 30){
				if (getMilk > 0){
					if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up any mess you have made. Since there's really nothing that would point to sexual relief, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
					if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rComing down from your high, you clean up your mess the best you can, though its likely some of your fluids have seeped in somewhere. At least, you're cautious of cleaning any mess up with your sheets. And as you leave the place, one of your neighbors eyes you with a surprised look. You probably left a blotch or few on your clothes somewhere..."); }
					if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place probably echoed your moans as you come to your senses. You also have the slight problem of milk blotching your "+clothesTop()+"... As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. Rubbing you chest through the fabric once more, you dash away hoping it will dry."); }
					if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some men, and they all gaze out you in amazement, having given them quite the show. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull "+pullUD(1)+" your "+clothesTop()+", milk splashing everywhere and slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }
				}
				else{
					if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up any mess you have made. Since there's really nothing that would point to sexual relief, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
					if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rThe flow having ended, you clean up your mess the best you can, though its likely some of your milk seeped in somewhere. At least, you're cautious of cleaning any mess up with your sheets. And as you leave the place, one of your neighbors eyes you with a surprised look. You probably left a blotch or few on your clothes somewhere..."); }
					if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place probably echoed your moans as you come to your senses. You also have the slight problem of milk blotching your "+clothesTop()+"... As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. Rubbing you chest through the fabric once more, you dash away hoping it will dry."); }
					if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some men, and they all gaze out you in amazement, having given them quite the show. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull "+pullUD(1)+" your "+clothesTop()+", milk splashing everywhere and slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }
				}
					
				
			}*/
			//else{ 	
				if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up any mess you have made, hoping the bedsheets will dry quickly. Except for some stains, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
				if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rComing down from your high, you clean up your mess the best you can, though its likely some of your fluids have seeped in somewhere. At least, you're cautious of cleaning any mess up with your sheets. And as you leave the place, one of your neighbors eyes you with a surprised look. You probably left a blotch or few on your clothes somewhere..."); }
				if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place probably echoed your moans as you come to your senses. You also have the slight problem of milk blotching your "+clothesTop()+"... As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. Rubbing your chest through the fabric once more, you dash away hoping it will dry."); }
				if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some men, and they all gaze out you in amazement, having given them quite the show. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull back your "+clothesTop()+", milk splashing everywhere and slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }
				
			//}
			
			if (getMilk > 0 && getMilk < 1000){ textLP("\r\r\rYou produced "+getMilk+" ml of milk!"); }
			else if (getMilk > 0 && getMilk >= 1000) { textLP("\r\r\rYou produced "+decGet(getMilk/1000, 1)+" liters of milk!"); }
			
			//Steady breast fondling/milking leads to more milk and bigger breasts
			nipplePlay += 8; //Maybe?
			i++;
		}
		if (chance == 2 && (breastSize*2 + nippleSize*5) > tallness/5 && lactation > 0) {

			lustArray.push(53);
			textL("Relaxing in your room, you sneak your breasts out of your "+clothesTop()+", palming their undersides and gently kneading them. Hanging from your chest, so soft and squishy, your anticipation over playing with them already begins to make drops of milk form around your nipples. The white nurturing fluid drips warmly from the tips, splashing upon your "+clothesBottom()+". It looks so delicious that you can't help but...\r\rYou reach under a boob and hoist it up, craning your neck down to meet ");
			if (nipType == 0) { textLP("the "+nipDesc()+" nipple"); }
			else if (nipType == 1) { textLP("one of the four "+nipDesc()+" nipples"); }
			textLP(" with your mouth. You lick around it at first, but quickly suck it into your mouth, letting out an unintended \"Mmm~\" as the erect peak readily compresses over your tongue, rewarding you with a mouthful of squirting sustenance. Sweet and rich, the stuff is better than it looked. And with your mouth fellating the stiffened nipple, the sensations and flavor only make you try to gulp down more, nomming and sucking with delight.");
			var getMilk:int = milkAmount(1);
			if (getMilk < 300) { textLP("\r\rThin sprays occassionally spurt and spit about your mouth, with a gentle trickle dribbling down your throat. Though you may only produce a few mouthfuls before you run dry, you savor every swallow while your other "); }
			else if (getMilk < 1500) { textLP("\r\rThe flow picks up a little, with constant spurting about your mouth and down your throat. You steadily gulp again and again as your mouth refills, serving you a nice meal of milk while your other ");	}
			else if (getMilk < 3000) { textLP("\r\rThe flow quickly increases with wide streams of milk spraying within your mouth and down your throat. You hastily gulp again and again to keep up with the outpour of milk, barely able to keep up with the supply and a little dribbling out the corners of your mouth while your other ");	}
			else { textLP("\r\rCaught slightly off gaurd, the flow of milk rapidly increases to a powerful gushing. Like a geyser erupting in your mouth, you do all you can to drink down as much as possible, but plenty more floods out of your mouth in a pale waterfall over your body while your other "); }
			if (nipType != 1 && boobTotal == 2)	{ textLP(" breast "); }
			else { textLP(" tits "); }
			textLP(" do the same as you grope about with your other hand. Fluids splatter about, carelessly falling where they may with the warmth of climax casting over your mind.\r\rA sudden spike in the flow accompanies a shudder through your body, nearly biting down on your own nipple in ecstasy. You open wide and gasp as the nipple washes your mouth, with saliva and milk spilling out as you moan blissfully.\r\rYou then collapse back into your bed, continuing to suckle from yourself slowly and express what is left in your breasts.");
			if (getMilk < 300) { 
				textLP(" With the nice drink ");
				doHP(2 + Math.floor(milkHPMod/2));
			}
			else if (getMilk < 1500) { 
				textLP(" With the small meal ");	
				doHP(8 + Math.floor(milkHPMod/2));
			}
			else if (getMilk < 3000) { 
				textLP(" With the abundant nourishment and slight bloating of your belly "); 
				doHP(10 + milkHPMod);
			}
			else { 
				textLP(" With the grand feast leaving you with a hefty swelling of your abdomen and impromptu bath "); 
				doHP(Math.ceil((30+Math.floor(str/2)+HPMod)/4) + milkHPMod);
			}
			textLP(", you settle in for a short nap to help with the digestion, feeling quite pleased with yourself~");
			doLust(-Math.floor(sen/2), 2, 3);
			hrs += 2;
			i++;
		}
	}

	hrs++;
	doEnd();
}

function doUdderMasturbate():void{
	lustArray = [4];

	i = 0;
	while (i == 0) {
		var chance:int = Math.floor(Math.random()*(1+2-1))+1;
		if (chance == 1) {
			if (udderLactation > 0) { lustArray.push(53); }

			if (ment >= (lib-10)){ textL("You sneak off to the private place where you sleep in "+regionName(currentZone)+" with a bunch of towels in hand. Carefully, so as to not let anybody hear, you pull "+pullUD(1)+" your "+clothesTop()+" and gently knead your "+udderDesc()+" udder.\r\rHunching over at the side of the bed, you massage your "+teatDesc()+" teats, tugging and squeezing them each with"); }
			if (ment < (lib-10) && ment >= (lib-25)){ textL("You quickly head off to the private place where you sleep with your intentions clear as those around "+regionName(currentZone)+" can easily see you rub your "+udderDesc()+" bulge through your "+clothesTop()+". Before you even reach your destination, your hands are already reaching "+pullUD(1)+" under your "+clothesTop()+" to play with your "+teatDesc()+" teats, giving someone a good view of your fleshy bag.\r\rBy the time you're hidden inside, both hands are fondling your udder, kneading and massaging your teats with"); } 

			if (ment < (lib-25) && ment >= (lib-50)){ textL("Your "+udderDesc()+" udder heaves with your heavy breathing as you think about playing with it. You don't think you can reach the private place where you sleep without your hands diving underneath your "+clothesTop()+" and massaging it roughly.\r\rInstead, you duck into one of the more hidden corners of "+regionName(currentZone)+" and without even taking off your "+clothesTop()+", you grope your udder through the fabric before your reaching underneath, kneading and massaging your "+teatDesc()+" teats with"); }
			if (ment < (lib-50)){ textL("Without a second thought, right in the middle of "+regionName(currentZone)+" you pull "+pullUD(1)+" your "+clothesTop()+", rubbing a hand across your "+udderDesc()+" udder and making it jiggle obscenely.\r\rPeople gasp and stare as you knead and massage your "+teatDesc()+" teats with");	}

			if (teatSize <= 25){ textLP(" your fingers"); }
			else if (teatSize > 25 && teatSize <= 60){ textLP(" your hands"); }
			else if (teatSize > 60 && teatSize <= 180){ textLP(" both hands"); }
			else if (teatSize > 180) { textLP(" the nearby wall"); }

			textLP(" until they begin to feel warm and tingly.");
			if (sen <= 30){
				textLP(" Unfortunately, you can't really come as your udder simply isn't sensitive enough. But, it does feel nice as you continue to play with your teats."); 
				doLust(-Math.floor(sen/5), 2, 4);
			}
			else{
				if (lust <= 30){ textLP("\r\rSlowly,"); }
				if (lust > 30 && lust <= 70){ textLP("\r\rQuickly,"); }
				if (lust > 70){ textLP("\r\rAlmost instantly,"); }
			
				textLP(" your whole body begins to quiver,");
			
				if ((moistCalc(1) > 0 && moistCalc(1) <= 3) || (moistCalc(2) > 0 && moistCalc(2) <= 3)){ textLP(" your "+clothesBottom()+" growing a tad moist,"); }
				if ((moistCalc(1) > 3 && moistCalc(1) <= 7) || (moistCalc(2) > 3 && moistCalc(2) <= 7)){ textLP(" your "+clothesBottom()+" growing wet,"); }
				if ((moistCalc(1) > 7 && moistCalc(1) <= 11) || (moistCalc(2) > 7 && moistCalc(2) <= 11)){ textLP(" your "+clothesBottom()+" becoming soaked through,"); }
				if (moistCalc(1) > 11 || moistCalc(2)  > 11){ textLP(" your "+clothesBottom()+" becoming drenched, your "+buttDesc()+" bum absolutely swamped,"); }

				textLP(" being wracked by an udder orgasm.");
				
				doLust(-Math.floor(sen/2), 2, 4);
			}
			

			if (udderLactation > 0){
				hrs++;
				var getMilk:int = milkAmount(2);
				textLP("\r\rMilk ");
				if (getMilk <= 500) { textLP("spits"); }
				if (getMilk > 500 && getMilk <= 1000) { textLP("squirts"); }
				if (getMilk > 1000 && getMilk <= 2000) { textLP("spews"); }
				if (getMilk > 2000 && getMilk <= 8000) { textLP("gushes"); }
				if (getMilk > 8000 && getMilk <= 19000) { textLP("erupts"); }
				if (getMilk > 19000) { textLP("explodes"); }
				
				textLP(" from your teats and dribbles down your front as you begin to lactate. You continue to pump it out in ");
				
				if (getMilk <= 500) { textLP("small dribbles"); }
				if (getMilk > 500 && getMilk <= 1000) { textLP("spurts"); }
				if (getMilk > 1000 && getMilk <= 2000) { textLP("sprays"); }
				if (getMilk > 2000 && getMilk <= 8000) { textLP("jets"); }
				if (getMilk > 8000 && getMilk <= 19000) { textLP("steady streams"); }
				if (getMilk > 19000) { textLP("small floods"); }
					
				textLP(", relieving your "+udderDesc()+" udder of its supply");
				if (dominant == 5)	{ textLP(" as you let out a contented 'mooo~'"); }
				textLP("."); 
			}

			if (ment >= (lib-10)){ textLP("\r\rYou quietly heave as you attempt to clean up any mess you have made, hoping the bedsheets will dry quickly. Except for some stains, you don't think anybody will catch on to your lewd actions, and you continue on with your day."); }
			if (ment < (lib-10) && ment >= (lib-25)){ textLP("\r\rComing down from your high, you clean up your mess the best you can, though its likely some of your fluids have seeped in somewhere. At least, you're cautious of cleaning any mess up with your sheets. And as you leave the place, one of your neighbors eyes you with a surprised look. You probably left a blotch or few on your clothes somewhere..."); }
			if (ment < (lib-25) && ment >= (lib-50)){ textLP("\r\rYou realize your hiding place probably echoed your moans as you come to your senses. You also have the slight problem of milk blotching your "+clothesTop()+"... As you attempt to casually walk away, some nearby strangers blink at you curiously, not quite sure what they just heard. Rubbing your chest through the fabric once more, you dash away hoping it will dry."); }
			if (ment < (lib-50)){ textLP("\r\rGasping, you blink and look around you. You've gathered quite the crowd, especially some men, and they all gaze out you in amazement, having given them quite the show. A few tug at their own groins, ducking away from the rest, while others don't look so happy at what you have done, especially the ones with children beside them. You pull "+pullUD(1)+" your "+clothesTop()+", milk splashing everywhere and slink away, trying to avoid any more stares. Although, your heart pounds within your chest at the thought of what you had just done..."); }

			if (getMilk > 0 && getMilk < 1000){ textLP("\r\r\rYou produced "+getMilk+" ml of milk!"); }
			else if (getMilk > 0 && getMilk >= 1000) { textLP("\r\r\rYou produced "+decGet(getMilk/1000, 1)+" liters of milk!"); }
			
			/*if (udderLactation > 0){
				if (((udderPlay + 8)/(udderLactation*30)) > 1){
					lactChange(2, 1);
					textLP("\r\rYour udder aches from all the milking, growing larger to meet the demand...");
					udderChange(1);
				}
				udderPlay += 8; //Maybe?
			}*/
			udderPlay += 8;
			i++;
		}
		if (chance == 2 && (udderSize + teatSize*5) > tallness/2 && udderLactation > 0) {
			lustArray.push(53);
			textL("Relaxing in your room, you pull your udder out of your "+clothesBottom()+", lifting the underside and gently kneading the supple bag. Hanging from below your belly, so soft and squishy, your anticipation over playing with it already begins to make drops of milk form around your teats. The white nurturing fluid drips warmly from the tips, splashing over your "+legDesc(2)+" and the floor. It looks so delicious that you can't help but...\r\rYou hug around the udder and hoist it up, craning your neck down to meet a "+teatDesc()+" teat");
			textLP(" with your mouth, guiding it with a hand. You lick around it at first, but quickly suck it into your mouth, letting out an unintended \"Mmm~\" as the erect peak readily compresses over your tongue, rewarding you with a mouthful of squirting sustenance. Sweet and rich, the stuff is better than it looked. And with your mouth fellating the semi-firm teat, the sensations and flavor only make you try to gulp down more, nomming and sucking with delight.");
			var getMilk:int = milkAmount(2);
			if (getMilk < 300) { textLP("\r\rThin sprays occassionally spurt and spit about your mouth, with a gentle trickle dribbling down your throat. Though you may only produce a few mouthfuls before you run dry, you savor every swallow while your other "); }
			else if (getMilk < 1500) { textLP("\r\rThe flow picks up a little, with constant spurting about your mouth and down your throat. You steadily gulp again and again as your mouth refills, serving you a nice meal of milk while your other ");	}
			else if (getMilk < 3000) { textLP("\r\rThe flow quickly increases with wide streams of milk spraying within your mouth and down your throat. You hastily gulp again and again to keep up with the outpour of milk, barely able to keep up with the supply and a little dribbling out the corners of your mouth while your other ");	}
			else { textLP("\r\rCaught slightly off gaurd, the flow of milk rapidly increases to a powerful gushing. Like a geyser erupting in your mouth, you do all you can to drink down as much as possible, but plenty more floods out of your mouth in a pale waterfall over your body while your other "); }
			textLP(" teats do the same as you grope about with your other hand, your arm bending around to keep the udder elevated. Fluids splatter about, carelessly falling where they may with the warmth of climax casting over your mind.\r\rA sudden spike in the flow accompanies a shudder through your body, nearly biting down on your own teat in ecstasy. You open wide and gasp as the "+teatDesc()+" teat washes your mouth, with saliva and milk spilling out as you moan blissfully.\r\rYou then collapse back into your bed, curled around and continuing to suckle from yourself slowly, gently milking what is left in your udder.");
			if (getMilk < 300) { 
				textLP(" With the nice drink ");
				doHP(2 + Math.floor(milkHPMod/2));
			}
			else if (getMilk < 1500) { 
				textLP(" With the small meal ");	
				doHP(8 + Math.floor(milkHPMod/2));
			}
			else if (getMilk < 3000) { 
				textLP(" With the abundant nourishment and slight bloating of your belly "); 
				doHP(10 + milkHPMod);
			}
			else { 
				textLP(" With the grand feast leaving you with a hefty swelling of your abdomen and impromptu bath "); 
				doHP(Math.ceil((30+Math.floor(str/2)+HPMod)/4) + milkHPMod);
			}
			textLP(", you settle in for a short nap to help with the digestion, feeling quite pleased with yourself~");
			doLust(-Math.floor(sen/2), 2, 4);
			hrs += 2;
			i++;
		}
	}
	
	hrs++;
	doEnd();	
}
