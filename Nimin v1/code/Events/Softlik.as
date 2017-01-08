function doSoftlik():void{
	var chance:int = eventSelect("Softlik");
	if (chance == 1){
		textL("You pass by an alley while exploring when a scent catches your nose. Savory and salty and strong, you sniff your way between the buildings down to some empty crates.\r\rIn one, there's a slice of perfectly good cheese. You pick it up and it's a bit dry on the outside, squeaking in your fingers as they rub over it. There's no dirt or mold or anything, looking quite edible and smelling quite tasty,. Since it was left out here like trash, there's no harm in taking it, so you do.");
		itemAdd(238);
		hrs = 2;
		doEnd();
	}
	else if (chance == 2) {
		viewButtonOutline(1,0,1,0,0,0,0,0,0,0,1,0);
		viewButtonText(1,0,1,0,0,0,0,0,0,0,1,0);
		buttonWrite(1, "Buy one");
		buttonWrite(3, "Buy six");
		buttonWrite(6, "Buy recipe");
		if (knowMaleEnhance == false) {
			Choice6.visible = true;
			Choice6Outline.visible = true;
		}
		buttonWrite(11, "Leave");
		textL("Walking through the streets, a cloaked man notices your browsing and interjects your path.\r\r\"Hello there, stranger. You look like you might be interested in some products. I have a very special deal I'm trying to get around. Have you ever wished you were 'bigger' in the downstairs department?");
		if (gender == 2) { textLP(" Or in your case, your husband or boyfriend?");	}
		textLP(" Well, I've got the thing for you.\" He lifts open one side of his cloak, revealing many pockets filled with little pills. \"These babies will make any man bigger in no time. Male Enhancement, is what I call them. And if you're interested, I can sell you one for 20 coins, or six for 100.");
		if (knowMaleEnhance == false) { textLP(" Or, for the low low price of 200 coins, I can give you the recipe to making them.");	}
		textLP("\"\r\r\"Would you be interested in any?\"");
		doListen = function():void{
			if (buttonChoice == 1){
				if (coin < 20) {
					textL("\"Err... You don't exactly have enough to buy that... If you get more coins later, stranger, then maybe we can deal then, but for now I must be on my way. Time is money!\" And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doEnd();
				}
				else {
					textL("\"Alrighty stranger, here you go!\" He quickly takes your money and drops a single pill into your hand. \"Thank you for your business and may we deal again in the future. Meanwhile I must be off, time is money after all!\"  And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doCoin(-20);
					itemAdd(534);
					doEnd();
				}
			}
			if (buttonChoice == 3){
				if (coin < 100) {
					textL("\"Err... You don't exactly have enough to buy that many... If you get more coins later, stranger, then maybe we can deal then, but for now I must be on my way. Time is money!\" And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doEnd();
				}
				else {
					textL("\"Alrighty stranger, here you go!\" He quickly takes your money and drops six pills into your hand. \"Thank you for your business and may we deal again in the future. Meanwhile I must be off, time is money after all!\"  And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doCoin(-100);
					itemAdd(534);
					itemAdd(534);
					itemAdd(534);
					itemAdd(534);
					itemAdd(534);
					itemAdd(534);
					doEnd();
				}
			}
			if (buttonChoice == 6){
				if (coin < 200) {
					textL("\"Sorry, but you don't have enough coins to buy that and I definitely can't afford to give the recipe away for free... If you get more coins later, stranger, then maybe we can deal then, but for now I must be on my way. Time is money!\" And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doEnd();
				}
				else {
					textL("\"Aha, an entrepreneur yourself, eh? Well, since you've got the coins to invest, here you go.\" He takes your money and hands you the parchment with the recipe. \"Thank you for your business and may we deal again in the future. Good luck to your ventures as well. Meanwhile I must be off, time is money after all!\"  And with that he disappears down into the streets as randomly as he showed up.");
					hrs = 1;
					doCoin(-200);
					knowMaleEnhance = true;
					doEnd();
				}
			}
			if (buttonChoice == 11) {
				textL("\"Alright, maybe next time then.\" And just as quickly as he appeared, he vanishes into the town to sell off his wares.");
				hrs = 1;
				doEnd();
			}
		}		
	}
	else if (chance == 3) {
		textL("In the process of passing by a building, you hear some ruckus and an elderly man with wild white hair comes bursting out of the door before you.\r\r\"Dagnabbit! Another failed batch!\" He shouts as he carries out a small crate filled with half a dozen vials of swirling liquid.");
		if (checkItem(211)) {
			textLP("\r\rHe bursts out in such a tirade that he catches you off guard and sends you stumbling into him. You mostly catch yourself, merely bumping into him slightly without causing a catastrophe with what he is carrying. However, a loose DairE pill in your bag pops out from the sudden stop and flies through the air until it lands in one of the vials with a plop. The solution inside the vial turns white with small black clouds puffing throughout it.\r\rThe man doesn't mind the bump you gave him, but he stares down at the vial you've just tainted and then turns his attention to you. \"Now look at what you've gone and done! This solution was already a failure as it was, but it was at least sellable! Now I don't have any idea what it's become; I can't sell that! Give me 50 coins for your damned accident and take your mistake with you!\"");
			if (coin < 50)	{
				textLP("\r\r\"What? You don't have that many?!\" He grumbles under his breath. \"Fine, give me all you've got and let that be a lesson to you...\"");
				doCoin(-coin);
			}
			else { doCoin(-50); }
			textLP("\r\rNot wanting to make even more of a scene and, granted, it was your pill and your mistake that caused it, you give him the money. He shoves the vial into your hand in turn and doesn't pay you any more mind, still rather frustrated over his own misfortune and he huffs off down the street.");
			hrs = 2;
			loseManyItem(211, 1);
			itemAdd(258);
			doEnd();
		}
		else {
			textLP(" With you right next to him, his attention turns your way. \"Hey you, would you like to buy one of these? Since the people around here have a tendancy of changing into other things, I've been trying to come up with a brew that will help make humans more human rather than something else. But I keep coming up with this failure that is TOO human... Anyways, I just bring it down to some traveling salesman, but if you want one you can have one for 100 coins. It'll save me some effort from trying to haggle them all to that cutthroat...\"");
			buttonConfirm();
			if (coin < 100) { Choice6.visible = false;	}
			doListen = function():void{
				if (buttonChoice == 6) {
					textL("\"Well, here you go.\" He hands you a vial as he takes your coins. \"Now I've got to get going to catch that rat bastard who's going to rip me off. Good luck to you!\"\r\rHe starts trudging down the street, but turns back for only a moment to shout, \"Oh! And don't forget to read the warning label!\" And with that he's gone.\r\rLooking down at the vial, you can't seem to find any kind of warning... Now that you think about it, wasn't there a label on the crate?");
					doCoin(-100);
					itemAdd(257);
					hrs = 2;
					doEnd();
				}
				else {
					textL("\"Ahh, that's fine. I just hope you have a better day than I've had...\" He trudges off down the street, grumbling over his continued failures.");
					hrs = 1;
					doEnd();
				}
			}
		}
	}
	else if (chance == 4){
		textL("There's not terribly much to do in Softlik yet, but there might be something hidden away.");
		hrs = 1;
		doEnd();
	}
}