function pregCheck(amount:int):Boolean{
	//Amount = 0: check for any pregnancy, Amount = 1: check for free womb, Other amount = check for specific baby
	var tempBool:Boolean = false;
	if (amount == 0) {
		i = 0;
		while (i < pregArray.length) {
			if (pregArray[i] == true) { tempBool = true; }
			i += 5;
		}
	}
	else if (amount == 1)	{
		i = 0;
		while (i < pregArray.length) {
			if (pregArray[i] == false) { tempBool = true; }
			i += 5;
		}
	}
	else if (amount > 1){
		i = 0;
		while (i < pregArray.length) {
			if (pregArray[i+1] == amount) { tempBool = true; }
			i += 5;
		}
	}
	return tempBool;
}

function doImpregnate(erace:int):void{
	var chance:int = percent();
	var tempPregMod:int = 0;

	//babyFree Status
	if (babyFree > 0){ tempPregMod -= 50; }

	if (cockSnakePreg > 0) { 
		textLP("\r\rAs the cum fills your "+bellyDesc()+" belly, you feel it diminish from your passage as the cum-hungry snake inside squirms to drink it down. It then settles, happy with its meal and giving you some rest...", "snakes");
		cockSnakePreg += 25;
		if (cockSnakePreg > 100) { cockSnakePreg = 100;	}
		tempPregMod -= 100000
	}

	trace(chance+" "+pregChanceMod+" "+tempPregMod);
	if (pregCheck(1) && (chance + pregChanceMod + tempPregMod) >= 90){
		i = 0;
		while (i < pregArray.length) {
			if (pregArray[i] == false) {
				pregArray[i+1] = erace;
				pregArray[i] = true;
				pregArray[i+4] = litterSize(erace);
				i = pregArray.length;
			}
			i += 5;
		}
	}
}

function maxPregTime(pregnancyType:int):int{
	return Math.floor(85*Math.log(baseBabyWeight(pregnancyType))-50);
}

function birthTime(pregnancyType:int):int{
	var tempInt:int = 0;
	if (setBirthTime(pregnancyType) > 0) { return setBirthTime(pregnancyType); }
	else if (percent() > 50) { tempInt = Math.floor(maxPregTime(baseBabyWeight(pregnancyType)) + percent()/500*maxPregTime(baseBabyWeight(pregnancyType))); }
	else { tempInt = Math.floor(maxPregTime(baseBabyWeight(pregnancyType)) - percent()/1000*maxPregTime(baseBabyWeight(pregnancyType))); }
	return TempInt;
}

function totalPregnancyWeight():Number{
	var tempInt:Number = 0.0;
	i = 0;
	while (i < pregArray.length) {
		if (pregArray[i] == true) {
			tempInt += birthWeight(pregArray[i+1],pregArray[i+4],pregArray[i+3]);
		}
		i += 5;
	}

	return tempInt;
}

function birthWeight(pregnancyType:int,number:int,time:int):Number{
	return Math.floor(10*baseBabyWeight(pregnancyType)/baseLitterSize(pregnancyType)*number*time/maxPregTime(pregnancyType))/10;
}

function baseWaist():Number{
	return Math.floor(10*(tallness*0.4))/10;
}

function normalWaist():Number{
	return baseWaist + bellyMod/10;
}

function vaginaWaist():Number {
	var initialVag:Number = tallness/4;
	var vagGirth:Number = trueVagSize - initialVag;

	if (vagGirth > 0) {
		return Math.floor(10*(2*Math.PI*Math.pow((3*vagGirth/(8*Math.PI)),1/3)))/10;
	}
	else { return 0; }
}

function pregnancyWaist():Number{
	var density:Number = 0.008
	return Math.floor(10*(2*Math.PI*Math.pow((3*totalPregnancyWeight()/(4*density*Math.PI)),1/3)))/10;
	//return Math.floor(10*(2*Math.PI*Math.pow((totalPregnancyWeight()/0.01179*Math.PI),1/3)))/10;
}

function genitalWaist():Number {
	return Math.floor(10*(vaginaWaist() + pregnancyWaist()*pregnancyWaist()/(vaginaWaist() + pregnancyWaist())))/10;
}

function totalWaist():Number{
	return Math.floor(10*(normalWaist()+genitalWaist()*genitalWaist()/(normalWaist()+genitalWaist())))/10;
}

function waistFromPregnancy():Number{
	return (totalWaist() - normalWaist());
}

function waistFromFat():Number{
	return (normalWaist() - baseWaist());
}

