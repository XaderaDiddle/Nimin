function doOviasis():void{
	var chance:int = eventSelect("Oviasis");
	if (chance == 1 && silRep == 0){
		textL("Walking through Oviasis' bazaar, you spot an odd figure amongst all the lizan folk. A humanoid shape wrapped in a white hooded cloak, the most you can manage to make out are some long fuzzy ears, a lizard-like tail, some slight curvature to the apparently feminine figure, and nearly seven feet tall, towering over most others. The person walks around, going from stall to stall trading food and trinkets, especially taking interest in whatever magical wares are available. Feathery wings peek out from her cloak whenever she reaches out for something, with finger-like talons at the tips acting like hands.");
		
		if (pheromone > 0 && checkMagicItem())	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up an odd scent that seems to make her act a little funny. As she follows her nose towards its source, she sways back and forth a little, her hips twisting around as her thighs begin to rub together. Her wings fold inward, the three finger-like talons at the ends of them awkwardly roaming about her breasts and down to her groin, fondling herself sporadically. It seems her wings are her arms, being attached at her shoulders like a bird's.\r\rOnce she gets close enough, you can see more under her cloak. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and a hot blush seems to have washed across her cheeks that almost matches her auburn hair. Soft fur nearly covers her body, parted in front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, though with the way she fumbles to fondle herself she threatens to undo the clasp at any moment. Her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid desert weather - which seems to be... tenting as her other hand works at herself beneath.\r\rShe bends forward as her short muzzle follows the scent right up to you, immediately nuzzling against your body. The wing at her bosom stops playing with herself to hug around you, the fingers digging into your back tenderly as she tries to hold you close.\r\r\"You... You smell sooo good~\" A long tongue reaches out to lick up your chest, the pheromone that exudes from you enrapturing her keen senses while her tail wraps around your "+legDesc(2)+". \"I don't even think I've ever...\"\r\rHer sentence simply trails off as her hips push into you, a phallic object peaking in her loin cloth and running up your side, pre smearing along its path. You can feel a feminine attribute press against your thigh as she slowly begins to gyrate on it, her other wing also encompassing you to surround you with her vibrant feathers.");
			textLP(" She gasps again and again as she tries to speak, but her words are lost to the smothering lust. Her talons pick at your "+clothesBottom()+", trying to burrow her way in for a more intimate connection, but her lack of mental coherence makes the effort futile.\r\rHowever, as her nuzzling brings her muzzle closer to your pack, she begins to sniff again. Her voice wavers much less as she speaks; not undone by the lust this time, \"M-Magic?\"\r\rShe firmly presses into you as her muzzle dives into your pack for an even bigger whiff. \"Y-Yes, something neat in there...\" The sudden distraction seems to have helped her mind gain focus, able to make her think more clearly despite the thing that throbs against you. She leans back to look you directly in the eyes. Fear fills her own eyes, her normally shy and meek demeanor commanding her to flee, but even deeper beyond that you can see a lonely longing inside. Her cheeks more flushed with embarrassment than arousal now, the situation already quite shameful and far out of her usual comfort zone, especially in such a public place, she takes a deep breath and ventures a chance.\r\r\"Would... Would you like to come to my home?\"");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					textL("Her eyes light up, her muzzle rushing in to kiss you. Lips locked for a moment, her eyes spring open as she catches her eagerness early. \"Heh, sorry... Umm... Hope you like flying?\"\r\rHer tail readjusts itself for a better grip around your "+buttDesc()+" rump. And since her winged arms will be occupied with flying, her legs wind up cradling your back as she begins to take off in the middle of the bazaar, positioning you much lower down her body. You get a mighty whiff of arousal as pre drools over your lips, your face mashed up against the tip of the large erection in her loin cloth... Nevertheless, she avoids humping you too much as she focuses on remaining balanced in flight, giving you a chance to twist around and watch the sand fly by below. The two of you go higher and higher, giving you a fantastic view of the desert. You fly out of Oviasis and can soon clearly see the path to your destination: a large dune about 2 hours away on foot. You wouldn't have given much attention such a dune in your usual exploration, since it looks like many many many of the others, but as you fly over to the opposite side you can make out a large jutting stone overhanging a cave.\r\rThe strange woman takes you down and lands you gently atop the sand, giving you a good view of the outside of 'her place'. A simple tunnel burrowing into the ground beneath the rock, the entrance is decorated with all sorts of crystalline chimes that softly ring out with a slight breeze. There's also some painted barriers to keep the sand out as well as a large barrel of water and towels to allow somebody to remove any sand from themselves as well. Otherwise, you can't quite tell what's in the tunnel.\r\r\"Well, umm... This is my home!\"");
					doNext();
					doListen = function():void{
						textL("Her eagerness kicks in once again as she grabs your hand and pulls you along. Inside numerous torches line the walls and keep it well lit, though that doesn't help give you any idea where you're going. You pass through several forks in the tunnel, this underground network seemingly quite large, with few markings to help guide you through. Nevertheless, you quickly find yourself in what appears to be a bedroom. Various outfits glitter with jewels along one wall while another has a large bed of fluffy sheets and another leads to more tunnels. You don't exactly have time to look around though, as she pulls you right to the bed and gently pushes you onto the plush sheets.\r\rTaking the hint, you work at removing your clothes as she hastily begins to drop her own. Then undone clasp falls away with the rest of her cloak, her average-sized breasts standing perk with nipples standing beyond the soft smooth scales. Her frame is rather small, despite her height, her body being quite thin and lithe, with her lush fur masking the toned muscles underneath. Then her hands fiddle with her loin cloth for a bit, gasping when the air touches her nude genitals as the cloth falls away. Hefty testicles squirm with seed beneath a sheath that hugs around the large erection. Slick and smooth, the shaft runs straight to the rounded rim of a thick head which tapers to a point that drools with pre. And between her thighs more slick lubricant runs down her fur, a distinctly feminine aspect hidden behind the big balls.");
						if (cockTotal > 0) {
							textLP("\r\rShe crawls up your "+legDesc(2)+", licking at "+oneYour(1)+" own "+cockDesc()+" phallic endowment"+plural(1)+", making sure it's nice and stiff. Climbing up onto the bed with you, she carefully lines up over the tip of your ");
							if (moistCalc(1) < 5)	{ textLP("slick");	}
							else if (moistCalc(1) < 9)	{ textLP("drooling"); }
							else { textLP("pre-flooding"); }
							textLP(" appendage and slowly squats down onto it. The tips of her wings hold her testicles up to allow for a smooth landing upon your manhood and is prompt to let them knock against you as 'slow' just isn't going to cut it. In her pheromone induced state, the arousal having been overhwelming this whole time, she falls down onto the rod, ");
							if (cockSize*cockSizeMod < 36) { textLP("easily engulfing your whole length"); }
							else if (cockSize*cockSizeMod < 66)	{ textLP("her pussy squeezing around your thick girth as it seems to barely manage to swallow your entire length");	}
							else { textLP("her pussy seemingly having trouble taking in your massive girth, your size much greater than her hole, yet her slit stretches more and more, her hips somehow widening to take you in, and even her belly bulges with scales easily spreading to take in all your cock-flesh"); }
							textLP(", until her smooth scrotum finally slaps against your groin. She reaches down with her wings and her hands grab onto your "+boobDesc()+" chest for balance as her legs begin to powerfully pump. Up and down she goes, wildly riding your bronco as it bucks inside of her in turn, her eyes looking distant as she pants and gasps, so lost with lust. Strands of pre fling about as her own stiff appendage swings about, swatting you again and again with wet splashes as it whacks against your front. You struggle a little to hold onto her thighs so you aren't sucked up into her by your cock from her voracious efforts and quite quickly you begin to feel that oh-so-familiar pressure beginning to build.\r\rWith a loud erotic vulpine howl, this strange woman shudders as she feels you spew within.");
							var getCum:int = cumAmount();
							if (getCum < 1000)	{ textLP(" Your hot load churns about her tunnel as you spray about, not a single drop slipping from her slit as her womb drinks it in."); }
							else if (getCum < 5000) { textLP(" Your hot load forces her belly to visibly distend as you spray within, the grand amount of spunk churning around and drowning your gushing head, yet hardly any seems to spill from her slit as her womb drinks it in, thirsty for seed."); }
							else { textLP(" Your hot load forces her belly to expand, inflating as you spray within, the massive amount of spunk audibly churning within. However, only a fraction of the stuff spews back out through her slit, as her womb seems to gulp it down as though it were desperately thirsty for seed."); }
							textLP(" Her own eruption begins, the bobbing cock launching thick threads of white creamy cum over your body, whipping them up and down as she continues to bounce upon you. Eventually, her legs give out from the intense orgasm and she falls forward with her wings outspread to shelter you both within her embrace, forcing your cock to bend and eventually fly out from her heated cunt to let it drizzle on the floor");
							if (knot == true) { textLP(", making her yelp in suprise as your swollen knot stretches her for a moment and pops out."); }
							textLP(". She continues to spurt a bit of cum between the two of you, the smell of sex rapidly intensifying within the feather confines, her orgasm shortly diminshing as the scent overpowers your pheromones...");
							doLust(-Math.floor(sen/2), 2, 1);
							silPreg = 1;
						}
						else if (vagTotal > 0 && vagLimit() > 28) {
							textLP("\r\rShe crawls up your "+legDesc(2)+", licking at "+oneYour(2)+" own "+vulvaDesc()+" slit"+plural(2)+", making sure it's moist and large enough to fit. Climbing up onto the bed with you, she carefully lines up the tip of her male endowment with your female honey-hole, carefully wedging the head through your supple folds. However, your warmth around her genitals is too much, the intense arousal this entire time from your pheromones getting the best of her senses. She plows into your passage, ");
							if (tallness/2 < vagSize*vagSizeMod) { textLP("pushing your belly out from within, "); }
							textLP("until her balls slam against your "+buttDesc()+" rear beneath. Straddling her own scrotum to grind her hidden slit against as she moves, she begins to thrust through your tender flesh, making her moan and whine from the fantastic sensations your pussy provides. Her wings curl around to embrace you and steady herself, trapping you both within a dome made by her feathers. The heat rapidly begins to build as she pounds into you vigorously, panting and moaning as she begins to drool from the overwhelming lust.\r\rIt doesn't take long before she let's out a loud erotic vulpine howl. Hot spunk floods through your womb, gushing and churning as she presses her breasts against your "+boobDesc()+" chest. Her eyes clench as you climax as well, your walls chewing upon her erection and making her twitch sporadically. The hot heavy feeling of your pussy around her cock proves to be too much, forcing her to pull out to let the cooler air kiss her wet shlong as it finishes its explosion between the two of you, spitting across her scales and fur and your "+skinDesc()+". The smell of sex rapidly intensifies within the feather confines, her orgasm shortly diminshing as the scent overpowers your pheromones...");
							doImpregnate(dominant);
						}
						else {
							if (vagTotal > 0) { textLP("\r\rNoticing she is far too large for you and still having the sense to not hurt you,");	}
							else { textLP("\r\rNoticing a lack of any genitals to use,"); }
							textLP(" she opts to simply lay down over you, straddling one of your thighs. Her balls push to either side as her slit behind presses against your "+skinDesc()+", her rod pushing across your belly. Her hands reach out to hug your head while her wings raise up, trapping you both within a dome made by her feathers. The heat rapidly begins to build between you two as she begins to grind vigorously, desparate to finally climax after having been so dreadfully aroused since she first caught onto your pheromones. Moaning and gasping aginst your face, she curls her back again and again to thrust her thick cock across your groin, threads of pre ");
							if (udders == true)	{ textLP(" smearing all over your udder."); }
							else { textLP(" trailing up and down your belly."); }
							textLP("\r\rIt doesn't take long before she lets out a low erotic vulpine howl. Hot spunk spews up between the two of you, trapped by her wings and raining down upon you. Her thighs clamp around your "+legDesc(1)+", her clitoris pulsing upon you "+skinDesc()+" as the backside of her testicles are flooded with fem-cum. The smell of sex intensifies within the feathered confines, her orgasm quickly diminishing as the scent overpowers your pheromones...");
						}
						doNext();
						doListen = function():void{
							textL("This strange girl collapses on top of you, huffing and panting and ignoring the sticky mess. Her eyelids droop heavily, the expression on her face so ecstatic yet so exhausted from just the single orgasm, as though a much greater weight had finally been lifted from her, beyond that in her loins.\r\rIt takes her nearly an hour of laying on top of you, nuzzling and licking at you the whole while, before her mind finally returns to her. She blinks, as though finally realizing what just happened, and blushes heavily. Rolling off onto the bed beside you, she gasps. There's a bit of fear in her voice, as though her self-conscious self was regaining, and she turns away.\r\r\"I-I'm so sorry!,\" she spouts meekly. However, she turns back to look you in the eye, a sense of wonder and relief shining in her own. \"Th-Though... It was really nice to have some company for once.\" She smiles.");
							if (cockTotal > 0) { textLP(" She then looks down at her belly and rubs it with a hand, relishing the feeling of your seed in her womb. \"That was a lot more... fulfilling than I had imagined it would be.\" A glow seems to fill her expression as she croons over it.");	}
							textLP("\r\r\"Anyways, let me help clean you up, I see I've made a bit of a mess...\" Again she blushes, though this time it's more from embarrassment at how much of a mess she made between the two of you rather than her shy nature. She lifts herself from the bed, her wings trying to cover her nude front in an attempt at modesty as she heads off into the tunnels to grab some towels. Her tail, on the other hand, is so happy from the experience that it lifts high, giving you a good view of her tight rump anyways. When she soon returns, she has somehow donned a new outfit in the time away, a simple robe of silken cloth that looks more suited for sleepwear than to go out into the desert in, especially with the way it hugs her curves and bulges leaving little to the imagination. Which, of course, in turn makes her blush again, her large ears turning red, as she realizes the indecency of the outfit while you stare at her. It's not something she had worn around others before and she hadn't thought about it...\r\rEventually, she helps clean up the majority of spunk from your body, rubbing your down from head to toe and trying not to focus too much on your naughty bits.\r\rOnce you're all cleaned up, she leads you back to the entrance to her den, knowing she somewhat interrupted your exploration. You note that the tunnel system seems quite extensive for just a single inhabitant, yet there is no sign of others...\r\r\"Well, umm... Thank you for coming to my place. You're welcome back any time. I... I do hope to see you again.\" She smiles awkwardly.\r\rYou give her a hug before you leave, being wrapped up in her feathers once more. And as you turn and step out from the rock overhang, she calls out for one last thing.\r\r\"Oh yeah! Hi, my name is Silandrias! What's yours?\".");
							hrs = 5;
							silRep = 1;
							doEnd();
						}
					}
				}
				else {
					textL("Your rejection falls harshly upon her, her ears pinning back against her hood and her tail swinging in between her legs. She jumps away from you, her wings flap around you as they release and snap back to cover herself. She steps backwards, her eyes peering through a couple feathers with tears welling up as she hides behind them, and she gulps to speak, \"Oh... I-I'm so sorry for what happened then!\"\r\rHer sandles kick up the sand as she turns to run away and after a few yards her wings unfurl for a speedier retreat.\r\r\rUnsure of who this stranger was or what exactly happened, it's the last you've seen of her.");
					silRep = -1;
					hrs = 2;
					doEnd();
				}
			}
		}

		else if (pheromone > 0)	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up an odd scent that seems to make her act a little funny. As she follows her nose towards its source, she sways back and forth a little, her hips twisting around as her thighs begin to rub together. Her wings fold inward, three finger-like talons at the ends of them awkwardly roaming about her breasts and down to her groin, fondling herself sporadically. It seems her wings are her arms, being attached at her shoulders like a bird's.\r\rOnce she gets close enough, you can see more under her cloak. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and a hot blush seems to have washed across her cheek that almost matches her auburn hair. Soft fur nearly covers her body, parted in front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, though with the way she fumbles to fondle herself she threatens to undo the clasp at any moment. Her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid desert weather - which seems to be... tenting as her other hand works at herself beneath.\r\rShe bends forward as her short muzzle follows the scent right up to you, immediately nuzzling against your body. The wing at her bosom stops playing with herself to hug around you, the fingers digging into your back tenderly as she tries to hold you close.\r\r\"You... You smell sooo good~\" A long tongue reaches out to lick up your chest, the pheromone that exudes from you enrapturing her keen senses while her tail wraps around your "+legDesc(2)+". \"I don't even think I've ever...\"\r\rHer sentence simply trails off as her hips push into you, a phallic object peaking in her loin cloth and running up your side, pre smearing along its path. You can feel a feminine attribute press against your thigh as she slowly begins to gyrate on it, her other wing also encompassing you to surround you with her vibrant feathers.");
			textLP(" She gasps again and again as she tries to speak, but her words are lost to the smothering lust. Her talons pick at your "+clothesBottom()+", trying to burrow her way in for a more intimate connection, but her lack of mental coherence makes the effort futile.\r\rYou can begin to see tears well up in her eyes from her failing efforts, her hips grinding so harshly in desperation that you can feel the hard erection throb in preparation for an unrequited premature explosion. She whines and whimpers meekly as she begins to twitch.");
			doNext();
			doListen = function():void{
				textL("Wads of white spunk spew through this strange woman's loin cloth. It smatters across your body and paints her thighs as much runs down the inside of the cloth. Plenty of it washes up through her cleavage, finally undoing the clasp with the slick lubrication and making her nipples shine with the moisture as they're freed. She coos and shudders for a few more moments, the cum running out as it continues to pump, her other genitals making a mess upon your "+legDesc(1)+". Her head hangs low as she tries to regain her breathing, her mind slowly returning.\r\rThe smell of her own naughtiness fills her nose. Realizing what she had just dowe, she looks up at you with eyes wide in fear. Stricken with embarrassment, her normally shy demeanor takes charge as she jumps back from you, her wings flapping around you as they let go and snap back around herself to cover the mess she's made of herself.\r\r\"I-I'm so sorry!\" She turns away and begins to run through the crowd, trying to avoid being caught by anybody, her tail slinking between her legs. Once she's out of the bazaar and in a more open location, she kicks up into the air, her wings unfurling and taking her to the air for a speedier retreat. Wads of gooey stuff spills where she takes off, with more being flung around by the flapping of her wings, leaving a short trail before she disappears into the distance. None of the locals were close enough to be caught up in the mess and none seemed to have paid her much mind anyways.\r\r\rLeft in the middle of a crowd and covered in a stranger's lewd fluids, you're not quite sure how to react... You wipe some of it off, but the hot air quickly takes care of the rest. A little dazed, you ask around about this strange woman and find that she's a frequent visitor to Oviasis. Although nobody really knows who she is, she has been coming by for years to trade for supplies or to pick up magical goods, which she is quite fond of. You don't quite mention the extra bit about her... mess and the situation behind it, on the other hand, as the locals never mentioned any form of sexual assaults. It seems she is quite a shy person, so they don't know much more beyond her market habits and friendly demeanor.");
				doLust(Math.floor(lib/3), 0);
				hrs = 2;
				doEnd();
			}
		}
		else if (checkMagicItem())	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up a scent and slowly moving towards you as she uses her nose to follow it, not yet noticing your actual presence just yet.\r\rAs she moves closer, you can see more under her robe. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and long auburn hair. Soft fur nearly covers her body, parted down her front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. Her wings and arms are one in the same, each tipped with three finger-like talons that make up her hands. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, while her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid weather.\r\rAnd as she finally closes in on you, she ducks down as her short muzzle continues to sniff about. She sniffs right up your "+legDesc(2)+" and at your pack, quietly speaking to herself in a feminine voice.\r\r\"Ooo, definitely some magic emanating from here. I wonder what it could be? Crafted? Naturally imbued? A weapon? Or maybe a charm? It's been a few weeks since I've found anything neat around here to add to my collection, I can't wait to see it!\" Her fingers dig into your pack and start to shuffle around for the magical goody, but slowly comes to a stop as she looks up. It wasn't until now that she realizes that it has been attached to a person this whole time - you. She hops back with a blush, her head ducking between her shoulders with embarrassment. \"Oh dear, I'm so sorry! I-I was just hunting for magical treasures!...\" Her toes curl awkwardly over her sandals. \"Umm... Bye!\"\r\rShe disappears into the crowd and heads out of the bazaar in embarrassment before dashing off upon her wings,");
			textLP(" her shyness getting the best off her.\r\rNot quite sure what just happened, you ask around about this strange woman and find that she's a frequent visitor to Oviasis. Although nobody really knows who she is, she has been coming by for years to trade for supplies or to pick up magical goods, which she is quite fond of. It seems she is quite a shy person, hence her little stint with you, so they don't know much more beyond her market habits and friendly demeanor.");
			hrs = 2;
			doEnd();
		}
		else {
			textLP("\r\rNot long after you begin staring at her, she catches you out of the corner of her eye as well. She looks at you for only a moment, realizing you're gawking at her, and comes to an abrupt halt. Meekly, she steps backwards into the crowd, shyly avoiding your presence as she disappears.\r\rWith no sign of her anymore, you shrug and move along.");
			hrs = 1;
			doEnd();
		}
	}
	else if (chance == 1 && silRep < 6 && silRep > 0){
		if (silPreg > 360 || (silRep > 2 && silPreg > 300) || (silRep > 3 && silPreg > 200)) {	
			textLP("Walking through the Oviasis bazaar, you notice that it's about the time Silandrias usualy does her shopping, but you see no sign of her. There must be some reason she hasn't flown out here..."); 
			hrs = 1;
			doEnd();
		}
		else {
			textL("Walking through Oviasis' bazaar, you spot Silandrias doing her usual shopping.");
		
			if (silPreg > 36){
				if (silPreg <= 72) { textLP(" She has a slight smile as her wings roam about the growing bulge in her belly, the shape so obvious against her normally lithe form. A smile on her face when she looks at you silently passes the message that she knows it's because of you, but finds the sensation too blissful to actually speak about it.");	}
				else if (silPreg <= 150){ textLP(" Her wings hug under her gravid form, holding and groping it as she feels it sway with each step, so big on her thin form; her belly-scales looking larger as they stretch across the girth. She seems a bit giggly at her state as she looks to you as the cause, but doesn't think it needs stating at this point."); }
				else if (silPreg <= 240) { textLP(" Her belly has grown so large that the tips of her wings can no longer connect around her form, but that doesn't keep her from trying as she rubs over the stretched scales again and again, relishing in their sensitivity, even in this bazaar with people all around. She still manages to stand up straight, though, as her strong lithe build can handle it, but she clears quite the path as she goes through the crowds.");	}
				else if (silPreg <= 360) { textLP(" She leans forward slightly as her weighty girth fills the path before her. Her feathers brush over her taut belly-scales, trying to fan them slightly with the slight pleasure she feels as the finger-like talons grab into the scales as well as they can to help hold her steady, causing her to gasp erotically amidst the crowds. She bends slightly at the knees to aid in holding up her expanding womb, looking a little silly all the while."); }
			}
			if (silRep == 1) {
				if (silPreg > 120) { textLP(" And with the swelling of her breasts, flesh overflowing above and below the clasp of her cloak, she's rather cautious of any potential 'incidents' that might occur in this public place..."); }
				else if (silPreg > 60) { textLP(" However, she seems a bit embarrassed amongst the lizan people as it seems her breasts have also begun to swell slightly with her belly, the clasp in her cloak being much more 'obvious' than before...");		}
				else { textLP(" Clad in her usual white cloak, she shops without issue.");	}
			}
			if (silRep == 2) {
				if (silPreg > 200){ textLP(" Having completely given up on the clasp of her cloak, the thick nipples of her top breasts barely hold the cloak over most of her mammary flesh. Bigger than her head now, the top pair swings from side to side as she walks, while the smaller pair below jiggle slightly as her belly bobs between them, almost completely bare if it weren't for her wings in the way. She blushes tremendously as she walks through this public place, rapidly shopping to be done as soon as possible, especially as many eyes stare at her");	}
				else if (silPreg > 120) { textLP(" Both pairs of breasts are becoming quite swollen now. She worries about the top pair that threatens to break through the clasp of her cloak while the second pair pushes against the edge of the fabric; the smaller mounds nearly slipping out with the protruding belly spreading the cloak open. She still manages to cover the exposed side-boob with her wings, unsure what to do about them while she hurriedly shops.");	}
				else if (silPreg > 60) { textLP(" Also her breasts seem to have begun swelling once more, although this time she seems more worried about some extra growth... Just below her burgeoning bust, another pair of mounds have begun to swell. Her cloak still manages to cover them, but she still tries to cover them with her wings just in case, to prevent the lizan people from noticing.");	}
				else { textLP(" And with growth in her breasts having diminished with her belly, she walks around with more confidence, though it does seem she's got a bit of tightness still as eyes sometime draw to her chest.");	}
			}
			if (silRep == 3) {
				if (silPreg > 200){ textLP(" The upper clasp already undone and the second clasp close to being the same, her cloak doesn't seem to be doing much for her. Half of her top areolas peek out from the edge of the draped cloak, easily the size of small dinner plates, while the second pair press obviously against the tight cloak. Meanwhile, the third pair simply jiggles freely, well more than a handful, as they bounce with the belly. She tries to cover them with her feathers, but with all the other masses she has to deal with she often neglects them. With the redness in her face as she desperately rushes through the bazaar, it's amazing she even made it this far.");	}
				else if (silPreg > 120) { textLP(" And she tends to pull at the upper clasp in her cloak, trying to give herself more breathing room as the orbs billow out about and below, much larger than her head. Less self-conscious now, it seems her worries have become more about keeping her cloak together than the greater attention she receives, especially as the pair directly beneath isn't fairing much better either, with the second clasp it stretched across both the large mounds and the upper portion of her growing belly. Her third pair, on other hand, make for good hooks as the nipples catch the edge of the cloak on either side, keeping the sides of her belly covered as she hugs it, at least."); }
				else if (silPreg > 60) { textLP(" In spite of her adjustments to her cloak, her top pair of breasts are once more pushing at the expanded clasp, with her second pair seemingly following suit against their own, renewing her self-conscious behavior around the lizan people. However, the most embarrassing part for her is that another pair looks to be growing in as well, flanking her belly with small mounds beneath the cloak, which she desperately hides...");		}
				else { textLP(" It also seems as though she's made some adjustments to her cloak. Though her breasts may have reduced in size after the last laying, she still retains the second pair which has been nicely covered by an additional clasp. However the top pair seems to have had some extra cloth added to the bust, to make up for the increased size...");	}
			}
			if (silRep == 4) {
				if (silPreg > 120) { textLP(" Having found some twine somewhere, she has managed to create make-do clasps for her cloak to more effeciently cover herself. However, those clasps are across her back as the cloak is on backwards in an attempt to cover her front with as much fabric as possible. And yet, despite the effort, her upper pair is already peeking out from the sides as it stands and all of her nipples press obviously against the cloth as her belly pushes them firmly against the make-do outfit. Considering she's nearly fainting from the amount of blood rushing to her face in embarrassment, you doubt she'll be making many more trips to the bazaar after this...");	}
				else if (silPreg > 60) { textLP(" And just as before, her breasts have begun to swell already. In anticipation... she didn't even bother latching the clasps. Depending on her large perk nipples and the occasional tug to keep it shut, the cloak manages to cover some of herself. Suffice it to say, there's a lot of exposed belly-scales as the breast flesh stretches them in curvy manners. What's most troublesome, though, is that there is yet another pair beginning to blossom below the third, accentuating the size of her relatively small belly even more. Nearly every lizan face turns to gawk at her as she rushes through to shop, forcing her to blush the whole way.");	}
				else { textLP(" With her curves back to a relatively normal state, she seems to be trying to get out and shop again with her cloak. However, her top breasts are already pressing tightly against the upper clasp, despite her reduced sizes from the laying. The lower clasp looks like how the top one used to be when you first met her, which isn't too bad. The bottom pair of decent sized breasts seem to peek out with even the slightest breeze, on the other hand, as she hasn't made a third clasp yet... Thankfully, she can keep those hidden beneath the goods she buys as she travels through.");		}
			}

			textLP("\r\rShe stops for a moment to greet you and give you a hug, but with the crowds bustling around you she merely mentions you're welcome to come by her den to visit with her more privately. Then she jumps back into the crowd, eager to finish her browsing so she can retreat back to her private home soon.");
			hrs = 1;
			doEnd();
		}
	}
	else if (chance == 2){
		textL("Walking around the hidden paradise, you come across a rather... shiny area. A nice open beach beside the water is covered with the bodies of lizan people, all sunning themselves in the nice weather. Plenty are covered with oils to help their scales look bright and lush from the incoming rays, and more than a few are covered with nothing else on this private beach...");
		if (percent() <= 50){
			textLP("\r\rAs you peer over the beach of slick figures, one by your "+legDesc(10)+" squirms a little and opens an eye, only able make out your silhouette amidst the sunlight, but doesn't seem to care.\r\r\"Would you be a dear and put some more oil on me, I'm feeling a bit dry.\"\r\rThe sweet voice of the very feminine figure is obviously directed at you. She's one of those who prefer to sunbathe in the buff, letting all her vivid array of scales soak up the warmth. Side-boob can be seen squishing out either side of her chest as she lays upon them, her arms crossed beneath her head. The curvacious body narrows at her waist and expands dramatically at her hips, her rump nice and tight as her tail covers her naughty bits. You can see a bowl of oils beside her, the stuff she's already glazed with.\r\rWill you add some more?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					if (ment <= 10)	{
						textL("You nod and derp, picking up the bowl of oils and splashing it across her back. Then you fall down onto her, wiggling like an idiot and using your front to splash and \"massage\" the oil into her scales. The woman jerks in shock, rolling out from under you, her breasts bobbing around and sparkling from the sand, as she slaps you for your rough treatment.\r\r\"Get away from me!\", she says with an annoyed tone. \"I'll get someone else to help. You creep!\"\r\rShe stares you down and waits for you to leave before rolling back onto the sand, awkwardly trying to clean up the mess you made on her back...");
						doHP(-3);
						stats(0,-1,0,0);
						hrs = 2;
					}
					else if (ment <= 40) {
						textL("You nod and kneel down, splashing your hands around in the bowl to get them nice and drippy with oil. Then you press them onto her back, smearing them around haphazardly, trying to coat her the best you can. Your lack of finesse makes her eye you curiously for a bit, but she shrugs as you're getting the job done. Quite soon she's as shiny as the rest of them.\r\r\"Thank you for the help,\" she smiles and nods at you. Then she dozes off into another nap, content, allowing you to go off on your own again.");
						stats(0,1,0,0);
						hrs = 2;
					}
					else if (ment <= 80) {
						textL("You nod and kneel down beside her, picking up the bowl and drizzling the oil down her spine. She shivers a little from the sensation and croons as your hands come down to press it into her scales, gently pushing it around and kneading her muscles carefully. She squirms a little as you hit her tense areas, obviously enjoying the massage you're giving her. Even her tail whips around a bit as you coat it, exposing her supple genitals for a moment as she accidentally flashes you.\r\rSoon, she's quite coated and relaxed from your efforts. She thanks you for the pleasant experience and insists you take a vial of the oil with you, at least as compensation.");
						doLust(6, 0);
						itemAdd(228);
						hrs = 3;
					}
					else {
						textL("You nod with a smile and straddle her rump as you kneel down, making sure to stay slightly aloft so as to not put any weight on her. You pick up the bowl and drizzle the oil down her spine, then press into it with your hands and spread it out across her body. Using your weight for more pressure, you deeply massage all of her muscles as you knead into her soft scales, making her moan softly from the tender treatment. You can feel her tail beging to flick beneath your "+buttDesc()+" rump as you make your way down to the small of her back, until you trap it as you shuffle back to sit over her knees.\r\rHer tight tush tenses a bit as you gently brush the oil over it, but quickly relaxes as you grab and gently squeeze it. You softly grind into it, making her tail spasm beneath you until it eventually pulls out from under you as you begin to work at its base. You can see the blush in her face as she realizes she has unconsciously flashed you, her supple lips squished between her thighs below her tail. You can see a few sparkles from the dew that's collecting on them, your efforts being a little too pleasant. However, she doesn't seem to try to cover herself and after a moment of your working at her tail, massaging from the tip to the base, she spreads her legs beneath you until you have to adjust your stance to kneel between them.\r\rHer sex quite exposed and drooling honey into the sand below, your hands move in to oil up between her thighs. You slowly work your way up her legs, teasing her until the drooling becomes much more prominent, a large drop pushing out as you press into the outer labia. Her tail nearly slaps you in anticipation, it flicking around so much, and practically urges you to move in. Taking the blatent hints, you gently tug and squeeze at the tender lips, pressing your fingertips into her sex and slipping around to massage the wholly erect button at the front. Your hands deftly fly through again and again, making her gasp and her whole body squirm, shimmering from the oil you had supply her with. As her moaning increases, her panting coming to a climax, you watch as her lips spread. As she groans into the sand in orgasm, trying to muffle herself from everyone around her, your hands");
						textLP(" are filled with a good-sized egg, covered in sensual slime.\r\rHer tail collapses onto your shoulder, resting there as you finish wiping her up and bringing her down, until you finally complete your task. Still breathing heavily, her body looking quite tired, she merely turns up towards you.\r\r\"Please, take some oil with you. Hands like those must be taken advantage of~,\" she sighs pleasantly. \"And you can keep the egg as thanks.\" She sticks out her tongue teasingly, but quickly lays back down to take a nice soothing nap to reminisce the recent events, leaving you to go off on your own.");
						itemAdd(228);
						doLust(10, 0);
						itemAdd(219);
						hrs = 4;
					}
					doEnd();
				}
				else {
					if (ment <= 10)	{
						textL("Either not wanting to get your hands covered in oil or being allergic to the female species, you decide not to help her with her oiling. Instead you awkwardly step back and sneak away, leaving the woman wondering what happened.");
						stats(0,-1,0,0);
					}
					else if (ment <= 40){
						textL("For whatever reason, you don't want to help her with the oiling. Instead you mumble some kind of lame excuse and walk away, leaving her to shrug and try to flag down the next passerby.");
					}
					else if (ment <= 80){
						textL("Deciding not to help her, you calmly explain that you either don't have the time or you have to do something else. You thank her for the offer anyways and she nods back with a smile, waiting to flag down someone else for assistance.");
						stats(0,1,0,0);
					}
					else{
						textL("You kindly decline her gracious offer, mentioning how beautiful she looks already and how you might have had \"trouble\" giving her a massage like that, considering her nice features. She gives you a blushing smirk and giggles a little, offering you to take a vial of her massage oils for yourself, as thanks for the sweet compliments.");
						itemAdd(228);
					}
					hrs = 1;
					doEnd();					
				}
			}
		}
		else{
			textLP("\r\rAs you peer over the beach of slick figures, one by your "+legDesc(10)+" squirms a little and opens an eye, only able make out your silhouette amidst the sunlight, but doesn't seem to care.\r\r\"Would you please give me a hand and oil me up? I can feel my scales starting to dry a little.\"\r\rThe deep voice of the very masculine figure is obviously directed at you. He's one of those who prefer to sunbathe in the buff, not afraid to show off his physique. His shoulders are broad and his muscles are nice and toned, even his ass shining with tightness. His tail droops over his crack, though you can see it's lifted a tad from laying atop his testicles and his dual-cocks laying lazily on either side beneath it. You can see a bowl of oils beside him, the stuff he's already glazed with.\r\rWill you add some more?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					if (ment <= 10)	{

						textL("You nod and derp, picking up the bowl of oils and splashing it across his back. Then you fall down onto him, wiggling like an idiot and using your front to splash and \"massage\" the oil into his scales. The man jerks in shock, rolling out from under you, his large balls swinging beneath his dual cocks, as he whacks you for your crude treatment.\r\r\"What are you doing?!\", he shouts with an annoyed tone. \"I'll get someone else to help. You nut!\"\r\rHe stares you down and waits for you to leave before rolling back onto the sand, awkwardly trying to clean up the mess you made on his back...");
						doHP(-5);
						stats(0,-1,0,0);
						hrs = 2;
					}
					else if (ment <= 40) {
						textL("You nod and kneel down, splashing your hands around in the bowl to get them nice and drippy with oil. Then you press them onto his back, smearing them around haphazardly, trying to coat him the best you can. Your lack of finesse makes him eye you curiously for a bit, but he shrugs as you're getting the job done. Quite soon he's as shiny as the rest of them.\r\r\"Thanks for the help,\" he smiles and nods at you. Then he dozes off into another nap, content, allowing you to go off on your own again.");
						stats(0,1,0,0);
						hrs = 2;
					}
					else if (ment <= 80) {
						textL("You nod and kneel down beside him, picking up the bowl and drizzling the oil down his spine. He shudders a little from the sensation and croons as your hands come down to press it into his scales, gently pushing it around and kneading his muscles carefully. He wiggles a little as you hit his tense areas, obviously enjoying the massage you're giving him. Even his tail whips around a bit as you coat it, exposing his large testicles and dual cocks for a moment as he accidentally flashes you.\r\rSoon, he's quite coated and relaxed from your efforts. He thanks you for the unexpectedly pleasant experience and insists you take a vial of the oil with you, at least as compensation.");
						doLust(6, 0);
						itemAdd(228);
						hrs = 3;
					}
					else {
						textL("You nod with a smile and straddle his bum as you kneel down, making sure to stay slightly aloft so as to not put any weight on him. You pick up the bowl and drizzle the oil down his spine, then press into it with your hands and spread it out across his body. Using your weight for more pressure, you deeply massage all of his muscles as you knead into his soft scales, making him groan a little from the tender treatment. You can feel his tail beging to flick beneath your "+buttDesc()+" rump as you make your way down to the small of his back, until you trap it as you shuffle back to sit over his knees.\r\rHis tight butt tenses a bit as you genetly brush the oil over it, but quickly relaxes as you grab and gently squeeze it. You softly grind into it, making his tail spasm beneath you until it eventually pulls out from under you as you begin to work at its base. You can see him wince with embarrassment as he realizes he's giving you a good view of his nethers, his large balls squished between his thighs with the heads of twin cocks peeking out underneath. You can see a few sparkles from the pre that drips out onto the sand, your efforts being a little too pleasant. However, he doesn't seem to try to cover himself and after a moment of your working at his tail, massaging from the tip to the base, he spreads his legs beneath you until you have to adjust your stance to kneel between them for better access.\r\rHis dongs clearly in view, his testicles squirming with cum, your hands move in to oil up between his thighs. You slowly work your way up his legs, teasing him until the drooling pre becomes much more prominent, large drops pushing out as you grab the orbs. His tail nearly slaps you in anticipation, flicking around so much, and practically urges you towards the happy ending. Taking the blatent hints, you grope at the cum-filled things, reaching down to grab one cock in each hand. The fleshy things harden in your grip, growing slightly longer, but the overgrown fruits still weigh down on them, covering much of your hands as you pump the cocks one after the other. The pre smears about, plenty of lubrication, and he begins to grunt and tense over the sand while you deftly jerk him off. Soon, his tail freezes, standing high as spunk spits out across the sand and pooling around your knees, the balls working hard to keep up with the relief");
						textLP(" until you're kneeling in a puddle of the stuff.\r\rHis tail collapses onto your shoulder, resting there as you finish wiping him up and bringing him down from the orgasm, until you finally complete your task. Still breathing heavily, his body looking quite tired, he merely turns up towards you.\r\r\"Please, take some oil with you. You seem to be better at using it than me. And here,\" he reaches into his pile of clothes and pulls out a large berry, \"take this with you, I've had enough for a while, if you couldn't tell.\" He sticks out his tongue in jest, but quickly lays back down to take a nice soothing nap to reminisce the recent events, leaving you to go off on your own.");
						doLust(10, 0);
						itemAdd(228);
						itemAdd(208);
						hrs = 4;
					}
					doEnd();
				}
				else {
					if (ment <= 10)	{
						textL("Either not wanting to get your hands covered in oil or being allergic to the male species, you decide not to help him with his oiling. Instead you awkwardly step back and sneak away, leaving the man wondering what happened.");
						stats(0,-1,0,0);
					}
					else if (ment <= 40){
						textL("For whatever reason, you don't want to help him with the oiling. Instead you mumble some kind of lame excuse and walk away, leaving him to shrug and try to flag down the next passerby.");
					}
					else if (ment <= 80){
						textL("Deciding not to help him, you calmly explain that you either don't have the time or you have to do something else. You thank him for the offer anyways and he nods back with a smile, waiting to flag down someone else for assistance.");
						stats(0,1,0,0);
					}
					else{
						textL("You kindly decline his gracious offer, mentioning how handsome he looks already and how you might have had \"trouble\" giving him a massage like that, considering his nice features. He laughs heartily at the thought, offering you to take a vial of his massage oils for yourself, as thanks for the complimentary humor.");
						itemAdd(228);
					}
					hrs = 1;
					doEnd();					
				}
			}
		}
	}
	else if (chance == 3) {
		textL("With the hidden valley practically packed with the lizan people that have come out to enjoy the night air, made pleasantly warm by the heat from the oasis waters, you have difficulty getting your bearings. You wander about with no idea where you're going, passing by crowd after crowd of friends who have gotten together to socialize. Eventually, however, you seem to have found your way back to the rock formations where everybody lives. At this time of night, they are usually quite empty as everyone heads out to the oasis. Yet, you can hear some rather... rambunctious noises. You peep inside one of the lower, larger rooms and spot what seems to be a lizan orgy, with several males and a few females.");
		if (vagTotal < 1) {
			textLP("\r\rConsidering the males are already bickering about the lack of available vaginas to plug, you probably wouldn't be of any assistance anyways, so you just continue on...");
			hrs = 1;
			doEnd();
		}
		else {
			textLP("\r\rWith the obvious disparity of sexes in the orgy, they could probably use more females. Would you like to lend an extra hole or two?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6)	{
					var tempInt:int = 0;
					textL("They welcome you into the group, eager to have some more feminine attributes around. Within moments of joining, ");
					if (vagTotal > 2){
						textLP(" multiple males approach you, noticing your rather generous amount of available pussies and beginning to stroke their stiffening appendages. They crowd around you, pulling "+pullUD(2)+" your "+clothesBottom()+" for easier access as they lift you up amongst them, "+legVerb(2)+" your "+legDesc(2)+" wide while their many cocks swarm about beneath you. Each of your holes soon finds a guest burrowing inside, stretching your "+vulvaDesc()+" lips all the way to accomodate the many invaders. The men all grunt and groan as they toss you about, jiggling you up and down in the air and thrusting in different rhythms. The whole situation is difficult to track, yet soon enough you can feel a flood of fluid spray about beneath you as they go off one after the other, each feeling the churning of cum through the walls of your separate cunts. Your own orgasm forces the semen to squirt about your thighs and drench their legs, with even more leaking out in collective gobs as the guys slowly bring you back down to the ground, your "+legDesc(2)+" a bit bowed from the experience.");
						i = 0;
						while (i < vagTotal){
							doImpregnate(6);
							i++;
						}
						doLust(Math.floor(-sen/1.5), 2, 2);
						tempInt++;
						hrs++;
					}
					
					if (tempInt > 0 && vagTotal > 1) { textLP("\r\rThen ");	}
					if (vagTotal > 1) {
						textLP("a lizan man seems surprised to see your exra attributes. Already hard from thinking about it, he happily kisses you and presses his two pricks against your "+bellyDesc()+" belly before each slips them "+legWhere(1)+" your "+legDesc(2)+" to dive into seperate passages. He hugs you tight as he plunges both in at the same time, quivering slightly as he can feel himself through the fleshy wall that separates the rods. In and out, pre and lubrication spitting into the cleft between the bases of the two cocks and dribbling down his scrotum. He nuzzles into your neck, grunting loudly as both things jerk inside of you, pounding both holes in unison until painting them with spunk. You can feel both wombs filling at almost the same time, bringing you to quite a high. The experience was so powerful that when he eventually pulls out, he's as limp as a noodle and can hardly participate in the orgy anymore...");
						doImpregnate(6);
						doImpregnate(6);
						doLust(Math.floor(-sen/2), 2, 2);
						tempInt++;
						hrs++;
					}

					if (tempInt > 0 && vagSize*vagSizeMod > 30)	{ textLP("\r\rSoon after, "); }
					if (vagSize*vagSizeMod > 30) {
						textLP("one of the males approaches you, stroking his double dongs as they point towards you. He nudges you towards a wall until you lean back up against it and he lifts your "+legDesc(2)+" for easier access to your slit"+plural(2)+". Smiling at how large "+oneYour(2)+" hole"+plural(2)+" is, just from glancing at it, he grabs his two cocks together and inserts them both slowly into your entrance, letting you stretch and easily gobble them both up. Delighted with how well he was able to get both into your passageway, he immediately begins to thrust, bouncing you up and down the side of the wall, letting your body toss about with it. You brace yourself, biting your lip as he thoroughly fucks you, his cocks slipping past each other and twisting about inside of you. The feel of your walls with the thumping of his wangs together quickly makes his tail curl around behind him, flexing as he pumps two large loads into you at the same time. You climax soon after, squeezing his cocks back out as they soften, spunk spilling from your "+vulvaDesc()+" pussy, the hole still gaping after he releases your "+legDesc(2)+".");
						doImpregnate(6);
						doLust(Math.floor(-sen/2), 2, 2);
						tempInt++;
						hrs++;
					}

					if (tempInt > 0) { textLP("\r\rHaving had a moment to gather yourself, ");	}
					textLP("your attention is taken by one of the few lizan girls there, who waves you over as she lays on her back with a guy on top of her. You move closer and see she's already plugged up with one of his two shlongs. Looking a tad pained, it seemed the guy tried to fit both in at the same time, to no success, leaving his other cock bouncing awkwardly upon her clit. Yet, with you there, she's able to get a bit more fun as she directs you to lay on top of her, mushing her soft breasts against your own. She leans up to kiss you, pressing your "+buttDesc()+" rump down so the man can slip his other schlong into you while your own "+clitDesc()+" clit grinds against hers. A few seconds pass as the three of you gain momentum and soon you become a writhing mass, humping against each other with the twin pistons plunging into the shared cunts. The girl's tongue swirls around yours and her hands reach between to pinch each your nipples together. The man quickly begins to seize, greatly enjoying the taste of pussies from two different girls, and gushes within. A slight harmony of vibrations can be felt between your two bellies, causing both of your to cry out into each others mouths in orgasm. Eventually, the guy can't stand it anymore and has to pull out to collapse in bliss, letting his spunk drip down from your pussy onto hers and down her crack to her tail. The girl, however, remains latched on for a couple minutes longer before letting go with an enthused gasp, rolling you off to catch her breath.");
					doLust(Math.floor(-sen/2), 2, 2);
					doImpregnate(6);
					tempInt++;
					hrs += 2;
					textLP("\r\rHaving taken all you can for now, you slowly clean yourself up and thank the carnal group for the delightful experience, then walk away with a satisfied kink in your step.");
					doSexP(2*tempInt);
					doEnd();
					
				}
				else {
					textL("Deciding you're not in the 'orgy mood', you continue on your brisk walk.");
					hrs = 1;
					doEnd();
				}
			}
		}

	}
	else if (chance == 4) {
		textL("You stroll around the oasis waters, watching some of the lizan people swim and play about. As you begin to approach some of the more unpopulated floral overgrowth, however, you begin to hear gasping from behind some cattails. Sections of overgrowth aren't as comfortable as the sandy beaches, so the lizan generally don't swim around there, but that does afford the areas some extra privacy. At first from the gasps it seems like they are having fun, but a feminine groan followed by an exasperated \"Ohh, why won't it stop?!\" suggests otherwise.\r\rWhatever is going on, they are obviously hiding for some reason, though they may need some help. Will you approach?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				viewButtonOutline(1,0,0,0,0,1,0,0,0,0,1,0);
				viewButtonText(0,0,0,0,0,1,0,0,0,0,0,0);
				buttonWrite(1, "Plug");
				if (ment >= 30)	{ Choice1.visible = true; }
				buttonWrite(6, "Help Lay");
				buttonWrite(11,"Eggcelerator");
				if (checkItem(230))	{ Choice11.visible = true; }
				textL("You slowly push through the cattails and approach the troubled female.");
				var tempInt:int = Math.ceil(percent()/33);
				if (tempInt == 4){ tempInt = 3; }
				if (tempInt == 1){
					textLP(" A relatively young girl squats in the water in a one-piece bathing suit, with mild curves on her small frame. She gasps and moans as one hand dwells between her legs, holding the crotch of the suit aside, while the other holds onto the plants to steady herself. Below the surface of the clear waters, you can see her exposed slit stretch wide as a white object slips out into a small pile of more eggs that has settled into the sandy floor beneath her. \"Still?!,\" she groans again.\r\rAs she spots you approaching, she lets out a squeak and turns away, her tail pressing down into the water to hide the rear-view of her nethers. \"Please, don't look!\" She blushes heavily. Her soft voice continues on rapidly, trying to explain herself admist her embarrassment. \"I-I'm supposed to go on a date with my new boyfriend tonight and I didn't want to lay in front of him, so I thought if I took some of that stuff it would come out earlier and I wouldn't have to worry. But it didn't seem to do anything so I took a bunch more and it finally came. B-But it didn't stop, instead they just... they just keep coming!\" She whines a little as she feels another one begin to push through, her hips twitching and her knees shaking as she tries to hide it the best she can from you.");
				}
				if (tempInt == 2){
					textLP(" A well-developed girl squats in the water in a bikini, with rather attractive curves on her fit frame. She gasps and moans as one hand roams between her thighs, pulling aside the crotch of the bikini bottoms and stroking herself, while the other holds onto the plants for support. Below the surface of the clear waters, you can see her clit stand stiffly as a white object slips out into a small pile more eggs that has settled into the sandy floor beneath her. \"It's too early!,\" she groans again as she fondles herself. \r\rAs she spots you approaching, she shirks and shuts her spread thighs as she blushes, though her hand remains adhered to her erogenous zone. \"You don't understand!\" She blushes with embarrassment at being caught, but tries to explain herself the best she can. \"M-My fiance and I were, umm... planning to have some 'fun' tonight and I thought I'd take some eggcelerator to help liven up the mood. I didn't feel anything right away, so I took a few more doses. A-And, well...\" She looks away as her eyes clench, her body seizing while her hips twitch, laying another egg before your eyes as her thighs split a little to unintentionally give you quite the view.");
				}
				if (tempInt == 3){
					textLP(" A mature and attractive woman squats in the water completely nude, her bikini tossed aside, revealing the wide hips from years of egg-laying and breasts hanging large and heavily from past breastfeeding, while her thick tail presses down to keep her balanced. She moans as both hands work her pussy, one rubbing her clit as the other spreads her lips wide. You can see it all below the surface of the clear waters, even the white object that slips through her lips and into a small pile of more eggs that has settled into the sandy floor beneath her. \"Not quite how I planned it...,\" she groans again.\r\rAs she spots you approaching, she makes a small effort to cover her indecency, though isn't too embarrassed. \"Well hello there.\" She still blushes a little from your stares, but explains herself thoroughly. \"I was hoping to speed things up for a nice big cake for the kids' slumber party they're having tomorrow, but I went a bit overboard with the eggcelerator... Now I'm stuck here trying to pass them all until I can walk around again without popping them out in front of everybody!\" The lewd thought makes her hand begin to rub again while you continue to watch, twitching as she lays another egg.");
				}
				doListen = function():void{
					if (buttonChoice == 1){
						textL("Using some ingenuinity, you fashion a sort of 'pussy-plug' from one of the surrounding cattails. Soft enough to protect her and her eggs, yet stiff and phallic enough to slip in and stay until she can get to her home in the rock formations, it should suit the situation well.\r\r");
						if (tempInt == 1){
							textLP("Scooching up behind the shy girl so as to not look directly at her, you console her as you bring the modified cattail down to her loins. Since you are unable to get a good view, she has to guide your hand to her slit, which causes her whole body to warm before you from blushing so hard. However, her inexperience with her own body proves most troublesome...\r\rFrantic and unwary of how she's directing you to insert the makeshift plug, she accidentally pushes into the wrong hole. She lets out a shriek of surprise and pain, her tail whipping up behind her. Whipping up right into your own groin.\r\rYou double over in pain and splash into the water. The girl hops up, rubbing herself and kicking the pile of eggs about as she dances about. Her bathing suit slips back over her slit and she holds it tenderly while she bends over you, trying to prevent another egg from popping out.\r\r\"I-I'm so sorry!\" Apologizing for your pain, she turns and runs to find another place to hide as she can already feel the next egg pressing against her bathing suit from within, leaving you to groan and writhe for a while alone.\r\rAfter some time passes, you gather yourself and limp away...");
							doHP(-5);
							stats(0,0,-2,0);
							hrs = 3;
							doEnd();
						}
						if (tempInt == 2){

							textLP("Asking the pretty young woman to spread her legs for access, she blushes harder and nods hesitantly. You gently pull her folds apart, making her buck slightly from her sensitivity, and slip the makeshift plug into her pussy. Pulling away, she pauses as she feels an egg settle onto the soft fluff but is unable to push further, effectively halting her laying for now. Slipping her bikini back over her exposed nethers, she slowly stands, getting used to the sensation.\r\rThough her belly looks a bit bloated and gradually growing with the buildup, she seems grateful. \"Umm... thanks for that.\" She squirms slightly as her stiff clit presses visibly against the bikini's crotch, becoming more aroused from the swelling sensation. Absent-mindendly, she leans down and gives you a quick kiss, dropping one of her pre-laid eggs into your lap as a gift, before blushing ferociously and running off to find her fiancee.");
							stats(0,0,1,0);
							itemAdd(219);
							hrs = 2;
							doEnd();
						}
						if (tempInt == 3){
							textLP("Asking the attractive mother to present her passage, she eyes you suspiciously for a moment. Then she shrugs, removing the hand blocking your access and even leans back further to give you greater access to her sex. You gently press your fingers against her outer labia as you push the makeshift plug in between. Her breathing quickens in pace for a few seconds as you soft touch pleases her sensitive loin. As the next egg slowly comes to a stop upon the soft fluff within, she grins at how effective the treatment was.\r\r\"Wow, that is quite a neat trick! You really deserve some compensation for helping me like that.\" She slowly stands, a hand on her belly as she feels it swell slightly from the buildup before turning away towards her shed suit. Bending down before you, her tail flipping up to balance herself and giving you a generous view of her plump rear, she grabs some coins and an egg from the pile before turning to hand them to you. \"Thanks again!\" She smiles and winks. She then squeezes into her bathing suit, letting her curves fill it in dramatically, and picks up the rest of the eggs to get started on that cake.");
							doCoin(30+Math.ceil(percent()/3));
							itemAdd(219);
							hrs = 2;
							doEnd();
						}
					}
					if (buttonChoice == 6){
						textL("Hoping to help out, you decide to try to assist with the laying, if at least to make the process more comfortable. ");
						if (tempInt == 1){
							textLP("Scooching up behind the shy girl so as to not look directly at her, you slowly move her hand towards her loins to allow her plenty of time to object if she wanted to. However, she seems to instead prepare herself for your touch, leaning back into you and holding her breath as your hand approaches her exposed genitals. Your fingers slide over her own as you spread her supple lips wider, making her gasp lightly as she feels the next eggs slip through the stretched gap. The palm of your hand over her mons, you notice a churning sensation within as another eggs is already being produced and on its way. To allow her to relax more for ease of laying, your hand begins to gently rub about her sensitive slit, using the warm water and subtle lubrication from her hole to caress her stiffening little clitoris. She gasps and moans exuberantly, relying on your body for support as she completely lays back into you, the next egg soon passing through with a greater moan escaping her lips.\r\rAt least half an hour of this pleasurable oviposition passes in your arms. A large pile of eggs has accumulated beneath the two of you and the girl is quite the quivering mess from the many orgasms. Her nipples stand stiffly against her one-piece bathing suit and the crotch is more soaked with her slime than the oasis waters. However, it seems her egg cycle has slowed closer to a normal pace as no more try to escape her womb. It takes several more minutes before she can thoroughly gather herself, looking back to you and blushing tremendously.\r\r\"Th-Thank you. Th-That was...\" Too embarrassed, she can't muster up the rest of her words. Instead, she slowly stands, her legs shaking and threatening to give out as she turns to face you, her petite slit still exposed. She leans down to hug you, giving you a soft peck on the cheek. And then she subtly slips her hand down for one last pet before pulling her suit back into position, stepping away silently in an ecstatic daze while her tail twitches awkwardly behind her.\r\rThough the kiss itself was quite generous from such a shy girl, it also seems she has left you quite the horde of eggs.");
							i = 0;
							while (i < 6 + Math.ceil(percent()/20))	{
								itemAdd(219);
								i++;
							}
							doLust(Math.floor(lib/2), 0);
							stats(0,1,1,0);
							hrs = 3;
							doEnd();
						}
						if (tempInt == 2){
							textLP("Asking the pretty young woman to spread her legs for access, she blushes harder and nods hesitantly. You crawl forward through the shallow water, ducking in between her thighs. She squirms a bit as you reach in towards her exposed slit, making her shiver as you press the sensitive lips with your fingers, spreading and massaging them. Already you can feel her quiver within as a fresh egg begins its voyage out, easily slipping through the widened gap and plopping into the pile below, causing her to let out a low moan the whole way through. Her clitoris stands stiffly amidst her folds, large enough to protrude lewdly, especially with her arousal. Staring at it only makes her blush more and when your mouth comes in to suckle it, she jerks back, wrapping her tail around your abdomen to hold on as she nearly collapses into the water.\r\rThe oasis waters flooding over your tongue as you sip her genitals, the taste of sweet feminine lubrication is nearly overwhelming as she huffs and pants above you. Her hips gyrate around your face, scraping her thighs across your ears. Your efforts to 'soothe' her drive her wild, making her let out an erotic scream as the next egg begins to drop into her passage. The agonizingly slow progress of the ovoid thing through your pleasuring makes her writhe and twist, her tail hugging tighter and tighter and tighter. And, just as the egg begins to breach and make her squeal with ecstasy-\r\rYou pass out from lack of breath, her tail gripping you so strongly.");
							doNext();
							doListen = function():void{
								textL("You wake up some time later having been dragged onto the shore amidst the brush. Your waist aches and there's no sign of the engaged girl. Upon your chest you find a note, hinting as to where she may have gone.\r\r\"So, so sorry for making you pass out! I had to... With my fiancee and... Here, at least have an egg for forgiveness!\"\r\rRight beside you, you find the lone egg she had laid earlier, still slightly slimy and warm from her womb. Considering it's not wet from the oasis waters, it might just be the egg she laid when you were crushed...");
								itemAdd(219);
								hrs = 4;
								stats(-1,0,0,0);
								doHP(-15);
								aff(6, Math.floor(percent()/20 + 2), -1)
								doLust(Math.floor(lib/4), 0);
								doEnd();
							}
						}
						if (tempInt == 3){
							textLP("Asking the attractive mother to present her passage, she eyes you suspiciously for a moment. Then she shrugs, removing the hand blocking your access and even leans back further to give you greater access to her sex. You crawl forward through the shallow water, ducking in between her thighs. She squirms a bit as you reach in towards her exposed slit, making her shiver as you press the sensitive lips with your fingers, spreading and massaging them. Already you can feel her quiver within as a fresh egg begins its voyage out, easily slipping through the widened gap and plopping into the pile below, causing her to let out a low moan the whole way through. Her clitoris stands stiffly amidst her dangling folds, all the meaty labia engorged with her arousal. She lets out a squeak as your mouth comes in to nibble on the tasty flesh, surprised at the efforts you are taking to 'comfort' her.\r\rThe oasis waters flooding over your tongue as you sip her genitals, the taste of sweet feminine lubrication is nearly overwhelming as she breathes more heavily above you. As you dip further into the water to nom on more of her labia, her hand briskly sweeps down to grind against her clitoris. The next egg begins to drop into her passage, pouring slime over your lips as it passes through while her ample rump twitches and splashes over the water's surface above you. You come up every now and then for a breath, only to dive back in to continue munching away, making the eggs speed through quicker and quicker as she takes a fondness to your efforts.\r\rAfter about a half hour and a great deal of pussy flavor filling your mouth, the woman seems to have finally finished laying all that the eggcelerator had caused. Coming up to look at her, her face is thoroughly dazed from the experience, her nipples stiff from all her own fondling while you were underwater and even leaking a few drops of milk.\r\r\"Well... that worked out much better than I thought it would. Though I suppose now I should really be getting back to my husband and children.\" She smiles as she teasingly disapproves of the minor infidelity. \"Thank you for your efforts though, it was a pleasant experience.\"\r\rStanding to gather the eggs together, she also bends forward before you, giving you a generous view of her rear, tail up and all, while she grabs some coins to give you in return. Then she gathers up the eggs for the cake she needs in the suit before slowly walking away, her tail swaying from side to side with the rest of her hips, making her way through a nude beach to get home.");
							doCoin(10+Math.ceil(percent()/10));
							aff(6, Math.floor(percent()/20 + 6), -5)
							doLust(Math.floor(5+lib/4), 0);
							hrs = 3;
							doEnd();
						}
					}
					if (buttonChoice == 11){
						loseManyItem(230, 1);
						textL("Thinking another dose might somehow help, you pull out an eggcelerator from your bag. ");
						if (tempInt == 1){
							textLP("Scooching up behind the shy girl so as to not look directly at her, you console her as you bring the dose of eggcelerator down to her loins. Since you are unable to get a good view, she has to guide your hand to her slit, which causes her whole body to warm before you from blushing so hard. With her experience with the previous doses of eggcelerator, she manages to guide you correctly and lets out a squeak as she feels the suppository slip up into her passage.\r\rThe girl begins to quiver slightly as she feels her womb go into overdrive. A gasp escapes her lips as an egg immediately pushes through her folds, past your combined fingers. Suddenly, she seizes back into you, her back arching, as more eggs spill out of her womb. Her pussy lifts out of the water and into the air as her feet drag and kick through the sand below, tossing the pile about. Her exposed cunt spreads wide as another egg plops out into the water with another one right behind firing further out. She moans and whines as her body thrashes about, staring down at herself with fear as she's practically spreading her legs to anybody else in the lake and spreading her private area wide for them all to see as the eggs fly out of her. Jumping away from you with a sob, she stands up with a couple more eggs dropping between her thighs with thick strands of lubricant trailing. The girl hastily covers the exposed genitals with her one-piece suit, a tear shedding as she sees the crotch bulge with the next egg pushing through. Wholly embarrassed, she runs off into the brush, the eggs already slipping back into the rear of the suit as more collect before she disappears.\r\rLeft alone and feeling a little ashamed of how things progressed, you manage to fish out some eggs that survived and head off.");
							itemAdd(219);
							itemAdd(219);
							itemAdd(219);
							stats(0,0,0,-1);
							hrs = 3;
							doEnd();
						}
						if (tempInt == 2){
							textLP("Asking the pretty young woman to spread her legs for access, she blushes harder and nods hesitantly. You gently pull her folds apart, making her buck slightly from her sensitivity, and slip the eggcelerator into her pussy, letting it slide up into her womb.\r\rShe gasps for a moment as she feels the tingling in her belly while the suppository dissolves, then her eyes grow wide as an egg immediately pushes out through her folds. Moans start to emit from her lips as more eggs cram their way about her pussy, her legs opening and shutting sporadically as she tries to rub herself while they fall into the pile below. However, the squatting position requires too much strength and she collapses forward onto her hands and knees, her rump pointing at the bushes. You can hear more eggs splash into the water behind her as she groans, her eyes clenching shut and her mouth wide with ecstasy.\r\rThe engaged girl's tail whips about behind her while her hips twitch and twist. She tries to reach down to fondle herself, but without the support she merely crashes into the water. In a wavering voice, she begs of you, \"Please... H-Help me!\"\r\rNot wanting to torture her, you move behind to see what you can do. In her shifting, it seems her bikini bottom had drooped back over her slit, only to be destroyed by the next egg on its forceful way out, the fabric torn away with only the outlining bands left intact. Essentially, her pussy is on blatant display as the bands slip behind her outer labia, leaving a gaping cunt that stretches even wider with each ovoid object it expels.\r\rUnsure what to do, you spot a large button that quivers with arousal. Sticking out from her lips and looking closer to a small penis, her clitoris is extremely engorged from the stimulation of her passage. So, you wrap your fingers around it and quickly proceed to jerk it with the plentiful lubrication that dribbles down from above. The girl cries out across the waters, turning some heads in the distance, as she instantly comes to her first orgasm, her whole body quaking. Again and again, with your efforts on her clit and the procession of eggs, the girl trembles and climaxes, her tail curling in the oddest of shapes in the air.\r\rAfter over half an hour of the extreme masturbation, the last egg pops out and the girl collapses onto the pile, crushing them all. She exhales under the water, bubbles floating to the surface before popping up for air. She continues to huff, letting the refreshing water regain some of her consciousness and eventually turns back to you.\r\r\"Wow... I-I didn't know one more eggcelerator could make me do that...\" She gasps again, completely oblivious to the fact that you're still staring into her gaping lewd genitals that she had attempted to hide earlier. \"H-Here, take these. I'm gonna go buy a buttload more and find my fiancee. I just hope he can last a few days...\"\r\rShe reaches into another pile of her belongings she had left amongst the cattails and hands you a couple more doses of eggcelerator, as well as some coins for more compensation. Then she stands. Then she falls back into the water with a splash as her legs give out. Then she stands again and begins to awkwardly walk out of the water and straight to the bazaar. She also seems completely unaware of the missing fabric in bikini bottom, especially as her little 'erection' points the way...");
							itemAdd(230);
							itemAdd(230);
							doCoin(15+Math.ceil(percent()/10));
							doLust(Math.floor(lib/2), 0);
							hrs = 3;
							doEnd();
						}
						if (tempInt == 3){
							textLP("Asking the attractive mother to present her passage, she eyes you suspiciously for a moment. Then she shrugs, removing the hand blocking your access and even leans back further to give you greater access to her sex. You gently press your fingers against her outer labia as you push the eggcelerator into her supple hole, letting it slip up into her womb.\r\rShe gasps for a moment as she feels the tingling in her belly progress, then her eyes grow wide as an egg immediately pushes out through her folds. Suddenly, she leans backwards even more, pointing her pussy right at your face as more eggs coming flying out. Her strong motherly hips propel an onslaught of eggs at you, smacking and cracking over your head and body. She eventually crashes back into the water, crushing the pile of eggs she had already laid and firing a couple more past you.\r\rThe splash of water across her face snaps her out of the egg-laying haze and she jumps up, just in time for another egg to shoot down between her thighs. \"Oh no, all the eggs for the cake!\" She cries out in dismay and attempts to block the next with her hand, only to result in a yolky mess. With that failing, she turns away from you and bends down, giving you a perfect view of her round rear as well as another egg that propels straight into your face, while she picks up her bathing suit. Rapidly folding the elastic garment a bit and tucking it between her legs, she manages to improvise a basket. Then she takes off through a nude beach, carrying the suit-basket between her legs as it slowly stretches with the depositing eggs, her hips and tail twitching sporadically with each lay.\r\rLeft covered in yolk and slightly pained from the firing squad, there's not much left to do but wash off in the oasis waters and head off...");
							doHP(-10);
							aff(6, Math.floor(percent()/20 + 4), -3)
							hrs = 3;
							doEnd();
						}
					}
				}
			}
			else {
				textL("Deciding not to interrupt her, you leave whoever it is to their privacy and continue on your relaxing stroll.");
				doLust(-5, 0);
				doHP(2);
				hrs = 2;
				doEnd();
			}
		}
	}
	else if (chance == 5) {
		textL("Exploring the paradise that's hidden within the desert, you get a better idea of what Oviasis is like.\r\rDuring the day, most of the lizan people spend their time in the caves and tunnels which speckle the sides of the rock formations that protect this valley. A bit hot, it's good to keep their temperatures in check with the cool stone. Yet, they all spend a bit of time soaking in the rays of the sun or taking a dip in the oasis water, the same water where many of the females like to lay their eggs, as it is a comfortable clean place that tends to be more private than if they started ovulating elsewhere. It is also where many lizan get a little randy at night when the sun sets, making the waters nearly churn with some lacivious activity while depending on the darkness for their privacy...\r\rNight is when Oviasis usually comes alive. Though the store hours are during the day, when they're feeling sluggish, it means that at night everybody is free to enjoy each other's company. Parties are commonplace, though they aren't much more than groups of friends gathering and talking and having fun together. With the amount of naps they get during the day, they often don't need to sleep at night, allowing them to catch up on social affairs or go hunting for food in the crisp air.");
		hrs = 1;
		doEnd();
	}
}