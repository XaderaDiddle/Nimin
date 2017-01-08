/***********
 *Menagerie*
 ***********/

function doDayCare():void{
	textL("Welcome to your personal Day-Care! However, there isn't much to do yet except gawk awkwardly at your children (you weirdo).");
	if (currentDayCare != currentZone) {
		textLP("\r\rHowever, it seems as though this isn't your registered Day-Care. Your Day-Care is currently in "+regionName(currentDayCare)+".");
		textLP("\r\rIf you would like to send a party of well-experienced travelers to "+regionName(currentDayCare)+" to safely bring your children here, it will cost 500 coins.");
		if (coin < 500) { textLP(" Which you don't have enough of anyways.");	}
		viewButtonOutline(1,0,0,0,0,0,0,0,1,0,0,0);
		viewButtonText(0,0,0,0,0,0,0,0,1,0,0,0);
		if (coin >= 500){ Choice1.visible = true; }
		buttonWrite(1, "Transfer");
		buttonWrite(9, "Leave");
		doListen = function():void{
			if (buttonChoice == 1)	{
				textL("Spending your 500 coins, a caravan is gathered and sent out immediately, thanks to there being a few groups that do this sort of thing for a living. You wait around the Day-Care, anxiously awaiting the safe return of your children (and if you don't have any you're just silly). About 8 hours pass and the caravan comes rolling back in, without a scratch or any other problems, thanks to the skill of those you hired and your children are successfully transported to their new location!");
				currentDayCare = currentZone;
				hrs = 8;
				doCoin(-500);
				doEnd();
			}
			else {
				doReturn();
			}
		}
	}
	else {

		if (humanChildren == 1){ textLP("\r\rYou have "+humanChildren+" human kid. It gets along well in its surroundings, curiously exploring."); }
		else if (humanChildren > 0){ textLP("\r\rYou have "+humanChildren+" human kids. They get along well in their surroundings, curiously exploring."); }
		
		if (equanChildren == 1){ textLP("\r\rYou have "+equanChildren+" equan foal. It tends to compare sizes with everyone it meets..."); }
		else if (equanChildren > 0){ textLP("\r\rYou have "+equanChildren+" equan foals. They tend to compare sizes with everyone they meet..."); }

		if (lupanChildren > 0){ textLP("\r\rYou have "+lupanChildren+" lupan pups. They growl and playfully pretend to bark at each other while they wrestle innocently."); }
		if (felinChildren > 0){ textLP("\r\rYou have "+felinChildren+" felin kittens. They mewl and cuddle against each other, and often sneaking in shots at their siblings with a paw when the other isn't paying attention."); }

		if (cowChildren == 1){ textLP("\r\rYou have "+cowChildren+" half-cow girl. She tends to latch onto a milky nipple whenever she gets the chance and plays with her own nipples and udder absent-mindedly, as though they are strangely warm to her."); }
		else if (cowChildren > 0){ textLP("\r\rYou have "+cowChildren+" half-cow girls. They tend to latch onto milky nipples whenever they get the chance and play with their own nipples and udders absent-mindedly, as though they are strangely warm to them."); }

		
		if (lizanChildren > 0){ textLP("\r\rYou have "+lizanChildren+" lizan hatchlings. They tend to find the sunniest spots and lounge around."); }
		if (lizanEggs > 0){ 
			textLP("\r\rYou have "+lizanEggs+" lizan children, still growing within their eggs and all tucked away in a padded crate with blankets draped over them to keep them nice and warm."); 
			if (percent() <= 20) {
				textLP(" Some of them are in the process of hatching! You rush over as they begin to crack, spotting their scaley muzzles push through. After they have cleared away a good hole, you assist them the rest of the way, helping them crawl out and dry off. They seem to purr a little before drifting off to sleep, exhausted from the effort. You bundle them up and know they'll be well taken care of here.");
				var tempInt:int = Math.floor(percent()/20 + 2);
				if (tempInt > lizanEggs) { tempInt = lizanEggs; }
				lizanEggs -= tempInt;
				lizanChildren += tempInt;
			}
		}
		if (bunnionChildren > 0){ textLP("\r\rYou have "+bunnionChildren+" rabbit-like bunnies. You and the nannies try to keep them from humping everything, to little success..."); }
		if (miceChildren > 0){ textLP("\r\rYou have "+miceChildren+" mouse-like babies. Still rather naked with soft fuzz coming in, they're temporarily clothed. They crawl around the ground curiously, but jump at even the slightest loud noise or movement. But they're very affectionate when held safely."); }

		if (birdChildren > 0){ textLP("\r\rYou have "+birdChildren+" bird-like hatchlings. They hop about, a bit unbalanced by their undeveloped wings and have a tendency to collect shiny things."); }
		if (birdEggs > 0){ 
			textLP("\r\rYou have "+birdEggs+" children, still growing within their eggs and all tucked away in a padded crate with blankets draped over them to keep them nice and warm."); 
			if (percent() <= 20) {
				textLP(" Some of them are in the process of hatching! You rush over as they begin to crack, spotting their stiff beaks break through. After they have cleared away a good hole, you assist them the rest of the way, helping them preen away the broken shells and dry off. They chirp a little before drifting off to sleep, exhausted from the effort. You bundle them up and know they'll be well taken care of here.");
				var tempInt:int = Math.floor(percent()/25 + 1);
				if (tempInt > birdEggs) { tempInt = birdEggs; }
				birdEggs -= tempInt;
				birdChildren += tempInt;
			}
		}

		if (pigChildren > 0) { textLP("\r\rYou have "+pigChildren+" piglet-like babies. They crawl about, sniffing everything with they're upturned noses. They aren't obese, but they sure do like food, feeding from you whenever they can and munching on any snacks they find."); }
		if (skunkChildren > 0){ textLP("\r\rYou have "+skunkChildren+" skunk-like kits. When they're enjoying themselves and resting, they smell divine. When they're scared or frustrated, however, steer clear..."); }

		if (bugChildren > 0){ textLP("\r\rYou have "+bugChildren+" bug-like hatchlings. They crawl around, inspecting everything closely and taking a keen liking to anything that's even mildly sweet."); }
		if (bugEggs > 0){ 
			textLP("\r\rYou have "+bugEggs+" bug-like children, still growing within their soft squishy eggs and all tucked away in a padded crate with blankets draped over them to keep them nice and warm."); 
			if (percent() <= 20) {
				textLP(" Some of them are in the process of hatching! You rush over as they begin to split, spotting their chitinous faces push through. It doesn't take much effort for them to slip out of the eggs, allowing you to quickly help wipe them clean of the gooey gunk. They seem to click rapidly and softly, like a stuttered purr, before drifting off to sleep, exhausted from the effort. You bundle them up and know they'll be well taken care of here.");
				var tempInt:int = Math.floor(percent()/20 + 3);
				if (tempInt > bugEggs) { tempInt = bugEggs; }
				bugEggs -= tempInt;
				bugChildren += tempInt;
			}
		}

		if (wolfPupChildren > 0){ textLP("\r\rYou have "+wolfPupChildren+" domesticated wolf pups. They growl and nip at each other playfully, jumping and crashing into each other again and again."); }
		
		if (calfChildren == 1) { textLP("\r\rYou have "+calfChildren+" baby calf. It stumbles around on all four hooves, rather large and clumsy, drinking milk whenever it can. Otherwise it's beginning to learn how to eat grass pretty quickly."); }
		if (calfChildren > 1) { textLP("\r\rYou have "+calfChildren+" baby calves. They stumble around on all four hooves, rather large and clumsy, drinking milk whenever they can. Otherwise they're beginning to learn how to eat grass pretty quickly."); }
		
		if (minotaurChildren == 1) { textLP("\r\rYou have "+minotaurChildren+" baby from the Minotaur. It is quite large and hulking compared to other babies, and powerful as well. It doesn't seem like the smartest child in the world, but it likes to help out by lifting and carrying things.");	}
		if (minotaurChildren > 1) { textLP("\r\rYou have "+minotaurChildren+" babies from the Minotaur. They are quite large and hulking compared to other babies, and powerful as well. They don't seem like the smartest children in the world, but they like to help out by lifting and carrying things.");	}

		if (freakyGirlChildren > 0)	{ textLP("\r\rYou have "+freakyGirlChildren+" cute little balls of fuzz babies with adorable human-like faces and long ears. They roll and bounce about, acting adorable, but if you're not careful and make them angry, you might lose a finger... You're not entirely sure if they'll grow legs and a full body like their 'father'; you don't know much about them at all, really."); }
		
		if (currentText == "Welcome to your personal Day-Care! However, there isn't much to do yet except gawk awkwardly at your children (you weirdo)."){ textL("\r\rYou have yet to have any children that you keep in your day-care, it seems."); }
		
		doEnd();
	}
}