function waistRatio():Number{
	return totalWaist()/baseWaist();
}

function setBirthTime(pregnancyType:int):int{
	var tempInt:int = 0;

	if (pregnancyType == 1000) { tempInt = 252; }
	if (pregnancyType == 1001) { tempInt = 230; }
	if (pregnancyType == 1002) { tempInt = 230; }

	if (pregnancyType == 1501) { tempInt = 230; }
	if (pregnancyType == 1502) { tempInt = 230; }
	if (pregnancyType == 1503) { tempInt = 240; }

	return tempInt;
}

function baseBabyWeight(pregnancyType:int):int{
	var tempInt:int = 0;
	if (pregnancyType == 1) { tempInt = 8; }
		
	if (pregnancyType == 2) { tempInt = 21; }
	
	if (pregnancyType == 3) { tempInt = 6; }
	if (pregnancyType == 4) { tempInt = 5; }
	if (pregnancyType == 5) { tempInt = 25 }
	if (pregnancyType == 6) { tempInt = 4; }
	if (pregnancyType == 7) { tempInt = 3; }	
	if (pregnancyType == 8) { tempInt = 3; }	
	if (pregnancyType == 9) { tempInt = 5; }
	if (pregnancyType == 10) { tempInt = 15; }
	if (pregnancyType == 11) { tempInt = 7; }
	if (pregnancyType == 12) { tempInt = 3; }

	if (pregnancyType == 100) { tempInt = 4; }
	if (pregnancyType == 101) { tempInt = 24; }

	if (pregnancyType == 307) { tempInt = 48; }
	if (pregnancyType == 308) { tempInt = 4; }

	return tempInt;
}

function baseLitterSize(pregnancyType:int):Number{
	var tempInt:Number = 0;
	if (pregnancyType == 1) { tempInt = 1; }	
	if (pregnancyType == 2) { tempInt = 1; }
	if (pregnancyType == 3) { tempInt = 4.5; }
	if (pregnancyType == 4) { tempInt = 4.5; }
	if (pregnancyType == 5) { tempInt = 1; }
	if (pregnancyType == 6) { tempInt = 6; }
	if (pregnancyType == 7) { tempInt = 5.5; }	
	if (pregnancyType == 8) { tempInt = 6.5; }	
	if (pregnancyType == 9) { tempInt = 6; }
	if (pregnancyType == 10) { tempInt = 2.5; }
	if (pregnancyType == 11) { tempInt = 4.5; }
	if (pregnancyType == 12) { tempInt = 9; }

	if (pregnancyType == 100) { tempInt = 5.5; }
	if (pregnancyType == 101) { tempInt = 1; }

	if (pregnancyType == 307) { tempInt = 1; }
	if (pregnancyType == 308) { tempInt = 4.5; }

	return tempInt;

}

function litterSize(pregnancyType:int, extra:int):int{
	i = 0;
	var extra:int = 0;
	while (percent() < (extraPregChance + 10 - (4*(i+1)*(i)))){
		extra++;
		i++;
	}

	var birthNumber:int;

	if (pregnancyType == 1) { birthNumber = 1 + extra*1; }
		
	if (pregnancyType == 2) { birthNumber = 1 + extra*.8; }
	
	if (pregnancyType == 3) { birthNumber = Math.floor(percent()/20 + 2 + extra*2.2); }
	if (pregnancyType == 4) { birthNumber = Math.floor(percent()/20 + 2 + extra*2.4); }
	if (pregnancyType == 5) { birthNumber = 1 + extra*.7; }
	if (pregnancyType == 6) { birthNumber = Math.floor(percent()/15 + 3 + extra*3.5); }
	if (pregnancyType == 7) { birthNumber = Math.floor(percent()/20 + 3 + extra*3.3); }	
	if (pregnancyType == 8) { birthNumber = Math.floor(percent()/20 + 4 + extra*4.5); }	
	if (pregnancyType == 9) { birthNumber = Math.floor(percent()/15 + 3 + extra*3.3); }
	if (pregnancyType == 10) { birthNumber = Math.floor(percent()/33 + 1 + extra*1.2); }
	if (pregnancyType == 11) { birthNumber = Math.floor(percent()/20 + 2 + extra*2.3); }
	if (pregnancyType == 12) { birthNumber = Math.floor(percent()/10 + 4 + extra*4.9); }

	if (pregnancyType == 100) { birthNumber = Math.floor(percent()/20 + 3 + extra*3.4); }
	if (pregnancyType == 101) { birthNumber = 1 + extra*.6; }

	if (pregnancyType == 307) { birthNumber = 1 + extra*.6; }
	if (pregnancyType == 308) { birthNumber = Math.floor(percent()/20 + 2 + extra*1.8); }

	return birthNumber;
}

