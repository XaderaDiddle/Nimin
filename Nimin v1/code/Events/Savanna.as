function doSavanna():void{
	var chance:int = eventSelect("Savanna");
	if (chance == 1){
		textL("While heading through the warm savanna, you think you feel it get suddenly warmer... A mrowl echoes around you as you see a slender felin female sway her hips towards you. Her fur looks like a mess, her bikini tops disheveled, 2 of her 6 nipples exposed and looking quite stiff and sore, and her loin cloth is completely drenched in something slick and sticky. Her hand reaches behind the cloth as she spots you and shivers.\r\r\"Please... So hot... Must fuck...\"\r\rUtterly driven and distraught by her lonely, fruitless heat, the desperately horny felin lunges at you, not sure whether she's about to fuck you or tear you to shreds!");
		doNext();
		doListen = function():void{
			enemyID = 301;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();

		}
	}
	else if (chance == 2){
		textL("While trudging along the savanna, you hear the stamping of hooves. Drunken song erupts in the air as a large equan man stumbles your way. His pants unbuttoned, his hand hidden within, you can see him groping his large erection. In his other hand he holds a large mug, still filled with alcohol. He smiles as he sees you, and then charges right at you!");
		doNext();
		doListen = function():void{
			enemyID = 302;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 3){
		textL("You roam about the savanna, not really finding anything interesting. However, the warm weather kinda makes you wanna take off your clothes...");
		doLust(Math.floor(lib/4), 1);
		hrs = 1;
		doEnd();
	}
	else if (chance == 4){
		textL("In the heat of the savanna, you come across a secluded pond. Well, not quite pond, considering most of the water has evaporated and there's only a giant mudhole, but the mud itself looks rather clean. In fact, it's the perfect kind of mud for a facial!\r\rBeing the entrepreneur that you are, you take out a bottle and shove some of the mud inside, saving it for some nice facial cleansing in the future.");
		itemAdd(245);
		hrs = 2;
		doEnd();
	}

	else if (chance == 5){
		textL("After a few hours of being lost under the sweltering sun, you come across the faint signs of a path. Would you like to follow it?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				if (firstExplore == false) {
					textL("You take a deep breath. You're finally doing it, you're actually going beyond your home. There's a sense of nervousness from the unknown, but at the same time a since of exhiliration, like you're actually going to do something important. And for the first time since you've started having those dreams, you don't feel anxious about your life. You step forward with a sense of relief.\r\r");
					firstExplore = true;
				}
				else { textL(""); }
				if (currentZone == 2){
					textLP("Following the path, the vegetation becomes denser and denser until trees surround you. You begin to see various wooden structures built amongst the canopy. Rope-bridges and circular huts everywhere, with lithe cat-like people walking about or jumping from branch to branch. The path leads you right to one of the few spiraling ramps that encircles the trees, bringing you up to the tree-born city.\r\rYou have now entered the Felin home-city of Siz'Calit! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
					regionChange(4);
					if (foundSizCalit == false) { foundSizCalit = true; }
					hrs = 4;
					doEnd();
				}
				else if (currentZone == 4){
					textLP("Following the path, signs of civilization come into view. Large tents flutter in the breeze, made from canvas held up by rocks and logs, with a few smaller brick buildings here and there. You can hear the soft clapping of hard feet everywhere, as you spot several large horse-like people walk and dash about.\r\rYou have now entered the Equan home-city of Firmshaft! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
					regionChange(2);
					if (foundFirmshaft == false) { foundFirmshaft = true; }
					hrs = 4;
					doEnd();
				}
			}
			else {
				textL("You return from whence you came.");
				hrs = 1;
				doEnd();
			}
		}
	}
}