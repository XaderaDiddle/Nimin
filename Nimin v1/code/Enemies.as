/*********************
 *Enemies for Battles*
 *********************/

 /*********************
 *Enemies for Battles*
 *********************/



function enemyName():String{
	var tempStr:String = "ENEMY NAME ERROR";
	if (enemyID == 101){ tempStr = "cock-snake"; }
	if (enemyID == 102){ tempStr = "desiccating dust devil"; }
	if (enemyID == 201){ tempStr = "lone male wolf"; }
	if (enemyID == 202){ tempStr = "gay wolf"; }
	if (enemyID == 301){ tempStr = "felin in heat"; }
	if (enemyID == 302){ tempStr = "drunken equan"; }
	if (enemyID == 303){ tempStr = "octopus girl"; }
	if (enemyID == 304){ tempStr = "little big bunny-man"; }
	if (enemyID == 305){ tempStr = "little big bunny-girl"; }
	if (enemyID == 306){ tempStr = "fierce naga"; }
	if (enemyID == 307){ tempStr = "Minotaur"; }
	if (enemyID == 308){ tempStr = "freaky little girl"; }
	if (enemyID == 309){ tempStr = "succubus"; }
	return tempStr;
}

function enemyBaseStats():void{
	//setEnemyStats(HP,str,ment,lib,sen,lust,gen,pref,coin,XP,item);
	if (enemyID == 101){ setEnemyStats(30,16,4,8,0,0,0,4,0,15,202);}
	if (enemyID == 102){ setEnemyStats(25,0,20,0,50,0,0,0,0,10,231);}
	if (enemyID == 201){ setEnemyStats(45,22,16,13,11,30,1,2,0,20,203);}
	if (enemyID == 202){ setEnemyStats(45,26,16,20,11,40,1,1,0,20,203);}
	if (enemyID == 301){ setEnemyStats(50,12,10,24,30,40,2,4,Math.floor(percent()/10),25,204);}
	if (enemyID == 302){ setEnemyStats(60,28,9,18,14,30,1,4,Math.floor(percent()/10),25,205);}
	if (enemyID == 303){ setEnemyStats(150,45,30,25,35,20,2,4,0,50,216);}
	if (enemyID == 304){ setEnemyStats(55,35,30,35,45,10,1,4,Math.floor(percent()/10),30,222);}
	if (enemyID == 305){ setEnemyStats(50,35,30,45,35,10,2,4,Math.floor(percent()/10),30,222);}
	if (enemyID == 306){ setEnemyStats(100,50,20,40,2,40,2,4,Math.floor(percent()/5),55,230);}
	if (enemyID == 307){ setEnemyStats(250,70,20,50,20,10,1,4,Math.floor(percent()/4 + 5),50,525);}
	if (enemyID == 308){ setEnemyStats(175,80,40,70,60,10,2,4,Math.floor(percent()/4 + 5),55,259);}
	if (enemyID == 309){ setEnemyStats(150,35,80,40,40,0,2,4,Math.floor(percent()/4 + 5),60,260);}
}

//Returns race of enemy for purposes of pregnancy from rape
function enemyBaby():int{
	var tempNum:int = 0;
	if (enemyID == 201) { tempNum = 100; }
	if (enemyID == 302) { tempNum = 2; }
	if (enemyID == 304) { tempNum = 7; }
	if (enemyID == 307) { tempNum = 307; }
	if (enemyID == 308) { tempNum = 308; }
	return tempNum;
}

function specialRapeWin():void{
	if (enemyID == 303){ textLP("\r\rThe octopus shudders as her belly quakes, the orgasm having wracked her a little too strongly. She huffs as she begins to crawl back towards the ocean. Just as she touches the water, she lets out a loud groan. Her tentacles quiver and part, exposing her vaginal-beak. The thing yawns wide as a spherical object pushes through.\r\rClear with a solid pink center, the egg falls from her dripping pussy-beak, and into the sand. Barely 4 inches in diameter, it doesn't come close to the size of her belly. She quickly catches her breath, her pink face red with embarrassment, before she pushes herself into the water, a tentacle grabbing the egg and pulling it with her before any more can escape...\r\rHowever, she seems to have left behind a big gob of pink goop."); }
	else if (enemyID == 304 || enemyID == 305) { textLP("\r\rAs the "+enemyName()+" collapses to the ground, wracked by orgasms and thoroughly distracted by the lewd fun, you find yourself beginning to grow. The effects of the bottle seems to wear off as you return to your normal height. Donning your outfit once again, however, it feels a little loose. It seems as though you're still missing a couple inches in height... On the other hand, however, inspecting the "+enemyName()+"'s body, you find something wedged in a rather lewd location.");	}
	else if (enemyID == 306) { textLP("\r\rThe naga collapses to the ground, tail still squirming in delighted orgasm and no longer wishing to battle. You take a moment to brush off some of the sparkly colorful dust from her wings for potential use later. Not quite sparkly of colorful when in your hands, you can at least ball it up into a nice suppository."); }
	
	
	else if (enemyID == 307) {
		textLP("\r\rHe succombs to the pleasant sensations and doesn't seem to want to stop. \"You win, take this, go do stuff.\"\r\rThe Minotaur slides a jug across the floor to you and then ignores you.");
		if (defeatedMinotaur == false) {
			defeatedMinotaur = true;
			currentDungeon = 1003;
		}
		else{ currentDungeon = 1003; }
	}
	else if (enemyID == 308) {
		textLP("\r\rA little too much for her, the girl can't seem to get back up. \"Y-You win... \" She proceeds to pull off Mr. Snuggles head, a feature the doll seems to naturally have, and she reaches down his neck to pull out an object which she tosses to you.\r\r\"Please go now, I want some time alone...\""); 
		if (defeatedFreakyGirl == false) {
			defeatedFreakyGirl = true;
			currentDungeon = 1006;
		}
		else { currentDungeon = 1006; }
	}
	else if (enemyID == 309) {
		textLP("\r\rHowever, her hips can stop twitching and she has difficulty zipping back up, nearly coming again just from trying. \"O-Okay... You win. I... I can't take any more than that... Here, you can have one of these for besting me. Should give you back some of what I took.\"\r\rShe detaches one of the glowing vials from her belt and tosses it to you.");
		if (defeatedSuccubus == false) {
			defeatedSuccubus = true;
			currentDungeon = 1010;
		}
		else { currentDungeon = 1009; }
	}
	else { textLP("\r\rThe "+enemyName()+" collapses to the ground, quivering body wracked by orgasms. Having broken its mental state into a puddle of sex, it no longer wishes to battle."); }
}

function specialKOWin():void{
	if (enemyID == 303) { textLP("\r\rSaddened with your rough treatment, you don't seem to want to play like she does. A bit hurt, she jumps back into the ocean, leaving nothing but a gob of pink goop behind."); }
	else if (enemyID == 304 || enemyID == 305) { textLP("\r\rAs the "+enemyName()+" passes out from all the pain, you find yourself beginning to grow. The effects of the bottle seems to wear off as you return to your normal height. Donning your outfit once again, however, it feels a little loose. It seems as though you're still missing a couple inches in height... On the other hand, however, inspecting the "+enemyName()+"'s body, you find something wedged in a rather lewd location.");	}
	else if (enemyID == 102) { textLP("\r\rFeeling itself about to dissipate from your attacks, the desiccating dust devil feebly spins away, leaving behind some of the sand it can no longer support.");}
	else if (enemyID == 306) { textLP("\r\rThe naga passes out from your attacks, allowing you take a moment to brush off some of the sparkly colorful dust from her wings for potential use later. Not quite sparkly of colorful when in your hands, you can at least ball it up into a nice suppository."); }
	
	else if (enemyID == 307) {
		textLP("\r\r\"No, stop! No more! It hurts!\" He slinks away from you, sullen. \"You win, take this, go do stuff.\"\r\rThe Minotaur slides a jug across the floor to you and then starts grumbling to himself in a corner.");
		if (defeatedMinotaur == false) {
			defeatedMinotaur = true;
			currentDungeon = 1002;
		}
		else{ 
			currentDungeon = 1002;
		}
	}
	else if (enemyID == 308) {
		textLP("\r\rShe growls and curses obsceneties while nursing her pain. \"GAH, NO MORE! TAKE YOUR DAMNED WINNINGS AND GO!\"\r\rShe proceeds to rip off Mr. Snuggles head, a feature the doll seems to naturally have, and she reaches down his neck to pull out an object which she throws at you.");
		if (defeatedFreakyGirl == false) {
			defeatedFreakyGirl = true;
			currentDungeon = 1004;
		}
		else { currentDungeon = 1004; }
	}
	else if (enemyID == 309) {
		textLP("\r\r\"Ow, ow, ow, ow. Okay, okay, you win! Here, you can have one of these for besting me. Should give you back some of what I took.\"\r\rShe detaches one of the glowing vials from her belt and tosses it to you.");
		if (defeatedSuccubus == false) {
			defeatedSuccubus = true;
			currentDungeon = 1010;
		}
		else { currentDungeon = 1008; }
	}

	else { textLP("\r\rYou have made the "+enemyName()+" pass out from all the pain."); }
}

function specialKOLose():void{
	if (currentState == 2){
		if (enemyID == 303)	{ textLP("\r\rJust as you're about to pass out, you see the octopus girl lean over your body. She wears a disappointed expression, finding you were't strong enough for what she was looking for. Shrugging, she jumps back into the ocean, leaving you to yourself.");	}
		else if (enemyID == 304 || enemyID == 305) { textLP("\r\rJust as you're about to pass out, you feel yourself beginning to grow. The effects of the bottle seems to wear off as you return to your normal height. Though not quite all the way...");	}
		else if (enemyID == 309) { textLP("\r\rThe succubus seems a bit surprised as you pass out. \"Oops... I thought you could take more than that. Sorry~\"");	}
	}
}

