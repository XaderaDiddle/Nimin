function doPlains():void{
	var chance:int = eventSelect("Plains");
	if (chance == 1) {
		textL("You pause as you kick something soft in the tall grass. You look down and see a somewhat shiny almost rubbery little ball roll a bit before coming to a stop. It looks kinda cute and squishy, making you feel cuddly just looking at it.\r\rWould you like to pick up the ball?");
		buttonConfirm();
		doListen = function():void{
			if (percent() < ment) {
				textL("Whether you wanted to or not, you seem to be leaning down to pick it up. Some urge to snuggle has overcome you, forcing you to attempt to pick the squishy thing up.\r\rLiquidy tendrils lash out from the ball, sticking to your face and arms, belly and "+legDesc(2)+". You don't have time to resist as it wraps around your body, seeping past your "+currentClothes()+" and coating your "+skinDesc()+".\r\rOver within moments, you stand there and gradually try to move. A plush and soft layer, slightly shiny and malleable just like the ball, covers all your "+skinDesc()+". It doesn't impede your movement or actions, almost like it was an extra layer of skin, and doesn't do much but make you... snuggly.");
				snuggleBall = true;
				itemAdd(244);
				hrs = 2;
			}
			else {
				if (buttonChoice == 6) { 
					textL("You kneel down and pick up the squishy ball, feeling quite pleasant in your hand. Kinda warm and almost as soft as liquid, it feels like something pleasant to snuggle with. For now, you put it in your bag.");
					itemAdd(244);
					hrs = 2;
				}
				else {
					textL("Wary of cute and cuddly balls in the middle of nowhere, you decide to leave it in case it's somebody's toy or something that they might come back for.");
					hrs = 1;
				}
			}
			doEnd();
		}
	}
	else if (chance == 2){
		textL("You hear a hiss amidst some overgrown grass. Stopping cautiously, you manage to avoid stepping on a particularly dangerous snake. The cock-snake. Aptly named due to its head looking much like the glans of a human cock, this breed of snake is also known to devour that of the same... And if its opponent doesn't have one, they soon will.");
		doNext();
		doListen = function():void{
			enemyID = 101;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 3){
		textL("While trudging along the plains, you hear the stamping of hooves. Drunken song erupts in the air as a large equan man stumbles your way. His pants unbuttoned, his hand hidden within, you can see him groping his large erection. In his other hand he holds a large mug, still filled with alcohol. He smiles as he sees you, and then charges right at you!");
		doNext();
		doListen = function():void{
			enemyID = 302;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 4){
		textL("You wander about the open fields and find nothing but a handful of grain. At least the carbs will give you energy!");
		itemAdd(209);
		hrs = 1;
		doEnd();
	}
	else if (chance == 5){
		textL("After a few hours of being lost amongst the vast expanse of flat plains, you come across the faint signs of a road. Would you like to follow it?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				if (firstExplore == false) {
					textL("You take a deep breath. You're finally doing it, you're actually going beyond your home. There's a sense of nervousness from the unknown, but at the same time a since of exhiliration, like you're actually going to do something important. And for the first time since you've started having those dreams, you don't feel anxious about your life. You step forward with a sense of relief.\r\r");
					firstExplore = true;
				}
				else { textL(""); }
				if (currentZone == 1){
					textLP("Following the road, signs of civilization come into view. Large tents flutter in the breeze, made from canvas held up by rocks and logs, with a few smaller brick buildings here and there. You can hear the soft clapping of hard feet everywhere, as you spot several large horse-like people walk and dash about.\r\rYou have now entered the Equan home-city of Firmshaft! Although, looking behind you, there seems to be no sign of the road you just took. Getting back might be a bit difficult...");
					regionChange(2);
					if (foundFirmshaft == false) { foundFirmshaft = true; }
					hrs = 4;
					doEnd();
				}
				else if (currentZone == 2){
					textLP("Following the road, the level land breaks up into rolling hills. Not far, you see tall buildings of wood and stone, with open streets of dirt and pebbles, nestled between the hills. Fur-less people move all about, busy doing odd jobs or having fun.\r\rYou have found the Human home-city of Softlik! Although, looking behind you, there seems to be no sign of the road you just took. Getting back might be a bit difficult...");
					regionChange(1);
					if (foundSoftlik == false) { foundSoftlik = true; }
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