function pregChanges(i:int):void{
	var currentDevelopment:int = birthWeight(pregArray[i+1],pregArray[i+4],pregArray[i+3]);
	var expectedDevelopment:int = maxPregTime(pregArray[i+1]);
	var developmentPercent:int = Math.floor(currentDevelopment/expectedDevelopment*100);
	var maxMilk:int = baseBabyWeight(pregArray[i+1])*baseBabyWeight(pregArray[i+1])/2*pregArray[i+4];
	if (pregArray[i+1] < 1000) {
		if (Math.floor(developmentPercent/10) > Math.floor(pregArray[i+2]/10)) { //We're checking in 10% intervals
			if (maxMilk*(developmentPercent - pregArray[i+2])/100 > 5) { //We want at minimum 5ml lactchange
				pregMilk += Math.round(maxMilk*(developmentPercent - pregArray[i+2])/100);
				pregArray[i+2] = developmentPercent;
			}
		}
	}
}


function doBirth(i:int, birthCount:int):void{
	var pregnancyType:int = pregArray[i+1];
	var birthNumber:int = pregArray[i+4];
	var birthSize:int = birthWeight(pregArray[i+1],pregArray[i+4],pregArray[i+3]);
	var birthWidth:int = Math.pow((birthSize/0.01179*Math.PI),1/3)

	if (pregArray.length > vagTotal*5) { vagChange(0,1); }
	hrs += 1;
	
	if (pregnancyType < 1000)	{
		if (birthCount == 0) { textLP("\r\rYou freeze in place as you feel a shift within. Water splashes across your "+legDesc(4)+", flooding from "+oneYour(2)+" womb"+plural(2)+". As the contractions kick in, you realize you've gone into labor!\r\rYou squat down closer to the ground, pulling "+pullUD(2)+" your "+clothesBottom()+" and "+legVerb(1)+" your "+legDesc(6)+". You gather some of your belongings below you for a safer landing and prepare to deliver the child on your own."); }
		if (birthCount > 0)	{ textLP("\r\rBut you're still not done, it seems... Another shift in another womb triggers you to pause in taking care of what's in your arms and focus again between your "+legDesc(4)+" to bring something else into the world."); }
		
		if (babySize < tallness/32) { textLP(" There's a slight pressure under your "+bellyDesc()+" belly, but you're almost unsure if the labor has actually begun, it feels so mild. It's not until the body starts entering your passage that you know you're really giving birth."); }
		else if (babySize < tallness/16){ textLP(" A growing pressure builds under your "+bellyDesc()+" belly. The sensation isn't so powerful that you feel caught off guard, but it's strong enough to make you glad you squat. The position gives you plenty more leverage to push the body into your passage."); }
		else if (babySize < tallness/8) { textLP(" An intense pressure builds under your "+bellyDesc()+" belly, making you swoon a little as you squat. You brace yourself, breathing steadily to maintain your composure against the powerful throbs, and gasp a little as the body pushes into your passage."); }
		else if (babySize < tallness/4) { textLP(" A tremendous pressure builds under your "+bellyDesc()+" belly. You nearly fall over just from the powerful sensations. Your breathing becomes heavy and frequent, doing all you can to remain focused and groaning as the body pushes into your passage."); 	}
		else if (babySize < tallness/2) { textLP(" Your eyes go wide as the pressure sinks to the bottom of your "+bellyDesc()+" belly like an anvil inside. You brace yourself from falling over, barely taking breaths as your face contorts in amazement and shock at the massive weight within. A low groan at the base of your throat grows into a howl as the body within pushes into your passage.");	}
		else if (babySize < tallness) { textLP(" You quake in place as a massive pressure throbs below your "+bellyDesc()+" belly. The extreme sensation of weight within leaves you in a breathless stupor. How did something so big grow inside of you?! The only breath you manage to take is the one you suck in to shout loudly in surprise as the giant body pushes out into your passage.");	}
		else { textLP(" You nearly black out from the impossible amount of pressure dropping like a boulder below your "+bellyDesc()+" belly. It's an amazingly powerful sensation that constantly threatens to knock you off balance. How such a thing managed to grow inside of you is astounding and this moment is one you'll never be able to forget. You merely squeak meekly as the massive body manage to push into your passage."); }

		if (birthWidth < vagLimit()/2) {
			textLP("\r\rAs the body enters your tunnel, you feel a sense of relief. It is so small in comparison that it easily passes through the plush walls. You need only let gravity take its course for the babe to find the exit.");
		}
		else if (birthWidth < vagLimit()) {
			textLP("\r\rAs the body enters your tunnel, you press down with your abdominal muscles. The babe presses against all walls of the plush pathway, but not so much to make you feel stretched. It's a rather calm and gentle experience, a gradual release before it arrives at the exit.");
		}
		else if (birthWidth < vagLimit()*1.25) {
			textLP("\r\rThe body enters your tunnel with a bit of effort. You can feel it push against all the plush walls of your inner pathway, stretching you just enough to make you want to push harder. With a couple grunts and moans, though, you're able to push the babe all the way to the exit, gasping as your hole spreads wide to let it pass.");
		}
		else if (birthWidth < vagLimit()*1.5) {
			textLP("\r\rThe body forces its way into your tunnel. You wince at first as you feel yourself stretching in all directions withing, the plush walls growing thin as they're stretched apart. You brace yourself and push harder with a low moan, focusing on getting the babe to the exit, your hole gaping before the body even arrives, and stretching enough beyond its original girth for the body to pass.");
			vagChange(1,0);
		}
		else if (birthWidth < vagLimit()*2) {
			textLP("\r\rA grunt escapes your lips as the body plunges into your tunnel. You go cross-eyed for a moment while it presses against all your plush inner walls with such girth that you're unsure where your other organs are being shoved to. Your "+legDesc(4)+" flex tightly, your "+bellyDesc()+" belly going tight, all your muscles assisting in some way to push the body through the tight path. You can sense the difference between which walls have been pulled taut and which have yet to experience the trauma, and also the walls that throb with looseness after the babe passes through to your exit. Your hole stretches exceptionally wide, making your "+legDesc(2)+" spread wider to accomodate, leaving you gasping for air while the body passes.");
			vagChange(3,0);
		}
		else{
			textLP("\r\rYour eyes go wide as the body jams itself into your much smaller tunnel. You're left breathless as the babe stretches your once plush walls into a thinly taut veil, expanding your inner girth beyond twice their limit. The body makes an obvious bulge through your torso, taking up far more room than your pathway was prepared for and triggering your hands to press down on it from the outside to help the child through. You can't even remember what your vagina normally felt like without a body inside, the sensation is so absurd. With all your might, your body flexes and tenses and contorts, your hole spreading your crotch beyond any usual expectations, to the point you could feel cool air rushing inside and lick the walls at the entrance just before the body plugs it back up on its way out.");
			vagChange(vagSize/2,0);
		}

		if (vulvaSize < babySize/2) { textLP(" The child gently touches down upon the ground beneath you, giving you a chance to take a calming breath as the last of it leaves your own body."); }
		else if (vulvaSize < babySize) { textLP(" Your "+vulvaDesc()+" lips gently caress the child as it leaves your body, stabalizing the descent as it gently touches down upon the ground beneath you and giving you a chance to take a calming breath."); }
		else { textLP(" The child is engulfed by your "+vulvaDesc()+" lips as it leaves your body, providing a very pillowy and gentle descent to the ground, allowing you to breathe in relief."); }

		if (babySize > tallness/2) { textLP(" However, the newborn is far too large to fit in the space beneath you and you have to step forward slightly to provide more room for it to fully exit."); }

		textLP("\r\rYou gather your wits and grab up the child from below. ");

		if (pregnancyType == 1) {
			textLP("With a round face and soft skin, it's easy to tell you've given birth to a human child. It opens its small mouth for the first time with a cry to the fresh air, taking it in deeply. You smile and cuddle it to your bosom for warmth.");
			humanChildren += birthNumber;
		}
		
		if (pregnancyType == 2) {
			textLP("With a horse-like muzzle and covered in a thin layer of fur, it's easy to tell you've given birth to an equan child. It opens its small mouth for the first time with a cry to the fresh air, taking it in deeply. You smile and cuddle it to your bosom for warmth.");
			equanChildren += birthNumber;
		}
	
		if (pregnancyType == 3) {
			textLP("A soft yip escapes from the lips of the fuzzy body, taking its first gasp of air. With canine ears and tail, it's quite obviously a lupan pup. And pups usually come in litters...");
			lupanChildren += birthNumber;
		}

		if (pregnancyType == 4) {
			textLP("A soft mewl escapes from the lips of the fuzzy body, taking its first gasp of air. With cat-like ears and tail, it's quite obviously a felin kitten. And kittens usually come in litters...");
			felinChildren += birthNumber;
		}

		if (pregnancyType == 5) {
			textLP("With a cow-like muzzle and rather large body, it seems as though you have given birth to a cow-like child. The relatively large nipples for a newborn and small udder, its obviously a she before even checking her genitals, and a long thin tail that ends with a bushy-haired tip. It opens its small mouth for the first time with a soft cry to the fresh air, taking it in deeply. You smile and cuddle it to your bosom for warmth.");
			cowChildren += birthNumber;
		}

		if (pregnancyType == 6) {
			textLP("It's just a white egg, a bit larger than your average unfertilized Lizan egg. And eggs come in clutches...");
			lizanEggs += birthNumber;
		}
		if (pregnancyType == 7) {
			textLP("Cute squeaks erupt from it as it takes its first breath, writhing around softly. You pull it up to your chest, cradling the small humanoid body that is covered in downy fur with long ears and a puffy tail. A bunny-like child, and they don't call it 'breeding like rabbits' for nothing...");
			bunnionChildren += birthNumber;
		}	
		if (pregnancyType == 8) {
			textLP("Cute squeaks erupt from it as it takes its first breaths, pawing at the ground confusedly. You pull it up to your chest, cradling the small humanoid body that is quite naked, not having grown any fur yet, with large circular ears and long thin tail. A mouse-like child, and mice are very... 'excessive' breeders...");
			miceChildren += birthNumber;
		}	
		if (pregnancyType == 9) {
			textLP("It's just a speckled egg much larger than your average unfertilized egg. And apparently it's not the only one in the clutch...");
			birdEggs += birthNumber;
		}
		if (pregnancyType == 10) {
			textLP("With a snubbed noss and long floppy ears and little curly tail, the humanoid baby looks a bit like a pig. It opens its small mouth for the first time with a squeal to the fresh air, taking it in deeply. You smile and cuddle it to your bosom for warmth.");
			pigChildren += birthNumber;
		}
		if (pregnancyType == 11) {
			textLP("Pulling the babe up to your chest and cradling it, the small fuzzy body is covered in fur with skunk-like ears and a big fluffy tail. Especially small, the skunk-like child is just the first, as skunks tend to have litters...");
			skunkChildren += birthNumber;
		}
		if (pregnancyType == 12) {
			textLP("It's just a soft-shelled translucent gooey egg much larger than your average bug egg, with the embryo visibly growing within. And it comes with company...");
			bugEggs += birthNumber;
		}


		if (pregnancyType == 100) { 
			textLP("Pulling the child up to your chest and cradling it, a low pitched whine escapes its muzzle. Covered in fur, eyes shut to the world, it's a small puppy. A wolf puppy, to be more accurate. A wolf puppy that is part of a litter...");	
			wolfPupChildren += birthNumber;
		}

		if (pregnancyType == 101) {
			textLP("Cradling it to your chest, the newborn lets out a surprised moo, trying to figure out what happened. A cow from head to hoof, the calf is already licking over the fabric of your "+clothesTop()+" in an attempt to latch onto a teat.");
			calfChildren += birthNumber;
		}

		if (pregnancyType == 307) { 
			textLP("As the newborn cries out, you reach down and bring it up to your "+boobDesc()+" chest. With a bull-like muzzle, small horns, and rather huge human-like body, it looks like you've given birth to the Minotaur's child.");
			minotaurChildren += birthNumber;
		}

		if (pregnancyType == 308) { 
			textLP("Pulling the babe up to your chest and cradling it, it's... just a ball of fuzz with the face of a human in the center and two large long ears poking out on either side. You're not exactly sure what it is, only the ears look familiar, like that girl from the cave...  Plus it's rather small, obviously just the first, as several more could easily fit within your belly...");
			freakyGirlChildren += birthNumber;
		}

		if (birthNumber > 1) { textLP("\r\rNot quite done, another contraction rumbles from your womb. Preparing yourself again, you go through it all again, this time at least knowing what to expect..."); }

		textLP("\r\rEventually, you prepare to bring "+birthNumber+" more to your personal day-care.");

	}

	if (pregnancyType == 1000) {
		outputMainText(" It doesn't take much effort as you feel a round object roll out of "+oneYour(2)+" "+vulvaDesc()+" cunt"+plural(2)+" with a wet plop. You attempt to look around your body to see what it is, but you don't have much time before another squeezes through your cervix, demanding your attention to get back to pushing.\r\rThere's not much of a rest in between contractions to see what is coming out exactly, but all you can tell is that there are a lot. At least a dozen; although it's impossible to keep track amidst all the birthing. It's not until the very last one exits that you're given a long enough reprieve to actually look...\r\rYou seem to be just in time to spot the clear, jelly-like egg unravel around something pink in the center. The pink thing tumbles out from the egg, spreading apart into several small tentacles. Eight, to be exact. And in the center of them is a cute little girl. Not quite a baby, just a really small child, no taller than half a foot. You can hear her giggle a little as she kisses your thighs, thanking you a little before wiggling her way away from you.\r\rYour "+legDesc(2)+" are too weak at the moment to chase after her, but you can see a trail of slime that all of the others had used. They seem to be headed in the same direction: back to the beach where you had obtained them.", false);
		itemAdd(217);
	}
	if (pregnancyType == 1001) {
		outputMainText(" However, it takes less effort than you thought possible as small hands manually spread you wider and then anchor themselves further and further out. Two tall, narrow ears pop out "+legWhere(1)+" your "+legDesc(2)+", your slime forming a web between them. In another moment, an entire body rolls out of you, wet and almost covered in white fur, around two feet tall.\r\rHer well-developed chest wobbles about as she turns to look at you with am absolutely naughty grin. Then she dashes off, hopping away with her large feet and one hand still jerking furiously between her legs...\r\rSeems like you had obtained a horny stowaway during your time as a giant, though you're unsure if it was an accident on your part or intentional on hers... Shortly after, however, you realize she had left something behind, fishing it out after having been caught between your "+vulvaDesc()+" pussy-lips. ", false);
		itemAdd(222);
	}
	if (pregnancyType == 1002) {
		outputMainText(" However, it takes less effort than you thought possible as small hands manually spread you wider and then anchor themselves further and further out. Two tall, narrow ears pop out "+legWhere(1)+" your "+legDesc(2)+", your slime forming a web between them. In another moment, an entire body rolls out of you, wet and almost covered in white fur, around two feet tall.\r\rHis hand still on his pointy prick, a strand of cum drooling from its tip back to your pussy, he turns to look at you with am absolutely naughty grin. Then he dashes off, hopping away with his large feet and one hand still jerking furiously between his legs...\r\rSeems like you had obtained a horny stowaway during your time as a giant, though you're unsure if it was an accident on your part or intentional on his... Shortly after, however, you realize he had left something behind, fishing it out after having been caught between your "+vulvaDesc()+" pussy-lips. ", false);
		doImpregnate(7);
		itemAdd(222);
	}

	if (pregnancyType == 1501) {
		textLP(" Thick bull-cum splorts out from between your legs, coating your "+legDesc(4)+" with the white sticky spunk. More continues to lewdly pour from your vagina, your belly deflating as the stuff forms a puddle beneath you. You shudder as the warm stuff flows out, feeling like you just ejaculated through your cunt...\r\rIt is like a great weight has been lifted from you, your womb twitching from holding all that stuff inside for several hours. Rather embarassing, you leave the puddle behind, quickly escaping while some leftover stuff dribbles out as you go...");
		doImpregnate(101);
		doImpregnate(101);
		doImpregnate(101);
		doImpregnate(101);
		doImpregnate(101);
		doLust(-Math.floor(sen/4), 2, 2);
	}

	if (pregnancyType == 1502) {
		textLP(" Your own thick cum splorts out from between your legs, coating your "+legDesc(4)+" with the white sticky spunk. More continues to lewdly pour from your vagina, your belly deflating as the stuff forms a puddle beneath you. You shudder as the warm stuff flows out, feeling like you just ejaculated through your cunt...\r\rIt is like a great weight has been lifted from you, your womb twitching from holding all that stuff inside for several hours. Rather embarassing, you leave the puddle behind, quickly escaping while some leftover stuff dribbles out as you go...");
		doImpregnate(dominant);
		doImpregnate(dominant);
		doImpregnate(dominant);
		doLust(-Math.floor(sen/4), 2, 2);
	}

	if (pregnancyType == 1504) { textLP(" White fluids explode from your fresh pussy, drenching your "+legDesc(4)+" and slightly flooding the area around you. It only takes a few moments for it to all escape, your belly quickly deflating. Dabbing your fresh new pussy and taking a taste, the white fluid was a bunch of milk...\r\rThe statue must have enjoyed it's practical joke on you."); }
}