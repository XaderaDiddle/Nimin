/*Transformations*/

/*
General overview: Each race has a "blood" value from 0-100, indicating how much of a race the player has. When one blood dominates over another (is higher), changes start to occur.
Other changes occur here as well, such as penis changes, boob changes, leg changes, outside of racial changes.

affinity - Long form method of changing multiple race bloods at a time.
aff - Short form where a specified race goes up, and all the others go down.
affinityChange - Where all the actual racial changes occur, could probably be split out into the different bodyparts.

cockChange - Determines when a cock changes to another race, or what a new cock should be.
cockLoss - Determines which cock should be lost, if there are multiple, based on blood values.
vagChange - Adds/removes vagoos appropriately, including pregnancy adjustments.
vagBellyChange - How much the belly changes with a bigger vagoo.
legChange - Allows for different leg-types to be added, independently of racial blood.
boobChange - Increases both breast and nipple size accordingly.
udderChange - Increases both udder and teat size accordingly.
udderCheck - Checking if an udder exists, since there's now multiple.
lactChange - Makes changes to base lactation value (not current milk storage).
*/




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