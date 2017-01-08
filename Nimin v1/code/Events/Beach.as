function doBeach():void{
	var chance:int = eventSelect("Beach");
	if (chance == 1){
		textL("While taking a nice stroll along the beach, you see the silhouette of somebody sunning themselves on the sand in the distance. Judging by the ample curves at their chest, they seem to be a rather well-endowed in the breast department. Considering you can also spot the plump perk nipples protruding unrestrained from where you are, you also assume the person is likely to be nude. And judging by the large, swollen belly, you suspect that 'she' may be quite pregnant as well...\r\rWould you like to inspect her more closely?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				textL("Moving closer, you squint in an attempt for a better view. However, her body seems moist as the sun reflects off her slick skin easily, making it difficult for you to see. It's not until you're nearly on top of her that you can clearly make out what she is...\r\rShe has curly hair that hangs past her shoulders, coral pink in color. It looks like it's completely drenched, despite laying out in the sun, and has bits of seaweed caught within it.\r\rHer face is slightly slightly round, with incredibly smooth looking skin that is oddly pinker than usual, though not nearly as noticeable as her hair. She wears a very relaxed and content expression, her eyes closed as she soaks up the warmth of the sun.\r\rUpon her chest heaves two quite enourmous breasts, each larger than her head. She doesn't seem to be completely nude as two starfish cover her nipples. They stick out against her breasts quite far, easily mistaken from your first observations. They also pulsate slightly, their twitching causing the fleshy mounds to jiggle, as though they were suckling from her.\r\rAs suspected, her belly is quite gravid indeed. Her slender hands caress it as she lays there, practically glowing with her engorged fertility. In relation to the rest of her torso, the belly seems far too large for her. Although, as you look further still, it's no surprise that she can manage to carry it...");
				doNext();
				doListen = function():void{
					textL("Her 'butt' is large for her slender torso, her hips wider than you'd expect. And she has no legs...\r\rEight large, long tentacles squirm idly below her waist. They share a similar tone of pink as her hair, though much deeper and nearly purple, with a thin membrane of fleshy webbing between them. Their undersides are riddled with little suction cups, popping and sticking onto each other as they writhe. And as you step too close, one twitches out and touches you, realizing you're there.\r\rThe octopus girl's eyes snap open. They're large and nearly all a deep purple in color, with a slight amount of white around the edges. She glares at you in an instant and smirks. And you're quite unsure if it's a playful smirk or a predatory one...\r\rEither way, as her tentacles roll beneath her body and bring her to a 'stand', wobbling slightly from her large bosom and belly, you'll soon find out!");
					doNext();
					doListen = function():void{
						enemyID = 303;
						currentState = 2;
						enemyBaseStats();
						eMaxHP = eHP;
						doBattle();
					}
				}
			}
			else {
				textL("Deciding it best to leave the curvy woman in peace, you turn around and head back to Siz'Calit.");
				hrs = 1;
				stats(0,1,0,0);
				doEnd();
			}
		}
	}
	else if (chance == 2){
		textL("While taking a nice stroll along the beach, you see the silhouette of somebody sunning themselves on the sand in the distance. Judging by the ample curves at their chest, they seem to be a rather well-endowed in the breast department. Considering you can also spot the plump perk nipples protruding unrestrained from where you are, you also assume the person is likely to be nude. And judging by the large, swollen belly, you suspect that 'she' may be quite pregnant as well...\r\rWould you like to inspect her more closely?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				textL("Moving closer, you can make out her figure much more easily. She has a slender frame, quite lithe, with a thick tail that narrows to a point and swishes through the sand between her spread legs. Oddly, she seems to be covered in scales, ranging from green to a light purple. And you seem to be able to see ALL of her scales, as she is quite nude while she soaks up the sun.\r\rShe spots you as you approach and gently turns to face you, a smile on her reptillian face \"Hello dearie. Do you enjoy the view?\" She sticks out her tongue as her hand gropes at her large breast. \"Mmm, but I don't mind. I'm much too happy. Days like this with my husband are so nice~ When he gets so horny and just absolutely fills me up~!\"\r\rHer other hand roams over her huge belly before finding its way to her crotch. You can hear a slurp as she pleasure herself and you spot a spurt of white gunk spew across the sand.\r\r\"He went off to fetch some food, though, and I don't know when he'll be back. Would you be a dear and help me with something down there while he's gone, if you would?\"");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6) {
						textL("You nod your head and begin to move towards her legs.\r\r\"Thank you so much, dearie~ I have a tendency to build up my eggs, unlike other lizan girls, and my husband's stuff is the easiest way for me to lay them all at once. I just need you to sit there and be ready to catch them when they do, or else they'll float into the water and be such a waste...\"\r\rNodding once again, you maneuver around her body and kneel down between her legs, straddling her thick reptilian tail. Your eyes go wide, however, as there's much more white gunk than you expected, spunk literally oozing from her scaley slit, despite the fact she's clenching to keep it in.\r\r\"Just like that dearie. Sitting on my tail helps me push. Now, get ready!\"\r\rYou reach out in preparation, your fingers slipping across her supple lips and making her moan. Her thighs shudder as she lets out a gasp, letting her cunt stretch wide.\r\rCum floods from her loins, pooling around your "+legDesc(6)+" and over her tail. You quickly realize that her large belly had mostly been inflated with cum rather than some mere eggs! Especially as the eggs that rush out are relatively small, maybe twice the size of a chicken's. You scramble to pluck them from the river of cum, trying to spot their white shells amidst the white fluid. Your hands slip and stick from all the spunk, but you manage to get them all. Hardly half a dozen...");
						doNext();
						doListen = function():void{
							textL("\"Whew... Thanks a lot, dearie. Sorry to umm...\" She looks at your "+clothesBottom()+" and how drenched it is with her husband's seed. \"come on you like that... Don't worry though, it'll wash right out. And he takes a drug to keep it sterile for our little outtings. Wouldn't want to have all these eggs be alive now, would we?\" She chuckles. \"But here, take one for yourself. They're good for you, when they don't have babies in them!\"\r\rShe giggles and kisses you on the cheek, thanking you once again before you head off. She dozes back off, her tail idly swishing in the pool of semen, her thighs drenched in the stuff, and looking all the happier for it.");
							itemAdd(219);
							if (percent() < 35) {
								textLP("\r\rAs you begin to leave, however, you spot something move towards you. Another reptillian, this one seems quite male as two cocks hang from his groin and knock against his knees. He seems a bit sheepish at first, blush filling the scales of his face due to his rather immodest lack of an outfit, but realizes the damage is already done and waves you over.\r\r\"Umm... I suppose you helped out my wife then?\" He spots the egg in your hand and the lack of belly on his wife. \"Well, thank you for that. Sometimes I just can't get back in time. Here, take one of these at least, I think I've got plenty.\"\r\rHe hands you a berry but actually refers to his scrotum. It hangs past his wangs and seems stuffed with testicles, though you can't easily count how many. They're each at least the size of a small melon and can easily explain how his wife was so bloated.\r\rNevertheless, he thanks you again and lets you head off, wanting some more time with his wife.");
								itemAdd(218);
							}
							hrs = 4;
							doEnd();
						}
					}
					else{
						textL("You shake your head no, not wanting to interrupt their time together.\r\r\"Ahh, thank you dearie, I appreciate the sentiment. Here, at least take one of these. My husband uses them on occasion, but he prefers a different kind. Not that it matters to me, either way he makes me happy~\" She twitches as her head leans back with a strong sigh, another spurt spewing over the sand.\r\rShe then picks something from her pack beside her and tosses it over to you, letting you head back to Siz'Calit.");
						itemAdd(208);
						hrs = 2;
						doEnd();
					}
				}
			}
			else {
				textL("Deciding it best to leave the curvy woman in peace, you turn around and head back to Siz'Calit.");
				hrs = 1;
				stats(0,1,0,0);
				doEnd();
			}
		}
	}
	else if (chance == 3){
		textL("Walking along the beach, you spot something shiny in the sand.");
		itemAdd(206);
		hrs = 2;
		doEnd();
	}
	else if (chance == 4){
		textL("Combing the beach, you find something odd buried in the sand.");
		itemAdd(207);
		hrs = 2;
		doEnd();
	}
	/*if (chance > 40 && chance <= 60){
		textL("Admiring the ocean, you spot something float in on the tide.");
		itemAdd(208);
		hrs = 2;
		doEnd();
	}*/
	else if (chance == 5){
		textL("Strolling along the beach, you yelp and hop up and down, your "+legDesc(9)+" aching painfully as you step on an urchin! You twitch in a strangely lewd manner as its toxin tenses the muscles around your sensitive areas, tiring them.");
		doHP(-Math.floor(percent()/10));
		hrs = 2;
		doEnd();
	}
	else if (chance == 6){
		textL("You walk along the beach, the ocean breeze blowing through your hair, the smell of salt on the wind. You take a deep breath and feel a bit rejuvenated.");
		doLust(-5, 0);
		stats(0,0,-1,0);
		exhaustion -= 2;
		hrs = 1;
		doEnd();
	}
}