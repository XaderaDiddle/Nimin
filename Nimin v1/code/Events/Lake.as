function doLake():void{
	var chance:int = eventSelect("Lake");
	if (chance == 1){
		textL("At the edge of the lake, knocking against the bank with the subtle waves, you spot a piece of cloth. Pulling it out, you let out an \"ew\" as long strands of clear slime drip from it. Nevertheless, you think it's a fantastic idea to hold onto it.\r\r(You should really get your kleptomania checked)");
		itemAdd(213);
		hrs = 2;
		doEnd();
	}		
	else if (chance == 2) {
		if (countItem(219) >= 5) {
			textL("Walking along the bank of the lake, you spot an old lupan male getting some fishing gear ready beside his boat. To avoid passing by awkwardly, you approach and greet him.\r\r\"Why hello there!,\" he responds with a kind smile. \"Was hoping to catch some nice dinner, but I'm a little low on my bait so I'm just going on luck. It's been a while since I've been able to get me those things from the people down south...\"\r\rHis hand scratches at his rump, pulling your attention with it as you realize something quite odd. Instead of a normal fluffy wolf-like tail, a long, thick, scaly tail drags along the ground behind him, much like a lizard's. This man has obviously traveled a bit...\r\r\"If I could get maybe 5 of those eggs they kept plopping out, I'm sure one of them would be just what I need to really haul in some nice catch!\"\r\rAt this you realize that you actually have 5 such eggs on you right now. Would you like to offer them?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					textL("Pausing his rambling for a moment, you mention how you have 5 such eggs on you and offer them to him. His eyes light up and he graciously takes them from you. Ducking into his boat, he pulls out an odd machine and begins to slip them into an insertion point that is perfectly fitted for such eggs. The machine churns a little and dings before popping out a slightly different egg. He does this "+(Math.ceil(percent()/25)+1)+" times, whereafter he lets out a happy yip as an egg decorated with pretty red hearts pops out.\r\r\"Well lookie at that, a superb specimen! Just what I needed to make my special bait that can catch all sorts of fish! Thank you so much, stranger, we'll be eating well for some time to come thanks to this.\" He pauses for a moment, trying to think how he could repay you. \"Umm... I don't have much to give, but I'll tell you what. I can give you the recipe to my secret bait. Since you seem to have access to these kinds of eggs, I'm sure you could do quite well with this recipe.\"\r\rHe proceeds to rattle off all the ingredients you need and how the process to mixing it goes. You try to keep up, but you only get some of what you think are the main points. However, you do kinda miss out on some of the 'diluting' instructions, so your concoction might be a tad strong...\r\rYou have gained: Strong Pheromone Recipe!\r\rYou thank each other again, but he seems to be quite eager to get out on the lake and use some of his fresh bait, wishing you farewell and good luck on your journey!");
					loseManyItem(219, 5);
					knowPheromone = true;
					hrs = 3;
					doEnd();
				}
				else {
					textL("Deciding not to give him any, the old man continues to ramble on about how the weather could be a bit better also and shows you some of his home-made tackle as well. Eventually, however, he realizes that he's talked so long that he might not catch anything at this rate! He hurriedly thanks you for letting him talk your ear off a bit and says he hopes you'll meet again before he pushes off into the water, rowing to get to the good spots.");
					hrs = 2;
					doEnd();
				}
			}
		}
		else { 
			textL("Walking along the bank of the lake, you spot an old lupan male getting some fishing gear ready beside his boat. To avoid passing by awkwardly, you approach and greet him.\r\r\"Why hello there!,\" he responds with a kind smile. \"Was hoping to catch some nice dinner, but I'm a little low on my bait so I'm just going on luck. It's been a while since I've been able to get me those things from the people down south...\"\r\rHis hand scratches at his rump, pulling your attention with it as you realize something quite odd. Instead of a normal fluffy wolf-like tail, a long, thick, scaly tail drags along the ground behind him, much like a lizard's. This man has obviously traveled a bit...\r\r\"If I could get maybe 5 of those eggs they kept plopping out, I'm sure one of them would be just what I need to really haul in some nice catch!\"\r\rHe continues to ramble on about how the weather could be a bit better also and shows you some of his home-made tackle as well. Eventually, however, he realizes that he's talked so long that he might not catch anything at this rate! He hurriedly thanks you for letting him talk your ear off a bit and says he hopes you'll meet again before he pushes off into the water, rowing to get to the good spots."); 
			hrs = 2;
			doEnd();
		}
	}
	else if (chance == 3){
		textL("You wander around the lake, but you don't find much. However, in the distance you hear some soft singing that elates your body and mind.");
		stats(1,2,-1,0);
		hrs = 1;
		doEnd();
	}
}