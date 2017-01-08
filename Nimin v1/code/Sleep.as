/**********
 *Sleeping*
 **********/

function doSleep():void{
	bc();
	textL("You head into town to sleep for the night...");
	exhaustion = 0;
	skipExhaustion = true;
	if (exhaustionPenalty == 1){
		exhaustionPenalty = 0;
		statsMod(3,3,0,0);
	}
	if (exhaustionPenalty == 2){
		exhaustionPenalty = 0;
		statsMod(11,11,0,0);
	}
	doHP(20);
	if (lust <= 30){
		textLP("\r\rDespite everything, your body is calm and sleeps rather soundly.");
		if ((moistCalc(1) > 9 && cockTotal > 0) || (moistCalc(2) > 9 && vagTotal > 0)){
			textLP(" Although your bed is slightly moist from your constant production of lubricant from your loins.");
		}
	}
	if (lust > 30 && lust <= 70) {
		textLP("\r\rYour sleep is somewhat disrupted by tossing and turning throughout the night, your arousal making certain attributes swell with blood and desiring attention...");
		exhaustion += 3;
		if (((moistCalc(1) > 3 && moistCalc(1) <= 9) && cockTotal > 0) || ((moistCalc(2) > 3 && moistCalc(2) <= 9) && vagTotal > 0)){
			textLP(" Plus your bed is slightly moist from your constant production of lubricant from your loins.");
		}
		if ((moistCalc(1) > 9 && cockTotal > 0) || (moistCalc(2) > 9 && vagTotal > 0)){
			textLP(" It also seems as though you had wet the bed throughout the night, however the slick slime that pulls away in long strands as you touch it indicates a different fluid...");
		}
	}
	if (lust > 70) {
		textLP("\r\rYou spend most of the night tossing and turning, your mind having difficulty sleeping with the lust that envelops it. Although you do manage to eventually get some, it's not nearly as good.");
		exhaustion += 8;
		if (((moistCalc(1) > 0 && moistCalc(1) <= 3) && cockTotal > 0) || ((moistCalc(2) > 0 && moistCalc(2) <= 3) && vagTotal > 0)){
			textLP(" Plus your bed is slightly moist from your constant production of lubricant from your loins.");
		}
		if (((moistCalc(1) > 3 && moistCalc(1) <= 9) && cockTotal > 0) || ((moistCalc(2) > 3 && moistCalc(2) <= 9) && vagTotal > 0)){
			textLP(" It also seems as though you had wet the bed throughout the night, however the slick slime that pulls away in long strands as you touch it indicates a different fluid...");
		}
		if ((moistCalc(1) > 9 && cockTotal > 0) || (moistCalc(2) > 9 && vagTotal > 0)){
			textLP(" You also wake up in a pool of your own sexual lubricant, the slick stuff sloshing off the sheets as you attempt to get out. You remain cautious as your "+legDesc(10)+" touch the floor, as you have to avoid slipping in the large puddle around the bed.");
		}
	}

	if (heatTime < 0 && heat > 0 && vagTotal){ textLP("\r\rDreams of being fucked by over a dozen cocks, each filling you to the brim with hot spunk, filled your sleep. When you eventually woke up in a hot sweat, your hand reflexively inspects your belly and you find yourself slightly disappointed to find it empty."); }
	
	if (milkEngorgementLevel == 2){	textLP("\r\rYour sheets smell somewhat sweet, slightly wet and white, as you wake up. Milk still dribbles from your breasts, having formed a small puddle throughout the night."); }
	if (milkEngorgementLevel > 2){	textLP("\r\rYour sheets smell somewhat sweet and feel very wet as you wake up. Milk spills in streams from your breasts, as you sit up, a pool of the stuff all around you."); }
	if (udderEngorgementLevel == 2){	textLP("\r\rYour sheets smell somewhat sweet, slightly wet and white, as you wake up. Milk still dribbles from your udder, having formed a small puddle throughout the night."); }
	if (udderEngorgementLevel > 2){	textLP("\r\rYour sheets smell somewhat sweet and feel very wet as you wake up. Milk spills in streams from your udder, as you sit up, a pool of the stuff all around you."); }

	//Pregnancy related
	if (pregCheck(0)){
		if (pregnancyTime > 18 && pregnancyTime <= 36) { textLP("\r\rAfter waking, you feel oddly sick and strangely bloated. You should probably watch what you eat more closely."); }
		else if (pregnancyTime > 36 && pregnancyTime <= 72)	{ textLP("\r\rYou seem to be getting a bit chubbier in your midsection, might be because you've been hungrier and eating more lately. Plus you've been feeling a bit more randy than usual...");	}
		else if (pregnancyTime > 72 && pregnancyTime <= 108) { textLP("\r\rYour belly is obviously bulging now, more than it would if it were just fat. You should probably accept the fact that you're pregnant..."); }
		else if (pregnancyTime > 108 && pregnancyTime <= 144) {	textLP("\r\rYou can easily hug your belly as it protrudes from your torso, looking like you were trying to smuggle a melon in your womb. But it feels so good to rub and caress it, making you easily get horny."); }
		else if (pregnancyTime > 144 && pregnancyTime <= 180) {	textLP("\r\rYour belly is so large your belly button has turned into an outie. You play with it as you head to sleep, the baby inside kicking back in turn.");	}
		else if (pregnancyTime > 180 && pregnancyTime <= 216) {	textLP("\r\rFor most races, you would be giving birth any time now. You actually have to be cautious about people bumping into you as you walk through the town, it protrudes so far.");	}
		else if (pregnancyTime > 216 && pregnancyTime <= 252) {	textLP("\r\rThe "+skinDesc()+" around your giant belly is so taut that you can audibly drum it with your fingers. Which the baby inside does with its feet frequently from inside.");	}
		else if (pregnancyTime > 252 && pregnancyTime <= 288) {	textLP("\r\rYou're beginning to draw the eyes of the crowd as you move through town, your belly is so enormous. People are wondering if you've actually got a baby in there and not a small child.");	}
		else if (pregnancyTime > 288 && pregnancyTime <= 324) {	textLP("\r\rThis is getting ridiculous... People are starting to come up to you as you move through the street on your way to bed and actually ask if you've got a small person in your belly! Although, you aren't quite sure, but as your hands try to wrap around it, unable to fully embrace it, you begin to wonder yourself."); }
		else if (pregnancyTime > 324 && pregnancyTime <= 360) {	textLP("\r\rYour giant belly is becoming a bit of a nuisance... As you walk through buildings, people back up against a wall to let you pass by. You can feel your belly scrape against the frames of narrow doorways as you pass through, and it's been a while since you've last seen your belly-button..."); }
		else if (pregnancyTime > 360 && pregnancyTime <= 396) {	textLP("\r\rNow you're actually starting to get a little worried... Your "+legDesc(6)+" are knocking against the underside of your belly when you try to walk. People are clearing the way when you move down the streets to make room for your belly and you have to skillfully wedge yourself through narrow doorways!"); }
		else if (pregnancyTime > 396 && pregnancyTime <= 432) {	textLP("\r\rAs you lay down to go to sleep, you have to curl forward to fit your belly in your bed, leaving your backside hanging off the mattress. The sheets aren't even wide enough to cover you completely, making you feel a draft on some of your exposed belly. The chill makes you shiver, not from the cold, but from your nerves sparking from the super-taut, extra-sensitive "+skinDesc()+".");	}
		else if (pregnancyTime > 432) {	textLP("\r\rYou don't even bother to head to your bed. Borrowing a bunch of blankets, you've made do with sleeping outside. Your belly is too big to go indoors, even having to handle shop business from the streets. Your hand reaches out as far as it can and hardly wraps around any of your girth. The warmth it emanates and sensations it echoes through your body help you sleep quite soundly and pleasantly, though, so you'll be fine until you give birth."); }
		if ((body+(str/2)+carryMod) < Math.floor(pregnancyTime/10)){	textLP(" However, none of that really matters as you can no longer carry the weight of your hefty belly. You're stuck in this town, dragging your belly across the ground, with padding beneath to protect it. There's going to be no more exploring until you either get stronger or give birth to this massive nuisance...");	}
		else if ((body+(str/2)+carryMod)*2 < Math.floor(pregnancyTime/10)){	textLP(" Your "+skinDesc()+" is pulled so taut around your belly that you're afraid it might tear, though it never does. But it's so sensitive... Caressing it as you try to sleep is so nice~ Although, it does have the slight drawback of looking rather silly while you walk with a hunch and attempt to cradle it wherever you go; it's gotten so heavy.");	}
		else if ((body+(str/2)+carryMod)*3 < Math.floor(pregnancyTime/10)){	textLP(" The mound feels so heavy... When walking around town, you even had to keep a hand on your back for support.");	}
		else if ((body+(str/2)+carryMod)*4 < Math.floor(pregnancyTime/10)){	textLP(" The weight of your belly makes you feel more exhausted than you really are by the end of the day, making you glad for the night's rest."); }
		else if ((body+(str/2)+carryMod)*5 < Math.floor(pregnancyTime/10)){	textLP(" You can noticeably feel the weight of your belly."); }
	}
	
	if (firstExplore == false && percent() < 10) {
		textLP("\r\r\"Please... Anybody?\" Despite everything, your mind focuses on that echoing dream for another night now...");
	}
	hrs = 8;
	doEnd();
}