//Provides a detailed description of the rape if you are successful
function doRape():void{
	if (enemyID == 1){
		if (gender == 1){
			textL("You stick your cock in the test enemy's butt and cum.");
		}
		if (gender == 2){
			textL("You sit on the test enemy's cock until you cum.");
		}
		if (gender == 3){
			textL("You stuff your cock in the test enemy's butt, then sit on its cock and cum.");
		}
	}
	
	//Lone Wolf
	if (enemyID == 201){
		textL("You easily roll the wolf onto his back. Pulling "+pullUD(2)+" your "+clothesBottom()+", you squat your "+vulvaDesc()+" cunt over his sheath, wedging it between your folds while you grind against it. Once his bright red prick twitches as it stretches from its sheath, reaching long and hard while dribbling with pre, you slip it into "+oneYour(2)+" hungry hole"+plural(2)+". You bounce on top of his belly,");
		if (moistCalc(2) > 7){ textLP(" your honey splashing about everywhere,");	}
		textLP(" his hard doggy dick scraping against your inner walls. The lone wolf howls and drools, his tongue lolling out the side of his muzzle, as hot spurts of fresh cum gush within you. You shudder at the raw sensation, squeezing his coarse fur between your thighs. Then, you shiver as you feel the base of his cock swell, knotting within you. You collapse beside him, your pussy throbbing with orgasm, as you gasp and moan with his howls...");
		textLP("\r\r\rEventually, his knot deflates. You rub your ");
		if (vagLimit() < 8){
			textLP("sore little pussy, a bit stretched from the size of the thing,");
			vagChange(1,0);
		}
		else{ textLP("satiated cunt,"); }
		textLP(" the cock sliding out with cum dripping down "+legWhere(1)+" your "+legDesc(2)+".");
		doImpregnate(enemyBaby()); 
		doLust(-Math.floor(sen/2), 2, 2);
	}

	//Gay Wolf
	if (enemyID == 202){
		textL("You easily roll the wolf onto his back. Pulling "+pullUD(2)+" your "+clothesBottom()+", you squat your "+buttDesc()+" ass over the pointy prick. You grab the hard, meaty rod and gently squeeze out some of the pre, slipping it about between your cheeks to make things nice and slick. Slowly sitting down, you wince as the narrow tip kisses your tight hole and moan as it slides in, easily stretching your ass around its curvy girth.");
		if (showBalls == true) { textLP(" Your "+ballDesc()+" testicles eventually come to a rest upon the wolf's belly, with your own "+cockDesc()+" cock"+plural(1)+" bobbing above."); }
		else { textLP(" Your own "+cockDesc()+" cock"+plural(1)+" eventually come to a rest upon the wolf's belly, slightly tickled by his course fur."); }
		textLP("\r\rAfter a couple breaths from taking in the warm intruder, you begin to bounce your hips upon the animal. It howls back up at you in pleasure, your own gasps matching as your erection"+plural(1)+" drum"+plural(3)+" the fur. The wolf's tongue lolls out of the side of its mouth, allowing you to do all the work as its hind legs twitch in the air and its tail swishes over the ground. It seems to be quite happy with the result of this ordeal, so much so that it begins to spurt into your rectum rather quickly, coating your insides with hot sticky spunk.\r\rHowever, you're not left out of the fun as you feel something swell within the entrance to your ass. The wolf's knot expanding, the prick grinds against your inner walls more and more as it sprays about. You can't last any longer and explode above the wolf, drenching its fur in strand after strand of fresh steamy semen. More soon begins to spew back out your ass as the pent-up wolf overflows your cavity, forming sticky webs about the cheeks of your rump.\r\rFur is eventually completely matted, dripping with wads of white, while your own "+skinDesc()+" is sufficiently gunked up around your bottom and thighs. The wolf pants below you, tired and elated. With an attempt to stand, you lift the hind legs with you, still tied to your backside. But, with all the mess that has been made, the cock slips out with a wet pop and sends the animal back into the puddle below with a splash.");
		doLust(-Math.floor(sen/2), 2, 5);
	}

	if (enemyID == 301){
		var chance:int = percent();
		if (gender == 1 || (percent() <= 50 && gender == 3)){
			if (chance <= 100){
				textL("The felin woman is easily bent forward by your efforts. Her loincloth droops out of the way, giving you a perfect view of the swollen, supple lips that pucker around the crotch of her bikini bottom. Pulling "+pullUD(2)+" your "+clothesBottom()+", you slide "+oneYour(1)+" "+cockDesc()+" prick"+plural(1)+" out and through the cheeks of her ample rump, making her quiver with anticipation. Not wanting to leave her waiting for too long, the head of your cock pushes into the bikini bottom, pushing through to kiss the waiting hole within.");
				if (cockSize*cockSizeMod > eVagLimit(40)){ textLP("\r\rHowever, she cries out in pain and disappointment, your "+cockDesc()+" cock far to big to fit inside without tearing her apart. So, instead, you slip it between her legs, rubbing it across her stiff clit and through her loincloth and over her belly as you "); }
				if (cockSize*cockSizeMod <= eVagLimit(40) && cockSize*cockSizeMod > eVagLimit(24)){ textLP("\r\rShe cries out in pain and pleasure as your "+cockDesc()+" cock stretches her thirsting cunt wide, pushing her bikini in until it tears from your path. She pushes her rump back towards you, trying her best to devour the hot rod all the way to its hilt as you "); }
				if (cockSize*cockSizeMod <= eVagLimit(24)){ textLP("\r\rShe cries out in ecstacy as her hungry cunt devours your "+cockDesc()+" cock, along with her own bikini until it tears from your path. She takes it all the way in to your hilt as you "); }
				textLP("lean forward and hug her from behind, your hands groping about her many breasts. You pump hard, again and again, until the unavoidable pressure begins to build. Soon, you blow your load ");
				if (cockSize*cockSizeMod > eVagLimit(40)) { textLP("across her chest while she tries to lap up the spray with her tongue. You pull back, leaving her a mess."); }
				if (cockSize*cockSizeMod <= eVagLimit(40)) {textLP("into her womb, making her let out a long and joyful mewl. Before she can become too content, you pull out of her with a slurp, your cum still dribbling from her used sex."); }
				cumAmount();
			}
		}
		else if (gender == 2 || gender == 3){
			textL("You knock the felin woman backwards onto her ample ass, her legs spreading wide. She cries out as you duck beneath her loincloth and lick her stiff clit through her bikini. Juices flood within your mouth as she instantly reacts, her swollen cunt-lips gnawing at the crotch of the messy bottom. You pull it aside, diving in and getting a good mouthful of her supple flavor. You devour her folds until she twitches uncontrollably, so desparate to come. But, before she does, you consider your own needs and draw your head out before repaclacing it with your own crotch.");
			textLP("\r\rYou grind against her stiff clit as it pokes through her loin cloth, your own "+clitDesc()+" button"+plural(2)+" throbbing through your "+clothesBottom()+".");
			if (cockTotal > 0 && cumAmount() > 0) { textLP(" You pull your "+cockDesc()+" cock"+plural(1)+", letting the engorged length"+plural(1)+" bounce against her belly and hump through her many breasts."); } 
			textLP(" You grind, cunt to cunt"+plural(2)+", until you both let out a yowl as you climax together.\r\rYou're quick to gather your wits and clean yourself up, standing before her pussy even stops gushing with honey.");
		}
		doLust(-Math.floor(sen/2), 2, 1);
	}
	if (enemyID == 302){
		if(gender == 2 || (percent() <= 50 && gender == 3)) { 
			textL("The drunken equan falls to his ass, his huge cock bouncing out of his loose pants. It throbs in the air, a large gob of pre spilling out. With a smirk, you step over him, pulling "+pullUD(2)+" your "+clothesBottom()+" and showing him your own hungry flesh. You "+legVerb(1)+" your "+legDesc(2)+" over his twitchy rod, kissing the flat head of the horsy member with your "+vulvaDesc()+" lips.");
			if (vagLimit() < 32){ textLP("\r\rHis man-meat is far too large for your cunt"+plural(2)+" however, so you do the next best thing and sit down in his lap. Grinding your hips forward, your "+clitDesc()+" clit"+plural(2)+" hump"+plural(4)+" into his length. The long prick squeezes between your "+boobDesc()+" tits as you press against him, making him tense even more."); }
			else { textLP("\r\rYou plunge down onto his giant man-meat with "+oneYour(2)+" "+vulvaDesc()+" cunt"+plural(2)+". It fills you up so much you grin with a drool. You hug him close, your "+boobDesc()+" tits pressing against his firm chest, making the thing inside you even harder."); }
			textLP(" Your hips jerk up and down again and again as you rub along his length. Tingling sparks between the two of you as you feel his softball-sized testicles tighten up beneath your "+buttDesc()+" butt. Within seconds, the two of you echo in ecstacy, his whinnying quickly over-taking your moans,");
			if (vagLimit() < 32){ 
				textLP(" his cock erupting like a volcano between the two of you");
				if (cockTotal > 0 && cumAmount() > 0){ textLP(", with yours joining in the volley,"); }
				textLP(" and the hot spunk spills back down all over your bodies.\r\rYou don't give him much time to recover as you pull away, leaving a bit of after-cum to gush out over his belly."); }
			else { 
				textLP(" his cock erupting within you like a powerful volcano, the molten spunk making your belly swell slightly before spilling back out onto the ground"); 
				if (cockTotal > 0 && cumAmount() > 0){ textLP(", while yours sprays across his chest and face"); }
				textLP(".\r\rYou don't give him much time to recover as you pull him out, a bit of after-cum gushing across your clit"+plural(2)+".");
				doImpregnate(enemyBaby());
			}
		}
		else if(gender == 1 || gender == 3){
			textL("The drunken equan falls to his ass, his huge cock bouncing out of his loose pants. It throbs in the air, a large gob of pre spilling out. With a smirk, you step over him, pulling "+pullUD(2)+" your "+clothesBottom()+" and brandishing "+oneYour(1)+" own "+cockDesc()+" cock"+plural(1)+". You roll him over onto all fours, his pants quickly slipping from his tight rump as you give it a slap.");
			textLP("\r\rHe whinnies loudly as you plunge your "+cockDesc()+" erection into his backside. Again and again, you pump away at his hole, until he lets out a loud whinny. His eyes going wide, his giant rod explodes across the ground until its massive length is swimming in a puddle of his own stuff,");
			if (cumAmount() > 0){ textLP(" while yours erupts into his ass, churning his insides,"); }
			textLP(" until you've both had a heady orgasm. You pull out quickly, fluids still dripping from your cock, while he heaves upon the ground.");
		}
		doLust(-Math.floor(sen/2), 2, 1, 5);
	}

	//Octopus Girl
	if (enemyID == 303){
		if (gender == 1 || gender == 3){
			textL("Able to wrestle through the octopus girl's eight powerful tentacles and knock her onto her squishy bottom, you pin her onto her back. Her tentacles spread wide before you, you're able to see the underside of her fleshy webbing. Her hands cover her face in a futile attempt to hide her blush while you inspect her. In the center of all the tentacles, right beneath her hips, gasps a gaping hole.\r\rA sort of 'beak', like octopuses normally have, encompasses the hole. It looks tougher than the surrounding flesh, able to maintain its shape, but as you stick your finger into the maw and it bites down upon you, you realize it's still quite soft, merely molding around your finger. Beyond the beak itself is a deep hallway of supple folds that ripple as it tries to swallow your finger, and supremely lubricated as your finger comes out with a long strand of translucent slime trailing behind it. With your own smirk, you pull "+pullUD(2)+" your "+clothesBottom()+" and let your "+cockDesc()+" erection"+plural(2)+" wobble out. Aligning yourself, you thrust ");
			if (cockTotal == 1)	{ textLP("it");	}
			else { textLP("all of them"); }
			textLP(" into her juicy hole.");
			if (cockTotal*cockSize*cockSizeMod > 40) { textLP("\r\rSurprisingly, she's able to take in all of your length"+plural(1)+", although you hear a dulcet, yet quite high pitched, cry as her face escapes her hands and lurches forward with her mouth wide in a strange combination of pain and confusion. She settles down quickly, however, and idly grips at the sand beneath her and her tentacles wrap around you to hang on for dear life. Her body literally stretches to form around your "+cockDesc()+" cock"+plural(1)+", with lubrication spitting out from her beak, her skin becoming more translucent the more taut she becomes, until you can make out your throbbing erection"+plural(1)+" within. Fortunately, her belly isn't affected by the stretching, her pregnancy perfectly fine."); }
			else { textLP("\r\rShe seems to be able to take your length"+plural(1)+" easily, her passage large and excessively lubricated. Her hands leave her face as she grins wryly, not having expected you to take her on as such. Her tentacles wrap around your body, pulling you in deeper as she gropes her large belly."); }
			textLP("\r\rThe hungry maw seems to constantly swallow your dick"+plural(1)+" as you plunge into her again and again. The slick folds do a number on you, bringing you to orgasm within a minute. You gush inside of her,");
			if (cumAmount() > 2000) { textLP(" your massive amount of cum causing her to swell further, her soft skin growing lighter as it stretches,"); }
			textLP(" until you're fully spent.\r\rJust as you're about to pull out, you see her squirm, her belly jiggling and growing slightly larger, deforming slightly as the offspring inside her shifts.");
		}
		else if (gender == 2){
			textL("Able to wrestle through the octopus girl's eight powerful tentacles and knock her onto her squishy bottom, pinning her onto her back. Her tentacles spread wide before you, you're able to see the underside of her fleshy webbing. Her hands cover her face in a futile attempt to hide her blush while you inspect her. In the center of all the tentacles, right beneath her hips, gasps a gaping hole.\r\rA sort of 'beak', like octopuses normally have, encompasses it. The beak looks tougher than the surrounding flesh, able to maintain its shape, but as you stick your finger into the maw and it bites down upon you, you realize it's still quite soft, merely molding around your finger. Beyond the beak itself is a deep hallway of supple folds that ripple as it tries to swallow your finger, and supremely lubricated as your finger comes out with a long strand of translucent slime trailing behind it. With your own smirk, you pull "+pullUD(2)+" your "+clothesBottom()+" and begin to grind your "+vulvaDesc()+" cunt"+plural(2)+" against it.\r\rShe lets out a warbling moan. Her hands leave her face, showing the blush and lustful expression she now wears. The beak nips at your "+clitDesc()+" clit"+plural(2)+" whenever the stiff thing"+plural(2)+" rub against it, making you buck in turn. Her tentacles quickly begin to grope around your body, making you slick as the move towards your crotch.");
			if (vagTotal > 1 && vagTotal < 9) { textLP("\r\rOne tentacle for each of your pussies, they softly dive in, as far as they can go before they feel you begin to stretch. They slip in and out as you hump the girl, quickly driving you towards climax.");	}
			else if (vagTotal == 1)	{ textLP("\r\rA tentacle softly slips into your pussy, diving in as far as it can go before it feels you begin to stretch. It slips in and out as you hump the girl, quickly driving you towards climax.");	}
			else if (vagTotal > 8) { textLP("\r\rTaking turns at each of your pussies, the tentacles softly dive in, as far as they can go before they feel you begin to stretch. They slip in and out as you hump the girl, quickly driving you towards climax.");	}
			textLP(" You can soon feel her shudder "+legWhere(1)+" your "+legDesc(2)+", her large belly jiggling as milk drizzles past the feeding starfish and down her large breasts. The tentacles leave your slit"+plural(2)+" as you finish with your own orgasm...");
		}
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Little Big Bunny-Man
	if (enemyID == 304)	{
		if (vagTotal > 0 && vagLimit() > 80){
			textL("Somehow managing to push the little big bunny-man onto his tail, you pull "+pullUD(2)+" your "+clothesBottom()+", climb up through his thighs, and plant your "+legDesc(10)+" on his relatively large scrotum. His conical cock stands high before you, red and wet with arousal. With it's sloped shape, you easily manage to climb up it as well, "+legVerb(5)+" it at the top with your "+legDesc(2)+". The narrow tip easily fits between your thighs and slips into "+oneYour(2)+" "+vulvaDesc()+" vagina"+plural(4)+" as you descend upon it.\r\rHis eyes roll up into his head as you slip down his length, the prick stretching your hole open wider and wider as it slides in.");
			if (tallness < 180) { textLP(" Your belly begins to stretch as the tip burrows through your inner flesh, the giant cock filling you tremendously. By the time your "+buttDesc()+" rump lands upon his balls, your "+legDesc(2)+" wedge"+legPlural(1)+" into his sheath, the "+skinDesc()+" of your belly reaches past your head. You stand again to fuck his massive prick, though... you quickly find it's difficult to manage such a thing with his body so much larger that yours.\r\rTo your surprise, you find a white hand wrapping around your body, hugging you against the cock. Before you know it, you're being lifted into the air, slipping up the shaft, only to come back down once more. Difficult to tell who's raping who at the point, but he overtaken bunny-man masturbates with you as his toy. Fast and faster he pumps you up and down his length, quickly bringing you both to orgasm. His seed gushes into your belly, causing it to visibly ripple and distend from outside. It splashes back down the cock and spills around his sheath, quickly soaking through the fur of his balls. The warmth sends you to climax as well, slowly slipping off his shlong as it receeds into his sheath..."); }
			else { textLP(" Taking in his entire length, you bounce again and again, letting it penetrate you thoroughly. His long foot beats against the ground in ecstasy while the whiskers around his nose twitch. It doesn't take long for him to freeze, his hips bucking into you, as your cunt fills with his seed, spilling back down around his sheath and soaking into the fur on his balls."); }
			doImpregnate(enemyBaby());
		}
		else {
			textL("Rather intimidated by his size, you still manage to pull his head down until he's on all fours. You pull "+pullUD(2)+" your "+clothesBottom()+" and shove his face into your naked groin. He quickly notices your scent and lustfully opens his mouth. You debate whether this is actually rape or not as he seems eager to lap at your");
			if (gender == 1) { textLP(" "+cockDesc()+" cock"+plural(1)+"");	}
			if (gender == 2) { textLP(" "+vulvaDesc()+" cunt"+plural(2)+"");	}
			if (gender == 3) { textLP(" "+cockDesc()+" cock"+plural(1)+" and "+vulvaDesc()+" cunt"+plural(2)+""); }
			textLP(", expertly sucking and nibbling at your genitals. One of his hands reaches to his underside and begins to audibly slurp across his growing erection. He quickly drives you to orgasm and as his mouth fills with your fluids, you soon find his spraying about your "+legDesc(10)+" as well.\r\rYou both soon back away from each other, spent from the connection.");
		}
		doLust(-Math.floor(sen/2), 2,1, 2);
	}

	//Little Big Bunny-Girl
	if (enemyID == 305)	{
		if (cockSize*cockSizeMod > 140 || cockTotal*cockSize*cockSizeMod > 280) {
			textL("Somehow managing to push the little big bunny-girl onto her tail, you pull "+pullUD(2)+" your "+clothesBottom()+" and step in between her thighs. Her pussy is already aroused and gaping, drooling with her feminine lubrication and forming webs from her large clit down through her inner labia. Hefting up your "+cockDesc()+" erection"+plural(1)+", you aim for the sweet spot, spreading her even wider as you push yourself in, feeling her folds hug around you.");
			if (tallness < 180) { 
				textLP("\r\rHowever, you quickly realize it's going to be quite... difficult to plow through someone so much larger than you... And much to your surprise, you find a white hand beginning to hug around you, lifting you up and pulling you back from her cunt. Then you find yourself being rammed back in, the clear fluids splashing about your "+skinDesc()+". Slightly confused as to who is raping who at this point, the bunny-girl proceeds to use you like a living dildo, ramming your cock"+plural(1)+" in and out of her folds again and again.");
				if (knot == true) { textLP(" Your swelling knot"+plural(1)+" pop in and out of her relatively tight cun again and again, causing her to let out an ecstatic shriek as she's stretched obscenely."); }
				textLP("\r\rFaster and faster she thrusts you through until you begin to feel her pussy squeeze about your length"+plural(1)+", pulsating rapidly with her large orgasm. You find yourself coming in second as your "+cockDesc()+" shlong"+plural(1)+" burst"+plural(3)+" inside of her");
				if (cumAmount() > 2000) { textLP(", the stuff spraying back out at you as it overflows her womb"); }
				textLP(".\r\rEventually she releases you back to the ground, allowing you to stumble backwards, her thighs heaving on either side with her breath.");
			}
			else { 
				textLP(" Your hips quickly begin to thrust, holding her body down as you plow her again and again. She squirms erotically beneath you, her eyes rolled up into her head and her breasts jiggling back and forth in happiness. Soon her button nose and whiskers begin to twitch, followed by a shuddering from the rest of her body, as her pussy clamps down around your shaft"+plural(1)+" in orgasm. You grunt as well as your cock"+plural(1)+" fire"+plural(3)+" back, filling her womb with your seed");
				if (cumAmount() > 2000) { textLP(" until it overflows and spews back out across your thighs");	}
				textLP(".\r\rYou pause for a moment, heaving over her, until you begin to pull your softening erection"+plural(1)+" back out");
				if (knot == true) { textLP(", your knot"+plural(1)+" making a lewd popping sound as it ejects from her stretched pussy, eliciting one last yelp of ecstasy"); }
				textLP(".");
			}
		}
		else {
			textL("Rather intimidated by her size, you still manage to pull her head down until she's on all fours. You pull "+pullUD(2)+" your "+clothesBottom()+" and shove her face into your naked groin. She quickly notices your scent and lustfully opens her mouth. You debate whether this is actually rape or not as she seems to eager lap at your");
			if (gender == 1) { textLP(" "+cockDesc()+" cock"+plural(1)+"");	}
			if (gender == 2) { textLP(" "+vulvaDesc()+" cunt"+plural(2)+"");	}
			if (gender == 3) { textLP(" "+cockDesc()+" cock"+plural(1)+" and "+vulvaDesc()+" cunt"+plural(2)+""); }
			textLP(", expertly sucking and nibbling at your genitals. Her hands reach to her underside and begins to audibly slurp in her crotch and rub at her bosom. She quickly drives you to orgasm and as her mouth fills with your fluids, you soon find a puddle of clear slime oozing its way about your "+legDesc(10)+" as well.\r\rYou both soon back away from each other, spent from the connection.");
			if (cockTotal > 0) { cumAmount(); }
		}
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Fierce Naga
	if (enemyID == 306)	{
		textL("Conceding to your assault rather willingly, she actually bends back over her tail and pulls up her sash, exposing herself to you. A supple slit amidst her belly-scales, the green of her scales part with a delicious and moist pink tunnel. Her fingers even roam down to part herself for you, waiting for you to please yourself with her.");
		if (cockTotal > 0) {
			textLP("\r\rYou prepare "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+" as you remove it from your "+clothesBottom()+". You slide it over the scales of her tail as you approach her hips, making her shiver expectantly.");
			if (cockSize*cockSizeMod > eVagLimit(80)) {	textLP(" Your tip soon bumps into the valley between the mounds of her bulbous vulva and fused thighs, pressing against her sex. She gasps as it touches the sensitive pink flesh and her eyes go wide as you begin to press in. Your member far greater than her large yet tight entrance, her hips seem to unhinge, her lower maw stretching wider and wider to take in your full girth. The belly-scales distend with the thick rod driving deeper within, filling her so much that she wraps the tip of her tail around her chest and over her face, squeezing and biting it in ecstasy."); }
			else { textLP(" Your tip soon bumps into the valley between the mounds of her bulbous vulva and fused thighs, pressing against her sex. She gasps as it touches the sensitive pink flesh and croons as it pushes inside."); }
			textLP("\r\rThe muscular flesh gnaws around your cock once you're fully devoured, making you collapse into the soft-scaled body. Your face presses into her chest, sneaking beneath the silken shawl and nibbling at the hills therein, making her writhe beneath you. Your hips quickly find a rhythm with hers, though her inner walls seem to be doing most of the work. Twisting and tenderly gnashing upon the meat you've fed her, the velvety flesh makes you both moan and shudder. For a creature that seemed so vicious before, she has become quite the docile and sexually charged. It doesn't take long before you're spraying your seed inside and she's clawing at her own scales in orgasm.\r\rAfter blowing your load, it takes another several minutes before her muscles release your softening member, allowing you to slip out and stumble back.");
			cumAmount();
		}
		else {
			textLP("\r\rYou pull "+pullUD(2)+" your own "+clothesBottom()+" to expose yourself similarly. Climbing up her tail and straddling the humanoid half of her serpentine body, you press your "+vulvaDesc()+" lips against her own bulbous vulva, the slits kissing each other as they touch and making the naga let out a gasp. Despite your somewhat unstable position on top of her, she adjusts to keep you balanced, ensuring your continous mashing of feminine flesh.\r\rYou grind into her, grabbing at her scales and groping beneath the silken shawl for her breasts. So enjoying your ministrations upon her, that you don't see the tip of her tail sneaking up behind you. It's not until you pleasantly find the thick thing pressing itself into "+oneYour(2)+" hole"+plural(2)+" that you notice her own attack, though you can hardly object. You collapse upon her large body and embrace her, continuing your grinding into her sex as the agile tail swirls about your insides. For a creature that seemed so vicious before, she has become quite the docile and sexually charged. It doesn't take long before you're bucking your hips and she's bucking back in orgasm.\r\rAfter an extended period of moans from the two of you, it takes a few more before you can gather your strength and slide off, stumbling back.");
		}
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Minotaur
	if (enemyID == 307)	{
		textL("You pull "+pullUD(2)+" your "+clothesBottom()+" and push the Minotaur down onto his ");
		if (vagTotal > 0) {
			textLP(" ass and his hefty cock bounces out from under his loin cloth, already half erect.");
			if (vagLimit() < 72) {
				textLP(" Way too big for you, the most you can do is sit your "+buttDesc()+" ass down on his head-sized testicles and hug yourself around his rod, grinding against it. He doesn't seem to mind though and rather eagerly snorts in excitement, taking your efforts as a rather physical lap dance. He grunts and groans as you grind your "+clitDesc()+" clit"+plural(2)+" against his shaft, especially when you begin to lick and knead his thick head.\r\rRather abruptly, steam blows out his bovine nostrils as spunk blows out his cock. The stuff sprays hard, making you lean back to dodge direct contact with the geyser. You focus more on getting yourself off as you're showered with semen from above, until your hips are twitching and bucking against his meat.\r\rHe was probably more pleasured by the performance than you were, but you manage.");
			}
			else {
				textLP(" You climb up his bulky body and he doesn't make any effort to stop you. He even flops his cock around so you can more easily squat over it, pushing the thick head into "+oneYour(2)+" "+vulvaDesc()+" cunt"+plural(2)+". The bull-man seems rather excited, snorting eagerly as you slide down his erection while it causes your belly to bulge more and more. Your "+buttDesc()+" ass plops down into his lap, onto his head-sized balls and he leans back to let you do all the work.\r\rIt's a bit difficult going up and down the whole length, but you crawl over his chest and manage to do well enough to make his cock throb throughout your passage. He's a little too eager, though, and quickly begins to start spraying stupid amounts of seed inside of you...\r\rYou continue to fuck him as you fill with his spunk, with plenty more squirting out with each pump, and eventually you manage to come yourself. Not exactly the most gratifying rape, but it works well enough...");
				doImpregnate(enemyBaby());
			}
		}
		else {
			textLP("face and flip up his loin cloth to expose his large ass. The thing looks rather used already, though, and it doesn't take much to push in "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+". The bull-man even snorts across the floor like he was enjoying it and his large meaty cock rises to attention below him. Nevertheless, you continue to pump in and out grand rump, slapping the hard muscular buttocks");
			if (showBalls == true) { textLP(" while your "+ballDesc()+" balls slap against his head-sized testicles");	}
			textLP(" and you're both quick to start spraying your loads. Yours gurgles down deeper into his body while his nearly knocks himself out with the blast, plenty of semen volleying into his face and pooling below him.\r\rOnce you're satisfied, you have this nagging feeling like he might have enjoyed it more. Whatever the case may be, you got what you wanted.");
			cumAmount();
		}
		doLust(-Math.floor(sen/2), 2, 2, 5);
	}

	//Freaky Little Girl
	if (enemyID == 308)	{
		textL("The freaky little girl melts into your embrace rather readily, suddenly becoming more frail and acting more like she appears, holding Mr. Snuggles tight across her chest. \"Be gentle, please?\"\r\rCatching you slightly off guard, you comply and proceed a little less roughly. You take her from behind, sitting down to the ground and pulling her into your lap with you. You kiss her cheek and nibble on her long elven ears, making her squirm in your arms as your hand reaches down beneath her skirt. Her panties are rather moist, slick with her honey, and the tender region twitches as you start to massage it. However, you soon feel something bumping against your palm.\r\rPulling her undergarments down further, you can see her pink flesh protruding out past her crotch slightly. A clitoris as big as her thumb pokes out from her folds, stiff and twitching with arousal. Not quite as little as the rest of her...\r\rSeeing as though she's rather aroused, you take the liberty of pushing things a step further. ");
		if ((cockTotal > 0 && cockSize*cockSizeMod < eVagLimit(24)) || (vagTotal > 0 && clitSize < 60))	{
			textLP("Pulling "+pullUD(2)+" your "+clothesBottom()+", you angle ");
			if (cockTotal > 0 && cockSize*cockSizeMod < eVagLimit(24))	{ textLP(""+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+"");	}
			else { textLP(""+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+""); }
			textLP(" towards her tight dainty folds, sinking it in as you push her down upon it as she lets out a slightly pained yet quite erotic squeal. By the time you're completely hilted inside of her, the protruding clit in front bucks up and down, jerking just from being penetrated. Such sensitivity only makes you want to thrill her more, making up for the pain she's given to you. You lift her slightly and slam her back down, thrusting with your hips in rhythm.\r\r\"Eeek!\" She cries out from the rough treatment, but the immediate cooing thereafter and the warmth you feel coming from her only shows that she enjoys it more. So the more you give to her...\r\rPounding again and again, you plow the small body in your lap, making her bounce up and down with your thrusting alone. The pigtails flail about, her mouth yawning wide and Mr. Snuggles riding on top of her tiny erection. She practically burns in your embrace, wildly reaching moaning and gasping orgasms while your own climax goes off");
			if (cockTotal > 0 && cockSize*cockSizeMod < eVagLimit(24))	{ 
				textLP(", your spunk spraying into her womb");	
				cumAmount();
			}
			textLP(".\r\rAfter a few minutes of tight connection, the girl crawls out of your lap, her naked ass shaking as she pulls you out before pulling her panties back up...");
		}
		else if (cockTotal > 0) {
			textLP("Pulling "+pullUD(2)+" your "+clothesBottom()+", you realize your "+cockDesc()+" cock"+plural(1)+" "+plural(13)+" far too large for the small girl. Not wanting to tear her apart, despite the wounds she's given, you instead slip your stiff thing"+plural(1)+" up through her lap and over her own twitching erection, sinking between the doll and her chest. She accepts this predicament and proceeds to hug your sensitive flesh along with Mr. Snuggles while she begins to grind against your cock"+plural(1)+". Her large button drags across you while her hands play with your shaft"+plural(1)+", rubbing you and trying to pleasure you as well.\r\rHer efforts succeed on both ends, sending the two of you into gasping orgasms. Your cum sprays over her chest and face, drenching the doll and her outfit. She shivers and shakes, her hips pressing down against yours as she tries to anchor the quaking clitoris.");
			textLP(".\r\rAfter a few minutes of tight connection, the girl crawls out of your lap, her naked ass shaking as she pulls her panties back up...");
			cumAmount();
		}
		else {
			textLP("Turning the girl around, you land her back upon the floor. She looks up at you over the head of the doll, fearful of your menace as you press your "+hipDesc()+" hips down against her. Your "+vulvaDesc()+" nether-lips engulf her standing erection. Not enough to actually penetrate, you merely use the stiff button as a grinding post, slipping it through your labia again and again, banging it against your own "+clitDesc()+" clit"+plural(2)+".\r\rThe sensation sends the girl into a tizzy, her rump wiggling against the floor as her hips squirm from your succulent flesh. She bites down on one of Mr. Snuggle's horn, muffling her moans as she approaches orgasm. You make up for her with your own cries of climax, shivering and spilling your honey across her dainty sex while her own pools beneath her.\r\rA few more moments of the blissful high passes before the girl inches her way out from under you, spreading her legs to air out her heated crotch while she pulls up her panties, the undergarments becoming wet with her honey and outlining her sex, especially the button that continues to poke out...");
		}
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Succubus
	if (enemyID == 309)	{
		textL("\"Mmm, so you want to take the lead, huh?\" The succubus concedes to your advances, bending over and putting her hands up against the wall, even going so far as to unzip her panties down the middle, exposing her engorged plump lips. The meaty things are plush and look like they're made for being fucked hard, luring you in more as you press in behind her.");
		if (cockTotal > 0 || (vagTotal > 0 && clitSize > 20)) {
			textLP("\r\rYou plunge ");
			if (cockTotal > 0) { textLP(""+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+"");	}
			else { textLP(""+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+"");	}
			textLP(" into her awaiting entrance, pushing in deep.");
			if (cockTotal > 0 && cockSize*cockSizeMod > 48) { textLP(" Amazingly, her sensual lips stretch wider and wider, taking in your whole length until your cock pushes back out against her belly below, her body easily taking you in and hugging you tightly with her warmth.");	}
			else if (cockTotal < 1 && clitSize > 120) { textLP(" Amazingly, her sensual lips stretch wider and wider, taking in your whole length until your clitoris pushes back out against her belly below, her body easily taking you in and hugging you tightly with her warmth.");	}
			textLP(" The swollen labia presses against your crotch as you sink your hilt inside. The whole tunnel slurps around your shaft, kneading and squeezing you gently with her well-trained muscles. She was definitely made for this sort of thing... You begin to thrust again and again, the divine pussy sucking you in and out with such fantastic intensity.\r\rAnd while your attention is diverted, you fail to notice the serpentine tail creeping around to your "+buttDesc()+" tush. The spaded tip foldsin on itself, narrowing for a quick entrance into your ass. You buck harder into the she-devil as you feel yourself fill with the tail while it sensually slips in and out, pinning you from behind and urging you on further. Which you oblige.\r\rThe succubus' wings spread as she lets out an ecstatic shrill, climaxing from your stimulated efforts. The grinding around your rod from her clenching passage also sends you along as well");
			if (cockTotal > 0) {
				cumAmount();
				textLP(", spraying your seed inside of her until it's pouring back out against your combined thighs");
			}
			textLP(".");
		}
		else {
			textLP("\r\rYou fall to your knees and push your face into her nethers. You bite into the swollen labia and lick up through the crevice, devouring her sex until you can feel her quiver. The plush flesh around your face feels pleasant, encouraging you to dive in more, slipping your tongue in and out of her hole while her ass shakes in delight.\r\rAnd while you're busy eating out the oversexual pussy, the serpentine tail creeps down to "+oneYour(2)+" own. The spade at the tip of the tail folds in on itself, narrowing for a quick entrance into your tunnel. You buck as you're caught off guard, but with your face planted in her round ass you quickly sit back down, driving her tail deeper into you.\r\rThe succubus seems pleased with the way things are, content with bringing you to orgasm as you do so for her. She lets out an ecstatic shrill, her wings spreading wide as she climaxes, a flood of honey pouring down around your mouth. The tail inside of you unfurls and drags across your inner walls, making your hips twitch with a writhing high in turn.");
		}
		textLP(" Yet, the climax feels a bit more draining than you might have expected. You feel slightly weaker, your body seemingly slimming down a bit, as the vials around the woman's belt glow slightly.\r\r\"Mmmm~\" She moans in concert with the glow. \"Tastes sooo good~\"\r\rJust as you thought you had been the one in charge the whole time, the succubus pulls away from you and comes to a stand while zipping herself up. \"That was a nice snack~\"");
		stats(-1,0,0,0);
		body -= 1;
		doLust(-Math.floor(sen/2), 2,1, 2);
	}

}

//Provides a detailed description of the rape if you get raped in battle
function doGetRaped():void{
	if (enemyID == 1){
		if (gender == 1){
			textL("The test enemy pokes its cock in your butt and cums.");
		}
		if (gender == 2){
			textL("The test enemy pokes its cock in your vagina and cums.");
		}
		if (gender == 3){
			textL("The test enemy pokes its cock in your vagina and cums while stroking you off.");
		}
	}

	//Cock-Snake
	if (enemyID == 101){
		if (cockTotal > 0) {
			textL("As your growing erection"+plural(1)+" spill"+plural(3)+" from your "+clothesBottom()+", the cock-snake's mouth grows wide. It slithers forward, engulfing "+oneYour(1)+" cock"+plural(1)+", its mouth stretching wider and wider to fully engulf it, its body so elastic it could take on any length.\r\rIn an instant, your body begins to writhe and shudder as the cock-snake's gullet strongly massages along your length, quickly building you to orgasm. You clench at the ground beneath you as the cum is sucked right from your body, your hips jerking while you pump it out. The cock-snake guzzles it down, drinking it until you're completely finished, some of the spunk splashing back out across your thighs...\r\rHunger sated, the cock-snake slithers away");
			if (cumAmount() > 2300){ textLP(", its belly obviously distended from your massive load"); }
			textLP(".");
			doLust(-Math.floor(sen/2), 2, 1);
		}
		else if (vagTotal > 0) {
			textL("Feeling the warmth emanating from beneath your "+clothesBottom()+", the cock-snake slithers in "+legWhere(1)+" your "+legDesc(2)+". The phallic head nuzzles up against your "+vulvaDesc()+" lips, smearing around some of your lubricant. Its nose bumps against your "+clitDesc()+" clit"+plural(2)+", testing your arousal until you quiver beneath.");
			if (pregCheck(1)) {
				textLP("\r\rSatisfied with what it sees, the wide-rimmed head pushes its way into your folds. You can feel it stretch your walls and move around inside of you, exploring your warm and soft inner-depths. The rest of its tail wraps around your "+legDesc(1)+", holding tightly and anchoring itself. Then, its muscles begin to flex and coil, yanking the head back through your passage. The head barely emerges for a second to make sure everything is fine, before thrusting itself back in. Again and again, pushing and pulling itself through your tunnel. The snake is fucking you!\r\rAnd it's quite good at its job as well. The strong muscular body flexes and pulses within, matching your warmth and testing the limits of your pussy. In your state, you can't help but gasp and moan, quickly coming to climax. You shout in ecstasy as the sensations flow through you, orgasm wracking your body.\r\rIn that moment of peak pleasure, the snake lets go of your "+legDesc(1)+" and slips through your cervix as the doorway opens with your high, completely disappearing into your womb.\r\rIn the few moments of bliss, your hands press down onto your bloated belly, feeling the phallic lube-covered snake squirm around and make itself comfortable inside of you...");
				i = 0;
				while (i < pregArray.length) {
					if (pregArray[i] == false) { 
						pregArray[i] = true; 
						pregArray[i+1] = 503;
						pregArray[i+2] = 240;
						pregArray[i+3] = 150;
						i = pregArray.length;
					}
					i += 5;
				}
				cockSnakePreg += 50;
				doLust(-Math.floor(sen/2), 2, 2);
			}
			else {
				textLP("\r\rHowever, it seems to not be satisfied with what it has found. Barely sating any of your desire, the snake turns around and slithers off, completely losing interest...");
				doLust(-5,0);
			}
		}
	}

	//Lone Wolf

	if (enemyID == 201){
		textL("The lone wolf rolls you onto all fours with its nose. Obliging, you duck forward, raising your "+buttDesc()+" rump into the air. He sniffs your cunt"+plural(2)+", lapping at the wetness that soaks through your "+clothesBottom()+". He jumps up, clawing your "+clothesBottom()+" to shreds until your "+vulvaDesc()+" hot crotch is put on display. Scratching your back, he mounts you from behind.\r\rHis rock-hard rod pokes and prods around your sex until it finds "+oneYour(2)+" gaping hole"+plural(2)+" and plunges it in. You gasp as the steaming meaty flesh pounds into you, the wolf roughly humping away, the inner fur of his thighs rubbing back and forth along your "+buttDesc()+" naked bum. He hugs you with his paws, his muzzle panting beside your ear while drool drips down from his lolling tongue and down your cheek. It only takes a minute before he howls loudly, cum spurting into your pussy at an astonishing rate. You shout as it floods your insides, a thick knot growing at your entrance and spreading you open further...");
		changeBot(-1);
		doNext();
		textLP("You gasp as you're about to pass out, feeling the wolf tug at your violated cunt in an attempt to get away. Still tied by his knot, his cock squirting away within, ");
		if (vagLimit() < 32){
			textLP("you wince with each pull, the knot stretching you wider,");
			vagChange(1, 0);
		}
		else if (vagLimit() < 8){

			textLP("you yelp with each pull, the knot far too large for your little pussy and stretches you much wider and wider while causing you some pain,");
			vagChange(2, 0);
			doHP(-5);
		}
		else{ textLP("but your gaping cunt is more than enough to handle it,"); }
		textLP(" until it finally pulls free and he runs back off into the forest.");
		doImpregnate(enemyBaby());
		doLust(-Math.floor(sen/2), 2, 1);
	}

	//Gay Wolf

	if (enemyID == 202){
		textL("The lone wolf rolls you onto all fours with its nose. Obliging, you duck forward, raising your "+buttDesc()+" rump into the air. He sniffs the thing you have presented him, burrowing his wet nose into your cheeks slightly and blowing in acceptance of your offer. He jumps up, clawing your "+clothesBottom()+" to shreds until your "+buttDesc()+" ass is ready for the taking. Scratching your back, he mounts you from behind.\r\rYou can feel his pointed rod poke about the cushioning of your bum, swiftly finding its way into the crevice therein. Slick pre slips around the hole of your ass as the tips circles around, lubricating it lavishly for a smooth injection. A short gasp escapes your lips as the narrow tip kisses the hole, stretching it wide as it then rapidly rams in with a lewd schlick. The wolf's muzzle rests upon your shoulder, the long tongue lolling and panting hot humid air across your cheek. His hips bounce up and down, slipping in and out of your ass with slurping pops, growing more and more stiff. \r\rIt doesn't take long before you feel hot spurts coat the inside of your rectum, splashing against the inner wall again and again. So much semen inside that you can feel yourself begin to bloat. The pressure quickly makes your own "+cockDesc()+" erection"+plural(1)+" burst with white strands below, pumping out in tune to the throbbing of the growing girth in your ass. You can feel yourself stretch, the wolf's knot swelling to anchor itself within, overflowing cum spraying out as the hole tightens...");
		changeBot(-1);
		doNext();
		textLP("You gasp as you're about to pass out, feeling the wolf tug at your violated ass in an attempt to get away, gush after gush of spent spunk blowing out each time. Still tied by his knot, his cock now slowly squirting away within, you can't help but get yanked backwards several feet as he drags you over the ground by your sensitive hole. Eventually, you manage to grab at the ground and hold yourself firm, allowing the knot to pop out from your ass, the member spraying across your cheeks with more rushing out about your thighs. Freed of your ass, the wolf takes off into the forest, satisfied, leaving you to lay in the white mess below. ");
		doLust(-Math.floor(sen/2), 2, 5);
	}

	//Horny Felin
	if (enemyID == 301){
		textL("Finally having someone as horny as she is, she pounces onto you. She presses your face against her exposed nipples, forcing you to lick the soreness that had been caused by her own rubbing. She grinds up and down your belly, tearing your "+clothesTop()+" to tattered shreds with her claws while biting and suckling from your own "+nipDesc()+"nipples");
		changeTop(-1);
		if (lactation > 0){ textLP(", delighting in the taste of your milk");	}
		textLP(". However, it doesn't take long until she reaches beneath her loin cloth and pulls her bikini bottom to the side before she goes diving into your "+clothesBottom()+",");
		if (gender == 1 || gender == 3){ 
			textLP(" digging out "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+".");
			if (cockSize*cockSizeMod > eVagLimit(40)){ textLP(" She attempts to stand and squat down upon it, but, to her dismay, she can't seem to push it into her hungry pussy, even though she tried until tears welled up in her eyes from the painful stretching. Instead, she settles for hugging and humping the "+cockDesc()+" thing, grinding her own stiff little erection into it, her feminine juices spilling down its length and over your body."); }
			else if (cockSize*cockSizeMod > eVagLimit(20)) { textLP(" She mewls and mrowls in pain as she stands up and squats down upon it. It spreads her so wide that it hurts her so much, yet she doesn't care, so desperate to fuck. Tears roll down her cheeks, but her mouth yawns wide with erotic joy, being filled so much.");}
			else { textLP(" She rises up, only to squat back down on your erection, your cock slipping into her supple folds. So absolutely overjoyed to finally have a cock in her, she scratches at your chest with her claws and bites down upon your neck."); }
			textLP(" Her hips speed up faster and faster, wildly working her pussy so much that the slick liquids spilling from her gurgle and churn into a bubbly mess. You too find her efforts to be extremely effective, your body quaking along with her.");
			if (cumAmount() > 550 && cockSize*cockSizeMod <= eVagLimit(40)){ textLP(" She purrs loudly as she feels your cum explode within her, utterly pleased as it fills her so much that it squirts back out of her pussy with a loud lewd noise.");	}
			else if(cockSize*cockSizeMod > eVagLimit(40)){ textLP(" She purrs hungrily as she laps at you cum as it sprays about the both of you, her face absolutely delighted in having her fur matted with the stuff."); }
			else { textLP(" She purrs pleasantly as she feels your cum spurt within her, gyrating her hips around your rod to drink in every drop."); }
			textLP("\r\r");
			if (knot == true && cockSize*cockSizeMod <= eVagLimit(40)){ textLP("With a high-pitched squeak, she pulls off of your knot without thinking. She rubs her poor cunny from the pain, only to roll her eyes up into her head with the pleasant masturbation. ");	}
		}
		if (gender == 2) { 
			textLP(" lapping at your "+vulvaDesc()+" crotch and rouchly licking your "+clitDesc()+" clit"+plural(2)+"."); 
			if (clitSize > 25){
				textLP(" With a wicked grin, she eyes your "+clitDesc()+" clit"+plural(2)+" hungrily.");
				if (clitSize > 100){ textLP(" She attempts to stand and squat down upon "+oneYour(2)+" erect button"+plural(2)+", but, to her dismay, she can't seem to push it into her hungry pussy, even though she tried until tears welled up in her eyes from the painful stretching. Instead, she settles for hugging and humping the "+clitDesc()+" thing, grinding her own stiff little erection into it, her feminine juices spilling down its length and over your body."); }
				else if (clitSize > 50) { textLP(" She mewls and mrowls in pain as she stands up and squats down upon "+oneYour(2)+" erect button"+plural(2)+". It spreads her so wide that it hurts her so much, yet she doesn't care, so desperate to fuck. Tears roll down her cheeks, but her mouth yawns wide with erotic joy, being filled so much.");}
				else { textLP(" She rises up, only to squat back down upon "+oneYour(2)+" erect button"+plural(2)+", your clit slipping into her supple folds. So absolutely overjoyed to finally have a hard phallic object in her, she scratches at your chest with her claws and bites down upon your neck."); }
			}
			else{ textLP(" She glides back up your chest and presses her sloppy cunt to yours, grinding the two together."); }
			textLP(" Her hips speed up faster and faster, wildly working her pussy so much that the slick liquids spilling from her gurgle and churn into a bubbly mess. You too find her efforts to be extremely effective, your body quaking along with her.");
		}
		textLP("Dazed and high with her climax, having finally overcome her heat a little, she stumbles away, her loin cloth pushed so far to the side that her lips shine between her legs for all to see.");
		if (percent() < 40 && ballSize > 1 && cockSize*cockSizeMod <= eVagLimit(40)) { textLP(" And she seems oddly content, as though her heat had passed with that romp for some reason..."); }
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Drunken Equan
	if (enemyID == 302){
		textL("Seeing you laying defenseless and utterly aroused before him, the drunken equan falls to the ground. With a grunt and a grope, he pulls his huge cock from his pants, his erection barely 2/3 its full potential. Considering how drunk he is, it probably won't get much larger.");
		if (gender == 1 || (gender == 3 && percent() <= 50)){
			 textLP(" Nevertheless, not caring whether you're male or female, he turns you over to find the hole everybody has. Giving your "+buttDesc()+" ass a slap with his mug, he leans forward and plunges his erection deep inside.");
		}

		else if (gender == 2 || gender == 3){
			textLP(" Nevertheless, he slips his arms behind your "+legDesc(6)+", pushing them up and foward as his cock plows into "+oneYour(2)+" cunt"+plural(2)+".");
			if (vagLimit() < 12){
				textLP(" You cry out in pain as the cock slams against your entrance, completely unable to fit. So, instead, the the horny equan turns you over, plunging his erection deep into your "+buttDesc()+" ass until you can see it bulge through your belly.");
				doHP(-5);
			}
			else if (vagLimit() < 28){
				textLP(" With a cry, the large horse-cock proves too big for your relatively small pussy, stretching it dramatically and causing you some pain.");
				vagChange(3, 0);
				doHP(-Math.floor(eStr/2));
				doImpregnate(enemyBaby());
			}
			else if (vagLimit() < 52){
				textLP(" You wince as it pushes in too far, pounding your cervix further and further into your belly, permanently stretching you a bit.");
				vagChange(1, 0);
				doImpregnate(enemyBaby());
			}			
			else { 
				textLP(" You feel it push against your belly from within, the mound slightly protruding through your "+skinDesc()+", taking his entire length inside of you.");
				doImpregnate(enemyBaby());
			}
		}
		textLP(" Again and again, he has his way with your hole, until he lets out a loud whinny. Eyes going wide, you feel a flood of his hot stuff flush into your body, making you lose all thoughts of everything else...");
		if (cumAmount() > 0){ textLP(" Your cock"+plural(1)+" explode"+plural(3)+" across the ground just before you collapse, forming a nice puddle to splash in."); }
		textLP("\r\rAs drunk as he is, the large equan doesn't take long to pull out, cum dribbling in long strands from his huge cock and splattering across his pants, as he sways back towards Firmshaft.");
		doLust(-Math.floor(sen/2), 2, 2, 5);
	}
	
	//Octopus Girl
	if (enemyID == 303){
		
		if (gender == 1){
			textL("With a giggle at your vulnerable state, her tentacles wrap about your "+buttDesc()+" butt, weaving into your "+clothesBottom()+" and pulling out your "+cockDesc()+" erection"+plural(1)+". She takes "+oneYour(1)+" cock"+plural(1)+" and fondles it with the slimy appendages, making sure it's nice and hard.");
			if (cockSize*cockSizeMod > 50) { textLP(" Not wanting to stretch herself to engulf your "+cockDesc()+" thing, she instead wraps her tentacles around it, drawing it towards the center of her webbing, just beneath her hips.\r\rYou can't tell what is going on, but you quickly jerk as something nips at your urethra. Nothing painful, just a soft yet rigid fleshy thing, like cartilage, that gently pinches you. Then your eyes go wide as whatever it is begins to dig into your urethra, spreading the last couple of inches wider as it slips inside, holding your cock-tip open like a gaping hole.\r\rAgain, she is gentle, but any pain you might have noticed quickly disappears as all eight of her tentacles work together in harmony, writhing about your cock and making you twitch sporadically on the ground from the intense pleasure. She wrings your cock powerfully, quickly bringing you to a gushing orgasm, spraying your cum through your gaping urethra and filling her body."); }
			else { textLP(" Her whole body moves over yours, your groin being lost to her webbing.\r\rYou can't tell what is going on, but you quickly jerk as something nips at the tip of your rod. Nothing painful, just a soft yet rigid fleshy thing, like cartilage, that gently pinches you. Then your eyes go wide as whatever it is engulfs your length, sucking you inside. Supple folds squish and writhe around your cock, as though it were a pussy with a throat that was trying desperately to swallow you. Within moments, you find your "+hipDesc()+" hips jerking as you blow your load, filling her."); }
			if (cumAmount() > 2300)	{ textLP(" You come so much that her belly begins to swell larger, stretching to engulf as much of your seed as she can, before gushing back out and down your cock.");	}
			textLP("\r\rHer belly shivers a little as it absorbs your cum. It grows slightly larger as her offspring wiggle inside, maturing. With a grin, she slides off of you and back into the ocean, her tentacles twitching excitedly as she disappears...");
		}
		if (gender == 2){
			textL("She grins at you, particularly happy to see you submit before her. She leans in for a wet kiss, licking your cheek with her long tongue, as her tentacles wrap around your "+buttDesc()+" butt. They weave into your "+clothesBottom()+" and pull it "+pullUD(2)+", exposing your swollen and hungry "+vulvaDesc()+" cunt"+plural(2)+". She then swings back, her tentacles flying wide for a moment and giving you a view of what's behind her webbing.\r\rIn the center of all the tentacles, right beneath her hips, gasps a gaping hole. A sort of 'beak', like octopuses normally have, encompasses it. The beak looks tougher than the surrounding flesh, able to maintain its shape. However, as she rams it against your groin, you notice it's softer than you expected, more like cartilage. Yet, you don't have much time to reflect about what it is as it begins to nip at your nether-lips, prying them open and burying itself within, a few inches deep.\r\rIt doesn't hurt much, but any pain quickly dissipates as her tentacles wrap around your groin. The suction cups underneath stick to your "+skinDesc()+", giving her a good grip, while some in particular latch onto your clit"+plural(2)+" and lips, tugging and sliming at your arousal. Your hips quickly begin to buck on the ground as she brings you to orgasm after orgasm, your button"+plural(2)+" and vulva swelling larger as fluids from the cups seep into them.");
			if (!pregCheck(1)) { 
				textLP("\r\rHowever, she seems to quickly notice that you already have something growing inside of you without room for more. With a smile, she removes her tentacles and draws up your body. She leans in yet again for another kiss, this time on your forehead, her breasts surrounding your face. Then she turns and leaps back into the water with a splash, leaving you wracked with ecstasy and larger genitals...");
				clitSize += 4;
				vulvaSize += 2;
			}
			else {
				textLP("\r\rWhile your mind is distracted by the multiple climaxes, you hardly notice as she begins to wince and groan, her arms hugging her belly. Then, amidst your ecstatic moans, you let out a gasp as something breaches your "+vulvaDesc()+" pussy, round and large.");
				if (vagSize < 20) { 
					textLP(" The object is so big that it stretches your poor cunt"+plural(2)+" even larger, making sure there's enough room.");
					vagSize += 2;
				}
				textLP("\r\rAnd that was just the first...\r\rAgain and again, you can feel something slip into your womb. Yet, as her tentacles work at your "+clitDesc()+" clit"+plural(2)+", you can do nothing but cry out in pleasure with each pass. Soon, you find yourself groping your own belly as it swells beneath your hands, while hers deflates, emptying its contents into you. Eventually, you look as pregnant as she did, the things inside shivering slightly at the warmth of their new home...\r\rHappy with her spawning season, the octopus girl gathers her own wits, relinquishing you from her tentacles and kissing your enormous belly. Then, she turns towards the ocean and dives back into it, disappearing until the next time she needs a surrogate...");

				i = 0;
				while (i < pregArray.length) {
					if (pregArray[i] == false) { 
						pregArray[i] = true; 
						pregArray[i+1] = 1000;
						pregArray[i+3] = 180;
						i = pregArray.length;
					}
					i += 5;
				}
			}
		}
		if (gender == 3){
			textL("With a giggle at your vulnerable state, her tentacles wrap about your "+buttDesc()+" butt, weaving into you "+clothesBottom()+" and pulling out your "+cockDesc()+" erection"+plural(1)+". She takes "+oneYour(1)+" cock"+plural(1)+" and fondles it with the slimy appendages, making sure it's nice and hard.");
			if (cockSize*cockSizeMod > 50) { textLP(" Not wanting to stretch herself to engulf your "+cockDesc()+" thing, she instead wraps her tentacles around it, drawing it towards the center of her webbing, just beneath her hips.\r\rYou can't tell what is going on, but you quickly jerk as something nips at your urethra. Nothing painful, just a soft yet rigid fleshy thing, like cartilage, that gently pinches you. Then your eyes go wide as whatever it is begins to dig into your urethra, spreading the last couple of inches wider as it slips inside, holding your cock-tip open like a gaping hole.\r\rAgain, she is gentle, but any pain you might have noticed quickly disappears as all eight of her tentacles work together in harmony, writhing about your cock and making you twitch sporadically on the ground from the intense pleasure. She wrings your cock powerfully, quickly bringing you to a gushing orgasm, spraying your cum through your gaping urethra and filling her body."); }
			else { textLP(" Her whole body moves over yours, your groin being lost to her webbing.\r\rYou can't tell what is going on, but you quickly jerk as something nips at the tip of your rod. Nothing painful, just a soft yet rigid fleshy thing, like cartilage, that gently pinches you. Then your eyes go wide as whatever it is engulfs your length, sucking you inside. Supple folds squish and writhe around your cock, as though it were a pussy with a throat that was trying desperately to swallow you. Within moments, you find your "+hipDesc()+" hips jerking as you blowing your load, filling her."); }
			if (cumAmount() > 2300)	{ textLP(" You come so much that her belly begins to swell larger, stretching to engulf as much of your seed as she can, before gushing back out and down your cock.");	}
			textLP("\r\rHer belly shivers a little as it absorbs your cum. It grows slightly larger as her offspring wiggle inside, maturing.");
			textLP("With a grin, she seems particularly happy to have found such a suitable partner. She leans in for a wet kiss, licking your cheek with her long tongue, as her tentacles wrap around your "+buttDesc()+" butt once more. They squirm around your exposed swollen and hungry "+vulvaDesc()+" cunt"+plural(2)+", making sure you're still aroused. She then swings back, her tentacles flying wide for a moment and giving you a view of what's behind her webbing.\r\rIn the center of all the tentacles, right beneath her hips, gasps a gaping hole. A sort of 'beak', like octopuses normally have, encompasses it. The beak looks tougher than the surrounding flesh, able to maintain its shape. However, as she rams it against your groin, you notice it's softer than you expected, more like cartilage. Its the thing you had noticed before... Yet, you don't have much time to reflect about what it is as it begins to nip at your nether-lips, prying them open and burying itself within, a few inches deep.\r\rIt doesn't hurt much, but any pain quickly dissipates as her tentacles wrap around your groin. The suction cups underneath stick to your "+skinDesc()+", giving her a good grip, while some in particular latch onto your clit"+plural(2)+" and lips, tugging and sliming at your arousal. Your hips quickly begin to buck on the ground as she brings you to orgasm after orgasm, your button"+plural(2)+" and vulva swelling larger as fluids from the cups seep into them.");
			if (!pregCheck(1)) { 
				textLP("\r\rHowever, she seems to quickly notice that you already have something growing inside of you without room for more. With a smile, she removes her tentacles and draws up your body. She leans in yet again for another kiss, this time on your forehead, her breasts surrounding your face. Then she turns and leaps back into the water with a splash, leaving you wracked with ecstasy and larger genitals...");
				clitSize += 4;
				vulvaSize += 2;
			}
			else {
				textLP("\r\rWhile your mind is distracted by the multiple climaxes, you hardly notice as she begins to wince and groan, her arms hugging her belly. Then, amidst your ecstatic moans, you let out a gasp as something breaches your "+vulvaDesc()+" pussy, round and large.");
				if (vagSize < 20) { 
					textLP(" The object is so big that it stretches your poor cunt"+plural(2)+" even larger, making sure there's enough room.");
					vagSize += 3;
				}
				textLP("\r\rAnd that was just the first...\r\rAgain and again, you can feel something slip into your womb. Yet, as her tentacles work at your "+clitDesc()+" clit"+plural(2)+", you can nothing but cry out in pleasure with each pass. Soon, you find yourself groping your own belly as it swells beneath your hands, while hers deflates, emptying its contents into you. Eventually, you look as pregnant as she did, even the extra bit she gained from after you filled her with your cum, the things inside shivering slightly at the warmth of their new home...\r\rEspecially happy with how well her spawning season went this week, the octopus girl gathers her own wits, relinquishing you from her tentacles and kissing your enormous belly. Then, she turns towards the ocean and dives back into it, disappearing until the next time she needs a surrogate...");
				
				i = 0;
				while (i < pregArray.length) {
					if (pregArray[i] == false) { 
						pregArray[i] = true; 
						pregArray[i+1] = 1000;
						pregArray[i+3] = 216;
						i = pregArray.length;
					}
					i += 5;
				}
			}
		}
		if ((gender == 2 || gender == 3) && pregCheck(1)) { doLust(-Math.floor(sen/2), 2, 2);	}
		else { doLust(-Math.floor(sen/2), 2, 1);	}
	}

	//Little Big Bunny-Man
	if (enemyID == 304)	{
		if (vagTotal > 0 && vagLimit() > 80) {
			textL("A smirk crosses the bunny-man's face as you fall before him, your cunt"+plural(2)+" dripping with arousal. His own conical prick twitches in his sheath at the size of you gaping maw, even in your reduced state, eager to hop in and make you his new bunny-hole. He falls to his knees and wraps his arms around your body, his hips quickly closing the gap between your heights. You can hardly tell at first that "+oneYour(2)+" slit"+plural(2)+" is being penetrated, the narrow tip relatively small. But as he quickly plows the rest of his length in, your eyes nearly cross from the rapid change in girth.");
			if (tallness < 160)	{ textLP(" You can feel your belly distend, your vaginal flesh stretching out within to match the shape of his cock.");	}
			if (tallness < 80) { textLP(" So much so that your vision becomes blocked by your own "+skinDesc()+", the massive erection squeezing between your face and his body.");	}
			textLP("\r\rWith tremendous fervor, he rams his hips into you again and again. So fast that your mind can hardly distinguish between being empty and relaxed versus stuff and stretched, it's all a blur. Long before you're even able to start to come to your own climax, you hear him clench his teeth above you. In an instant, your crotch feels hot and sticky as spunk floods your tunnel, splashing about as the bunny-man continues to hump away. His fuzzy balls smack against your thighs with lewd noises from the sticky mess, with no signs of slowing down.\r\rAgain and again he comes inside of you, your pussy almost numb from all the thrusting. So lost in the speedy sex, your mind can hardly register that you have reached orgasm");
			if (cockTotal > 0)	{ textLP(", barely noticing the extra stickiness upon his fur that rubs against your belly as your own erection"+plural(1)+" explode"+plural(3)+""); }
			textLP(".\r\rAll you seem to remember is the fact that he doesn't stop until you feel yourself begin to grow. He comes to an abrupt halt, yanking out while his spunk still spits between your thighs, and soon backs off as you begin to return to your normal state, though not quite...");
			doImpregnate(enemyBaby());
		}
		else {
			textL("A smirk crosses the bunny-man's face as you fall to your "+legDesc(6)+". He lunges forward to hold you up, his conical prick bobbing before your face. So lost in lust, your mouth subconsciously opens as you feel a supple tip press against it, sucking it in until you quickly find your jaw wedged open by the increasing girth. Just the tip of his penis is all that manages to fit inside, but he doesn't seem to care. He twirls what little there is around the inside of your mouth, pressing it down against your tongue. Your tongue lashes back, your throat sucking it in as it tries to gulp down the pre that leaks.\r\rThough he can't face-fuck you too well, he seems perfectly happy pleasuring the rest of his shaft with a hand. With each stroke of his length, your whole body bobs to keep up with the stiffness that holds your mouth agape. Until he comes to an abrupt halt...\r\rYour throat goes numb as hot seed gushes down it. You don't even have time to swallow, it's so forceful and so plentiful. Some sprays back out from your nose and even your eyes feel wet and slightly sticky from something that isn't tears. Your stomach quickly fills and you feel oh so full... For a moment, your hands can wrap around your belly as it distends to obscene sizes.\r\rHowever, oddly, you soon find yourself sucking in more and more of his length. Your extended belly shrinks as it's able to contain more of the stuff, your throat regaining composure. As your body grows out from his hands, he suddenly pulls out from you, spraying the last bit from your face. He quickly hops away as you begin to nearly grow to your normal size, though your head is still oversexed.");
		}
		doLust(-Math.floor(sen/2), 2, 1, 5);
	}

	//Little Big Bunny-Girl
	if (enemyID == 305)	{
		if ((gender == 1 || (gender == 3 && percent() > 50)) && (cockSize*cockSizeMod > 140 || cockTotal*cockSize*cockSizeMod > 280)) {
			textL("A smile crosses the bunny-girl's face as you fall before her, your cock"+plural(1)+" pushing at your "+clothesBottom()+". She ducks down and releases your member"+plural(1)+" with one hand while her other disappears between her legs. It quickly reappears as she stands up and hovers over you, her fingers spreading her large snatch wide. Her honey drizzles down around your cock"+plural(1)+" with the rest of her swiftly bearing down after it. She lets out a loud sweet moan as she engulfs your length"+plural(1)+". Her velvety puffy folds soon hug the rest of your body, covering you like warm wet blankets, and your face is buried by her clit. It's a rather comforting position, somewhat relaxing, that only lasts for a few seconds...\r\rHer strong legs quickly kick up, sending her skyward, before plunging back down upon you again. Her movements are so swift and powerful, your cock"+plural(1)+" can't tell if "+plural(7)+" inside or not, only feeling a constant rubbing against "+plural(5)+" sensitive skin. And despite the fervent efforts on your manhood, the bunny-girl still manages to climax first, as she lets out a succulent shout of ecstasy. Her walls clamp around your appendage"+plural(1)+", sucking "+plural(9)+" in and tugging "+plural(9)+" along with her as her bouncing only grows more enthused.\r\rIt doesn't take long until your own arousal begins to build pressure, though you find that pressure to grow much greater than you would have expected. The bunny-girl's pussy seems to only be growing tighter and tighter, lifting her from your body as your cock"+plural(1)+" push her away. When you finally reach orgasm, she groans loudly as her belly fills and swells. Opening your eyes, you realize you're growing larger, almost your full size! She flies off your erection"+plural(1)+" with a slick pop before she is really harmed and hops away, leaving you to finish gushing outside of the cave...");
		}
		else if (udderSize/2 > 300) {
			textL("A smile crosses the bunny-girl's face as you fall before her. Eyeing your "+udderDesc()+" udder through your "+clothesTop()+", an idea seems to dawn upon her and she ducks down to releas your relatively massive mammaries. Then she stands and hovers over you, her fingers spreading her large snatch wide. Her honey drizzles down around your udder with the rest of her swiftly bearing down after it. She lets out a loud sweet moan as she engulfs your "+udderDesc()+" bag, letting the fleshy balloon fill her. Her velvety puffy folds soon hug the rest of your body, covering you like warm wet blankets, and your face is buried by her clit. It's a rather comforting position, somewhat relaxing, that only lasts for a few seconds...\r\rHer strong legs quickly kick up, sending her skyward, before plunging back down upon you again. Her movements are so swift and powerful, your whole body is lifted by your stretching udder before being slammed back into the ground with the giant little bunny bum crashing back down upon you.");
			if (udderLactation > 0) {
				textLP(" The supple massage upon your milky mound causes your "+teatDesc()+" teats to spray warm milk profusely into her belly.");
				milkAmount(2);
			}
			textLP(" Her hands grope about herself in ecstasy at the sensation within, letting out a succulent shout as she climaxes. Her walls clamp around your milk-bag, sucking it in and tugging it along with her as her bouncing only grows more enthused.\r\rYou begin to enjoy the sensation yourself, an outlet for your lust, but quickly realize something is odd as the bunny-girl's pussy seems to only be growing tighter and tighter. She slowly lifts from your body as your udder pushes her away, growing larger and larger within her until she's hardly straddling your teats! When you finally manage to reach orgasm, her large feet smack against the bag as she realizes how large you've become, propelling herself away. While you come close to returning to your full size with your body still tingling, she dashes away, a hand still jerking at her clit as she goes.");
		}
		else if (breastSize > 300) {
			textL("A smile crosses the bunny-girl's face as you fall before her. Eyeing your "+boobDesc()+" tits through your "+clothesTop()+", an idea seems to dawn upon her and she ducks down to releas your relatively massive mammaries. Then she stands and hovers over you, her fingers spreading her large snatch wide. Her honey drizzles down around your breasts with the rest of her swiftly bearing down after it. She lets out a loud sweet moan as she engulfs your "+boobDesc()+" mounds, letting the fleshy balloons fill her. Her velvety puffy folds soon hug the rest of your body, covering you like warm wet blankets, and your face is buried by her clit. It's a rather comforting position, somewhat relaxing, that only lasts for a few seconds...\r\rHer strong legs quickly kick up, sending her skyward, before plunging back down upon you again. Her movements are so swift and powerful, your whole body is lifted by your stretching breasts before being slammed back into the ground with the giant little bunny bum crashing back down upon you.");
			if (lactation > 0) {
				textLP(" The supple massage upon your milky mounds causes your "+nipDesc()+"nipples to spray warm milk profusely into her belly.");
				milkAmount(1);
			}
			textLP(" Her hands grope about herself in ecstasy at the sensation within, letting out a succulent shout as she climaxes. Her walls clamp around your tits, sucking them in and tugging them along with her as her bouncing only grows more enthused.\r\rYou begin to enjoy the sensation yourself, an outlet for your lust, but quickly realize something is odd as the bunny-girl's pussy seems to only be growing tighter and tighter. She slowly lifts from your body as your boobs push her away, growing larger and larger within her until she's hardly straddling your nipples! When you finally manage to reach orgasm, her large feet smack against your chest as she realizes how large you've become, propelling herself away. While you come close to returning to your full size with your body still tingling, she dashes away, a hand still jerking at her clit as she goes.");
		}
		else {
			textL("A smile crosses the bunny-girl's face as you fall before her. Though a little disappointed at the lack of anything to really have fun with, she still seems to know what to do with you. Your vision is soon obscured as she steps over you, her pussy hovering high above with thick strands of arousal drizzling over your body. Her hips then quickly bear down upon you, wedging you into her supple puffy folds. Her clit pushes into your chest and grinds up towards your face as her legs push her forward. Within moments, her powerful thighs have her running up and down your body with great fervor, nearly pasting you to the ground with all of the slickness.");
			if (tallness < 80) {
				textLP("\r\rHer speed and lack of cautiousness don't quite account for your especially small size and in one swift passing, your "+legDesc(10)+" get"+legPlural(1)+" caught by the rim of her vaginal entrance... In one pass, you're sucked up into her pussy, surrounded by wet warm fleshy walls.\r\rShe seems to be completely unphased, however, and actually increases her pace now that she has something inside of her. Humping at the ground, her fingers wrap around her clit and furiously stroke her. Her palm presses into her belly, squishing you between the tight walls. They rapidly begin to shudder as she approaches her first orgasm, squishing and pressing about your body erotically in the meantime. You soon find yourself coming to and orgasm, your genitals mashed by supple flesh, but also find your confines growing tighter and tighter... You can feel her belly distend as you grow within her, forcing her to come to an abrupt halt. She lifts from the ground, grabbing her clit tightly with a sweet shout, a strong orgasm pushing you out from her loins\r\rWhile you continue to grow to nearly your full height in the midst of your climax, she dashes away.");
			}
			else {
				textLP(" She humps you furiously, her speed and strength quickly bringing herself to her first orgasm. Yet, that doesn't stop her as she continues to jerk across your body, with even more enthusiasm than before. All the rubbing of soft supple flesh against your genitals every pass makes you begin to feel a little tingly as well.\r\rHowever, just as you're coming close to orgasm, you can feel her legs spread more and more, her efforts no longer making it across your entire body. Nearly growing to your full size as you climax, the bunny-girl comes to a halt and dashes away while continuing to jerk her erect clit, her advantage over you lost.");
			}
			if (cockTotal > 0) { cumAmount(); }
		}
		doLust(-Math.floor(sen/2), 2, 1, 3, 4);
	}

	//Fierce Naga
	if (enemyID == 306)	{
		textL("Pleased with your less-threatening state, she takes her time to tower over your prone body and wraps her tail around your "+hipDesc()+" hips and "+legDesc(2)+", holding you still with her strength and leans in to taste her prey...\r\rPulling "+pullUD(1)+" your "+clothesTop()+", she licks over the "+skinDesc()+" of your belly with her long serpentine tongue. She glides down, constricting her tail in an oscillating fashion to help pull your "+clothesBottom()+" "+pullUD(2)+" enough to access your");
		if (cockTotal > 0) {
			textLP(" "+cockDesc()+" erection"+plural(1)+". Pleased with what she finds, she caresses "+plural(9)+" with her fingers and lavishes the tip"+plural(1)+" with her tongue, darting in and out of the urethra"+plural(1)+" pleasantly.\r\rQuite satisfied with your flavor, she drags her silk-covered breasts over the rod"+plural(1)+", grinding her body up yours until the sash dangles over your glans. Lifting the cloth, her own awaiting sex spills a clear drop from the pink flesh that runs down through the valley of her fused thighs. Holding you tightly with her tail, she lifts "+oneYour(1)+" member"+plural(1)+" up and drives herself down to devour it.");
			if (cockSize*cockSizeMod > eVagLimit(80)) {	textLP("\r\rMuch larger than the entrance you're being forced into, the naga lets out a loud moan. The maw stretches to widen over your girth and you think even her hips unhinge to gobble you whole. The belly-scales bulge as you fill her up and she doesn't stop until you're completely sheathed inside of her. Her claws dig into your skin and she hisses in delight, her tail 'hugging' you tighter."); }
			else { textLP("\r\rHer entrance easily takes you all the way to the hilt, yet surprisingly tight despite her size. She hisses happily, her tail pushing your rear up further to engulf more of you, even if it is a slight amount."); }
			textLP(" Fully engulfed, the muscular flesh within gnaws around your cock. Then she begins to bounce and grind on top of you, her tail holding you firm, and with your member being tugged and sucked by the velvety maw like a phallic lolipop. In fact, her hungry slit seems to be doing most of the work, as her muscles twist and tenderly gnash the hard toy with such force that you're both quickly moaning in ecstasy.\r\rHer plush vulva presses down to your crotch as the first spurts of cum shoot inside of her. Her hands crush your shoulders, her wings spreading out while her back arches in climax. The vigorous pussy helps to suck the spunk right out of you, drinking it into her womb. When your gushing loses its power, her tail slowly begins to unravel around you, flexing from side to side as she tries to rein in her own orgasm.\r\rQuite satisfied with the sexual experience, her slit finally relaxes, dropping you to the ground. Having been the only thing keeping you tied to her, she gropes the sated vulva, dropping her sash over it and slithers away over the dunes.");
			cumAmount();
		}
		else {
			textLP(" "+vulvaDesc()+" cunt"+plural(2)+". Happy with what she finds, she slips a few fingers through your lips, followed by the long tongue.\r\rSatisfied with how swollen and aroused you are, she lifts the sash around her waist to expose her own bulbous vulva. A hungry pink amidst the green scales, she promptly thrusts it against your crotch, mashing your sexes together. Holding you tightly with her tail, she grinds against you, pushing you up from underneath to force you against her even more. Her arms wrap around your neck as she leans down, surrounding your face with her silk-covered bosom and pressing your "+skinDesc()+" to her scales.\r\rWith a whole tail of muscle the help her move, her hips gyrate so powerfully against you that it doesn't take long before you both reach climax. A concerted moan fills the air while her claws dig into you, her tail 'hugging' you even more.\r\rHowever, after a few moments of bliss, you're allowed to breath. The naga's tail unwinds, stretching out as she relishes in the last few moments of orgasm, her wings fanning out and back arching high. Then, she drops her sash with a pleased smile and slithers away over the dunes.");
		}
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	//Minotaur
	if (enemyID == 307)	{
		textL("The Minotaur grunts. \"Good. Could use a fuck!\"\r\rNot exactly a romantic, he lifts you by your "+legDesc(8)+" and pulls off your "+clothesBottom()+" so it's out of the way. He continues to "+legVerb(3)+" your "+legDesc(2)+", inspecting what you have before he goes further. Shrugging at what he finds, he waggles his hips so that his big fat bulky cock flops out from behind his loin cloth. Already stiff and willing to go, pre dribbles down from the tip and lubes up your entire crotch, running into all your cracks and crevices.");
		if (vagTotal > 0 && vagLimit() > 72) { textLP(" He proceeds to stuff his massive schlong into "+oneYour(2)+" cunt"+plural(2)+" with a loud slurp, pushing in until he can see his own cock bulge out from your belly.");	}
		else if (vagTotal > 0) { textLP(" With your cunt"+plural(2)+" obviously too small, he proceeds to stuff his massive schlong into your ass with a loud slurping squish.");	}
		else { textLP(" With no obvious vagina, he proceeds to stuff his massive schlong into your ass with a loud slurping squish."); }
		textLP(" You gasp from the sudden intrusion and gurgle slightly when he begins to pull you up and down his length, plowing through your hole again and again with little regard to what's at the other end. The big dork is so selfish with his actions that he quickly begins to blow steam through his bovine nostrils as he snorts, wads of spunk blasting away inside of you. He continues to go on and on until you yourself are eventually climaxing");
		if (cockTotal > 0) {
			textLP(", your cock"+plural(1)+" launching ribbons over yourself while "+plural(11)+" bounce"+plural(3)+" against you");
			cumAmount();
		}
		textLP(".\r\rWith all the flurry of the abrupt orgasm, the Minotaur then lets go of you, making you shiver as you slide down his shaft and plop onto the floor, seed pooling out of your orifice...");
		if (vagTotal > 0 && vagLimit() > 72) { doImpregnate(enemyBaby());	}
		doLust(-Math.floor(sen/2), 2, 2);
	}

	//Freaky Little Girl
	if (enemyID == 308)	{
		textL("Seeing you in your helpless state, the girl growls in delight. \"MMM... PREY~,\" Mr. Snuggles drops to the floor as her attention grows more focused upon you. Only then do you notice the large hole between the doll's legs, looking a bit moist as though it had been used many times and never able to dry. The reason for its existence also begins to grow quite clear while the freaky little girl paws at her own crotch.\r\rEach time she lifts her skirt with her fondling, you can see a bulge growing and pressing at her small panties. At first it looks like a rather large clitoris, but it continues to sweel rapidly. It bows outward, a meaty length of flesh bunching up within. Eventually, the waistband of the panties gives way, letting the phallic monster loose and lifting her skirt altogether. It coninues to grow all the way up to the little girl's chest, thick and throbbing and eager for a good meal. The cock is large and seems even larger compared to the rest of her small body, growing upward from her dripping feminine sex that is exposed from the fallen undies.\r\rShe rubs herself a bit, pleased to have it big and horny again, perfect for impaling you~ She bends down to the floor, scratching at the ground with her nails. Walking on all fours like and animal, her cock thumps up and down against her chest as she creeps toward you, sniffing at you to make sure you're ready. She crawls up between your legs, nipping here and there at your "+currentClothes()+", until she finally reaches your chest. She pulls "+pullUD(1)+" your "+clothesTop()+" with her teeth, exposing your "+nipDesc()+" nipples which she promptly bites down upon. Hearing you gasp in slight pain and pleasure, ");
		if (lactation > 0) { textLP("a few drops of your milk rewarding her, "); }
		textLP("she finds you to be ready and she rams her large thing into");
		if (vagTotal > 0) {
			textLP(" "+oneYour(2)+" cunt"+plural(2)+"");
			if (vagLimit() < 16) {
				textLP(", stretching you terribly wide and making you yelp in pain");
				vagChange(4,0);
			}
			else if (vagLimit() < 36) {
				textLP(", stretching you much wider to the point that you grunt slightly from the pain");
				vagChange(2,0);
			}
			else if (vagLimit() < 60) {
				textLP(", stretching you to make more room for itself");
				vagChange(1,0);
			}
			else { textLP(", slipping in without much trouble"); }
		}
		else { textLP(" your ass, stirring up your insides as she forces her way through"); }
		textLP(".\r\rThe little girl quickly begins to thrust her small hips, powerfully drilling into you again and again as she keeps her jaw clamped around your nipple, not letting go as she fucks your brains out. Each thrust makes your whole body jerk, her strength far more formidable than her figure might let on. It doesn't take long before you feel her spraying her seed inside of you, but that doesn't stop her. She continues on and on, bringing you to your own high from the rough treatment, and she doesn't stop there...");
		if (vagTotal > 0) {
			doImpregnate(enemyBaby());
			doImpregnate(enemyBaby());
		}
		doLust(-Math.floor(sen/2), 2, 2);
	}

	//Succubus
	if (enemyID == 309)	{
		textL("The succubus grins as you give yourself to her. \"That's right, you know what's best for you~\"\r\rHigh-heels click on either side of you as the she-devil positions herself over you. She zips her red panties right down the center, making them part to expose her engorged large feminine lips. The things look plump and practically made for intense fucking, which only leads you to be even more anxious for her to take you. However, before you can attempt to lunge at her, she squats down and sits upon your "+bellyDesc()+" belly and leans forward to grab your arms up above your head. Pinning you to the floor, her ample bosom engulfs your face, burrowing you inside her cleavage while her hips grind against you, her plush pussy slickening up your "+skinDesc()+".");
		if (cockTotal > 0 || (vagTotal > 0 && clitSize > 20)) {
			textLP("\r\rHer tail wraps around ");
			if (cockTotal > 0) { textLP(""+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+"");	}
			else { textLP(""+oneYour(2)+" "+clitDesc()+" clit"+plural(1)+"");	}
			textLP(" and pulls it up to her awaiting hole. She teases you for a bit, sliding your tip through her thick folds, letting the supple flesh tempt you until your hips are eager to thrust all the way in. Once you're groaning and begging for her cunt, she lets your erection slip, plunging her rump back onto your shaft and impaling herself upon you.");
			if (cockTotal > 0 && cockSize*cockSizeMod > 48) { textLP(" Amazingly, her sensual lips stretch wider and wider, taking in your whole length until you can see your own cock pushing back out against her belly, her body easily taking you in and hugging you tightly with her warmth.");	}
			else if (cockTotal < 1 && clitSize > 120) { textLP(" Amazingly, her sensual lips stretch wider and wider, taking in your whole length until you can see your own clitoris pushing back out against her belly, her body easily taking you in and hugging you tightly with her warmth.");	}
			textLP(" Her insides feel divine, slurping around you and gently squeezing you in soft perfection. She was definitely made for this...\r\rThe succubus' round rump begins to bounce upon you, sucking you in and out, nearly lifting you off each time as her tunnel squeezes strongly around you. Totally in control, she proceeds to further show her dominance over you by dancing her tail beneath your "+buttDesc()+" tush. The spade at the end folds in upon itself, growing narrow just before driving itself in. You wince at first, her tail burrowing deep into your ass, and you relax as more pleasure overwhelms you from behind. The tail fucks your rear 'pussy' while the succubus takes care of your rod. Completely restrained and dominated by her, you're rapidly growing tingly and eventually going numb as you climax.");
			if (cockTotal > 0) {
				cumAmount();
				textLP(" Your spunk blows within her, filling her insides and drooling back out to your crotch. She doesn't seem to retain much of your cum, though.");
			}
		}
		else {
			textLP("\r\rShe seems perfectly content with fucking your belly, the stiffening clitoris rumbling against you, while she keeps you planted within her bosom. Completely restrained, you're unable to resist as her tail dances between your legs. The spade at the tip folds in upon itself, growing narrow just before it drives into "+oneYour(2)+" "+vulvaDesc()+" cunt"+plural(2)+" and burrowing deep inside to fill you the best it can. You can feel it unfurl within, anchoring itself within your tunnel and spreading you apart. It pumps in and out, making you twitch and squirm beneath you. The woman keeps you pinned, however, and continues to grind against you as she fucks you with her tail. Completely dominated and at her mercy, you're rapidly growing tingly and eventually going numb as you climax.");
		}
		textLP("\r\rAs you orgasm, you can feel yourself being drained by more than just the sensual high. You become weaker, smaller, as though any sense of strength is being drained from you while your craving for sex grows stronger, making you more of a slutty bitch that is only good for being fucked. And all the while the vials around the succubus' belt glow as they fill themselves with what you're drained of, sending the she-devil to her own sort of orgasm.\r\r\"Oh god, yes! Give it to me~!\" She siezes upon you, letting your essence flow throughout her and her vials until she's full. Then she slowly rises, removing her tail and sliding her fingers through her naked and now rather drippy sex before bringing them to her mouth for a taste. \"Mmm... You were definitely full of 'spunk' to have gotten this far. I'm glad I could dine on it~\"");
		stats(-2,-1,2,0);
		submissiveFetish += .05;
		dominantFetish -= .05;
		tallness -= 2;
		body -= 2;
		doLust(-Math.floor(sen/2), 2, 1, 2);
	}

	textLP("\r\rYou pass out in a puddle of mixed sensual fluids...");
	if (inDungeon == true) { inDungeon = false; }
	currentState = 1;
	hrs = (2+Math.floor(percent()/20));
	exhaustion -= Math.floor(percent()/20);
	skipExhaustion = true;
	doEnd();	
}




function enemyAttack():void{
	var attack:int = percent();
	//Cock-Snake
	if (enemyID == 101){
		if (attack <= 50){
			textLP("\r\rThe cock-snake whips around, slapping you harshly with its tail and causing a painful welt.");
			doHP(-eDmg(9));
		}
		else if (attack > 50){
			textLP("\r\rThe cock-snake opens its maw, long thin fangs dripping with venom, and it springs forward at your crotch. Its mouth bites down onto the crotch of your "+clothesBottom()+", fangs sinking right into");
			if (cockTotal > 0) {
				textLP(" "+oneYour(1)+" cock"+plural(1)+". It doesn't hurt much, but the venom that spills into you makes you feel strangely aroused and your cock"+plural(1)+" swell"+plural(3)+" within your "+clothesBottom()+", becoming permanently larger, while the venom continues to make it feel warm...");
				doLust(Math.floor((cockSize*cockSizeMod/5) + (percent()/10)), 1);
				cockChange(1,0);
				cockSnakeVenom += 5;
			}
			else if (cockTotal < 1 && vagTotal > 0) {
				if (clitSize > 20 && percent() <= 5) {
					textLP(" "+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+". You feel it swell and shift within your "+clothesBottom()+", your lips started to grow quite oddly as well...");
					vagChange(0,-1);
					cockChange(Math.ceil(clitSize*5/2),1);
					doLust(Math.floor((cockSize*cockSizeMod/5) + (percent()/10)), 1);
				}
				else{
					textLP("  "+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+". It doesn't hurt much, but the venom that spills into you makes you feel strangely aroused as your clit"+plural(2)+" swell"+plural(4)+" a little within your "+clothesBottom()+", becoming permanently larger, while the venom continues to make it feel warm...");
					cockSnakeVenom += 5;
					clitSize++;
					doLust(Math.floor(clitSize/5 + percent()/10), 1);
				}
			}
			else {
				if(percent() <= 40){
					textLP(" your groin. It doesn't hurt much, but you feel a little odd...");
					cockChange(1,0);
					doLust(Math.floor(percent()/10), 1);
				}
				else {
					textLP(" your groin. Though the endeavor proves fruitless, as all its venom manages to do is arouse you a little.");
					doLust(Math.floor(percent()/20), 1);
				}
			}
		}
	}

	//Desiccating Dust Devil
	if (enemyID == 102) {
		if (attack <= 30){
			textLP("\r\rThe sentient dust devil overcomes you and whooshes about your body, getting sand all over your "+skinDesc()+" and into some crevices you'd rather not think of, making you very uncomfortable and wearing away some of your sensitivity.");
			stats(0,0,0,-1);
			doLust(-5, 0);
		}
		else if (attack <= 60 && ((moistCalc(1) > 11 && cockTotal > 0) || (moistCalc(2) > 11 && vagTotal > 0) || (milkEngorgement > 200 && milkEngorgementLevel > 1) || (udderEngorgement > 200 && udderEngorgementLevel > 1 && udders == true))){
			if (milkEngorgement > 200 && milkEngorgementLevel > 1) {
				textLP("\r\rThe whirling sand leaps out at your "+boobDesc()+" chest and laps up some of the milk that spills from it, sucking it back in and strengthening the devil's endurance.");
				doeHP(5+Math.floor(percent()/20));
			}
			else if (udderEngorgement > 200 && udderEngorgementLevel > 1 && udders == true) {
				textLP("\r\rThe whirling sand leaps out at your "+udderDesc()+" udder and laps up some of the milk that spills from it, sucking it back in and strengthening the devil's endurance.");
				doeHP(5+Math.floor(percent()/20));
			}
			else if (moistCalc(1) > 11 && cockTotal > 0) {
				textLP("\r\rThe whirling sand across the "+cockDesc()+" bulge in your "+clothesBottom()+" and laps up some of the slick lubrication that spills from it, sucking the stuff back in and strengthening the devil's endurance.");
				doeHP(5+Math.floor(percent()/20));
			}
			else if (moistCalc(2) > 11 && vagTotal > 0) {
				textLP("\r\rThe whirling sand licks up "+legWhere(1)+" your "+legDesc(2)+", across your "+vulvaDesc()+" groin, and laps up some of the slick lubrication that spills from it, sucking the stuff back in and strengthening the devil's endurance.");
				doeHP(5+Math.floor(percent()/20));
			}
		}
		else if (attack <= 90){
			var chance:int = percent();
			if (chance < 12 && cockTotal > 0) {
				textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and softly drags across your "+cockDesc()+" masculine length"+plural(1)+", soaking up some of the moisture from within and causing "+plural(9)+" to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
				cockSize--;
				doeHP(2);
			}
			else if (chance < 23 && balls > 0 && showBalls == true)	{
				if (ballSize < 2) {	textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and softly drags across your "+ballDesc()+" scrotum. However, your balls are so puny that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and softly drags across your "+ballDesc()+" scrotum, soaking up some of the moisture from the testicles within and causing them to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					ballSize--; 
					doeHP(2);
				}
			}
			else if (chance < 34)	{
				if (butt < 1) {	textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and whisks across your "+buttDesc()+" rump. However, your butt is so flat that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and whisks across your "+buttDesc()+" rump, soaking up some of the moisture from within and causing it to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					butt--; 
					doeHP(2);
				}
			}
			else if (chance < 45 && vagTotal > 0)	{
				if (vulvaSize < 2) { textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and slips through your "+vulvaDesc()+" lips. However, your vulva is so tiny that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and slips through your "+vulvaDesc()+" lips, soaking up some of the moisture from within and causing them to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					vulvaSize--; 
					doeHP(2);
				}
			}
			else if (chance < 56 && vagTotal > 0)	{
				if (clitSize < 2) {	textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and whirls about your "+clitDesc()+" clit"+plural(2)+". However, your button"+plural(2)+" "+plural(14)+" so tiny that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and whirls about your "+clitDesc()+" clit"+plural(2)+", soaking up some of the moisture from within and causing "+plural(10)+" to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					vulvaSize--; 
					doeHP(2);
				}
			}
			else if (chance < 67)	{
				if (breastSize < 1) {	textLP("\r\rSome of the devil's sand creeps into your "+clothesTop()+" and gropes about your "+boobDesc()+" breasts. However, your chest is so flat that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesTop()+" and gropes about your "+boobDesc()+" breasts, soaking up some of the moisture from within and causing them to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					butt--; 
					doeHP(2);
				}
			}
			else if (chance < 78 && udders == true)	{
				if (udderSize < 2) {	textLP("\r\rSome of the devil's sand blow across your "+udderDesc()+" udder. However, your milk-bag is so small that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand blow across your "+udderDesc()+" udder, soaking up some of the moisture from within and causing it to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					butt--; 
					doeHP(2);
				}
			}
			else if (chance < 89 && udders == true)	{
				if (teatSize < 3) {	textLP("\r\rSome of the devil's sand licks across your "+teatDesc()+" teats. However, your bovine-nipples are so little that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand licks across your "+teatDesc()+" teats, soaking up some of the moisture from within and causing it to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					butt--; 
					doeHP(2);
				}
			}
			else {
				if (nippleSize < 2) {	textLP("\r\rSome of the devil's sand creeps into your "+clothesBottom()+" and brushes over your "+nipDesc()+"nipples. However, your nipples are so little that there is hardly any moisture for the sand to take, doing nothing for the devil."); }
				else {
					textLP("\r\rSome of the devil's sand creeps into your "+clothesTop()+" and brushes over your "+nipDesc()+"nipples, soaking up some of the moisture from within and causing them to shrink a little. The sand then returns to the devil, renewing some of windy essence.");
					butt--; 
					doeHP(2);
				}
			}
		}
		else if (attack <= 100){
			var chance:int = percent();
			textLP("\r\rA funnal of sand shoots out from the devil's form, whipping out and latching onto your ");
			if (chance < 12 && cockTotal > 0) {
				textLP(""+cockDesc()+" cock"+plural(1)+", siphoning out a lot of moisture and causing "+plural(9)+" to shrink dramatically, restoring a good deal of power to the devil's winds.");
				cockSize -= 5;
				doeHP(10);
			}
			else if (chance < 23 && balls > 0 && showBalls == true)	{
				if (ballSize < 1) {	textLP("balls. However, they're already so puny that the devil can't siphon any more moisture from them, proving a fruitless attack."); }
				else {
					textLP(""+ballDesc()+" testicles, siphoning out a lot of moisture and causing them to shrink dramatically, restoring a good deal of power to the devil's winds.");
					ballSize -= 5;
					if (ballSize < 0){ ballSize = 0; }
					doeHP(10);
				}
			}
			else if (chance < 34)	{
				if (butt < 1) {	textLP("butt. However, it's so flat that the devil can't siphon any more moisture from it, proving a fruitless attack."); }
				else {
					textLP(""+buttDesc()+" butt, siphoning out a lot of moisture and causing them to shrink dramatically, restoring a good deal of power to the devil's winds.");
					butt -= 5;
					if (butt < 0){ butt = 0; }
					doeHP(10);
				}
			}
			else if (chance < 45 && vagTotal > 0)	{
				if (vulvaSize < 2) {	textLP("vulva. However, your lips are so thin and tiny that the devil can't siphon any more moisture from them, proving a fruitless attack."); }
				else {
					textLP(""+vulvaDesc()+" vulva, siphoning out a lot of moisture and causing it to shrink dramatically, restoring a good deal of power to the devil's winds.");
					vulvaSize -= 5;
					if (vulvaSize < 1){ vulvaSize = 1; }
					doeHP(10);
				}
			}
			else if (chance < 56 && vagTotal > 0)	{
				if (clitSize < 2) {	textLP("clit"+plural(2)+". However, your button"+plural(14)+" so tiny that the devil can't siphon any more moisture from "+plural(10)+", proving a fruitless attack."); }
				else {
					textLP(""+clitDesc()+" clit"+plural(2)+", siphoning out a lot of moisture and causing "+plural(10)+" to shrink dramatically, restoring a good deal of power to the devil's winds.");
					clitSize -= 5;
					if (clitSize < 1){ clitSize = 1; }
					doeHP(10);
				}
			}
			else if (chance < 67)	{
				if (breastSize < 1) {	textLP("chest. However, it's so flat that the devil can't siphon any more moisture from it, proving a fruitless attack."); }
				else {
					textLP(""+boobDesc()+" bust, siphoning out a lot of moisture and causing your breasts to shrink dramatically, restoring a good deal of power to the devil's winds.");
					breastSize -= 5;
					if (breastSize < 0){ breastSize = 0; }
					doeHP(10);
				}
			}
			else if (chance < 78 && udders == true)	{
				if (udderSize < 2) { textLP("udder. However, it's so small that the devil can't siphon any more moisture from it, proving a fruitless attack."); }
				else {
					textLP(""+udderDesc()+" udder, siphoning out a lot of moisture and causing it to shrink dramatically, restoring a good deal of power to the devil's winds.");
					udderSize -= 5;
					if (udderSize < 1){ udderSize = 1; }
					doeHP(10);
				}
			}
			else if (chance < 89 && udders == true)	{
				if (teatSize < 3) { textLP("teats. However, they're so tiny that the devil can't siphon any more moisture from them, proving a fruitless attack."); }
				else {
					textLP(""+teatDesc()+" teats, siphoning out a lot of moisture and causing them to shrink dramatically, restoring a good deal of power to the devil's winds.");
					teatSize -= 5;
					if (teatSize < 2){ teatSize = 2; }
					doeHP(10);
				}
			}
			else {
				if (nippleSize < 2) { textLP("nipples. However, they're so tiny that the devil can't siphon any more moisture from them, proving a fruitless attack."); }
				else {
					textLP(""+nipDesc()+"nipples, siphoning out a lot of moisture and causing them to shrink dramatically, restoring a good deal of power to the devil's winds.");
					nippleSize -= 5;
					if (nippleSize < 1){ nippleSize = 1; }
					doeHP(10);
				}
			}
		}
	}

	//Lone Wolf
	if (enemyID == 201) {
		if (attack > 35 && attack <= 50){
			textLP("\r\rThe lone wolf leaps at you, taking a large bite with its sharp teeth.");
			doHP(-eDmg(6));
		}
		else if (attack > 50 && attack <=70 && lust > 15){
			textLP("\r\rHis cock beating against his belly with each step, his lust overcomes him for a moment. He runs up to you, jumping onto your "+legDesc(1)+" and humps wildly, smearing his canine pre up and down your "+legDesc(1)+". A small spurt of cum shoots out, the large drop oozing down to your "+legDesc(10)+". Not exactly a full climax, but enough for now, the wolf backs off.");
			doLust((lib/3), 1);
			doeLust(-Math.floor(percent()/10 + eSen/2));
		}
		else if (attack > 70 && gender != 0 && gender !=1){
			textLP("\r\rThe lone wolf lifts his leg after running up beside you, a bit of urine splashing out onto your "+legDesc(10)+". However, he was simply peeing, as the heady smell wafts up to your nose, the pheromones making your body shudder with arousal.");
			doLust(Math.floor(percent()/10 + lib/4), 1);
		}
		else{
			textLP("\r\rThe lone wolf rushes at you, scratching you with its claws.");
			doHP(-eDmg(8));
		}
	}

	//Gay Wolf
	if (enemyID == 202) {
		if (attack > 35 && attack <= 50){
			textLP("\r\rThe gay wolf leaps at you, taking a large bite with its sharp teeth.");
			doHP(-eDmg(6));
		}
		else if (attack > 50 && attack <=70 && lust > 15){
			textLP("\r\rHis cock beating against his belly with each step, his lust overcomes him for a moment. He runs up to you, jumping onto your "+legDesc(1)+" and humps wildly, smearing his canine pre up and down your "+legDesc(1)+". A small spurt of cum shoots out, the large drop oozing down to your "+legDesc(10)+". Not exactly a full climax, but enough for now, the wolf backs off.");
			doLust((lib/3), 1);
			doeLust(-Math.floor(percent()/10 + eSen/2));
		}
		else if (attack > 70 && gender != 0 && gender !=1){
			textLP("\r\rThe gay wolf lifts his leg after running up beside you, a bit of urine splashing out onto your "+legDesc(10)+". However, he was simply peeing, as the heady smell wafts up to your nose, the pheromones making your body shudder with arousal.");
			doLust(Math.floor(percent()/10 + lib/4), 1);
		}
		else{
			textLP("\r\rThe gay wolf rushes at you, scratching you with its claws.");
			doHP(-eDmg(8));
		}
	}

	//Horny Felin
	if (enemyID == 301)	{
		if (attack > 30 && attack <= 60 && eLust > 20){
			textLP("\r\rThe horny felin woman comes in close, embracing you as she grinds her slick cunt up and down your "+legDesc(1)+". She licks your "+boobDesc()+" chest while her feminine fluids spill down your thigh. She mewls a little as she has a small climax, alleviating some of her own frustrations while increasing yours in the process.");
			doLust(Math.floor(percent()/10 + lib/3), 1);
			doeLust(-Math.floor(percent()/10 + eSen/2));
		}
		else if (attack > 60 && attack <= 85 && eLust > 10){
			textLP("\r\rUtterly thirsting for sex, she turns away from you and gets on all fours. She bends down further while raising her butt high into the air, showing off her lithe body while also showing off the swollen lips that bulge out of either side of her bikini bottom beneath the loin cloth, her tail waving enticingly above. Her sex-driven display makes you a little hot as well.");
			doLust(Math.floor(percent()/10 + lib/4), 1);
		}
		else if (attack > 85){
			textLP("\r\rPlayfully, she lunges forward and bites you... hard. The pain is quite noticeable, but her giggling afterwards might also arouse you slightly, if you didn't know better...");
			doHP(-eDmg(7));
			doLust(Math.floor(lib/6), 1);
		}

		else {
			textLP("\r\rIn her frustration, she claws at you.");
			doHP(-eDmg(10));
		}
	}

	//Drunken Equan
	if (enemyID == 302)	{
		if (attack > 30 && attack <= 60 && eLust >= 20){
			textLP("\r\rThe drunken equan adjusts the giant bulge in his pants, grunting as a large gob of pre smears across his knee and blotches his pants. While not the most erotic display, whatever he's drinking makes the stuff smell extremely enticing...");
			doLust(Math.floor(lib/5), 1);
		}
		else if (attack > 60 && attack <= 80){
			textLP("\r\rHe lifts his large mug up to his lips, taking a big swig. He burps after downing it, his wounds seemingly less severe than before.");
			doeHP(Math.floor(percent()/10+5));
		}
		else if (attack > 80){
			textLP("\r\rStumbling uncontrollably, he plows into you.");
			doHP(-eDmg(7));
		}
		else {
			textLP("\r\rWith a hearty laugh, he bonks you on the head with his mug.");
			doHP(-eDmg(9));
		}
	}

	//Octopus Girl
	if (enemyID == 303)	{
		if (attack > 30 && attack <= 55) {
			textLP("\r\rWith a giggle that makes her breasts quiver, her hands move up to one of the starfish on her chest. She pries it away, her plump nipple popping out with a squirt of slightly pink milk. Giving you a quick wink, her other hand squeezes her breast, shooting a spurt of the stuff onto your body. The sweet-smelling liquid quickly absorbs into your "+skinDesc()+", making you grow warm and aroused.");
			doLust(Math.floor(20 + (percent()/10)), 1);
		}
		else if (attack > 55 && attack <= 80) {
			textLP("\r\rOne of her tentacles lashes out at you and whips up "+legWhere(1)+" your "+legDesc(2)+". It smarts a bit, but it seems as though she intentionally hit you with the softer underside. The suction cups tear through your "+clothesBottom()+" and stick to ");
			changeBot(-1);
			if (vagTotal > 0){
				textLP("the front of your feminine cleft"+plural(2)+". You can feel fluid seep from the cups and into your clit"+plural(2)+", arousing you further. She twists with a focused expression, tugging again and again at your clit"+plural(2)+", trying to wrench herself free after the attack and making your hips buck in turn. By the time she manages to remove her tentacle with a pop, your poor button"+plural(2)+" feel"+plural(4)+" a bit larger than before...");
				doLust(Math.floor(20 + (percent()/5)), 1);
				doHP(-5);
				clitSize++;
			}
			else if (vagTotal < 1 && cockTotal > 0){
				textLP(oneYour(1)+" cock"+plural(1)+". You can feel fluid seep from the cups and into your cock"+plural(2)+", arousing you further. The tentacle wraps around, tugging again and again at your erection, as through she were masturbating you. Although, from the focused expression on her first, she seems to simply be trying to wrench herself free after the attack. Not that it arouses you any less...");
				doLust(Math.floor(10 + (percent()/10) + lib/5), 1);
			}
			else if (vagTotal < 1 && cockTotal < 1)	{
				textLP("your empty groin. You can feel fluid seep from the cups and into your crotch, arousing you further. She twists with a focused expression, tugging again and again at your "+skinDesc()+", trying to wrench herself free after the attack. By the time she manages to remove her tentacle with a pop, you spot several hickies from where she had her way with you.");
				doLust(Math.floor(10 + (percent()/10)), 1);
			}

		}
		else if (attack > 80 && attireBot == -1) {
			textLP("\r\rShe lunges forward at you with a naughty look in her large eyes. She comes intimately close to your face, a long tongue drawing from her mouth and licking you up your cheek. Caught off guard by the sudden sign of affection, you fail to notice her tentacles move in around you.");
			if (vagTotal > 0){
				textLP(" Some creep up your "+legDesc(2)+" and sneak beneath your "+clothesBottom()+", sliding through your "+vulvaDesc()+" nether-lips. With a jump, you find your naughty hole"+plural(2)+" being penetrated. The slick tentacle"+plural(2)+" thrust in and out slightly, as if gauging your size.");
				if (vagLimit() < 20){
					textLP(" Not quite satisfied, the tentacle"+plural(2)+" plunge"+plural(4)+" in deep, stretching you wider than before.");
					vagChange(2,0);
				}
				doLust(Math.floor(lib/3), 1);
			}
			if (cockTotal > 0) {
				textLP(" A few wrap around your "+hipDesc()+" hips and pull out your "+cockDesc()+" erection"+plural(1)+" from your "+clothesBottom()+". Your hips buck as she wraps her tentacle"+plural(1)+" around your shaft"+plural(1)+", the slick skin seemingly gauging your girth more by touch than sight.");
				doLust(Math.floor(lib/3), 1);
			}
			textLP(" Her tentacles then wrap around your "+buttDesc()+" bum with a hug as she leans in, her breasts pressing against your "+boobDesc()+" chest. She kisses you lightly on the lips, slipping her tongue into your mouth. The sweet taste lingers for a moment, making you shiver in pleasure, before she moves back. Her tentacles then slime through your "+clothesBottom()+", leaving your "+buttDesc()+" ass nice and wet before she gives it a light smack.");
			doLust(Math.floor(10), 1);
			doHP(-2);
		}
		else {
			textLP("\r\rOne of her eight tentacles whips out and lashs you, leaving a welt. She still smiles, however, as she seems to find the act a little kinky.");
			doHP(-eDmg(4));
		}
	}

	//Little Big Bunny-Man
	if (enemyID == 304) {
		if (attack > 30 && attack <= 55) {
			textLP("\r\rWith a chuckle, he bounces past you and gives you a quick swat to your "+buttDesc()+" tush with his large foot in a rather playful manner.");
			doHP(-eDmg(15));
			doLust(Math.floor((percent()/10) + lib/10), 1);
		}
		else if (attack > 55 && attack <= 85) {
			textLP("\r\rGrabbing his own fuzzy scrotum, his eyes roll up into his head for a moment, biting his lip as he massages the testicles. A bit of pre drips down his fur and lathers around his balls until they're nice and shiny. Enjoying it a little too much, he decides to include you in the fun.");
			if (tallness <= 144)	{
				textLP(" He skips right up to you, towering over you. His legs bend down, lowering his testicles before your face, his knees straddling either side of your head. He presses his relatively enormous balls into your face, practically smothering you with the scent of his nuts while he grinds his hips into your head.\r\rHappy with the quick massage, he bounds back, letting you breath again.");
			}
			else if (tallness > 144){
				textLP(" His feet spring him forward at you, his legs wrapping around your neck. Sitting on your shoulders, he presses his relatively giant balls into your face, making sure you get a nice whiff while he grinds his hips into your head.\r\rHappy with the quick massage, he bounds back, letting you breath again.");
				
			}
			doLust(Math.floor((percent()/10) + lib/5), 1);
			doeLust(10);
			
		}
		else if (attack > 85 && eLust >= 70){
			textLP("\r\rHis pointy, carrot-like prick standing from his fuzzy sheath and dripping with pre, he decides to lunge at you.");
			if (breastSize >= 100) { textLP(" He hops up to your "+boobDesc()+" chest and abruptly turns around. Bending forward, his fluffy tail brushes over your face as his rump slips by. His balls rest upon your head, his sheath pressing into your face. You can feel his slick prick slip into your cleavage, the pointy tip easily drilling a path between your breasts. Within seconds the rabbity fellow begins hopping up and down upon your chest with fervor, squeezing the sides of your tits to crush his cock. You can feel his pulse beat strongly through his sheath and very soon you feel his muscles tense again and again. He lets out a groan as your "+clothesTop()+" floods with hot spunk, spurting between your flesh with a naughty sound and leaving your front completly swamped in a warm, sticky mess.\r\rThe whole thing taking less than a minute, he hops off of you, slapping a strand of cum across your face before returning to the battle, his lust somewhat sated."); }
			else if (butt >= 50) { 
				textLP(" He hops behind you, leaning down to grab the cheeks of your "+buttDesc()+" ass and making the cleavage in your "+clothesBottom()+" much deeper. His slick prick slips into the crack and in seconds he's fervently humping through your rear. Very quickly, he lets out a groan behind you as his cock shudders in your bum, ");
				if (tail > 1){ textLP("his hand yanking your "+tailDesc()+" high,"); }
				textLP(" while ribbons of spunk flying up your back and over your hair, decorating you in white.\r\rThe whole thing taking less than a minute, he hops off of you, leaving your back a cum-coated mess before returning to the battle, his lust somewhat sated."); 
			}
			else { textLP(" He aims at your chest, ramming the cock against it. The slick prick slides up your body and past your head, the wet flesh pressing against your cheek. He hugs you tight as he fervently humps you, blurring your vision with the pre that flood down to lubricate. Very quickly, he lets out a groan as the conical member geysers above you, showering you in his hot spunk. \r\rThe whole thing taking less than a minute, he hops off of you, leaving you a cum-coated mess and a sore cheek before returning to the battle, his lust somewhat sated."); }
			doeLust(-30);
			doLust(Math.floor(percent()/5 + lib/6), 1);
		}
		else {
			textLP("\r\rHe bounces closer and kicks you with one of his big feet, trying to soften you up a little.");
			doHP(-eDmg(8));
		}
	}

	//Little Big Bunny-Girl
	if (enemyID == 305) {
		if (attack > 30 && attack <= 55) {
			textLP("\r\rWith a giggle, she leans down and tickles you, amused by how cute you look. And as she stands back up, her relatively giant breasts thwap you upside the head.");
			doHP(-eDmg(15));
			doLust(Math.floor(percent()/10 + lib/10), 1);
			if (sen >= 70)	{ 
				textLP("\r\rYour body is so sensitive that her tickling has left you in a laughing fit. She takes the opportunity to 'attack' again.");
				enemyAttack();
			}
		}
		else if (attack > 55 && attack <= 85) {
			textLP("\r\rHer thighs press together as her hands reaches down to her naked groin. Biting her lip, she massages her pussy, her eyes closing with muffled whines. A bit of honey drips down her fur and lathers between her thighs until they're nice and shiny. Enjoying it a little too much, she decides to include you in the fun.");
			if (tallness <= 144)	{
				textLP(" She skips right up to you, towering over you. Her legs bend down, lowering her nether-lips to your face, her knees straddling either side of your head. She presses her relatively enormous pussy into your face, her clit rubbing across your cheek, practically smothering you with the scent of her arousal as she grinds her hips into your head.\r\rHappy with the quick massage, she bounds back, letting you breath again.");
			}
			else if (tallness > 144){
				textLP(" Her feet spring her forward at you, her legs wrapping around your neck. Sitting on your shoulders, she presses her relatively enormous pussy into your face, her clit rubbing across your cheek, practically smothering you with the scent of her arousal as she grinds her hips into your head.\r\rHappy with the quick massage, she bounds back, letting you breath again.");
			}
			if (hair > 0) {
				textLP(" However, the intense humidity and her thighs squeezing you so tightly has left your hair squished up into a mohawk.");
				hair = 6;
			}
			doLust(Math.floor(percent()/10 + lib/4), 1);
			doeLust(10);
			
		}
		else if (attack > 85 && eLust >= 70){
			textLP("\r\rThe bunny-girl's vulva looks rather swollen and red, and her clitoris peeks through the clothes like a very small yet erect penis. Her arousal gets the best of her and she lunges at you.");
			if (tallness > 80) { textLP(" Her legs spread wide and her clit rams into your side, grinding up your ribs. She does her best to clamp her thighs around your body.\r\rOne hand hugs your head while the other reaches down her backside and past her tail, nearly disappearing into her hungry cunny hole. She rapidly fists herself with loud schlicking sounds, her fem-juice squirting out across your "+legDesc(2)+" with each pump, while her hips pound again and against against your, powerfully dragging her relatively large clit up and down your "+clothesTop()+".\r\rNot surprisingly, it doesn't take long before she quivers, one last splash messing your "+clothesBottom()+", as she comes to a small orgasm."); }
			else { textLP(" Her legs spread wide as she hops over you, casting you in the shadow of her cunt. You feel a splash across your face as you look up, a strand of her fem-juice falling down as one of her hands spreads her lips open. The other hand pinches her clit, masturbating it fiercely as her rump comes down upon you.\r\rBefore you know it, you're surrounding by wet soft flesh. Two of her fingers clamp onto your "+legDesc(2)+", holding you against the ground while she stands back up, nearly lifting your "+clothesTop()+" off of your body. You have a small moment to breath before she descends once again, ramming your whole body into her vagina. The hot walls pulse and contract around you, squeezing you tightly. You can hear her furiously stroke her clit and moans escape from above. Then she rises, exposing you to the cooler air. She continues to use her like her own personal dildo, thrusting you in and out again and again until she lets out a howl, a waterfall of slime spilling out around you and forming a puddle where you stand."); }
			textLP("\r\rShe then steps away, her quick climax being enough to satiate herself for a bit. However, she's not quite done with you yet.");
			doeLust(-30);
			doLust(Math.floor(percent()/5 + lib/6), 1);
		}
		else {
			textLP("\r\rShe bounces closer and kicks you with one of her big feet, trying to soften you up a little.");
			doHP(-eDmg(8));
		}
	}

	//Fierce Naga
	if (enemyID == 306) {
		if (attack > 25 && attack <= 45){
			textLP("\r\rShe lunges forward with open maw and bites you! Though her bite isn't exactly the strongest...");
			doHP(-eDmg(10));
		}
		else if (attack > 45 && attack <=55){
			textLP("\r\rThe naga whips around and slams into you with her powerfule tail!");
			doHP(-eDmg(4));
		}
		else if (attack > 55 && attack <=75){
			textLP("\r\rHer tail coils and springs her into the air, leaping at you with wings outspread and closes them around you, battering your head about and knocking you slightly senseless.");
			doHP(-eDmg(7));
			stats(0,-1,0,0);
		}
		else if (attack > 75) {
			textLP("\r\rThe fierce naga twirls about, flourishing her prismatic wings and sending a cloud of sparkly colored dust in your direction. You sneeze a bit as you're forced to breath it in, feeling tingly as its magical effects settle in.");
			if (eggLaying > 0 && vagTotal > 0) {
				textLP("\r\rYour womb feels more active, like your next egg is ready to come out faster...");
				eggRate++;
				eggceleratorTime += 10;
				eggceleratorDose++;
				if (eggceleratorDose >  (8 + Math.ceil(percent()/20))) {
					textLP("A little too fast...\r\rYour "+bellyDesc()+" belly lets out a groan as you feel the fresh egg already press against your lips, demanding its way out. In the midst of battle, you squat where you stand, already in the process of laying.");
					if (attireBot == -2 || attireBot == 5 || attireBot == 7 || attireBot == 12 || attireBot == 13 || attireBot == 14 || attireBot == 16 || attireBot == 25) { 
						textLP(" Without time to remove your clothes, you're thankful for your "+clothesBottom+"'s open crotch as the egg immediately slips through "+oneYour(2)+" "+vulvaDesc()+" opening"+plural(2)+" and falls to the ground where it shatters and spills its unfertilized contents. Your "+legDesc(6)+" quake to hold yourself up as another egg is already on its way, with another close behind, firing from your poor cunt in such rapid succession that when you open your mouth to scream in climax, nothing can come out.");
					}
					else { 
						textLP(" Without time to remove your clothes, the egg immediately slips through "+oneYour(2)+" "+vulvaDesc()+" opening"+plural(2)+" and pushes at your "+clothesBottom()+". Just one stuck in the crotch of the fabric isn't too much of an issue, but you grip your quaking "+legDesc(6)+" as there are plenty more to come. Another egg pushes against the first, expanding your "+clothesBottom()+" further, their shells cracking slightly against each other, with a third forcing its way through you right behind. After four or five eggs filling your crotch, the cloth finally gives way and tears through, a mess of yolk and shell falling below you. Without any more blockage, the rest of the eggs are free to fly out of your poor cunt and shatter upon the ground, in such rapid succession that when you open your mouth to scream in climax, nothing can come out.");
						changeBot(-1);
					}
					textLP("\r\rIt doesn't take long before your "+legDesc(2)+" finally give"+legPlural(1)+" out and you fall into the mess, eggs still slipping through your slit. It doesn't take long for your body to burn through its production, your loins crying out in arousal as the laying slows. And once the last egg slips out, the naga licks her lips and closes in on the defenseless prey...");
					doLust(1000, 0);
					eggceleratorTime = 0;
					eggRate -= eggceleratorDose;
					eggceleratorDose = 0;
					hrs += 1;
				}
			}
			else if (pregCheck(0)) {
				textLP("\r\rYour womb feels warmer and more active as your belly rapidly swells a bit. The gestation of the offspring inside leaps forward, a sudden increase in maturation thanks to the dust.");
				i = 0;
				while (i < pregArray.length) {
					if (pregArray[i] == true) { pregArray[i+3] += 10; }
					i += 5;
				}
			}
			else if (gender != 0) {
				textLP("\r\rYour loins feel suddenly more fertile. If you can consider the desire to fuck as being more 'fertile'...");
				doLust(20, 1);
			}
			else {
				textLP("\r\rHowever, the tingle quickly subsides and seems to have had no effect on you. Though you won't be letting the naga know that.");
			}
		}
		else{
			textLP("\r\rLashing out with her claws, the naga slashes at you.");
			doHP(-eDmg(8));
		}
	}


	//Minotaur
	if (enemyID == 307) {
		if (attack <= 25) {
			textLP("\r\rBANG, ZOOM! Straight to the moon! He slams into your chest with such force that he knocks the breath out of you, giving him time for another attack");
			doHP(-eDmg(6));
			if (currentState == 2) { enemyAttack(); }
		}
		else if (attack <= 45) {
			textLP("\r\r\"Err...\" He stops for a moment, forgetting what he was going to do next... He's not a smart one, that's for sure.");
		}
		else if (attack <= 65 && eLust > 40){
			textLP("\r\rWith his cock growing erect out the side of his loin cloth, he pauses his assault for a moment to take care of himself... right in front of you. His large hand wraps around his thick cock and furiously begins to masturbate, the skin from his shaft dragging over the wide head again and again so quickly that it looks like it's winking. Then, with a grunt, a geyser of spunk sprays in your direction like a firehose.");
			if (percent() > str) {
				textLP(" It hits you with such force that you're blasted back against the wall and lose your breath for a moment, giving the Minotaur a chance for a followup attack while you catch your breath and wipe off some of the heady thick spooge.");
				doLust(Math.floor(eLust/2), 1);
				eLust -= 20;
				if (currentState == 2) { enemyAttack(); }
			}
			else { 
				textLP(" The spooge splatters all over you and the heady scent fills your nostrils...") 
				doLust(Math.floor(eLust/2), 1);
				eLust -= 20;
			}
		}
		else{
			textLP("\r\rPOW! He punches you right in the kisser.");
			doHP(-eDmg(8));
		}
	}

	//Freaky Little Girl
	if (enemyID == 308) {
		if (attack <= 23) {
			textLP("\r\rHer schizophrenic bloodlust subsides for a moment as she looks down. \"Oh no! My shoe came undone!\"\r\rShe turns away from you, acting as though not seeing you means you're not there, and she proceeds to bend over at the hip so she can reach down to fix her shoe. Inevitably, her skirt rises, showing off the backside of her panties. Despite the big cute looking Minotaur face embroided on the back, the fabric sinks into her cheeks and outlines her tight little rump so perfectly. You can't help but gaze at it until she twirls back around to continue with the battle.");
			doLust(Math.floor(percent()/10 + lib/4), 1);

		}
		else if (attack <= 46){
			textLP("\r\rShe coos... or snarls? Either way, you find her sinking her teeth into your "+skinDesc()+", making you yelp a little in turn. And as soon as she lets go, she is suddenly much more timid, saying \"Aww, I'm sorry... I'll kiss your boo-boo and make it better...\". She proceeds to lick the wound she just cause, kissing it rather... sensually.");
			doHP(-eDmg(4));
			doLust(Math.floor(percent()/10 + sen/5), 1);
		}
		else if (attack > 46 && attack <= 61 && eHP < 85){
			textLP("\r\r\"YOU THINK YOU CAN HURT ME?! ATTACK, MR. SNUGGLES!\"\r\rMr. Snuggles comes flying at you as she swing him around by his leg. The doll hits you with a surprising amount of force - extremely hard and heavy - and you lose your breath for a moment. You could swear the thing must be full of heavy metal and it's almost amazing a girl her size could even lift such a thing...");
			doHP(-eDmg(2));
		}
		else if (attack > 61 && attack <= 76 && eLust > 50){
			textLP("\r\r\"Mmm...\" The little girl actually seems like a little girl again as she holds her dolly close. Then a hand sinks down beneath her skirt. She lifts the frilly thing as she grabs at her crotch, exposing her panties and pulling them up through her slit, giving you a good view of her crevices. \"It's so tingly down there...\"");
			doLust(percent()/10 + lib/4, 1);
		}
		else{
			textLP("\r\rWith a growl, she jumps in and slashes at you with her claw-like fingernails. She lets out a gutteral giggle when she connects, licking her nails clean right away.");
			doHP(-eDmg(3));
		}
	}

	//Succubus
	if (enemyID == 309) {
		if (attack <= 25) {
			if (breastSize < 8) {
				textLP("\r\r\"Hmm... Your chest isn't quite up to par~\" Her wings flutter as she darts about and you feel her spaded tail graze across your "+boobDesc()+" chest. When she stops back where she started, one of her vials glows slightly and she smiles. You look down to see why and notice you chest has become more swollen, jiggling slightly!");
				boobChange(1);
			}
			else if (hips*hipMod < 16) {
				textLP("\r\r\"Those hips need to match your tits more, give you some more curves~\" She steps up and her tail wraps around your "+hipDesc()+" hips before pulling back. As she steps back, one of her vials glows and she smiles. You wince as you feel your "+clothesBottom()+" grow tighter, your hips stretching out furhter than before!");
				hips++;
			}
			else if (butt*buttMod < 15)	{
				textLP("\r\r\"Mmm... You backside needs some more attention, doesn't it?\" She rushes around behind you, the spade of her tail giving your "+buttDesc()+" rear a quick spank. One of her vials glows and she smiles as your rump presses against your "+clothesBottom()+", jiggling slightly as you stand.");
				butt++;
			}
			else if (cockTotal > 0)	{
				textLP("\r\r\"And this thing you've got here just totally ruins your womanly figure now. We should take care of that~\" The woman steps behind you but her tail reaches around to your "+cockDesc()+" bulge, cradling it with the spade and giving it a shake. You can feel your cock"+plural(1)+" shrink slightly within your "+clothesBottom()+" while one of her vials glow.");
				if (cockSize > 1) {	cockChange(-1,0); }
				else {
					cockChange(-1, 0);
					vagChange(0,1);
					textLP("\r\r\"Now that's my girl~ Who needs all those manly features when you can be a slut~?\" She seems quite pleased with the change.");
				}
			}
			else {
				textLP("\r\r\"You're such a good girl~ Don't you just want to use that body for all sorts of kinky things~?\" ");
				if (percent() < ment) { textLP("The woman tries to tempt you, but you manage to resist.");	}
				else { 
					textLP(" You feel yourself falling to the woman's temptations, your arousal growing stronger with the thoughts of what you could do.");
					stats(0,0,1,0);
				}
			}
		}
		else if (attack <= 45) {
			var chance:int = percent();
			if (chance <= 20 && hair > 0 && hairstyleLength(hair) && hairLength < 10) {
				textLP("\r\r\"You know what helps make a slut look good?\" She steps up behind you and runs her fingers through your "+hairDesc()+" hair. A tingly sensation envelops your skull");
				if (percent() < ment) { textLP(", but you manage to resist and interrupt her efforts."); }
				else {
					textLP(" and your hair begins to grow longer, a sort of kinky sensation overcoming you as you swish it about. The succubus steps back, a vial on her belt glowing from her success.");
					hairLength += 2;
					doLust(15,1); 
				}
			}
			else if (chance <= 40){
				textLP("\r\r\"A good slut needs some big jiggly tits, don't you think?\" The woman steps up behind you, her hands wrapping around to grope your "+boobDesc()+" chest. A tingly sensation spreads throughout it");
				if (percent() < ment) { textLP(", but you manage to resist and interrupt her efforts."); }
				else {
					textLP(" and your breasts swell within your "+clothesTop()+", a sort of kinky sensation overcoming you as you absentmindedly bounce their greater size. The succubus steps back, a vial on her belt glowing from her success.");
					boobChange(2);
					doLust(15,1); 
				}
			}
			else if (chance <= 60 && cockTotal > 0 && cockSize > 2) {
				textLP("\r\r\"A good girl doesn't need such garish things.\" She steps up to you and blatantly grabs the "+cockDesc()+" bulge in your "+clothesBottom()+". You feel it tingly in a rather pleasant way");
				if (percent() < ment) { textLP(", but you manage to resist and interrupt her efforts."); }
				else {
					textLP(" and you succumb to the pleasure while your cock"+plural(1)+" shrink"+plural(3)+" in her grasp. The succubus steps back, a vial on her belt glowing from her success.");
					cockChange(-2, 0);
					doLust(15,1); 
				}
			}
			else if (chance <= 80) {
				textLP("\r\r\"You know a slut is good for the taking when her hips are nice and wide, made to be used~\" The woman steps up and places her hands upon your hips as though preparing to dance with you. A tingly sensation spreads throughout them");
				if (percent() < ment) { textLP(", but you manage to resist and interrupt her efforts."); }
				else {
					textLP(" and your hips stretch outward, pushing at your "+clothesBottom()+", a sort of kinky sensation overcoming you as you can't help but sway your girthy loins. The succubus steps back, a vial on her belt glowing from her success.");
					hips += 2;
					doLust(15,1); 
				}
			}
			else {
				textLP("\r\r\"A nice big rump is perfect for spanking a naughty slut~\" She steps behind you and gives you a quick slap across your "+buttDesc()+" rear and grabs the cheeks. A tingly sensation spreads throughout them");
				if (percent() < ment) { textLP(", but you manage to resist and interrupt her efforts."); }
				else {
					textLP(" and your ass swells in her grasping, stretching your "+clothesBottom()+" while a sort of kinky sensation overcomes you and you can't help but shake your booty a little. The succubus steps back, a vial on her belt glowing from her success.");
					butt += 2;
					doLust(15,1); 
				}
			}
		}
		else if (attack <= 65) {
			textLP("\r\rShe stops for a moment and one hand dips into her cleavage while the other slinks between her thighs. Her tail curls like a finger hithering you closer as she rocks her hips and jounces her bosom. \"This is so much fun, don't you think~?\" She tries to tempt you with a rather sensual tone.");
			doLust(Math.floor(lib/3), 1); 
		}
		else if (attack <= 85 && eHP < 80){
			textLP("\r\rFeeling a bit winded from your attacks, she plucks a vial from her belt and brings it to her lips. As she drinks from it, she seems to be reinvigorated.");
			doeHP(Math.floor(percent()/5+10));
		}
		else{
			textLP("\r\rThe whip snaps across the room and strikes you. \"Just need to keep you awake, hun~\"");
			doHP(-eDmg(15));
		}
	}
}

