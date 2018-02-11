function doValley():void {
	var chance:int = eventSelect("Valley");

	//Fertility Statue
	if (chance == 1){
		viewButtonOutline(1,0,1,0,0,1,0,0,0,1,0,1);
		viewButtonText(1,0,1,0,0,1,0,0,0,1,0,1);
		buttonWrite(1, "Mouth");
		buttonWrite(3, "Ear");
		buttonWrite(6, "Breasts");
		buttonWrite(10, "Pussy");
		buttonWrite(12, "Leave");
		textL("Amidst the lush overgrowth in the middle of the valley, something particularly unique catches your eye. A statue nearly hidden by the large leaves of vines around it, it stands out as being the only thing not of natural origin. It is relatively large, about eight feet in height, and is of a woman presenting herself to the observer. Her arms out, her legs spread slightly, and her face pleasantly aroused. Plus she's completely nude, showing off her four ample breasts upon her chest and three slits between her legs.\r\rInspecting more closely, you can see that her middle vagina is gaping, with a hole that reaches inside. Her mouth is likewise, open lustfully, and there's even holes in her ears. Searching the base of the statue, you notice some intricate lettering that you couldn't possibly understand and, most oddly, there seems to be some mechanical components that have been exposed over the years...\r\rYou think this statue might be more than just a statue. Will you try to do anything with it?");
		doListen = function():void{
			if (buttonChoice == 1) {
				viewButtonOutline(1,0,1,0,0,0,0,1,1,0,1,0);
				viewButtonText(1,0,1,0,0,0,0,1,0,0,0,0);
				buttonWrite(1, "Lick");
				buttonWrite(3, "Poke");
				buttonWrite(9, "Cock Carv");
				buttonWrite(11, "Milk Bottle");
				if (checkItem(207)) { Choice9.visible = true; }
				if (checkItem(500) || checkItem(501)) { Choice11.visible = true; }
				buttonWrite(8, "Leave");
				textL("What would you like to do with the statue's open mouth?");
				doListen = function():void{
					if (buttonChoice == 1) {
						textL("You attempt to lick the statue's mouth. It's quite awkward, considering you chose to lick it rather than actually kiss it, and the statue doesn't seem to pleased either.");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 3) {
						textL("You attempt to poke the statue's mouth. That's soooo erotic. Poke. Poke. Poke. Poke. You're an idiot...");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 9) {
						textL("You stick the cock carving into the statue's open mouth. It seems to be a perfect fit and a rather lewd activity. Not exactly pleasurable for the statue, but a nice sex-act nonetheless. You feel as though you're slightly more experienced with this practice and the statue's face seems happy with it as well.");
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						doSexP(15);
						loseManyItem(207, 1);
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 11) {
						textL("You pour the milk into the statue's open mouth. The sweet fluids flow down inside of her and she seems pleased...");
						textLP("\r\rA loud rumbling echoes from behind the statue. The ground itself shakes, the vegetation before you parting with the soil beneath. You hear trees crack and crunch against each other as they're pushed aside. Birds fly up and away to escape the tremors. And soon enough, you're staring down into an elaborate entryway buried beneath the ground. Stone pillars and fantastic carvings line the walls, leading up to a large sturdy door.\r\rOnce the process settles, you move in to inspect it. You can't read anything that adorns the walls or any suggestion as to how to open the large door. All you can see is a large opening that might one day be a keyhole, but is currently full of static and not yet loaded into the game.");
						if (checkItem(254) || checkStash(254)) { 
							textLP("\r\rYou have already taken the lantern from here, so there's not much else you can do. For now you leave the statue and this hidden entrance and head back to town."); 
						}
						else {
							textLP("\r\rThe only other thing of note is the lantern that hangs beside the door. It sheds a decent amount of light and may be useful in accessing some darker areas, so you take it, just in case. Otherwise, you can't seem to find anything else to do with this hidden entrance and you're left having to head back to town.");
							itemAdd(254);
						}
						if (checkItem(500))	{ loseManyItem(500, 1);	}
						else { loseManyItem(501, 1); }
						hrs = 3;
						doEnd();
					}
					if (buttonChoice == 8) {
						textL("Wary of ancient puzzles involving oversexualized statues, you head back to town for now.");
						hrs = 1;
						doEnd();
					}
				}
			}
			if (buttonChoice == 3) {
				viewButtonOutline(1,0,1,0,0,0,0,1,1,0,1,0);
				viewButtonText(1,0,1,0,0,0,0,1,0,0,0,0);
				buttonWrite(1, "Lick");
				buttonWrite(3, "Poke");
				buttonWrite(9, "Cock Carv");
				buttonWrite(11, "Milk Bottle");
				buttonWrite(8, "Leave");
				if (checkItem(207)) { Choice9.visible = true; }
				if (checkItem(500) || checkItem(501)) { Choice11.visible = true; }
				textL("What would you like to do with the statue's ear?");
				doListen = function():void{
					if (buttonChoice == 1) {
						textL("You lick the statue's ear. The subtle and sensual act nearly makes the statue shiver in delight and she seems rather pleased...");
						textLP("\r\rA loud rumbling echoes from behind the statue. The ground itself shakes, the vegetation before you parting with the soil beneath. You hear trees crack and crunch against each other as they're pushed aside. Birds fly up and away to escape the tremors. And soon enough, you're staring down into an elaborate entryway buried beneath the ground. Stone pillars and fantastic carvings line the walls, leading up to a large sturdy door.\r\rOnce the process settles, you move in to inspect it. You can't read anything that adorns the walls or any suggestion as to how to open the large door. All you can see is a large opening that might one day be a keyhole, but is currently full of static and not yet loaded into the game.");
						if (checkItem(254) || checkStash(254)) { 
							textLP("\r\rYou have already taken the lantern from here, so there's not much else you can do. For now you leave the statue and this hidden entrance and head back to town."); 
						}
						else {
							textLP("\r\rThe only other thing of note is the lantern that hangs beside the door. It sheds a decent amount of light and may be useful in accessing some darker areas, so you take it, just in case. Otherwise, you can't seem to find anything else to do with this hidden entrance and your left having to head back to town.");
							itemAdd(254);
						}
						hrs = 3;
						doEnd();
					}
					if (buttonChoice == 3) {
						textL("You attempt to poke the statue's ear. Why would you do such a thing? Would you like someone poking your ear? The statue sure doesn't seem to like it.");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 9) {
						textL("You attempt to stick a cock carving into the statue's ear. You attempt to stick a penis-like object into someone's ear. What the hell is wrong with you?!");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						loseManyItem(207, 1);
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 11) {
						textL("You attempt pour the milk into the statue's ear. Why? Maybe if there was a buildup of ear-wax that might be a good idea, but even then that's not exactly smart.");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						if (checkItem(500))	{ loseManyItem(500, 1);	}
						else { loseManyItem(501, 1); }
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 8) {
						textL("Wary of ancient puzzles involving oversexualized statues, you head back to town for now.");
						hrs = 1;
						doEnd();
					}
				}
			}
			if (buttonChoice == 6) {
				viewButtonOutline(1,0,1,0,0,0,0,1,1,0,1,0);
				viewButtonText(1,0,1,0,0,0,0,1,0,0,0,0);
				buttonWrite(1, "Lick");
				buttonWrite(3, "Poke");
				buttonWrite(9, "Cock Carv");
				buttonWrite(11, "Milk Bottle");
				if (checkItem(207)) { Choice9.visible = true; }
				if (checkItem(500) || checkItem(501)) { Choice11.visible = true; }
				buttonWrite(8, "Leave");
				textL("What would you like to do with the statue's four breasts?");
				doListen = function():void{
					if (buttonChoice == 1) {
						textL("You lick the statue's breasts, pleasuring the nipples that stick out. It's not exactly something that can lead to climax alone, maybe with some actual suckling, but a nice sex-act nonetheless. You feel as though you're slightly more experienced with this practice and the statue's face seems happy with it as well.");
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						doSexP(10);
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 3) {
						textL("You attempt to poke the statue's boobs. The boobs definitely don't bite back, but it seems like a rather annoying way to react to boobs.");
						textLP("\r\rYou hear a whir and move back, the statue's face looking somewhat cross. A green-ish glowing mist exudes from the statue and quickly wraps around you, sinking into your "+skinDesc()+".");
						if (boobTotal == 2)	{
							textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
							if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
							boobTotal = 4;
							fourBoobAffinity = 100;
						}
						textLP("\r\rAs the mist disappears, you also have this deep feeling of lust building inside... It doesn't seem to dissipate either, constantly nagging.");
						if (ment > 60) { textLP(" You have a feeling that the statue is trying to teach you how to really pleasure a woman..."); }
						fertilityStatueCurse = 48;
						minLust += 10;
						doLust(0,0);
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 9) {
						textL("You wedge a cock carving in between the statue's two sets of breast. It fits relatively well and seems like a rather lewd act. Not exactly pleasurable for the statue, but quite kinky nonetheless. You feel as though you're slightly more experienced with this practice and the statue's face seems happy with it as well.");
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						doSexP(15);
						loseManyItem(207, 1);
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 11) {
						textL("You pour the milk out over the breasts until they're completely covered in the silky white fluid and the nipples drip with the stuff as though they are lactating. The statue seems very pleased with this idea and you hear gears turning within.\r\rAt the base of the statue, a hidden compartment pops out.");
						if (knowBazoomba == false) {
							textLP(" A scroll rolls out, allowing you to take it. You open it up and read through the various pictographs. It seems to be an alchemical recipe! You can make out the actual ingredients for the concoction, but you can't seem to tell what it is exactly, only able to determine that it creates \"more of the best things in life\"?\r\rYou have learned the recipe for Bazoomba!");
							knowBazoomba = true;
						}
						else { textLP(" However, it's completely empty. You already took the recipe that was in here before, so there's nothing left within."); }
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						hrs = 2;
						if (checkItem(500))	{ loseManyItem(500, 1);	}
						else { loseManyItem(501, 1); }
						doEnd();
					}
					if (buttonChoice == 8) {
						textL("Wary of ancient puzzles involving oversexualized statues, you head back to town for now.");
						hrs = 1;
						doEnd();
					}
				}
			}
			if (buttonChoice == 10) {
				viewButtonOutline(1,0,1,0,0,0,0,1,1,0,1,0);
				viewButtonText(1,0,1,0,0,0,0,1,0,0,0,0);
				buttonWrite(1, "Lick");
				buttonWrite(3, "Poke");
				buttonWrite(9, "Cock Carv");
				buttonWrite(11, "Milk Bottle");
				if (checkItem(207)) { Choice9.visible = true; }
				if (checkItem(500) || checkItem(501)) { Choice11.visible = true; }
				buttonWrite(8, "Leave");
				textL("What would you like to do with the statue's gaping pussy?");
				doListen = function():void{
					if (buttonChoice == 1) {
						textL("You lick the statue's pussy, pleasuring it with your mouth. A great form of foreplay, it could make the statue come from that alone. However, it still wants a little more. Yet, you feel as though you're slightly more experienced with this practice and the statue's face seems happy with it as well.");
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						doSexP(20);
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 3) {
						textL("You poke the statue's gaping pussy. Your finger slides up inside and diddles within, pleasuring the statue a bit. It's not quite like the real thing, but a fun thing to do nonetheless. You feel as though you're slightly more experienced with this practice and the statue's face seems happy with it as well.");
						textLP("\r\rThen, a glint of light obscures your view for just a moment and when it's gone you find yourself outside of the valley. The statue must have teleported you, preventing you from trying anything else. For now, you head back to town.");
						doSexP(8);
						hrs = 2;
						doEnd();
					}
					if (buttonChoice == 9) {
						textL("You slide a cock carving up into the statue's open pussy. The penis-like object seems to be a perfect fit and you hear a click as the thing unlocks something within. The statue seems rather pleased with the pleasurable gesture...");
						textLP("\r\rA loud rumbling echoes from behind the statue. The ground itself shakes, the vegetation before you parting with the soil beneath. You hear trees crack and crunch against each other as they're pushed aside. Birds fly up and away to escape the tremors. And soon enough, you're staring down into an elaborate entryway buried beneath the ground. Stone pillars and fantastic carvings line the walls, leading up to a large sturdy door.\r\rOnce the process settles, you move in to inspect it. You can't read anything that adorns the walls or any suggestion as to how to open the large door. All you can see is a large opening that might one day be a keyhole, but is currently full of static and not yet loaded into the game.");
						if (checkItem(254) || checkStash(254)) { 
							textLP("\r\rYou have already taken the lantern from here, so there's not much else you can do. For now you leave the statue and this hidden entrance and head back to town."); 
						}
						else {
							textLP("\r\rThe only other thing of note is the lantern that hangs beside the door. It sheds a decent amount of light and may be useful in accessing some darker areas, so you take it, just in case. Otherwise, you can't seem to find anything else to do with this hidden entrance and your left having to head back to town.");
							itemAdd(254);
						}
						loseManyItem(207, 1);
						hrs = 3;
						doEnd();
					}
					if (buttonChoice == 11) {
						textL("You push the bottle of milk up against the statue's pussy, shaking it to try and get some milk inside. A strange act, but you seem to get a response as white wispy fumes come flowing back out from the hole and begin to swirl around yourself. You gasp as your belly begins to swell, filling with something warm and liquid, sloshing about within. You continue to swell more and more, until you're looking rather pregnant!\r\rThen, just before a glint of light obscures your vision, you could almost swear that the statue gave you a joking wink, and then you find yourself teleported outside of the valley. Left with a much larger gut, you cradle it the best you can as you try to heft it back to town...");
						pregArray.push(true, 504, 208, 200, 0);
						if (checkItem(500))	{ loseManyItem(500, 1);	}
						else { loseManyItem(501, 1); }
						hrs = 2;
						doEnd();						
					}
					if (buttonChoice == 8) {
						textL("Wary of ancient puzzles involving oversexualized statues, you head back to town for now.");
						hrs = 1;
						doEnd();
					}
				}
			}
			if (buttonChoice == 12) {
				textL("Wary of ancient puzzles involving oversexualized statues, you head back to town for now.");
				hrs = 1;
				doEnd();
			}
		}		
	}

	else if (chance == 2) {
		textL("With all the flowers in this vibrant valley, one in particular seems to lure you in. The scent caught your nose from quite the distance, so delightfully fragrant, and yet its petals are merely black with white stripes, not nearly as colorful as the rest.\r\rHowever, the smell alone is worth holding on to, so you pick the flower and slip it into your bag.");
		itemAdd(255);
		hrs = 2;
		doEnd();
	}

	else if (chance == 3) {
		textL("Strolling through the pleasant valley, a bush catches your eye. Its fruit are large and round, looking quite delicious. You find a ripe one and pluck it, storing it for later when you're hungry.");
		itemAdd(251);
		hrs = 2;
		doEnd();
	}
	else if (chance == 4) {
		textL("While exploring the valley, you step on something rather hard. Quickly lifting your "+legDesc(9)+", you find a small item sticking up out of the ground. With a tear-drop shape, it seems to be completely made of wood and rather old. Its surface is engraved with depictions of tree-like people losing their limbs and growing up towards the sun at the tip of the tear-drop.\r\rThis might be of some use, so you pocket it.");
		itemAdd(249);
		hrs = 2;
		doEnd();
	}
	else if (chance == 5) {
		textL("The valley is just so bright and lively that... you feel like you could just rest here forever... In fact... you lie down in a bed of flowers and drift off to sleep...");
		doNext();
		doListen = function():void{
			textL("You wake up some time later. You have no idea how long you were out at first, but the fact that some of the flowers have grown around you and a few bugs have taken up home is a bit disconcerting. You feel completely refreshed, though a little drowsy in some respects. You quickly jump up and head out of the valley before any more time passes and head back into town.\r\rApparently you had been gone for a couple days...");
			hrs += 48;
			exhaustion = 0;
			skipExhaustion = true;
			doLust(-10,0);
			stats(0,0,-1,0);
			doHP(1000000);
			
			doEnd();
		}
	}

}