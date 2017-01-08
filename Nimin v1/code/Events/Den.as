function doDen():void{
	var chance:int = eventSelect("Den");
	if (chance == 1) {
		textL("You head to the den, but this time Silandrias isn't there to greet you at the entrance. Just checking to make sure she's not there, you head inside to see if you can find her.\r\rYou quickly discover this was a bad idea.\r\rThe maze of tunnels is so confusing that you wind up lost and wandering about. You have no idea where you are going, though you intended to meet her in a main room, and instead find yourself in some sort of storage room. It's obviously been a long time since it has really been used, there's hardly any items in it. However, you do spot a strange piece of leather. Holding it up and eyeing it, the leather strap is circular with a few large holes. Thinking more carefully, you realize this would fit perfectly around the base of Silandrias' tail, with room for the spikes, and tie tightly.\r\rWith a shrug, you take it with you as you may find some use for it eventually.");
		hrs = 4;
		itemAdd(229);
		doEnd();
	}

	else if (silRep == 6) {
		textL("Knowing your way through the tunnels well enough by now, you don't bother to ring the chimes. You head inside, finding your way through to the birthing chamber where Silandrias still resides, carefully watching over her ");
		if (silPreg <= 1000){ textLP(""+Math.floor(silPreg/100)+""); }
		else if (silPreg <= 5000){ textLP(""+Math.floor(silPreg/75)+""); }
		else { textLP(""+Math.floor(silPreg/50)+""); }
		textLP(" giant eggs with Naeru and Daeru.\r\rThe two caretakers, born to help both the their siblings and mother as well as provide loyal company, trot around and roll the eggs from bedding to bedding to make sure they're all clean and warm. They also snuggle up with their mother when they aren't busy, suckling from her for sustenance or bringing her food and other interests from Oviasis. When they spot you coming they start yipping happily, wagging their lizard-like tails while their large vulpine ear bounce about, running in circles around you as you approach.\r\rSilandrias hasn't quite returned to her original height yet, still a few feet taller from the massive birth with plenty of breasts running down her front, the topmost pair threatening to tip her over with their milk-laden size and weight. Staying down here to watch over her children, waiting for the day they'll hatch so she'll be there for them, has left her without need for clothes, letting her naked body rub against you as she gives you a welcoming hug.\r\r\"Welcome back, honey~\" She gives you a kiss and motions for you to cuddle up with her.\r\rThe two of you lovingly entwined about each other with Naeru and Daeru curled up upon you, you talk about everything. Even though she's not in the mood for sex, as she spends more time milking herself than getting aroused, she still makes for some good company.\r\rAfter a few hours together, the pups really need to get back to their duties and Silandrias could use a nap from her exhausting form, she offers to share her now-secondary hobby with you. \"Would you like to borrow one of my treasures before you go?\""); 
		hrs = 4;
		doNext();
		doListen = function():void{
			if (checkStash(232) || checkStash(233) || checkStash(234) || checkStash(235) || checkStash(236)) {
				textL("While you may potentially want another one of Silandrias' magical goodies, you recall you left the current one you are borrowing back in your stash. You wouldn't want to take advantage of a waiting mother (you wouldn't, RIGHT?!), so you decline and thank her kindly before heading out.");
				doEnd();
			}
			else {
				viewButtonOutline(0,1,0,0,1,1,1,0,0,1,0,1);
				viewButtonText(0,1,0,0,1,1,1,0,0,1,0,1);
				buttonWrite(2, "Flying Carp");
				buttonWrite(5, "A-Grav Rock");
				buttonWrite(6, "Rein Charm");
				buttonWrite(7, "Fell Rod");
				buttonWrite(10, "Recept Bell");
				buttonWrite(12, "No Thanks");
				textL("\"Anything you might be interested in?\"");
				if (checkItem(232))	{ Choice2.visible = false;	}
				if (checkItem(233))	{ Choice5.visible = false;	}
				if (checkItem(234))	{ Choice6.visible = false;	}
				if (checkItem(235))	{ Choice7.visible = false;	}
				if (checkItem(236))	{ Choice10.visible = false;	}
				if (!checkItem(232)) { textLP("\r\rFlying Carpet - A flying carpet just like Naeru and Daeru used to help Silandrias, it can help you get from town to town.");	}
				if (!checkItem(233)) { textLP("\r\rAnti-Gravity Rock - A small rock that floats in the air and can make you feel a little floaty as well if you hold it.");	}
				if (!checkItem(234)) { textLP("\r\rReindeer Charm - A large sapphire gem carved in the shape of a reindeers head with large antlers, it can fill you with the essence of the reindeer mother.");	}
				if (!checkItem(235)) { textLP("\r\rFellatio Rod - A lewd-looking rod, it is not a sexual toy but rather a weapon that can drain the life-force from an opponent.");	}
				if (!checkItem(236)) { textLP("\r\rReception Bell - A small cowbell on a collar, wearing it makes you more receptive to learning and outside influences."); }
				
				doListen = function():void{
					if (buttonChoice == 12)	{
						textL("Happy with what you have now, you decline the offer but thank her and the pups with a hug before leaving.");
						doEnd();
					}
					else{
						textL("You are, in fact, interested in something. ");
						if (checkItem(232) || checkItem(233) || checkItem(234) || checkItem(235) || checkItem(236)) {
							textL("Handing back the ");
							if (checkItem(232)) {
								textLP("Flying Carpet");
								loseManyItem(232, 1);
							}
							if (checkItem(233)) {
								textLP("Anti-Gravity Rock");
								loseManyItem(233, 1);
							}
							if (checkItem(234)) {
								textLP("Reindeer Charm");
								loseManyItem(234, 1);
							}
							if (checkItem(235)) {
								textLP("Fellatio Rod");
								loseManyItem(235, 1);
							}
							if (checkItem(236)) {
								textLP("Reception Bell");
								loseManyItem(236, 1);
							}
							textLP(" you borrowed before, you thank her graciously again for letting you try it out. ");
						}
						textLP("Deciding you would like to test the ");
						if (buttonChoice == 2) {
							textL("Flying Carpet");
							itemAdd(232);
						}
						if (buttonChoice == 5) {
							textL("Anti-Gravity Rock");
							itemAdd(233);
						}
						if (buttonChoice == 6) {
							textL("Reindeer Charm");
							itemAdd(234);
						}
						if (buttonChoice == 7) {
							textL("Fellatio Rod");
							itemAdd(235);
						}
						if (buttonChoice == 10) {
							textL("Reception Bell");
							itemAdd(236);
						}
						textLP(", Silandrias hands it to you with a smile.\r\r\"Hope you enjoy it~\" She gives you a hug as you thank her for giving access to her magical treasures that she has been hoarding. \"It's quite alright dear, I want to share everything with you~\"\r\rYou soon finish saying your goodbyes to both her and the pups and make your way out.");
						doEnd();
					}
				}
			}
		}
	}
	else if (silRep == 5 && (silGrowthTime > 360 || silPreg >= 10000)) {
		textL("You approach the entrance to the den, peeking inside with no idea how to navigate the tunnels. So, instead, you grab one of the chimes that decorate the entryway and give it a jingle, like ringing a doorbell.\r\rAfter waiting for several minutes, there's no sign of Silandrias. Instead, a four-legged fox-like animal with a scaled belly and lizard-like tail runs full throttle up to you an urgent look on its face. ");
		if (percent() <= 50) { textLP("Naeru (or Daeru?)"); }
		else { textLP("Daeru (or Naeru?)"); }
		textLP(" yips loudly, begging you to follow as she turns and runs away, stopping only to make sure you're following. She guides you rapidly through a much different network than Silandrias used too and picks up her pace as you reach your destination, imperative that you get there soon.\r\rThe tunnel opens up into an enormous room. Several stories high and nearly spherical in shape, it's amazing such a structure existed below the sands. Grander than a ballroom of a palace, balconies circle the curved walls every several feet high, at least fifty feet in diameter, marking the many floors with an open view to the spacious inner portion of the room. And right in its center lies Silandrias.\r\r");
		
		if (silPreg <= 150) { textLP("Supported solely by her breasts and growing belly, she seems quite comfortable laying on her front. Her tail flicks back and forth idly as her wings casually stroke about her top pair of breasts, which have been up-turned so the pups could access them. Even now the round orbs spurt thin streams of milk from her weight, with even more soaking into her bedding from the rest beneath."); }
		else if (silPreg <= 500) { textLP("Supported mostly by her large belly, her feet barely touch the ground and her tail moves to help keep her balanced. A rather precarious position, but she seems rather comfortable nonetheless. Her breasts have swollen slightly more, the bottom pair preventing her from rolling forward, and they dribble slightly from the pups' feedings."); }
		else if (silPreg <= 1000) { textLP("Supported entirely by her huge belly, her legs reach for the floor without being able to touch. Yet, she still manages to remain balanced with casual swings of her tail and her breasts holding her still. Oddly, she seems to have grown an extra pair or two across the stretched belly-scales, already spraying a bit of milk...");  }
		else if (silPreg <= 2000) { textLP("Held aloft by her giant belly, the poor girl can only fold her legs behind her, trying not to touch the masculine erection that would be better measured in feet than inches now, thanks to the swelling from her massive pregnancy. More breasts have blossomed along her stretched belly-scales, with all of her orbs looking swollen. They do provide some nice cushions for her head, however, as her wings can barely wrap around her top pair and moosh them together while they spray milk everywhere."); }
		else if (silPreg <= 4000) { textLP("Looking as though she's trapped on top of a house, the girl's belly has grown so large that even her torso has stretched to accomodate its size, a sign of how flexible her body can really be. She idly rubs the giant nipples of her topmost pair of breasts, her wings stretching to reach, with plenty more milk fountains lining her front. Her backside is nearly just as moist as her feet slowly stroke the enormous shaft of her engorged cock, pre dribbling down the scales nearly nonstop with more slickness descending from her slit."); }
		else if (silPreg <= 7000) { textLP("A building of belly, the girl is but a stretched decoration on top. She seems perfectly happy though, her feathers brushing across the sensitive breastflesh of her topmost pair of boobs while her feet massage her testicles and squeeze the shaft of her pre-drooling cock through the scrotum that covers it. Breasts upon breasts spurt milk across her scales, leaving the floor quite moist and giving the pups plenty to drink. It's amazing she's so flexible and so fertile, and almost frightening how many eggs she may be filled with..."); }
		else if (silPreg <= 10000) { textLP("Very nearing the maximum size of the room, her belly fills most of your vision. Large breasts everywhere gush with milk from the tautness of her scales, with the topmost providing a nice pillows for her to fold her wings and lay upon, individually. Her feet can barely massage her testicles, unable to even reach her own giant cock which threatens to break through some of the balconies while pre coats her underside and leaves a large puddle on the floor. She has grown so large, you wonder how tall she would possibly be without the grand gut throwing off your perspective..."); }
		
		if (silPreg > 10000) { textLP("Absolutely filled with belly and breasts, milk leaking everywhere and mixing with the pre to nearly form a lake on the floor, it's amazing she can even fit. Or, more accurately, that she can't.\r\r\"I-I can't fit anymore!\" The girl's voice cries out from the ceiling. \"I need to lay these things NOW!\" She lets out a panting howl as she forces herself to term, her talongs digging into her breast-flesh and her hips jerking in preparation.");	}
		else { textLP("\r\rHowever, her comforted appearance is dashed when you notice she is panting very heavily and is actually rubbing herself as a distraction. \"Hoo, hoo. Thank goodness you're here!\" She fakes a smile but then winces as she feels something press against her insides. \"I, I waited for you to come, but... IT'S TIME!\"\r\rShe lets out a howl as her talons dig into her own breast-flesh, her hips jerking with the pressure."); }

		doNext();
		doListen = function():void{
			textL("The pup grabs you by your "+clothesBottom()+" and yanks you toward a flying carpet to aid with the laying. The two of you fly up and meet the other pup at her ");
			if (silTied == true) { textLP("nethers, just in time to see her pussy gape surprisingly wide, her hips spreading for the object within. Her cock visibly twitches, spitting out pre in large gobs as the egg approaches, and begins to gush across her scales with steamy spunk as the white shell begins to crown. The seed-cannon doesn't end, continually spurting as the egg pushes its way out as lubrication spills across her swollen testicles, which drops onto the carpet a pup has readied."); }
			else { textLP("tail, just in time to see the base of her tail swell obscenely, her hips spreading for the object within. Her cock visible twitches, spitting out pre in large gobs as the egg stalls at her rump, her legs furiously bucking trying to push it. She groans and howls, desperately trying to get it through, but her muscles are too tense to allow it through. So, taking matters into your own hands, you lean up against her erection and knead it roughly.\r\rThe howl turns from pained to ecstatic as the organ bursts across her scales with steamy spunk as the bulge pushes through the base of her tail. The seed-cannon doesn't end, continually spurting as the egg pushes its way through her tail, making it look many times thicker than before, as lubrication spills out from the tip until the egg plops onto the carpet a pup has readied."); }
			textLP("\r\rThe ejaculation only dies down to a steady gurgle as the next egg prepares itself for birth, giving you a moment to gawk at the egg. Over three feet high and two feet in diameter, it's nearly twice the size of the eggs of the pups. You almost cringe at the thought of trying to birth such a thing yourself.\r\rYour admiration is quickly interupted as the warbling howls echo about again, the increased splurting of semen announcing the next arrival."); 
			if (silPreg > 2000)	{ textLP(" The pup quickly deposits the egg on a nearby balcony before returning for the next, alternating with her sister to carry the eggs away as they squeeze out of their mother."); }
			if (silPreg > 4000)	{ textLP(" When she eventually shrinks from the loss of enough eggs, the pups then deposit the eggs on the next lowest balcony, spreading them out nicely.");	}
			if (silPreg > 8000)	{ textLP(" After several hours, nearly all of the balconies are filled with giant eggs, rolled around and resting safely against the walls.");	}
			if (silPreg <= 2000) { textLP(" The pup quickly deposits the egg on the floor nearby, easier than using the balconies at this height, before returning for the next egg, alternating with her sister to carry the ovoid objects away as they squeeze out of their mother."); }
			doNext();
			doListen = function():void{
				textL("Hours later, Silandrias is panting upon the floor, cushioned by her soft breasts, her belly finally empty.");
				if (silPreg > 2000)	{ textLP(" With eggs everywhere"); }
				else { textLP(" With eggs circling you"); }
				textLP(", the laying process has finally finished.\r\rYou crawl up besides the exhausted woman, stroking her auburn hair and coaxing her to relax, she gives you a big smile. \"I'm pretty sure are real too.\"");
				doNext();
				doListen = function():void{
					textL("The next day, after plenty of cleaning of spunk and slime and milk, and especially sleep, the four of you can finally breath. Silandrias, though a bit taller from being stretched by her belly and carrying a massive amount of boob-flesh, is able to walk with the aid of a carpet thanks to much of her body having deflated along with her belly. Eager to overlook her eggs, the four of you gather around and begin counting as you set up individual beddings for each egg, just like the kind Silandrias was hatched from.\r\r");
					if (silPreg <= 1000){ textLP("A whole "+Math.floor(silPreg/100)+" eggs. Around the same size as the clutch she grew up with, she's quite satisfied. \"I'm sure it'll be a good 'start' in building a new family\" She winks with a giggle."); }
					else if (silPreg <= 5000){ textLP("A total of "+Math.floor(silPreg/75)+", spread across the lower balconies of the birthing chamber, its far more than the clutch she grew up with. \"I didn't know I could make so many... And it'll be such a big family!\" She looks around in awe."); }
					else { textLP("A massive "+Math.floor(silPreg/50)+", spread across all of the balconies of the birthing chamber, you wonder if the clutch she grew up with was just a fraction of a bigger bunch. \"Wow... I-I didn't think this was even possible. From up there, I couldn't really tell but... Wow... I. I think we have just restarted my race\" Her eyes are wide as the number finally sinks in. Oh how her breasts are going to hurt..."); }
					textLP("\r\r\"Although, I have no idea how long it will take them to hatch. I mean, I don't know how long we were down in that room before we hatched. And I definitely don't want them to hatch without parents, I'm going to stay here and wait for them, no matter how long it takes. While I'm sure Naeru and Daeru would do well, I want to be there for my children when they hatch. And I hope you will be there too, when it eventually starts.\" She turns and embraces you, putting much of her weight into you for support but also nearly crushing you with her loving hug in the meantime. \"It may be years from now, but I will definitely try to let you know when it happens, since I'm sure you won't be able to stay here. And I could even send out letters to my sisters as well, make a great big family reunion! But... that's really getting ahead of myself. Thank you, honey.\" She hugs you again, kissing you gently.");
					doNext();
					doListen = function():void{
						textL("Spending a few more hours with the family, everything settles down and there really isn't much to do anymore except to wait. With not a problem to be had, Silandrias and the pups nuzzle you goodbye, since there's things you could actually be doing in the meantime.\r\r\Oh, and I can't believe I've forgotten about it until now, maybe because of the, umm...\" Her face blushes at what she had been distracted with this whole time. \"But you're welcome to borrow any of the magical treasures I've found as part of my hobby. Although only a few are actually worth using, you can pick one up whenever you're here.\" She smiles and gives you another hug, gushing milk across your front, and finally lets you leave.");
						hrs = 30 + Math.floor(silPreg/1000); 
						silRep = 6;
						doSexP(50 + Math.floor(silPreg/100));
						doEnd();
					}
				}
			}
		}
	}
	else if (silRep == 5 && silPreg > 30) {
		textL("You approach the entrance to the den, peeking inside with no idea how to navigate the tunnels. So, instead, you grab one of the chimes that decorate the entryway and give it a jingle, like ringing a doorbell.\r\rAfter waiting for several minutes, there's no sign of Silandrias. Instead, a four-legged fox-like animal with a scaled belly and lizard-like tail comes trotting up to you with a happy smile and lolling tongue. ");
		if (percent() <= 50) { textLP("Naeru (or Daeru?)"); }
		else { textLP("Daeru (or Naeru?)"); }
		textLP(" lovingly rubs her head up against your "+legDesc(1)+", then turns and trots away, stopping only to make sure you're following. She guides you through a much different network than Silandrias used too and picks up her pace as you reach your destination.\r\rThe tunnel opens up into an enormous room. Several stories high and nearly spherical in shape, it's amazing such a structure existed below the sands. Grander than a ballroom of a palace, balconies circle the curved walls every several feet high, at least fifty feet in diameter, marking the many floors with an open view to the spacious inner portion of the room. And right in its center lies Silandrias.\r\r");
		if (silPreg <= 150) { textLP("Supported solely by her breasts and growing belly, she seems quite comfortable laying on her front. Her tail flicks back and forth idly as her wings casually stroke about her top pair of breasts, which have been up-turned so the pups could access them. Even now the round orbs spurt thin streams of milk from her weight, with even more soaking into her bedding from the rest beneath."); }
		else if (silPreg <= 500) { textLP("Supported mostly by her large belly, her feet barely touch the ground and her tail moves to help keep her balanced. A rather precarious position, but she seems rather comfortable nonetheless. Her breasts have swollen slightly more, the bottom pair preventing her from rolling forward, and they dribble slightly from the pups' feedings."); }
		else if (silPreg <= 1000) { textLP("Supported entirely by her huge belly, her legs reach for the floor without being able to touch. Yet, she still manages to remain balanced with casual swings of her tail and her breasts holding her still. Oddly, she seems to have grown an extra pair or two across the stretched belly-scales, already spraying a bit of milk...");  }
		else if (silPreg <= 2000) { textLP("Held aloft by her giant belly, the poor girl can only fold her legs behind her, trying not to touch the masculine erection that would be better measured in feet than inches now, thanks to the swelling from her massive pregnancy. More breasts have blossomed along her stretched belly-scales, with all of her orbs looking swollen. They do provide some nice cushions for her head, however, as her wings can barely wrap around her top pair and moosh them together while they spray milk everywhere."); }
		else if (silPreg <= 4000) { textLP("Looking as though she's trapped on top of a house, the girl's belly has grown so large that even her torso has stretched to accomodate its size, a sign of how flexible her body can really be. She idly rubs the giant nipples of her topmost pair of breasts, her wings stretching to reach, with plenty more milk fountains lining her front. Her backside is nearly just as moist as her feet slowly stroke the enormous shaft of her engorged cock, pre dribbling down the scales nearly nonstop with more slickness descending from her slit."); }
		else if (silPreg <= 7000) { textLP("A building of belly, the girl is but a stretched decoration on top. She seems perfectly happy though, her feathers brushing across the sensitive breastflesh of her topmost pair of boobs while her feet massage her testicles and squeeze the shaft of her pre-drooling cock through the scrotum that covers it. Breasts upon breasts spurt milk across her scales, leaving the floor quite moist and giving the pups plenty to drink. It's amazing she's so flexible and so fertile, and almost frightening how many eggs she may be filled with..."); }
		else if (silPreg <= 10000) { textLP("Very nearing the maximum size of the room, her belly fills most of your vision. Large breasts everywhere gush with milk from the tautness of her scales, with the topmost providing a nice pillows for her to fold her wings and lay upon, individually. Her feet can barely massage her testicles, unable to even reach her own giant cock which threatens to break through some of the balconies while pre coats her underside and leaves a large puddle on the floor. She has grown so large, you wonder how tall she would possibly be without the grand gut throwing off your perspective..."); }

		if (silPreg > 1000)	{ textLP("\r\rThe other pup that isn't attached to you at the moment flies around on a magical carpet, one of Silandrias' treasures, guiding it with just some clawing and a few yips. With her mother so large, its the only way to reach the giant woman without wings of her own, as well as carrying supplies.");	}
		else { textLP("\r\rThe other pup that isn't attached to you at the moment flies around on a magical carpet, one of Silandrias' treasures, guiding it with just some clawing and a few yips. She uses it to carry food and other supplies around, especially in such a big room."); }
		textLP("\r\r\"Hi!\" She calls out with a smile. \"Ever since I started getting... 'bigger' again, I just had an urge to come to this room and lay on my belly like this. And from there, I haven't really moved...\" She laughs a little at how lazy it must make her sound. \"But Naeru and Daeru seem to understand it just fine. They even made sure that I didn't get up at first. Instead, they've been bringing me all the food and stuff I need, and keeping me very good company, taking care of me just as well as Saeru did when we were little. And it would explain why I found some flying carpets around these tunnels, even though my people can fly. I guess we made them so the caretaker-kind could join us. Meanwhile, I've just been getting... well, bigger.\" She sticks out her tongue at her own bluntness. Then she smiles at your presence. \"I'm glad you're here to, though. So how would you like to help me pass that time?\"");

		viewButtonOutline(1,0,1,0,1,0,1,0,1,0,0,0);
		viewButtonText(0,0,0,0,0,0,0,0,1,0,0,0);
		buttonWrite(1, "Fuck");
		buttonWrite(3, "Be Fucked");
		buttonWrite(7, "Eggcelerator");
		buttonWrite(9, "Cuddle");
		if (cockTotal > 0) { Choice1.visible = true; }
		if (vagTotal > 0 && vagLimit() > (22 + silPreg/24)) { Choice3.visible = true; }
		if (checkItem(229) && silTied == false) {
			buttonWrite(5, "Tie Tail");
			Choice5.visible = true; 
		}		
		if (silTied == true) {
			buttonWrite(5, "Untie");
			Choice5.visible = true;
		}
		if (checkItem(230) && silPreg > 30) { Choice7.visible = true;	}
		doListen = function():void{
			if (buttonChoice == 1) {
				var getCum:int = cumAmount();
				textL("Even though Silandrias doesn't seem like she can move much, it doesn't mean she doesn't have needs. Stripping your clothes, ");
				if (silPreg/100 > tallness/24) { textLP(" you hop onto a flying carpet so you can actually reach her moist cunt."); }
				else { textLP(" you move to her backside to attend to her moist cunt."); }
				if (silPreg < 400) { textLP(" Lifting her tail aside, her pussy is slightly swollen from her growing girth and doesn't take much effort to stretch around "+oneYour(1)+" cock"+plural(1)+" as you push it in.");	}
				else if (silPreg < 2000) { textLP(" Lifting her tail aside, her pussy has grown large with her enormous belly, so much so you could probably fit your whole hand inside without much effort, making inserting "+oneYour(1)+" cock"+plural(1)+" a breeze."); }
				else { textLP(" Lifting her tail aside, the hole is gaping and stretched from her enormous belly, large enough to insert a whole limb if you wanted to, allowing "+oneYour(1)+" cock"+plural(1)+" to press in with ease."); }
				textLP(" Despite her larger size, the passage still manages to suck you in and grind about your cock, her hips twitching as she lets out a howl to suck it in. Her pregnant condition seems to only make her body want to suck out your cum more. And you're in a rather generous mood.\r\rGrabbing her widened thighs, you pound against her again and again");
				if (knot == true) { textLP(", tugging at her entrance from the inside with your thick knot");	}
				textLP(". She takes in your length without issue, with plenty of malleable room within. Below, her own erection spits up larger gobs of pre, growing whiter and whiter as she come close to climax");
				if (showBalls == true) { textLP(", the slapping of your "+ballDesc()+" against her scrotum not helping any"); }
				textLP(".\r\rIt isn't until you explode within, your seed churning about her velvety walls, that the downward-pointing member erupts with hot spunk all over the belly-scales and floor. You plunge and pump all of your spunk inside of her, letting her soak it all in without a drop going to waste. The cum-hungry womb immediately grows larger, sucking in every milliliter for its fertile production. The poor girl is weighted down even more by your efforts, yet the erotic cries echoing around the room would hardly suggest that she objects...");
				 doLust(-Math.floor(sen/2), 2,1);
				/*if (silPreg > 4000)	{ doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 54, 58); }
				else if (silPreg > 400) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 58); }
				else { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53); }*/
				if(Math.ceil(getCum/50) > 100 && silPreg > 0) { silPreg += 100; }
				else if (silPreg > 0){ silPreg += Math.ceil(getCum/50); }
				doNext();
				doListen = function():void{
					textL("With her own cum still dribbling down her scales, Silandrias calls you over to the other side. After she's caught her breath, of course. Her front also covered in white from the milk that sprayed as she climaxed, she hugs you close and gives you a kiss, snuggling up with you for a while until she passes out on your shoulder. Pregnant women can sleep so soundly when they're becoming even more pregnant...");
					hrs = 4;
					doEnd();
				}
			}
			if (buttonChoice == 3) {
				textL("Even though Silandrias doesn't seem like she can move much, her stiff cock does look like it could use some release. Stripping your clothes, ");
				if (silPreg/100 > tallness/24) { textLP(" you hop onto a flying carpet so you can actually reach her member."); }
				else { textLP(" you move to her backside to attend to her member."); }
				textLP(" A few moments pass as you try to figure things out, considering the");
				if (silPreg < 500) { textLP(" thick rod is pointing downward with the heavy scrotum pinning it against her belly");	}
				else if (silPreg < 1500) { textLP(" huge rod is pointing downward, barely able to keep the large testicles aloft as it rests against her belly");	}
				else if (silPreg < 4500) { textLP(" massive rod is pointing downward, barely lifting the hefty scrotum aloft as the testicles brush against her belly"); }
				else { textLP(" gigantic rod is heavily pointing downward, curving along the belly with anchor-like testicles keeping it pinned"); }
				textLP(", eventually managing to lie on your back and shuffle your rump up until the thing presses into your "+vulvaDesc()+" folds.\r\rIn one of the most awkward positions possible, you still manage to ellicit a moan from the other side of the belly as you begin to reverse-hump her backside. The phallus pumps through you, dribbling pre all the while until the slick stuff is pooling out of your hole and back over your body. You can hear her pant and groan, feebly bouncing her legs as she wiggles her hips to dig deeper into you. Considering her rather static state, your efforts upon her sensitive flesh quickly overcome her, being one of the few sensations she has had, making her explode within.\r\rThe amount of spunk is surprising, even in proportion to her size. It just keeps gushing and gushing, making you quake in orgasm as your filled, until it spills out about your body and drools down her scales.");
				if (cockTotal > 0)	{ textLP(" Even more covers you from your own spurting appendage"+plural(1)+", coating you in a mix of both fluids."); }
				textLP(" By the time the flow actually comes to a halt, there is such a mess everywhere...");
				doImpregnate(dominant);
				if (cockTotal > 0)	{ cumAmount();	}
				else if (silPreg > 400) { doLust(-Math.floor(sen/2), 2, 2, 5); }
				else { doLust(-Math.floor(sen/2), 2, 2, 5); }
				doNext();

				doListen = function():void{
					textL("Leaving the stuff to be cleaned up by the pups later, Silandrias calls you over to the other side. After she's caught her breath, of course. Her front also covered in white from the milk that sprayed as she climaxed, she hugs you close and gives you a kiss, snuggling up with you for a while until she passes out on your shoulder. Pregnant women can sleep so soundly when they've ejaculated excessively...");
					hrs = 4;
					doEnd();
				}
			}
			
			if (buttonChoice == 5) {
				if (silTied == false) {
					textL("Even though she doesn't seem to be constantly laying from her tail now, or at all for that matter, you thinkg it's a good idea to attach the leather strap anyways. Silandrias nods and trusts you, lifting up her tail ");
					if (silPreg/100 > tallness/12) { textLP("as you take a flying carpet up to her nethers, thanks to her giant belly putting them a tad out of your reach, ");	}
					textLP("and gives you a nice view of her engorged bits in the process. The leather strap easily slips up the length of her tail and tightens comfortably around the base made perfectly for such a task.\r\rYou take a few minutes to check the straps to ensure no blood is being cut off and that even if she were dropping eggs through that passage, they wouldn't be able to push through. Leaving her backside like that, you come around to her face and spend some time with her chit-chatting and petting Naeru and Daeru before you eventually head back out.");
					silTied = true;
					loseManyItem(229,1);
					hrs = 3;
					doEnd();
				}
				else {
					textL("Deciding to remove the leather strap that is blocking her tail passage, ");
					if (silPreg/100 > tallness/12) { textLP("you take a flying carpet up to her nethers, thanks to her giant belly putting them a tad out of your reach, and ");	}
					textLP("your fingers play with the latch until you can pull it lose and slip it off of her tail. Once removed, you see the base of her tail swell slightly as the eggs inside settle against the passageway. However, none seem to get any further, not exiting her tail at all like her previous pregnancies. You inspect her rump to make sure nothing is wrong, your poking and prodding only making her giggle at the other end, but she seems to be perfectly fine.\r\rAssuming it's natural, you leave her backside and come around to her front to spend some time with her, chit-chatting and petting Naeru and Daeru before you eventually head back out.");
					silTied = false;
					itemAdd(229);
					hrs = 3;
					doEnd();
				}
			}
			if (buttonChoice == 7)	{
				textL("To help the pregnancy progress, you take out a dose of eggcelerator. ");
				if (silPreg/100 > tallness/12) { textLP("Her nethers too high for you to reach, however, you have to step on a flying carpet to lift you up."); }
				else { textLP(" You walk around to her backside to access her nethers as she lies there."); }
				textLP(" Lifting up her tail, she does her best to prop up her rump towards you for easier access.");
				if (silPreg < 400) { textLP(" With her pussy being slightly swollen from her growing girth, it doesn't take much effort to slip the eggcelerator inside.");	}
				else if (silPreg < 2000) { textLP(" Her pussy grown large with her enormous belly, you could fit your whole hand inside without much effort, making inserting the eggcelerator a breeze."); }
				else { textLP(" Gaping and stretched from her enormous belly, you nearly lose your whole arm within as you insert the eggcelerator, making it more difficult to pull out than administering the dose."); }
				textLP("\r\rYou can hear the stuff rumble in her belly as it dissolves, almost immediately noting an increase in production. However, nothing presses back out, leaving her to grow even larger. Spending a couple of hours to make sure she's alright and provide her and your children some company, everything seems well and you can be on your way.");
				silRate++;
				loseManyItem(230,1);
				hrs = 3;
				doEnd();
			}
			if (buttonChoice == 9)	{
				if (silPreg/100 > tallness/24) { textL("You hop on a flying carpet and direct it up to Silandrias' torso, allowing you to give her a hug and sit beside her as you cuddle."); }
				else { textL("You move in beside Silandrias, giving her a hug and sitting down beside her as you cuddle."); }
				textLP(" Daeru and Naeru soon join, curling up amongst you two the best they can as you all spend some nice time together, despite mooshing against one of the pregnant woman's boobs and making it casually spurt over you all. She reprises you of her time sitting around and how well the two pups have been coming along, so smart and responsible. Mostly you tell her your own stories of what's going on outside, since there tends to be much more to tell, but in the end it doesn't matter what's being said. As long as you're all together.\r\rAfter several hours, you're all thoroughly cuddled out, especially as the pups need to get back to caring for their mother. With the loving company, Silandrias' belly also looks to have enjoyed it, growing even larger with your time together...");
				hrs = 4;
				silPreg += 20;
				doEnd();				
			}
		}
	}
	else if (silRep == 5) {
		textL("You approach the entrance to the den, peeking inside with no idea how to navigate the tunnels. So, instead, you grab one of the chimes that decorate the entryway and give it a jingle, like ringing a doorbell.\r\rAfter waiting for several minutes, the large ears of the foxy lizard-like woman come into view with the two pups, Naeru and Daeru, hopping and trotting about her legs as she walks.");
		textLP(" With her curves back to a more manageable state, Silandrias seems to be trying to wear her cloak again. Though with all of her many engorged breasts, all dribbling with milk as the two quadrapeds lapping it up from her legs, she doesn't bother to close it, letting all four pairs bob about as they may. Even her loin cloth is rather useless as the head of her flaccid member is exposed beneath with a generous portion of her scrotum peeking out from the sides. But she's as happy as can be with her children. ");
		textLP("\r\r\"Hello~\" Silandrias greets you with joy, happy to have your company again, while the kits yip cheerfully at their father as well. \"Come on in, please.\" She turns to lead you into the network of tunnels. \"Would you care to do something, hun?\"");
		viewButtonOutline(1,0,1,0,0,0,0,0,1,0,0,0);
		viewButtonText(0,0,0,0,0,0,0,0,1,0,0,0);
		buttonWrite(1, "Fuck");
		buttonWrite(3, "Be Fucked");
		buttonWrite(9, "Cuddle");
		if (cockTotal > 0) { Choice1.visible = true; }
		if (vagTotal > 0 && vagLimit() > (22 + silPreg/24)) { Choice3.visible = true; }
		doListen = function():void{
			if (buttonChoice == 1) {
				var getCum:int = cumAmount();
				textL("Rubbing the "+cockDesc()+" bulge in your "+clothesBottom()+", you make it fairly obvious what you would like to do. The tall girl blushes and doesn't object, leading you right to her room with a rapid pace in her step, telling Daeru and Naeru to go take a nap in the meantime. The obedient pups comply, leaving you alone with the half-naked woman. In a flurry of kisses and hugs, the two of you are soon stripped of your clothes.");
				textLP(" Taking the lead, she pushes you back onto her bed, "+legVerb(2)+" your "+legDesc(2)+" to lick");
				if (showBalls == true)	{ textLP(" your "+ballDesc()+" testicles");	}
				else { textLP(" the base"+plural(1)+" of your cock"+plural(1)+"");}
				textLP(" before nibbling up the length of "+oneYour(1)+" shaft"+plural(1)+" and gulping down the tip the best she can.\r\rOnce you're thoroughly lubricated with saliva and pre, standing stiff and aching to fill her, she can hardly resist jumping onto it. Yet, she still manages to slowly climb up the bed, her finger-like talons clawing at the sheets as the feathers tickle over your thighs, until she finally struggles to sit upright over your waist squat down over your erection. She lets out a cooing howl as she feels your girth slip through her lips and burrow into her moist inner-walls. Her wings pressing against your "+boobDesc()+" chest");
				textLP(", she steadies herself while her hips begin to grind and twist hungrily on top of you. Her tongue lolls from her muzzle and she pants happily while her ears bob up and down, her tail flicking about sporadically from the joy of having you inside of her.");
				textLP("\r\rHaving remained swollen quite a bit with her last pregnancy, her cock slaps loudly against you with each hop and flings pre all over your front. The large testicles rest around your groin, hugging your cock"+plural(1)+" whenever she lifts high enough to allow them to roll beneath her.");
				if (cockSize*cockSizeMod >= 66)	{ textLP(" Your own length, meanwhile, stretches her belly out further, forcing her belly-scales to protrude from within, yet seems to have no sign of hurting her or her womb. In fact, she seems to enjoy it even more as she blissfully hugs your head whenever it presses out far enough, tenderly rubbing it until it disappears back inside.");	}
				else if (cockSize*cockSizeMod >= 36) { textLP("	Your own length, meanwhile, stretches the walls of her pussy greatly, causing them to tightly hug against your width. Yet, there are no signs of pain as she blissfully lets it plow through her again and again.");	}
				textLP(" She bounces upon you so roughly that her ");
				textLP("four pairs of");
				textLP(" breasts jiggle obscenely, the nipples stiff and tossing milk about everywhere.\r\rAt this rate, it doesn't take long before Silandrias is letting out a loud, lustful howl as you erupt within her."); 
				if (getCum < 1000)	{ textLP(" Your hot load churns about her tunnel as you spray about, not a single drop slipping from her slit as her womb drinks it in."); }
				else if (getCum < 5000) { textLP(" Your hot load forces her belly to visibly distend as you spray within, the grand amount of spunk churning around and drowning your gushing head, yet hardly any seems to spill from her slit as her womb drinks it in, thirsty for seed."); }
				else { textLP(" Your hot load forces her belly to expand, inflating as you spray within, the massive amount of spunk audibly churning within. However, only a fraction of the stuff spews back out through her slit, as her womb seems to gulp it down as though it were desperately thirsty for seed."); }
				textLP(" With a couple twitches after being filled by you, her own cock explodes over you, whipping the strands of cum across your body like laced icing. She goes on and on until she's sucked all the cum she can get from you and you look reminiscent of a cheese danish before she finally collapses over you with a heavy sigh.");
				if(Math.ceil(getCum/50) > 100 && silPreg > 0) { silPreg += 100; }
				else if (silPreg > 0){ silPreg += Math.ceil(getCum/50); }
				else { silPreg = 1; }
				doLust(-Math.floor(sen/2), 2, 1);
				doNext();
				doListen = function():void{
					textL("The two of you rest for a while, snuggling together with her sticky mess between you. Significantly satisfied, she kisses you before rolling onto the bed for a nice nap, her womb quite busy with what you left inside. You kiss her back as she sleeps, taking your sweet time before leaving to continue with other matters.");
					hrs = 4;
					doEnd();
				}
			}
			if (buttonChoice == 3){
				textL("Stepping towards her and placing a hand upon the bulge in her loincloth, it doesn't take a scholar to figure out what you'd like. The tall girl blushes and the bulge jumps with sudden bloodflow. She doesn't object, telling Daeru and Naeru to go take a nap in the meantime. The obedient pups comply, leaving her to lead you right to her room with a rapid pace in her step. In a flurry of kisses and hugs, the two of you are soon stripped of your clothes.");
				textLP(" Eager to release, she pushes you back onto her bed, wedging herself between your thighs as she flops the stiffening erection on top of your ");
				if (cockTotal > 0)	{ textLP("own");	}
				else if (cockTotal < 1)	{ textLP("belly");	}
				textLP(" with a splatter of slimy pre."); 
				textLP(" Then, her finger-like talons grab onto your "+hipDesc()+" hips, the feathers of her wings tickling your thighs as she drags her cock over you until it falls into the "+vulvaDesc()+" crevice between. With a moaning grunt, she plunges in.\r\rThe hard phallus pumps in and out of your soft velvety walls while the ");
				textLP("large and heavy");
				textLP(" balls slap against your "+buttDesc()+" rump");
				if (silPreg + pregnancyTime + vagBellyMod > 1000) { textLP(", her pregnant belly bumping against your own,"); }
				textLP(" with each thrust. Her breasts wobble with her fervor, spraying milk everywhere in tune to her panting as her long tongue lolls from her vulpine muzzle.");
				if (breastSize > 3)	{ textLP(" Your own chest jiggles as well, your body dragging across the bed from her strength.");	}
				else if (cockTotal > 0)	{ textLP(" More pre slops across yourself as your "+cockDesc()+" cock"+plural(1)+" bounce around, leaving you rather slick.");	}
				textLP("\r\rThanks to her generous efforts, you both find yourselves reaching orgasm within minutes. Her body quivers and seizes as it forces a few more loud squishes into your pussy before it explodes within, drenching your insides with thick gooey cum. You shiver in turn,");
				if (cockTotal > 0) { textLP(" more eruptions gushing from your own rod"+plural(1)+","); }
				textLP(" shouting along with her howling with sensual joy. By the time your both done with your erotic fits, Silandrias collapses upon your belly, rubbing it with a wing as her seed fills you, her cock slipping out and trailing white strands across her sheets. She then crawls up onto the bed beside you to snuggle and kiss you lovingly, before eventually passing out for a nap.");
				doImpregnate(dominant);
				if (cockTotal > 0)	{ cumAmount();	}
				doLust(-Math.floor(sen/2), 2, 2, 5);
				doNext();
				doListen = function():void{
					textL("You rest with her for a while before you decide to clean up the mess left behind. Then you quietly don your clothes and sneak out, allowing her to rest peacefully.");
					hrs = 4;
					doEnd();
				}
			}
			if (buttonChoice == 9) {
				textL("Just wanting to spend some time together, you give her a hug. She smiles back at you and leads you through the tunnels with children in tow to a nice room to socialize. There are a few seats of plush pillows and reed mats to sit upon, fitting for someone of her height, with a few tables cluttered with various knick-knacks. Torches light the room and several crystalline chandeliers and chimes break the light into vivid sparkling colors, providing a rather soothing atmosphere. Some of the crystals even glow on their own; shards of magical artifacts long lost to the ravages of the desert.\r\rSilandrias lies down upon one of the mats");
				textLP(" and lets you cuddle up behind her. You hug and caress her curves, causing milk to spit across the floor and soak into everything from her multitude of breasts, which the pups are happy to lap up as they bounce around you and curl up with you. Gently kissing her shoulders as you talk the two of you alternate between stories of your travels and how well Naeru and Daeru have been coming along. There's even a bit of small talk mixed in as well as periods of silence where you simply enjoy the company of your small family.\r\rEventually, however, you must be on your way so that something can get done. As much as the two of you would like to continue, you can't ignore the need to get some food or other preparations or ignore the rest of your lives.");
				textLP("\r\rYou soon give each other a kiss and exchange farewells, giving each of the pups a hug as they lick you, hopefully to not spend too much time apart.");
				hrs = 4;
				doEnd();
			}
		}
	}
	else if ((silRep == 1 && silPreg > 150) || (silRep == 2 && silPreg > 240) || (silRep == 3 && silPreg > 360) || silPreg > 550) {
		textL("You approach the entrance to the den, peeking inside with no idea how to navigate the tunnels. So, instead, you grab one of the chimes that decorate the entryway and give it a jingle, like ringing a doorbell.\r\rAfter waiting for several minutes, the large ears of the foxy lizard-like woman come into view.");
		if (silPreg > 36){
			if (silPreg <= 72) { textLP(" She has a slight smile as her wings roam about the growing bulge in her belly, the shape so obvious against her normally lithe form. A smile on her face when she looks at you silently passes the message that she knows it's because of you, but finds the sensation too blissful to actually speak about it.");	}
			else if (silPreg <= 150){ textLP(" Her wings hug under her gravid form, holding and groping it as she feels it sway with each step, so big on her thin form; her belly-scales looking larger as they stretch across the girth. She seems a bit giggly at her state as she looks to you as the cause, but doesn't think it needs stating at this point."); }
			else if (silPreg <= 240) { textLP(" Her belly has grown so large that the tips of her wings can no longer connect around her form, but that doesn't keep her from trying as she rubs over the stretched scales again and again, relishing in their sensitivity. She still manages to stand up straight, though, as her strong lithe build can handle it.");	}
			else if (silPreg <= 360) { textLP(" She leans forward slightly as her weighty girth fills the path before her. Her feathers brush over her taut belly-scales, trying to fan them slightly with the slight pleasure she feels as the finger-like talons grab into the scales as well as they can to help hold her steady. She bends slightly at the knees to aid in holding up her expanding womb, making her look a little silly as she walks."); }
			else if (silPreg <= 550) { textLP(" She laughs a little as she drags her enormous belly the best she can above the floor, using her feet to help keep it aloft. Her progress may be slow, but you can see her enjoying every moment of it as she 'accidentally' brushes it against the soft walls as she moves and fans over herself with her wings to keep from getting too hot from the enjoyment of it. Despite her rather excessively-gravid condition, she seems to truly enjoy being this pregnant...");		}
		}
		if (silRep == 1) { textLP(" And despite the swelling of her breasts, she has still managed to clasp her cloak. Though only barely as the clasp seems to be quite threatened by the overflowing flesh..."); }
		if (silRep == 2) { textLP(" Having completely given up on the clasp of her cloak, the thick nipples of her top breasts barely hold the cloak over most of her mammary flesh. Bigger than her head now, the top pair swings from side to side as she walks, while the smaller pair below jiggle slightly as her belly bobs between them, almost completely bare if it weren't for her wings in the way.");	}
		if (silRep == 3) { textLP(" Completely bare, it seems as though she has given up on her cloak... With a heavy blush of embarrassment from her exposed curves, she tries her best to cover herself with her wings, with little success. The top pair of breasts rest heavily atop the second pair, which is squished against her belly, and overall makes it difficult for her to look at you over them when covering them. The third pair jiggle obscenely without any coverage, even larger than her top breasts originally were when you first met her. Most of her efforts in trying to grope her belly mostly wind up fondling this lower pair as well, making them quiver even more lewdly...");		}
		if (silRep == 4) { textLP(" It's' also quite silly how she practically has to burrow her nose into her cleavage to see you... Each time she brushes against a wall, she also leaves behind a trail of milk as her nipples spurt everywhere from the pressure. It's amazing she can even move in such a state..."); }

		textLP("\r\r\"H-Hello- Ungh!\" Her greeting is cut short as she doubles over. It is only now that you see the exorbitant amount of slime spilling ");
		if (silTied == true) { textLP("between her legs from behind her loincloth");	}
		else { textLP("from the tip of her tail"); }
		textLP(". She gathers herself for a moment to explain. \"I-I've been waiting for you before I did it. I can't hold them back any longer; I can't hold any more, there's too many!\" She grunts again and grasps her belly as she desperately attempts to hold her womb shut.");

		doNext();
		doListen = function():void{

			if (silRep == 1) { 
				textL("You run up and grab her, rushing her to her bedroom so she can be more comfortable. Laying her onto her back, you make sure her back is supported appropriately to help with the lay.");
				if (silTied == true) { textLP("\r\rHer tail extends itself through the cheeks of her bum and straight across the bed in preparation. Yet, Silandrias quickly gasps loudly as her body realizes that passage is blocked and redirects the flow elsewhere. She spreads her legs wide as she feels her pussy stretch and gape as the eggs force their way through. Her breathing grows rapid and she lets out a warbling howl when the first one breaches her passage, burrowing beneath her testicles and leaving a slimy trail with the next following soon behind. Her wings press down on her belly, trying to help push the orbs out, but they mostly shake from the array of throbbing sensations that blare between her legs like a drum. Slight pain mixed with intense pleasure, she's unsure of what to do and merely pushes harder.\r\rYour hands dive in to lift her package out of the way and help pull the eggs from her supple flesh, making her twitch slightly from your touch. Egg after egg slips out from her, each as large as a grapefruit and smothered in lubrication. Her belly quickly diminishes and within ten minutes she has passed them all.");	}
				else { textLP("\r\rHer tail extends itself through the cheeks of her bum and straight across the bed in preparation. Silandrias then pushes her bum up from the sheets with her legs and lets out a warbling howls as the base of her tail swells with the first egg, the bulge quickly running down its length. Before it can even get halfway through, another bulge already forms at the base, making her clench the sheets with her talons. Her back arches higher and higher as she pushes, her round belly pointing straight into the air while her muzzle buries itself within her cleavage, moaning loudly into the flesh. Her cock dangles half-hard above, dribbling a bit of its own lubricant over the base of her tail.\r\rYour hands grope along her tail, encouraging the passing of the eggs from the outside, watching them reach and stretch the tip wide before they're quickly desposited. Egg after egg slips out from her, each as large as a grapefruit and smothered in lubrication. Her belly quickly diminishes and within ten minutes she has passed them all.");	}
			}
			if (silRep == 2) {
				textL("You run up and grab her, rushing her to her bedroom so she can be more comfortable. However, just as you can get her onto the bed, Silandrias collapses to her knees before it and leans forward over the edge, unable to go any further. The finger-like talons at the tips of her wings reach out over the sheets and clench the fabric as her back arches into the bed, her top breasts preventing her from going to far while the second pair brushes across the edge and make her nipples grow stiff.\r\rOnce more, her tail thrusts itself straight out,");
				if (silTied == true) { textLP(" only to find the passage is blocked by the leather strap. This result only makes her grunt and moan louder as she feels the eggs shift and stretch her cunt. The intense sensation makes her cock flip her loincloth up and pound against the bed with a strange sense of arousal, strands of pre with a mixture of escaping cum splattering with each whack, her testicles groaning to eject some semen as they feel feminine lubricant drool down their backside.\r\rAs your hands reach in to help pull the eggs out, you accidentally brush over her clit, making her howl and push her entire rump into you while an egg forces its way out. Short stuttered spurts of spunk gently paint the overhanging bedsheets with the confused orgasm, not quite a full climax but the sensations are altogether powerful enough to cause the ejaculation. And between each bout of subtle shooting, an egg slips through her tightening and loosening passage, practically firing out into your hands. Her large belly quickly dwindles and by the time she has made a nice waterfall of cum running down her sheets, she has also made a hefty pile of eggs between her feet.");	}
				else{ textLP(" preparing for the onslaught of eggs to come from her large belly. You can hear her gasp and moan into the sheets as her rump pushes back towards you, forcing the eggs into the base of her tail and down its length in turn. The intense pressure from the eggs at her backside causes all of her genitals to engorge themselves, both cunt and cock dribbling with lubricant as they swell slightly.\r\rYour hands grope along her tail, holding it up and encouraging the passing of the eggs from the outside, watching them reach and stretch the tip wide before they're quickly desposited. All the while she claws at the bed, writhing her breasts across the sheets and making her bum wave erotically. The process is almost torturous as it takes so long for the eggs to travel one and two at a time through her tail, making the rest of her a dribbling mess. Her large belly eventually dwindles in size and by the time she has made a nice waterfall of clear fluids from penis and testicles down to the floor, she has also made a hefty pile of eggs beside you.");	}
			}
			if (silRep == 3) {
				textL("You run up and grab her, but notice Silandrias is already beginning to squat as her body forces her to start laying. So, rather than head to her room for comfort, you hug her from behind and gently guide her down to the floor of the tunnel, letting her lean back into your for support. Her head nestles back over your shoulder, her muzzle pressing into your face as she groans with the building pressure below, her wings digging her talons into the floor to anchor herself. In preparation, her tail curls up through your crotch and stretches out over your thigh so she is no longer sitting upon it,");
				if (silTied == true) { textLP(" but with the passage blocked her legs spread wide as well. You reach around her huge belly the best you can to access her slit. Thankfully, she's already quite half-hard and her increased engorgement allows you to easily grab her masculine portion as it pushes the loin cloth aside and point the rod over her thigh, letting pre drool over her fur. Reaching further, the large orbs are a bit more difficult to lift from this angle, but your fingertips manage to pull at the scaly scrotum and drag it up, propping one hefty testicle against her thigh and shuffling the member around to rest upon your arm.\r\rBefore you can yank the other orb up as well, she lets out a moan and shudders into your body. The second testicle moves further away as the exiting egg pushes it aside, slipping out into a messy puddle of her lubrication below while her cock bucks upon your arm as you hold it back. More pre drizzles down your forearm and over your hand, with even more slick stuff drenching about from underneath. The slippery combination threatens to release the ball from your grip and let it crash against the next oncoming egg, forcing you to grab the sensitive sphere harder to prevent such a tragedy. Her tail whips at you as you do so, her body writhing and an erotic howl escaping her lips as the next egg presses out, with a nice large wad of spunk shooting up to your shoulder. From there, a steady gurgle of hot seed dribbles down your arm and over her thigh, smearing about her dwindling belly and her lower tits, coating her testicles and icing the eggs beneath a white waterfall as they are laid into a pile. On occasion, the egg being laid stretches her especially wide, causing the ejaculating erection to launch a volley up at both of your faces.\r\rBy the time she's finished, you could swear her testicle feels quite lighter..."); }
				else { textLP(" a growing bulge at its base already pushing into your groin. You reach around her huge belly to stroke and coax the egg out, feeling the bulge push over your thigh and gently slip out the tip of her tail beside you.\r\rShe arches her back slightly with the continuing oviposition, her loin cloth tenting from the half-hard rod rising beneath. The cloth is moist with pre and grows even wetter with each egg that passes as gobs push through her urethra. Since her tail and backside are doing fine with their steady progress, you manage to reach around with a hand and grab the hunched shaft, smearing the pre down its length. She lets out a guttural moan as she jerks against your body, the loin cloth falling aside and leaving her engorged erection to grow to full length in your grip. The eggs begin to quicken in pace as her hips begin to gently buck up and down with your strokes, clearly expedited by your efforts. By the time a few eggs have slipped out, large wads of hot spunk shoot up over her belly, coating her lower pairs of breasts. The stuff continues to pump out with a gentle gurgle, running down her length and over your hand, spilling from her testicles and forming a nice puddle below. With the occassional larger egg that requires a bit more pushing than the rest, the gentle flood is replaced by lobbing volleys that splatter across your faces and sufficiently make a mess of everything.\r\rBy the time she's finished, even the eggs have been nearly completely coated..."); }
			}
			if (silRep == 4) {
				textL("You run up and grab her, but she lifts a hand, motioning she's alright. Silandrias hugs over your shoulders with one wing while the other cradles her massive tummy the best it can. \"F-First, I want to show you something...\"\r\rUsing you as a crutch, she slowly waddles down the tunnels, taking you down paths you had never seen before. She grunts and wheezes a little as she goes, even having to stop halfway as an egg forces its way through her ");
				if (silTied == true) { textLP(" slit, allowing you to catch it and a bunch of slime just before it falls to the floor."); }
				else { textLP(" tail, slipping out with a puddle of slime onto the floor behind her."); }
				textLP(" \"D-Don't worry about it...,\" she ensures you.\r\rThe two of you quicken your paces to get to your destination before she pops, and soon find yourselves in a relatively small room much deeper underground than you have ever been before in her home. The room is quite odd, with old dirt beddings dotting the floor, hemispherically shaped for some large round object, much larger than any of the eggs you've seen Silandrias lay. And all around, the walls are covered with many, many pictures, with a particularly series centered and more prominent than the rest.\r\rSilandrias takes a deep breath and rests against a wall, making sure her womb has settled enough before speaking. \"This is where me and my sisters hatched...\"\r\r\"I don't know exactly why it's so deep and the tunnels around here look different, like they were made in a hurry, but I believe these pictures can somewhat tell why.\" She takes another deep breath and prepares to explain as much as she can, motioning across the images as she speaks. \"These pictures show that my people were once a much more common race. These tunnels were filled with many families, all living together, with even more tunnel networks like these scattered over what was once a rather lively savannah. Food was plentiful, people were happy, and life was good. However, they saw... something coming.\"\r\rShe focuses on a picture that resembles a wave washing over the land, although the wave itself seems distorted, confused, not clear at all. \"I don't think they knew exactly what it was, but they knew that it would mean the end of our people. Maybe some kind of destructive force? It would explain the many magical items I find strewn throughout the dunes, but even then they are largely intact, not damaged in ways you would expect if that were the case... But anyways, they knew it was coming and in fear of losing us all, they made this room to hide some of their eggs in hopes of making at least some of us survive. And, well, they did.\"\r\r\"Yet, on the other hand, it seems like me and my sisters were the only ones that did survive. I'm sure our parents knew it would happen too, which is why they made all of these pictures. They wouldn't be able to teach us their language, but they could at least teach us some of our history with these images. They taught us how to navigate the tunnels, how to find food, how to live, how to fly. They couldn't teach us everything though, and if it weren't for our caretaker, who we named Saeru - a creature who couldn't speak but could understand us and did her best to take care of us - we probably wouldn't have survived to this day. But even she couldn't help us - me learn how certain things work. None of us ever tried to get... well, like now...\"");
			}

			doNext();
			doListen = function():void{
				silPreg = 0;
				if (silRep == 1) {
					textL("A small pile of eggs between her legs, Silandrias leans back against her bed with a deep sigh. Her chest still huffing for air, she lazily fondles her engorged breasts through her cloak, feeling them shrink a little now that her eggy pregnancy has completed.\r\rShe looks down at the pile with another sigh. \"Mmm... They aren't real either. I don't know how I know that exactly, but my body tells me they aren't. Actually...\" She pauses, opening a wing to let you scoot up beside her so she can rest her head on your shoulder as she speaks. \"As you could tell, I'm kinda alone here now... We were alone since the beginning and now I'm alone now, so I have no idea how my kind works...\"\r\rA serious expression of sadness flushes over her face and she stops the story there.\r\rShe soon cheers up, nuzzling her vulpine muzzle into your neck. \"But you made me not lonely and, well... thank you.\" Planting a kiss upon your cheek, she then whispers into your ear. \"And maybe we can discover what my body can do together~\"\r\r\rYou stay a few more hours with her to ensure that she is alright. Her breasts continue to shrink slowly, but are still fairly large by the time you decide to leave, when she is up and about and back to her usual self. For having had such an intense 'birth', she really recovered quite fast, already moving the eggs away and cleaning the mess she made. You give her another hug and a kiss goodbye before leaving the den to continue with your endeavors.");
					hrs = 5;
					doSexP(20);
					silRep = 2;
					doEnd();
				}
				else if (silRep == 2) {
					textL("The process finished, Silandrias collapses against the bed into her own mess. You move in to check and make sure she's alright, but smile as you see her eyes are shut with her wings folded around her vulpine muzzle, sleeping with a rather content look on her face. The rush to the bedroom and resulting position from the 'failure' therein must have exhausted the poor girl. So, you take the initiative and clean up as well as you can, wiping and spreading out the eggs to dry, before eventually trying to lift her back up onto the bed. She blinks awake only for a few moments to look at the eggs you carefully laid out. \"Don't worry, those aren't real either,\" she says with a chuckle, then curls up and passes back out on the bed as you lay her down to rest.\r\rStaying with her a few more hours to ensure she's alright, you notice both pairs of breasts beginning to shrink once more. Other than that, her blissful sleep confirms that she's quite alright, allowing you to be on your way. With a kiss on her cheek and a subtle whisper of \"Goodnight~\" into her large ear, you head back out and let her sleep peacefully.");
					hrs = 5;
					doSexP(35);
					silRep = 3;
					doEnd();
				}
				else if (silRep == 3) {
					textL("A grand pile of eggs beside you, painted with the creamy sauce of her loins, Silandrias takes a deep breath and lets out a loud humming sigh. Relaxing against you, she seems perfectly pleased sitting at the entrance to her home, right in view of the open desert, half naked and covered in her own naughty mess with you.\r\rShe stares out into the vast expanse of sand and nuzzles you gently. \"At first there were just eight of us, all by ourselves in these tunnels. Well, nine if you count our caretaker, though she was more like a pet, a creature much like ourselves that raised us and made sure we survived. We never knew where she came from, but we saw her like a mother and she was one of the first to leave, with two of my sisters who ventured out to find others like us.\"\r\r\"Then there were two other sisters who went exploring and found Oviasis. The lizan people were afraid at first, but since we were still so young and innocent it didn't take long before they were teaching us their language and trading supplies with us. Soon three of my sisters were staying in Oviasis nearly all the time, building their own lives there and falling in love. However, the waters there slowly changed them, making them more and more like the lizan people, until eventually you couldn't even tell they were like us. I still visit them every now and then, but without their wings they don't come out here as much anymore. There's so many people there and it's so crowded... well, it's not exactly a place I could call home, like here.\"\r\r\"When my first two sisters came back after a few years with Saeru, they were different too. They still had their wings at least, so they could travel, but they were afraid they might lose them soon as well. But oh, the wonders they said they saw. So many other kinds of people and places, things that they could study and experience. Kinda like my fascination with magical items, except more outgoing. There was so much out there that they couldn't stay here for long. And my other two sisters loved them tremendously and couldn't let them go by themselves. I told them that it was alright, that I still had our sisters in Oviasis to keep me company, that the five of them could head off on their adventures together. They were hesitant, but I wouldn't let them choose otherwise. I even still get letters from them every now and then, somehow sent to Oviasis from some elaborate route, keeping us apprised of their ventures and the different ways they've changed.\"\r\r\"It's quite odd, really. Although my sisters have been able to change into other races so much - and I'm sure even I would too if I spent as much time with other peoples as they have - I have not heard any word of someone else becoming like one of us. Maybe that's why there were so few of us?...\"");
					doNext();
					doListen = function():void{
						textL("As the nostalgia of her past and the high of the long orgasm lifts from her mind, she blushes heavily as she finally notices the massive mess. \"Oh dear..\"\r\rSilandrias stumbles at first as she stands, the slimy puddle beneath proving difficult footing and her lack of enormous belly leaving her off balance, but with your help she steadies herself and manages to walk on her own soon enough. Her other sites of swelling are shrinking as well, returning the lithe power to her body and making her as spry as usual. The two of you are able to clean up the entrance, as well as all the many many eggs, within just a couple of hours. Although, again, she mentions that these are fakes just like the rest.\r\r\"I actually don't know when or how they become real...,\" she mentions curiously. But soon after cleaning up she's much to tired to think about it further and you help her to her bedroom for a nice long nap. Seeing as she's snoring like a log with such a deep sleep within minutes, you know she'll be just fine, allowing you to head out on your own.");
						hrs = 7;
						doSexP(50);
						silRep = 4;
						doEnd();
					}
				}
				else if (silRep == 4) {
					textL("Unable to focus any longer, she doubles over once more. This time she doesn't seem to be able to stop it as ");
					if (silTied == true) { textLP("a steady stream of lubrication dribbles down the insides of her thighs."); }
					else { textLP("a steady flow of lubrication spills from the tip of her tail."); }
					textLP(" You attempt to aid her in sitting down, but she continues to bend forward, her instincts rather adamant about rolling onto her belly.\r\rWith her tummy so large, it doesn't take much more than bending slightly at her knees to touch the belly-scales to the floor. She slowly rolls forward, her legs spreading wide to step forward while flanking her own girth, with her lowest pair of breasts soon squishing against the floor, squirting out jets of milk. Then she continues going as the next pair sprays everywhere, followed by the next, and finally her top pair bulges out the sides of her torso like fleshy pillows as she lays down upon them, her legs no longer able to touch the ground. Her wings fold over her bloated chest, covering the white streams to prevent any from spraying into her face, allowing her to yawn wide with a low howl.\r\rFrom behind, her tail lurches forward, ");
					if (silTied == true) { textLP("only to turn straight up as the passage is blocked, giving you a fantastic view of her nethers. The underside of her belly is already thoroughly soaked in pre as her greatly engorged erection pulses out large gobs of the stuff, while her testicles, larger than cantaloupes, hang down heavily over the base of the shaft and are drenched from the slit above. Her tush tenses and her moaning howls stutter as the first egg begins to crown through her lips. You jump in to catch it, coating your hands with slime in the process. Placing the egg aside, you prepare for the next, slipping your fingers slightly into her nethers to help pull the eggs out. Her cock throbs with each passing and looks so close to blowing a massive load, but it seems to be waiting...\r\rIt doesn't wait long.\r\rThe eggs stop for a moment, giving Silandrias a moment to breathe. However, after a deep breath, her howling renews with a much louder and warbling sensual tone. You see white beginning to crown once more as white splatters all over her belly-scales in audible bouts of thick steamy ropes. The crowning progresses, stretching her slit wider and wider than you have seen any of her palmable eggs done before. Your eyes go wide as you even watch her hips spread wider, her body much more elastic than you could have guessed, while her pussy gapes larger than her own head, completely filled with an enormous white shell.\r\rHer gushing peaks as the widest part of the giant egg passes through, quickly slipping out into your arms and right to the floor as you gently settle it upon the ground. Easily more than two feet in height and more than a foot in diameter, the big egg half-fits into one of the several round beddings that decorate the floor of this room. You don't have much time to analyze it, however, as you hear the mother begin to cry out again.\r\rAnother egg just as large pushes through her passage with a spunk-filled greeting into the world. This second egg seems to be the last as Silandrias' belly deflates with its departure, leaving her gasping and moaning as she lay upon her many milky tits, her ejaculation diminishing to a few leftover throbs of oozing cum."); }
					else { textLP("pointing straight back to the floor in preparation. The underside of her belly is already thoroughly soaked in pre as her greatly engorged erection pulses out large gobs of the stuff, while her testicles, larger than cantaloupes, hang down heavily over the base of the shaft. Her tush tenses and her moaning howls stutter as the first egg begins to bulge through her tail. You tenderly massage the scales from the outside, coaxing the egg along until it slips out the tip. Placing the egg aside, you prepare for the next, returning to her rump and rubbing the small of her back to help direct the eggs out. Her cock throbs with each passing and looks so close to blowing a massive load, but it seems to be waiting...\r\rIt doesn't wait long.\r\rThe eggs stop for a moment, giving Silandrias a moment to breathe. However, after a deep breath, her howling renews with a much louder and warbling sensual tone. You see another bulge begin to grow at the base of her tail, but it keeps growing and growing, much larger than you have ever seen before. It stretches both her tail and hips obscenely wide, her body far more elastic than you could have ever guessed. However, this new giant egg comes to a halt before the widest portion can enter the passage in her tail. Silandrias grunts and groans, feebly rocking her legs and humping her own belly slightly as she tries to push it through. Her cock also turns redder and redder as she forces more blood to her bottom, making it drool incessantly. Taking a chance to help her out, you smear the slime along her length and stroke the throbbing rod roughly.\r\rSilandrias' howls turn into an erotic outcry as white splatters all over her belly-scales in audible bouts of thick steamy ropes. The intense orgasm relaxes some of her muscles, letting the giant egg into her tail-passage and rapidly push through to the floor as you gently settle it upon the ground. Easily more than two feet in height and more than a foot in diameter, the big egg half-fits into one of the several round beddings that decorate the floor of this room. You don't have much time to analyze it, however, as you hear the mother begin to cry out again.\r\rAnother egg just as large pushes through her passage with a noisy spunk-filled greeting into the world. This second egg seems to be the last as Silandrias' belly deflates with its departure, leaving her gasping and moaning as she lay upon her many milky tits, her ejaculation diminishing to a few leftover throbs of oozing cum."); }
					doNext();
					doListen = function():void{
						textL("Fairly drenched in her own mess, Silandrias eventually gathers herself and rolls onto her back. Milk still dribbles down her front and her cock twitches lazily as she sits up to inspect her clutch. \"Those... are definitely real.\" She states with a pant. \"Though I never expected them to be so... huge!\"\r\rThe two of you sit there, staring at the two fertilized eggs, confounded by their size, for less than a minute before the room is filled with the sounds of cracking.\r\r\"Already?!\" Silandrias crawls forward, still quite tired, surprised by the rapid hatching and eager to attend to her young. And her eyes grow much wider as a large piece of eggshell falls away, revealing its inhabitant. \"It couldn't be!...\"\r\rThe creature within easily breaks through the rest of the hole, bounding out from the egg with awkward steps and excitement. This furry pup has the face of a cute little fennec fox with large ears and a scaley underside that leads to the long lizard-like tail, much like its mother. However, unlike its mother, it walks on all four paws with no sign of wings and doesn't look like it would have the ability to speak, much like a feral animal. Yet, the sight of it, along with its sister as the other egg breaks away, makes Silandrias break out in tears.\r\r\"They... They are just like my caretaker, Saeru!\"");
						doNext();
						doListen = function():void{
							textL("The kits quickly fumble their way toward their mother with squeaky happy yips, bumping into her fleshy boobs and latching onto her milky nipples as she hugs them into herself with her wings.\r\r\"I-I can't believe it. The creature who we thought had found us and just took care of us out of the goodness of her heart was actually one of us! I still have no idea why, but I guess it's just a natural part of our life to give birth to such adorable pups.\" She leans down and nuzzles them with her muzzle as they nuzzle back. \"Although... I know we weren't born like this and Saeru was much older and didn't become like us. So... How do we have normal children?\"\r\rDespite the question, Silandrias seems perfectly happy caring for her two newborns. It also seems quite hard to call them newborns as within just a couple of hours of feeding from their mother's numerous milky breasts (far too much milk for just two of them to ingest alone), they have grown quite a bit more and are running around and playing like they were much more developed than their age would suggest. Nevertheless, the two of you care for them like children. You spend over a day helping out and making sure all three are doing well, only two find they are doing better than well. It's surprising how self-sufficient the pups are. And, in the end, Silandrias decides to name them after her original caretaker, \"Naeru and Daeru.\"\r\rSince they seem to be doing perfectly well, you eventually head on your way, quite proud of being a father.");
							doSexP(75);
							silRep = 5;
							hrs = 30;
							doEnd();
						}
					}
				}
			}
		}	
	}
	else if (silRep < 5) {
		textL("You approach the entrance to the den, peeking inside with no idea how to navigate the tunnels. So, instead, you grab one of the chimes that decorate the entryway and give it a jingle, like ringing a doorbell.\r\rAfter waiting for several minutes, the large ears of the foxy lizard-like woman come into view.");
		if (silPreg > 36){
			if (silPreg <= 72) { textLP(" She has a slight smile as her wings roam about the growing bulge in her belly, the shape so obvious against her normally lithe form. A smile on her face when she looks at you silently passes the message that she knows it's because of you, but finds the sensation too blissful to actually speak about it.");	}
			else if (silPreg <= 150){ textLP(" Her wings hug under her gravid form, holding and groping it as she feels it sway with each step, so big on her thin form; her belly-scales looking larger as they stretch across the girth. She seems a bit giggly at her state as she looks to you as the cause, but doesn't think it needs stating at this point."); }
			else if (silPreg <= 240) { textLP(" Her belly has grown so large that the tips of her wings can no longer connect around her form, but that doesn't keep her from trying as she rubs over the stretched scales again and again, relishing in their sensitivity. She still manages to stand up straight, though, as her strong lithe build can handle it.");	}
			else if (silPreg <= 360) { textLP(" She leans forward slightly as her weighty girth fills the path before her. Her feathers brush over her taut belly-scales, trying to fan them slightly with the slight pleasure she feels as the finger-like talons grab into the scales as well as they can to help hold her steady. She bends slightly at the knees to aid in holding up her expanding womb, making her look a little silly as she walks."); }
			else if (silPreg <= 550) { textLP(" She laughs a little as she drags her enormous belly the best she can above the floor, using her feet to help keep it aloft. Her progress may be slow, but you can see her enjoying every moment of it as she 'accidentally' brushes it against the soft walls as she moves and fans over herself with her wings to keep from getting too hot from the enjoyment of it. Despite her rather excessively-gravid condition, she seems to truly enjoy being this pregnant...");		}
		}
		if (silRep == 1) {
			if (silPreg > 120) { textLP(" And despite the swelling of her breasts, she has still managed to clasp her cloak. Though only barely as the clasp seems to be quite threatened by the overflowing flesh..."); }
			else if (silPreg > 60) { textLP(" Plus, it seems her breasts have also begun to swell slightly with her belly, the clasp in her cloak being much more 'obvious' than before...");		}
			else { textLP(" Clad in her white cloak as before, the clasp in front nestles between her breasts and seems extra shiny for your arrival.");	}
		}
		if (silRep == 2) {
			if (silPreg > 200){ textLP(" Having completely given up on the clasp of her cloak, the thick nipples of her top breasts barely hold the cloak over most of her mammary flesh. Bigger than her head now, the top pair swings from side to side as she walks, while the smaller pair below jiggle slightly as her belly bobs between them, almost completely bare if it weren't for her wings in the way.");	}
			else if (silPreg > 120) { textLP(" Both pairs of breasts are becoming quite swollen now. The top pair threatens to break through the clasp once more while the second pair pushes against the edge of the cloak, the smaller mounds nearly slipping out with the protruding belly spreading the cloak open. She still manages to cover the exposed side-boob with her wings, unsure what to do about them.");	}
			else if (silPreg > 60) { textLP(" Also her breasts seem to have begun swelling once more, although this time she seems a little embarrassed about some extra growth... Just below her burgeoning bust, another pair of mounds have begun to swell. Her cloak still manages to cover them, but she still tries to cover them with her wings just in case.");	}
			else { textLP(" And her white cloak seems to fit better now after the growth in her breasts has diminished with her belly, though it does look a bit tighter than before the whole thing.");	}
		}
		if (silRep == 3) {
			if (silPreg > 300) { textLP(" Completely bare, it seems as though she has given up on her cloak... With a heavy blush of embarrassment from her exposed curves, she tries her best to cover herself with her wings, with little success. The top pair of breasts rest heavily atop the second pair, which is squished against her belly, and overall makes it difficult for her to look at you over them when covering them. The third pair jiggle obscenely without any coverage, even larger than her top breasts originally were when you first met her. Most of her efforts in trying to grope her belly mostly wind up fondling this lower pair as well, making them quiver even more lewdly...");		}
			else if (silPreg > 200){ textLP(" The upper clasp already undone and the second clasp close to being the same, her cloak doesn't seem to be doing much for her. Half of her top areolas peek out from the edge of the draped cloak, easily the size of small dinner plates, while the second pair press obviously against the tight cloak. Meanwhile, the third pair simply jiggles freely, well more than a handful, as they bounce with the belly. She tries to cover them with her feathers, but with all the other masses she has to deal with she often neglects them...");	}
			else if (silPreg > 120) { textLP(" And she tends to pull at the upper clasp in her cloak, trying to give herself more breathing room as the orbs billow out about and below, much larger than her head. The pair directly beneath isn't fairing much better either, as the second clasp it stretched across both the large mounds and the upper portion of her growing belly. Her third pair, on other hand, make for good hooks as the nipples catch the edge of the cloak on either side, keeping the sides of her belly covered as she hugs it, at least."); }
			else if (silPreg > 60) { textLP(" In spite of her adjustments to her cloak, her top pair of breasts are once more pushing at the expanded clasp, with her second pair seemingly following suit against their own. However, the most embarrassing part for her is that another pair looks to be growing in as well, flanking her belly with small mounds beneath the cloak...");		}
			else { textLP(" It also seems as though she's made some adjustments to her cloak. Though her breasts may have reduced in size after the last laying, she still retains the second pair which has been nicely covered by an additional clasp. However the top pair seems to have had some extra cloth added to the bust, to make up for the increased size...");	}
		}
		if (silRep == 4) {
			if (silPreg > 450) { textLP(" It's' also quite silly how she practically has to burrow her nose into her cleavage to see you... Each time she brushes against a wall, she also leaves behind a trail of milk as her nipples spurt everywhere from the pressure. It's amazing she can even move in such a state...");	}
			else if (silPreg > 300) { textLP(" The many breasts jiggle around her girth, dribbling with milk as she steps. There's so much boob-flesh around the large mound of her belly that it's hard to believe she has a lithe frame beneath it all. Having difficulty looking out you over the top pair, she seems better off simply resting her muzzle on top of them to keep them out of her way. With such a round body, it's no wonder she hardly goes out anymore...");	}
			else if (silPreg > 200){ textLP(" And she's not even bothering with a cloak anymore... For now she's completely bare, she's at least comfortable being naked around you. Jiggling all over with each step, all four pairs of breasts are larger than she was when you met her long ago. The thick nipples stand perk with the air and seem to... have small drops of milk beading upon them. She has apparently begun lactating, though not much, which is quite odd considering the previous layings haven't had any. Which is probably the reason she only tosses a bedsheet on when she goes out to shop, as her dripping around home would simply soil the cloth anyways.");	}
			else if (silPreg > 120) { textLP(" Having found some twine somewhere, she has managed to creat make-do clasps for her cloak to more effeciently cover herself. However, those clasps are across her back as the cloak is on backwards in an attempt to cover her front with as much fabric as possible. And yet, despite the effort, her upper pair is already peeking out from the sides as it stands and all of her nipples press obviously against the cloth as her belly pushes them firmly against the make-do outfit...");	}
			else if (silPreg > 60) { textLP(" And just as before, her breasts have begun to swell already. In anticipation... she didn't even bother latching the clasps. Depending on her large perk nipples and the occasional tug to keep it shut, the cloak manages to cover some of herself. Suffice it to say, there's a lot of exposed belly-scales as the breast flesh stretches them in curvy manners. What's most troublesome, though, is that there is yet another pair beginning to blossom below the third, accentuating the size of her relatively small belly even more.");	}
			else { textLP(" With her curves back to a relatively normal state, she seems to be trying to wear her cloak again. However, her top breasts are already pressing tightly against the upper clasp, despite her reduced sizes from the laying. The lower clasp looks like how the top one used to be when you first met her, which isn't too bad. The bottom pair of decent sized breasts seem to peek out with even the slightest breeze, on the other hand, as she hasn't made a third clasp yet...");		}
		}

		if (vagLimit() < (22 + silPreg/24) && vagTotal > 0) {
			textLP(" Just looking at the bulge in her loincloth, ");
			if (silPreg > 36) { textLP("yet another thing having swollen with her pregnancy, ");	}
			textLP(" you can tell that you definitely wouldn't be able to fit her maleness, so that is pretty much out of the question.");
		}

		textLP("\r\r\"Hello~\" Silandrias greets you with joy, happy to have your company again. \"Come on in, please.\" She turns to lead you into the network of tunnels. \"Would you care to do something, hun?\"");

		if (silPreg > 40) {
			if (silTied == false){ 
				if (silRep == 1) { textLP("\r\rOnly a few steps in, however, she pauses for a moment and lets out a gasp as the base of her tail expands. A round object passes through, stretching her tail as it moves, before her tail reflexively flicks to the side of the tunnel. As the round object approaches the narrow tip, she shivers a little as the tip opens to let the hard-shelled egg through. Laid gently against the wall, lubrication stretches and snaps off from her secondary vaginal passage that is hidden within her tail, leaving the egg still moist.\r\rShe looks down at what she had done before you and blushes. \"Oh dear... I-I've been a little embarrassed since I've begun laying them all over, and even moreso now that I've done it in front of you... D-Don't worry about it though. I just kinda... 'know' that they aren't real, they won't grow or hatch at all, there's nothing in them except normal egg-stuff. Don't really know why though... But it just kinda happens every now and then since we've, umm, had our fun.\" She glances to the side. \"We can leave it for now, I'll pick it up later, with the rest of them...\" Her stride picks up in eagerness to spend some time with you.");	}
				else { textLP("\r\rA few steps in, she pauses and gasps as another egg begins its way down her tail. Just like the lizan people, she lays the infertile things whenever they're ready, though down a different passage. Quite used to it by now, she naturally flicks her tail to the side to desposit it against the wall of the tunnel for retrieval later and continues on."); }
			}
			else {	textLP("\r\rFrom behind, you can see her tail is a bit swollen at its base, just behind the leather strap you bound. The eggs press around her tail, wanting to get out, but simply accumulate instead as they're blocked. It makes her walk a little more awkwardly, but doesn't seem to bother her much otherwise."); }
		}

		viewButtonOutline(1,0,1,0,1,0,1,0,1,0,0,0);
		viewButtonText(0,0,0,0,0,0,0,0,1,0,0,0);
		buttonWrite(1, "Fuck");
		buttonWrite(3, "Be Fucked");
		buttonWrite(7, "Eggcelerator");
		buttonWrite(9, "Cuddle");
		//buttonWrite(11, "Lay");
		if (cockTotal > 0) { Choice1.visible = true; }
		if (vagTotal > 0 && vagLimit() > (22 + silPreg/24)) { Choice3.visible = true; }
		if (checkItem(229) && silTied == false) {
			buttonWrite(5, "Tie Tail");
			Choice5.visible = true; 
		}
		
		if (silTied == true) {
			buttonWrite(5, "Untie");
			Choice5.visible = true;
		}
		if (checkItem(230) && silPreg > 30) { Choice7.visible = true;	}
		//if ((silRep == 1 && silPreg > 100) || (silRep == 2 && silPreg > 160) || (silRep == 3 && silPreg > 240) || (silRep == 4 && silPreg > 360)) { Choice11.visible = true; }
		doListen = function():void{
			if (buttonChoice == 1) {
				var getCum:int = cumAmount();
				textL("Rubbing the "+cockDesc()+" bulge in your "+clothesBottom()+", you make it fairly obvious what you would like to do. The tall girl blushes and doesn't object, leading you right to her room with a rapid pace in her step. In a flurry of kisses and hugs, the two of you are soon stripped of your clothes.");
				if (silPreg <= 240)	{
					textLP(" Taking the lead, she pushes you back onto her bed, "+legVerb(2)+" your "+legDesc(2)+" to lick");
					if (showBalls == true)	{ textLP(" your "+ballDesc()+" testicles");	}
					else { textLP(" the base"+plural(1)+" of your cock"+plural(1)+"");}
					textLP(" before nibbling up the length of "+oneYour(1)+" shaft"+plural(1)+" and gulping down the tip the best she can.\r\rOnce you're thoroughly lubricated with saliva and pre, standing stiff and aching to fill her, she can hardly resist jumping onto it. Yet, she still manages to slowly climb up the bed, her finger-like talons clawing at the sheets as the feathers tickle over your thighs, until she finally manages to sit upright over your waist and squatting down over your erection. She lets out a cooing howl as she feels your girth slip through her lips and burrow into her moist inner-walls. Her wings pressing against your "+boobDesc()+" chest");
					if (silPreg > 150) { textLP(", her large belly resting heavily atop your own"); }
					else if (silPreg > 72)	{ textLP(", leaning over her swollen belly"); }
					else if (silPreg > 36)	{ textLP(", her bulging belly slightly touching yours"); }
					textLP(", she steadies herself while her hips begin to grind and twist hungrily on top of you. Her tongue lols from her muzzle and she pants happily while her ears bob up and down, her tail flicking about sporadically from the joy of having you inside of her.");
					if (silRate > 2 && silTied == false) { textLP(" She pauses only for a moment as she feels an egg drop into her tail, the eggcelerator causing some rather unexpected layings, making her moan a little as she deposits it on the bed beside you, only to make her even more aroused.");		}
					if (silPreg > 150)	{ textLP("\r\rHaving swollen quite a bit with her pregnancy with her belly, her cock slaps loudly against you with each hop and flings pre all over your front. The large testicles rest around your groin, hugging your cock"+plural(1)+" whenever she lifts high enough to allow them to roll beneath her.");	}
					else if (silPreg > 72)	{ textLP("\r\rIt also seems that another part of her has swollen slightly with her pregnancy, her phallic appendage and orbs slapping more loudly against you than before, flinging pre over your front with each hop.");		}
					else { textLP("\r\rHer phallic portion pats against you with each hop as it jumps up and down, splattering puddles of pre against you every time her balls rest upon you."); }
					if (cockSize*cockSizeMod >= 66)	{ textLP(" Your own length, meanwhile, stretches her belly out further, forcing her belly-scales to protrude from within, yet seems to have no sign of hurting her or her womb. In fact, she seems to enjoy it even more as she blissfully hugs your head whenever it presses out far enough, tenderly rubbing it until it disappears back inside.");	}
					else if (cockSize*cockSizeMod >= 36) { textLP("	Your own length, meanwhile, stretches the walls of her pussy greatly, causing them to tightly hug against your width. Yet, there are no signs of pain as she blissfully lets it plow through her again and again.");	}
					textLP(" She bounces upon you so roughly that her ");
					if (silRep > 3 && silPreg > 60)	{ textLP("four pairs of"); }
					else if (silRep > 2 && silPreg > 60)	{ textLP("three pairs of"); }
					else if (silRep > 1 && silPreg > 60)	{ textLP("two pairs of"); }
					textLP(" breasts jiggle obscenely, the nipples stiff as though already preparing for a suckling child.\r\rAt this rate, it doesn't take long before Silandrias is letting out a loud, lustful howl as you erupt within her."); 
					if (getCum < 1000)	{ textLP(" Your hot load churns about her tunnel as you spray about, not a single drop slipping from her slit as her womb drinks it in."); }
					else if (getCum < 5000) { textLP(" Your hot load forces her belly to visibly distend as you spray within, the grand amount of spunk churning around and drowning your gushing head, yet hardly any seems to spill from her slit as her womb drinks it in, thirsty for seed."); }
					else { textLP(" Your hot load forces her belly to expand, inflating as you spray within, the massive amount of spunk audibly churning within. However, only a fraction of the stuff spews back out through her slit, as her womb seems to gulp it down as though it were desperately thirsty for seed."); }
					if (silPreg > 36) { textLP(" Her belly swells above you as her fertile nature quickly processes your stuff, pushing forward her eggy pregnancy with blossoming fecundity."); }
					textLP(" With a couple twitches after being filled by you, her own cock explodes over you, whipping the strands of cum across your body like laced icing. She goes on and on until she's sucked all the cum she can get from you and you look reminiscent of a cheese danish before she finally collapses over you with a heavy sigh.");
					if (silRate > 4 && silTied == false) { textLP(" And though she may be spent, she clenches your body as her cock kicks up a bit more spunk, yet another egg making its way through her tail...");		}
				}
				else{
					textLP(" Her belly too large to wield on top of you, she opts to lie back onto her bed, spreading her legs wide with welcoming access. Prepping "+oneYour(1)+" member"+plural(1)+" for action with a gentle rubbing about the tip, you move in on your prey.");
					if (silPreg > 360) { textLP(" She has to lift her gigantic form even higher with her thighs, bending her legs up so you can even manage to reach her genitals."); }
					else { textLP(" You manage to reach beneath her grand girth, maneuvering around the round form to reach her genitals."); }
					textLP(" Then you have to pull the large package out of your way, both her cock and balls swollen from her engorged pregnancy and blocking the desired entrance.");
					if (tallness < Math.floor(silPreg/9)) { textLP(" Lifting them up, you droop her large shaft over your shoulder, pinning the lower portion between your "+boobDesc()+" chest and her belly while drooping the scrotum over your own length.");	}
					else { textLP(" Lifting them up, you trap her appendage between your "+boobDesc()+" chest and her belly and droop her scrotum over your own length."); }
					if (silRate > 2 && silTied == false) { textLP(" Thanks to this odd position and the doses of eggcelerator, she lets out an early moan as an egg pushes its way through her tail and down onto the floor.");	}
					textLP("\r\rNow with clear access, you slip into her thirsty hole. She is already drenched in lubricant, with plenty spilling and drooling down her tail, the heavy belly and hormones having made her especially aroused. You squeeze her testicles with your "+hipDesc()+" hips while you press in for the first thrust, eliciting a guttural moan of joy from the girl behind the fertile mound. She tries to hump back a little but merely wiggles her rod between your bodies. To help, you lean up against her, moving your whole body with each pump of your cock, slathering the pre that spills from her own over your body to reduce the friction. Quite soon, the lower hemisphere of her belly is shining in slick juices, allowing you to easily rub across her belly-scales. Maybe a little too easily as you have to "); 
					if (silRep > 3)	{ textLP(" grab her lowest pair of tits, milk squirting through your fingers,");	}
					else { textLP(" hug her girth the best you can manage"); }
					textLP(" just to hold hold against her. All of her breasts shake about");
					if (silRep > 4)	{ textLP(", jets of milk squirting out everywhere,");	}
					textLP(" as you pound into her again and again. She moans and howls, her wings groping over her massive form and her tail wrapping up through your "+legDesc(2)+" and wedging into your "+buttDesc()+" rump to pull you closer. It doesn't take long before the extra-pregnant girl to cry out.");
					if (tallness < Math.floor(silPreg/9)) { textLP("\r\rHot spunk sprays behind you, coating your back and painting the floor white."); }
					else { textLP("\r\rHot spunk gushes between you, splattering all over her body and painting your face white."); }
					textLP(" Her knees crush you like a vice as she comes, forcing you to give into your own pressure and explode inside. It's all a blur as you feel your cum churn about within her, and no matter how much you gush, she seems to take in the majority of it as little squirts out from her extra-slick hole. Having so much contact with her gravid shape, you definitely feel it shift and grow from your blast, devouring your seed and feeding her fertile womb. It takes so long for her cries of ecstasy to eventually die down, so lost in bliss...");
					if (silRate > 4 && silTied == false) { textLP("\r\rAnd interjecting into the pleasant relaxing, she lets out a gasp as yet another egg forces its way through to be laid on the bed with you."); }

				}
				if(Math.ceil(getCum/50) > 100 && silPreg > 0) { silPreg += 100; }
				else if (silPreg > 0){ silPreg += Math.ceil(getCum/50); }
				else { silPreg = 1; }
				 doLust(-Math.floor(sen/2), 2, 1);
				/*if (silRep > 3 && silPreg > 120 && silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 56, 58); }
				else if (silRep > 3 && silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 58); }
				else if (silRep > 3 && silTied == false && silRate > 2 && silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51, 53); }
				else if (silRep > 3 && silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 56, 53); }
				else if (silRep > 3) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 53); }
				else if (silTied == false && silRate > 2 && silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 58, 56); }
				else if (silTied == false && silRate > 2 && silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51, 56); }
				else if (silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 58); }
				else if (silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51); }
				else if (silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 56); }
				else { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26); }*/
				doNext();
				doListen = function():void{
					textL("The two of you rest for a while, snuggling together with her sticky mess between you. Significantly satisfied, she kisses you before rolling onto the bed for a nice nap");
					if (knot == true) { textLP(", pausing for a moment as she bucks her hips to loosen yourself from your softening knot before laying back down to rest");	}
					textLP(", her womb quite busy with what you left inside. You kiss her back as she sleeps, taking your sweet time before leaving to continue with other matters.");
					hrs = 4;
					doEnd();
				}
			}
			if (buttonChoice == 3) {
				textL("Stepping towards her and placing a hand upon the bulge in her loincloth, it doesn't take a scholar to figure out what you'd like. The tall girl blushes and the bulge jumps with sudden bloodflow. She doesn't object and leads you right to her room with a rapid pace in her step. In a flurry of kisses and hugs, the two of you are soon stripped of your clothes.");
				if (silPreg <= 240) {
					textLP(" Eager to release, she pushes you back onto her bed, wedging herself between your thighs as she flops the stiffening erection on top of your ");
					if (cockTotal > 0)	{ textLP("own");	}
					else if (cockTotal < 1)	{ textLP("belly");	}
					textLP(" with a splatter of slimy pre."); 
					if (silRate > 3 && silTied == false) { textLP(" She pauses as her rear pulls back a bit, her talons clenching as a bulge travels down her tail. The eggcelerator doses obviously working, she lays the egg on the floor and quickly returns her attention to you.");	}
					if (silPreg > 36) { textLP(" Slightly swollen from her growing pregnancy, she takes a moment to caress her longer member, getting a feel for how large it has become.");	}
					textLP(" Then, her finger-like talons grab onto your "+hipDesc()+" hips, the feathers of her wings tickling your thighs as she drags her cock over you until it falls into the "+vulvaDesc()+" crevice between. With a moaning grunt, she plunges in.\r\rThe hard phallus pumps in and out of your soft velvety walls while the ");
					if (silPreg> 150) { textLP("large and heavy"); }
					else { textLP("big"); }
					textLP(" balls slap against your "+buttDesc()+" rump");
					if (silPreg + pregnancyTime + vagBellyMod > 1000) { textLP(", her pregnant belly bumping against your own,"); }
					textLP(" with each thrust. Her breasts wobble with her fervor, in tune to her panting as her long tongue lolls from her vulpine muzzle.");
					if (breastSize > 3)	{ textLP(" Your own chest jiggles as well, your body dragging across the bed from her strength.");	}
					if (silPreg > 100 && cockTotal > 0)	{ textLP(" More pre slops across her pregnant belly as your "+cockDesc()+" cock"+plural(1)+" gently slap it, making her even more aroused from the taut sensitive scales.");	}
					else if (cockTotal > 0)	{ textLP(" More pre slops across yourself as your "+cockDesc()+" cock"+plural(1)+" bounce around, leaving you rather slick.");	}
					textLP("\r\rThanks to her generous efforts, you both find yourselves reaching orgasm within minutes. Her body quivers and seizes as it forces a few more loud squishes into your pussy before it explodes within, drenching your insides with thick gooey cum. You shiver in turn,");
					if (cockTotal > 0) { textLP(" more eruptions gushing from your own rod"+plural(1)+","); }
					textLP(" shouting along with her howling with sensual joy. By the time your both done with your erotic fits, Silandrias collapses upon your belly, rubbing it with a wing as her seed fills you, her cock slipping out and trailing white strands across her sheets. She then crawls up onto the bed beside you to snuggle and kiss you lovingly, before eventually passing out for a nap.");
				}
				else {
					textL(" Although she's quite eager for some release, her belly prevents her from taking the initiative, leaving her to lay down upon the bed and waiting for you to make the next move. With her erection smearing pre all over the underside of her belly as it stands stiff and hard, all you have to do is climb up the pregnant mound and squat down upon the pole. Wrapping your arms around her girth, she howls as you grab her ");
					if (silRep > 3)	{ textLP("lowest pair of tits, milk squirting through your fingers,");	}
					else { textLP("sensitive belly scales"); }
					textLP(" and begin to bounce up and down on top of her, the swollen shaft plunging through your velvety folds."); 
					if (silRate > 3) { textLP("Then she gasps, holding you still with her thighs for a moment as a bulge grows at the base of her tail and descends down its length, depositing an egg upon to floor before she releases you to continue.");	}
					if (silPreg + pregnancyTime + vagBellyMod > 1400) { textLP(" Your own gravid belly drags across hers, pushing you away as they gently bump and bang against each other"); }
					else { textLP(" Your own belly lays over hers as you try to get as close as possible, feeling how taut and smooth and suppler her belly-scales really are"); }
					if (cockTotal > 0)	{ textLP(", while your own "+cockDesc()+" member"+plural(1)+" "+plural(13)+" caught between, being squished and ground between the flesh until your pre is coating them both");	}
					textLP(".\r\rHer extra-fertile status has made her so horny and sensitive that it doesn't take long before her hips to jerk and her erection to explode within you. You're nearly lifted from the powerful blow, the stuff churning through you and spitting back out across her thighs and sheets, her heavily engorged testicles pumping out an excessive load. Your mind grows fuzzy with your own orgasm, ");
					if (cockTotal > 0) { textLP("ropes of cum leaping from your cock"+plural(1)+" and across her belly to decorate her many tits, ");	}
					textLP("until you collapse over her girth and try to catch your breath. It takes several minutes for the rod inside to soften up and slip out of your nethers with a noisy splurt, allowing you to crawl up beside her and lay with the panting vulpine as her tongue lolls out of her muzzle. She turns a wing to snuggle with you and kiss you lovingly, before eventually passing out for a nap.");
				}				
				doImpregnate(dominant);
				if (cockTotal > 0)	{ cumAmount();	}
				doLust(-Math.floor(sen/2), 2, 2, 5);
				/*if (silRep > 3 && silPreg > 120 && silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 56, 58); }
				else if (silRep > 3 && silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 53, 58); }
				else if (silRep > 3 && silTied == false && silRate > 2 && silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51, 53); }
				else if (silRep > 3 && silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 56, 53); }
				else if (silRep > 3) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 53); }
				else if (silTied == false && silRate > 2 && silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 58, 56); }
				else if (silTied == false && silRate > 2 && silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51, 56); }
				else if (silPreg > 120) { doLust(-Math.floor(sen/2), 2, 3, 5, 23, 25, 26, 51, 58); }
				else if (silPreg > 36) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 51); }
				else if (silTied == false && silRate > 2) { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26, 56); }
				else { doLust(-Math.floor(sen/2), 2, 3, 5, 25, 26); }*/
				doNext();
				doListen = function():void{
					textL("You rest with her for a while before you decide to clean up the mess left behind. Then you quietly don your clothes and sneak out, allowing her to rest peacefully.");
					hrs = 4;
					doEnd();
				}
			}
			if (buttonChoice == 5) {
				if (silTied == false) {
					textL("You think it's a good idea to halt the frequent laying process from her tail as you take out the leather strap that you had found within the labyrinth of tunnels of her home. She doesn't seem to recognize it either, since she says she still has no idea what a lot of the things in her den are for, oddly. Nevertheless, she bends toward a wall and leans against it, lifting up her tail and giving you a nice view of her firm rump as the loin cloth rests against the curves. The leather strap easily slips up the length of her tail and tightens comfortably around the base. It seems to be perfectly made for such a situation.\r\rYou take a few minutes to check the straps to ensure no blood is being cut off and notice she's starting to breath slightly quicker against the wall. She appears to be preparing for an oncoming egg as her tail reflexively whips about to lay it. However, as she pushes her rump back further, trying to press the egg through her tail's vaginal passage, the bulging egg stops right at the strap. Unable to go any further, it sits there, making the base of her tail look swollen.\r\rAfter a few moments pass, Silandrias collects herself and slowly stands. She jerks a bit at the odd sensation of the egg stuck inside of her, but she seems to manage just fine. With a few awkward steps, she gets used to the backed up passage inside of her, her belly already looking a bit bigger from the lack of expulsion.\r\rTying her tail seems to have successfully halted her laying process without any issues. Sticking around a while longer to confirm she is fine, you're soon on your way.");
					silTied = true;
					loseManyItem(229,1);
					hrs = 3;
					doEnd();
				}
				else {
					textL("You decide to let the eggs flow freely once more. She leans against the wall again to give you easy access, allowing you to quickly untie the leather strap and slip it off. Immediately after you loosen it up, the bulge at the base of her tail shifts, making her gasp and her tail whip to the side as the egg within moves and starts its way out. Silandrias lets out a relaxed sigh as the egg is deposited upon the tunnel floor, her belly already looks a little smaller.\r\rYet, despite how much she has built up, no more eggs attempt to exit right away. Staying with her a bit longer, she does eventually lay more, though at her normal cycle from before rather than trying to catch up, leaving her womb swollen in the meantime. Otherwise, she is doing very well, allowing you to head back out.");
					silTied = false;
					itemAdd(229);
					hrs = 3;
					doEnd();
				}
			}
			if (buttonChoice == 7) {
				textL("To help her along with her current eggy pregnancy, you consider giving her a dose of eggcelerator. Even though she isn't of lizan descent, the egg-aid may help her somehow.\r\rSilandrias agrees to take it, as long as you help her administer it. Leading you back to her room, ");
				if (silRate > 2 && silTied == false) { textLP("her tail already laying another egg along the way thanks to previous doses,");	}
				textLP("she readily sits down on her bed and leans back while spreading her legs wide for your convenience.\r\rTaking a moment to stare at the wonderful view, you lean in and pull her veiling loin cloth aside.");
				if (silPreg <= 200)	{ textLP(" Then you easily lift her flaccid maleness, giving yourself access to the soft slit beneath.");	}
				else if (silPreg <= 400) { textLP(" Then you take some effort to lift her swollen maleness, both cock and balls having grown slightly with the pregnant arousal, and manuever beneath the large belly to access her soft slit."); }
				else if (silPreg <= 600) { textLP(" It then takes quite a bit of effort to both hold aloft the engorged penis and testicles, a bit of pre drooling over your arm from her pregnant arousal, and do your best to feel under her huge belly until you can find her soft slit beneath all the swollen bits.");	}
				textLP(" From there, slipping the small suppository inside is simple, as it sucks itself in thanks to its torpedo-like shape.\r\rWithin moments you can feel her shiver as the stuff dissolves and makes her giggle a little.");
				if (silRate > 5 && silTied == false) { textLP(" However, she soon holds her breath and her eyes go wide as she pushes, several bulges travelling down her tail in an instant in response to the sudden spur in production. Once they all plop out around the bed, she huffs as her system stabalizes with her belly visibly growing at first, the production rate surpassing her laying rate some more."); }
				else if (silTied == false)	{ textLP(" She soon gasps as she suddenly feels an unexpected egg already at the entrance to her tail-passage, making her grunt a little as she pushes it out and plops it onto the bed. From there, her belly seems to grow slightly as it stabilizes with the increased rate of production over laying, until she's breathing normally again."); }
				else { textLP(" She soon gasps a little as she feels her belly churn, visibly growing slightly as it stabilizes with the increased rate of production over laying, eventually tapering off when it settles.");	}
				textLP("\r\rThough the chemical may work differently on her, it seems to do its duty. She smiles at you, feeling her fertility blossoming more rapidly. \"I'm sure this will make the process move along faster...\"\r\rYou stay with her another couple of hours to make sure she's alright and to spend some time together, then you head back out to continue on.");
				silRate++;
				if (silTied == false) { doLust(Math.floor(lib/5), 0);	}
				else { doLust(Math.floor(lib/5), 0);	}				
				loseManyItem(230,1);
				hrs = 3;
				doEnd();
			}
			if (buttonChoice == 9) {
				textL("Just wanting to spend some time together, you give her a hug. She smiles back at you and leads you through the tunnels to a nice room to socialize. There are a few seats of plush pillows and reed mats to sit upon, fitting for someone of her height, with a few tables cluttered with various knick-knacks. Torches light the room and several crystalline chandeliers and chimes break the light into vivid sparkling colors, providing a rather soothing atmosphere. Some of the crystals even glow on their own; shards of magical artifacts long lost to the ravages of the desert.\r\rSilandrias lies down upon one of the mats");
				if (silPreg > 36) { textLP(", upon her side so as to give her growing girth some room,"); }
				textLP(" and lets you cuddle up behind her. You hug and caress her curves,");
				if (silPreg > 360) { textLP(" hardly able to cover much of her pregnancy as you grope the massive belly and make her moan ocassionally from the great sensitivity,");	}
				else if (silPreg > 240){ textLP(" groping as much of her giant belly as you can and cause her to gasp softly from the sensation,"); }
				else if (silPreg > 150) { textLP(" groping about her belly and making her toes curl,");	}
				else if (silPreg > 75) { textLP(" petting her large belly,"); }
				else if (silPreg > 36) { textLP(" palming her growing belly,"); }
				if (silRep > 3 && silPreg > 150) { textLP(" causing milk to spit across the floor and soak into everything from her multitude of breasts,"); }
				textLP(" gently kissing her shoulders as you talk. The two of you alternate between stories of your travels and the findings of her treasures. There's even a bit of small talk mixed in as well as periods of silence where you simply enjoy each others company.\r\rEventually, however, you must be on your way so that something can get done. As much as the two of you would like to continue, you can't ignore the need to get some food or other preparations or ignore the rest of your lives.");
				if (silPreg > 36) { textLP(" However, you could swear her form grew bigger than when you started. It seems your company has really made her feel comfortable and... motherly."); }
				if (silRate > 3 && silTied == false) { textLP(" Despite her having laid a few eggs during your time together as well.");	}
				textLP("\r\rYou soon give each other a kiss and exchange farewells, hopefully to not spend too much time apart.");
				hrs = 4;
				if (silPreg > 1) { silPreg += 10; }
				doEnd();
			}
			/*if (buttonChoice == 11) {
			}*/
		}
	}
}