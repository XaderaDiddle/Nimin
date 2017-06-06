function doSizCalit():void{
	var chance:int = eventSelect("Siz'Calit");
	//Lila Event
	if (chance == 1){
		if (lilaPreg > 100)	{
			textL("\"Hewwo~!\" Little Lila greets you cheerfully as she spots you, running up to latch onto your waist.");
			if (lilaMilk == 0){ textLP(" Her sundress seems fine and dry until she gets excited by your presence, with small blotches beginning to darken around her many nipples."); }
			else if (lilaMilk <= 2)	{ textLP(" Small blotches already adorn her sundress, with dark trails running down beneath as she becomes excited by your presence. Warm drops splash across your "+legDesc(10)+" as she connects, milk dripping from her hem-line.");	}
			else if (lilaMilk <= 5)	{ textLP(" Trails of milk blotch their way down her sundress, dripping across the wood of the felin 'street' as she runs, her nipples forming peaks in the fabric."); }
			else if (lilaMilk <= 8)	{ textLP(" Drops of milk visibly form outside of her sundress as it soaks through, her puffy stiff nipples showing through the mildly-translucent wet fabric. You can see further beyond that a few of her friends had been following her, a couple with white mustaches. Though as she squeezes against you with the embrace, you can feel more warm moistness spray out about your "+legDesc(2)+"."); }
			else if (lilaMilk <= 12) { textLP(" She seems to have left behind a group of friends, some with white mustaches. There's a slight extra bounce to her sundress as her swollen areoles and perk engorged nipples bulge through the fabric, almost completely visible with its wetness. As she squeezes you, you feel plenty more warm moistness drizzle down about your "+legDesc(2)+"."); }
			else if (lilaMilk <= 18) { textLP(" She seems especially happy to see you, escaping from her group of thirsty friends. Her breasts form small mounds in her sundress simply from their engorgement, her puffy nipples sticking out even further, clearly visible through the wet fabric. A hand squishes a couple in her grip before she reaches you, forcing spurts of milk through the dress with a blush of pleasure on her face. When she finally hugs you, she squeezes even more to relieve some of the milk out across your "+legDesc(2)+" and forming a puddle beneath you.");	}
			else if (lilaMilk <= 19) { textLP(" Though you can hardly call it 'running'; more like a fast paced walk as she's careful to reduce the bouncing of her many heavily engorged and swollen breasts. Even the slightest jounce of her sundress across her extremely noticeable nipples - the fabric translucent and clingy from its wetness - causes her to gasp and a spurt of milk to shoot out. A hand roams about, trying to attend to them all with even more streams gushing. She even seems quite popular, drawing the eyes and smiles of many nearby felins as they consider how tasty she must be. And as she squeezes you, you hear another meek moan escape her lips as your "+clothesBottom()+" becomes drenched with her milk.");	}
			if (lilaVulva == 0) { textLP(" A blotch also formed between her legs on the way over, her developing vulva growing a little wet in anticipation."); }
			else if (lilaVulva <= 2) { textLP(" And her hips seemed to sway a bit more as she ran, trying to account for her thicker vulva. A blotch quickly formed over it just from the squeezing sensation and she sighs as she leans into you now.");	}
			else if (lilaVulva <= 5) { textLP(" And her tail twitched spastically behind her as she ran, her knees bending inward. You can tell her thighs were squishing her enlarged vulva, a blotch forming on her dress and drooling down to the hem by the time she reached you. She sighs lazily when as she leans into you now, her body calming a little with the halted rubbing.");	}
			else if (lilaVulva <= 8) { textLP(" However, she also seemed to run with a firm grasp on her groin. Bigger than her hand, she moaned and gasped with each step as she approached you. Her vulva has gotten so big that she's afraid it'll fall off; it feels so obvious between her thighs. When she finally leans into you now, her hand is covered from the slime that seeped through her dress and smears over your "+clothesBottom()+" as she grapples you.");	}
			else if (lilaVulva <= 12) { textLP(" And her legs spread out further as she ran, unable to squeeze together with the mass of sensitive flesh between her thighs. The large lips kiss and pluck at her dress, slightly visible through the fabric from the honey that drools around. When she comes to a halt against you, you can see webs of slickness stretched between her ankles with more drooling down her feet, all in her eagerness to get to you."); 	}
			else if (lilaVulva <= 18) { textLP(" And she ran especially bow-legged as well, thanks to the mound between her legs that both spreads her knees apart and presses against her dress. Some of the fabric seems to wedge into her folds, her slit nearly clearly visible through the lubrication-drenched fabric, her large clit protruding even further. She stopped every few feet on the way over to pull it out; a futile effort that was quickly negated a few feet later. As she embraces you, leaning into your body, her large vulva clasps around one of your "+legDesc(2)+", and for a short moment she gasps as she rides you up and down, her clit grinding into your "+skinDesc()+".");	}
			else if (lilaVulva <= 19) { textLP(" She also ran hunched forward, her nipples pointing more towards the walkway than at you and pushed out even further by her swollen tummy, thanks to the massive amount of flesh between her legs. When standing still, her labia hang just past the hem of her dress, the dangling inner lips nearly dragging over the wood, the whole mound outlined by the dress that lay on top of it and tenting forward as her clit grows at the sight of you. So she wouldn't kick it, she needed to lean down to wedge her large vulva back between her legs to keep it out of the way. Which resulted in the eyes of many felins going wide as her mound pushed up her dress, exposing her dribbling meaty lips and large clit to all that were behind her. As she leans against you now, her sensitive genitalia rest upon your "+legDesc(9)+", honey drowning it and trailing all the way back down the path she went. She pants a little, her long thick clit rubbing up and down your shin as she slowly, unintentionally, humps you."); }
			textLP("\r\r");
			if (tallness <= 42)	{ textLP(" Smaller than her, she winds up lifting you into the air.");	}
			textLP(" She looks up at you with bright smile. \"Would yew like to do anything today?\"");
			textLP(" Her face practically glows as stands there, her belly swollen with offspring and pushing her milky nipples out even further. It pushes "+legWhere(2)+" your own "+legDesc(2)+" as she tries to hold you close, making her squeak as a baby kicks your "+legDesc(1)+" from inside. If you weren't there to stop her, she would have probably fallen forward from the round thing, since it's almost larger than she is.\r\rHowever, she squeaks again as the babies seem to kick some more. Then you feel a flood of liquid splash around your "+legDesc(10)+", and it isn't her usual fluids..."); 
			doNext();
			doListen = function():void{
				textL("Lila quickly begins to groan and howl as she lets go of you, her eyes clenching in pain as she goes into labor. Looking all around, you call out for help, leaving some passerbys to run for the girl's mother. You then settle her down onto the wooden path, making sure she sits with her legs spread. You dive under her dress and prepare for the oncoming babies.");
				if (lilaMilk <= 5) { textLP(" A bit of milk drips down around her passage as her belly pushes at her lower pair of breasts."); }
				else if (lilaMilk <= 12) { textLP(" Milk dribbles down from her breasts and obscures your view of her passage a bit, though you can still see well enough to not have any difficulty."); }
				else if (lilaMilk <= 19) { textLP(" Milk spills like waterfalls over her passage as she hugs her belly in preparation, forcing you to tuck her dress in the way to soak up and divert what it can so you can see."); }
				if (lilaVulva <= 5)	{ textLP(" Her slit spreads wide as she lets out a yowl, though thankfully the crowning head is relatively small and doesn't stretch her too terribly. You grab what you can as she pushes instinctively, her small body handling this amount of stress easily."); }
				else if (lilaVulva <= 12) { textLP(" Her slit spreads a little as she lets out a mewl, her large nethers and ample lubrication letting the crowning head slip out while hardly stretching her. You can even reach in and grab the child slightly as she pushes, helping her get it out with relatively little stress for the small mother."); }
				else if (lilaVulva <= 19) { textLP(" You actively reach inside her slit to spread her wide enough for the child to slip out easily, making her gasp surprisingly erotically. Her clit stands obscenely, one of her hands stroking it gently as though it ached more than the rest of her. With all of the lubrication she supplies, the baby easily slips through her passage, so quickly that you practically have to catch it before it flies out.");	}
				textLP("\r\rThat's only the first as baby after baby pushes from her womb. All tiny felin kittens, you collect them up in your "+clothesTop()+" as they softly mew their first breaths. Once finally empty, Lila heaves for breath, exhausted. You move around to support her from behind, cradling her in your arms, as she cradles her newborns in her own, pulling up her dress further to let them suckle.\r\rShe snuggles into your embrace and kisses your cheek. \"Now I'm the mommy and you're the daddy.\" She giggles a little.");
				doNext();
				doListen = function():void{
					textL("Lila's mother shortly shows up in tears, happy to see her daughter is alright and her grandchildren doing quite well. You all eventually move back to their home, where they have already set up preparations for the newborns. Nice fluffy bedding right next to the larger bed in their bedroom.\r\rStaying the night, you make sure everything is well. Lila is quickly walking around again, despite her recent birth, but also quickly collapses onto the bed with a snore. Her mother assures you the babies will be alright and they'll be well taken care of, allowing you to cuddle up beside her daughter to rest as well.\r\rBy the next day, everything is perfectly fine. The babies are in quite good hands with their well experience grandmother and their loving mother. Your only concern, however, is how Lila began to grind up against you when she began to wake up...");
					hrs = 24;
					exhaustion = -24;
					stats(0,1,0,0);
					doSexP(75);
					lilaPreg = -1;
					doEnd();
				}
			}
		}
		else if (lilaRep == 5){
			textL("\"Hewwo~!\" Little Lila greets you cheerfully as she spots you, running up to latch onto your waist.");
			if (lilaMilk == 0){ textLP(" Her sundress seems fine and dry until she gets excited by your presence, with small blotches beginning to darken around her many nipples."); }
			else if (lilaMilk <= 2)	{ textLP(" Small blotches already adorn her sundress, with dark trails running down beneath as she becomes excited by your presence. Warm drops splash across your "+legDesc(10)+" as she connects, milk dripping from her hem-line.");	}
			else if (lilaMilk <= 5)	{ textLP(" Trails of milk blotch their way down her sundress, dripping across the wood of the felin 'street' as she runs, her nipples forming peaks in the fabric."); }
			else if (lilaMilk <= 8)	{ textLP(" Drops of milk visibly form outside of her sundress as it soaks through, her puffy stiff nipples showing through the mildly-translucent wet fabric. You can see further beyond that a few of her friends had been following her, a couple with white mustaches. Though as she squeezes against you with the embrace, you can feel more warm moistness spray out about your "+legDesc(2)+"."); }
			else if (lilaMilk <= 12) { textLP(" She seems to have left behind a group of friends, some with white mustaches. There's a slight extra bounce to her sundress as her swollen areoles and perk engorged nipples bulge through the fabric, almost completely visible with its wetness. As she squeezes you, you feel plenty more warm moistness drizzle down about your "+legDesc(2)+"."); }
			else if (lilaMilk <= 18) { textLP(" She seems especially happy to see you, escaping from her group of thirsty friends. Her breasts form small mounds in her sundress simply from their engorgement, her puffy nipples sticking out even further, clearly visible through the wet fabric. A hand squishes a couple in her grip before she reaches you, forcing spurts of milk through the dress with a blush of pleasure on her face. When she finally hugs you, she squeezes even more to relieve some of the milk out across your "+legDesc(2)+" and forming a puddle beneath you.");	}
			else if (lilaMilk <= 19) { textLP(" Though you can hardly call it 'running'; more like a fast paced walk as she's careful to reduce the bouncing of her many heavily engorged and swollen breasts. Even the slightest jounce of her sundress across her extremely noticeable nipples - the fabric translucent and clingy from its wetness - causes her to gasp and a spurt of milk to shoot out. A hand roams about, trying to attend to them all with even more streams gushing. She even seems quite popular, drawing the eyes and smiles of many nearby felins as they consider how tasty she must be. And as she squeezes you, you hear another meek moan escape her lips as your "+clothesBottom()+" becomes drenched with her milk.");	}
			if (lilaVulva == 0) { textLP(" A blotch also formed between her legs on the way over, her developing vulva growing a little wet in anticipation."); }
			else if (lilaVulva <= 2) { textLP(" And her hips seemed to sway a bit more as she ran, trying to account for her thicker vulva. A blotch quickly formed over it just from the squeezing sensation and she sighs as she leans into you now.");	}
			else if (lilaVulva <= 5) { textLP(" And her tail twitched spastically behind her as she ran, her knees bending inward. You can tell her thighs were squishing her enlarged vulva, a blotch forming on her dress and drooling down to the hem by the time she reached you. She sighs lazily when as she leans into you now, her body calming a little with the halted rubbing.");	}
			else if (lilaVulva <= 8) { textLP(" However, she also seemed to run with a firm grasp on her groin. Bigger than her hand, she moaned and gasped with each step as she approached you. Her vulva has gotten so big that she's afraid it'll fall off; it feels so obvious between her thighs. When she finally leans into you now, her hand is covered from the slime that seeped through her dress and smears over your "+clothesBottom()+" as she grapples you.");	}
			else if (lilaVulva <= 12) { textLP(" And her legs spread out further as she ran, unable to squeeze together with the mass of sensitive flesh between her thighs. The large lips kiss and pluck at her dress, slightly visible through the fabric from the honey that drools around. When she comes to a halt against you, you can see webs of slickness stretched between her ankles with more drooling down her feet, all in her eagerness to get to you."); 	}
			else if (lilaVulva <= 18) { textLP(" And she ran especially bow-legged as well, thanks to the mound between her legs that both spreads her knees apart and presses against her dress. Some of the fabric seems to wedge into her folds, her slit nearly clearly visible through the lubrication-drenched fabric, her large clit protruding even further. She stopped every few feet on the way over to pull it out; a futile effort that was quickly negated a few feet later. As she embraces you, leaning into your body, her large vulva clasps around one of your legs, and for a short moment she gasps as she rides you up and down, her clit grinding into your "+skinDesc()+".");	}
			else if (lilaVulva <= 19) { textLP(" She also ran hunched forward, her nipples pointing more towards the walkway than at you and pushed out even further by her swollen tummy, thanks to the massive amount of flesh between her legs. When standing still, her labia hang just past the hem of her dress, the dangling inner lips nearly dragging over the wood, the whole mound outlined by the dress that lay on top of it and tenting forward as her clit grows at the sight of you. So she wouldn't kick it, she needed to lean down to wedge her large vulva back between her legs to keep it out of the way. Which resulted in the eyes of many felins going wide as her mound pushed up her dress, exposing her dribbling meaty lips and large clit to all that were behind her. As she leans against you now, her sensitive genitalia rest upon your "+legDesc(9)+", honey drowning it and trailing all the way back down the path she went. She pants a little, her long thick clit rubbing up and down your shin as she slowly, unintentionally, humps you."); }
			textLP("\r\r");
			if (tallness <= 42)	{ textLP(" Smaller than her, she winds up lifting you into the air.");	}
			textLP(" She looks up at you with bright smile. \"Would yew like to do anything today?\"");			
			if (lilaPreg <= 35 && lilaVulva >= 11) { textLP(" You can feel her belly squish against you, bulging from being laden with vaginal flesh.");	}
			else if (lilaPreg <= 70 && lilaPreg > 35) { textLP(" She also seems a bit wobbly as she stands there, unused to her growing gravid belly that presses into your "+legDesc(2)+" and pushes her dainty breasts until they're flat against you, with milk squirting about. \"Eehee, Mommy said I'm going to be a Mommy too! I can't wait!\""); }
			else if (lilaPreg <= 100 && lilaPreg > 70){ textLP(" Her face practically glows as stands there, her belly swollen with offspring and pushing her milky nipples out even further. It pushes "+legWhere(2)+" your own "+legDesc(2)+" as she tries to hold you close, making her squeak as a baby kicks your "+legDesc(1)+" from inside. If you weren't there to stop her, she would have probably fallen forward from the round thing, since it's almost larger than she is. \"Mmm... Awe yew looking fowawd to being a daddy?,\" she sighs pleasantly."); 	}
			
			viewButtonOutline(1,0,1,0,1,0,1,0,1,1,0,1);
			viewButtonText(1,0,1,0,1,0,0,0,0,0,0,1);
			buttonWrite(1, "Milk");
			buttonWrite(3, "Suckle");
			buttonWrite(5, "Lick");
			buttonWrite(6, "Unbirth");
			if (lilaUB == true)	{ Choice6Outline.visible = true; }
			if (lilaUB == true && tallness < (6+4*lilaVulva)) { Choice6.visible = true;	}
			buttonWrite(7, "Sex");
			if (gender != 0 && (cockSize*cockSizeMod <= eVagLimit(8 + 5*lilaVulva) && cockTotal > 0) || (vagTotal > 0)) { Choice7.visible = true; }
			buttonWrite(9, "Cat's Meow");
			if (checkItem(105))	{ Choice9.visible = true; }
			buttonWrite(10, "Puss Juice");
			if (checkItem(221))	{ Choice10.visible = true; }			
			buttonWrite(12, "Mommy");
			doListen = function():void{
				if (buttonChoice == 1) {
					textL("You make a hint with your fingers that she could use some milking, to which she sticks out her tongue at you. But she nods and agrees nevertheless and follows you back up to your place. You soon pull off her sundress, setting it on out in the heat to dry for now, leaving her quite naked.");
					lilaDesc();
					textLP("\r\rLila grins as you return, her arms wrapping around her as you help her up onto your bed with you sitting beneath her.");
					if (lilaVulva > 12)	{ textLP(" Her slimy pussy easily slides "+legWhere(2)+" your "+legDesc(2)+" and presses against the bed, which causes her to squirm at first until your thighs can close to anchor her down.");	}
					textLP(" Then your hands come around her body, gently pinching and kneading down her nipples as you begin to milk her.");
					if (lilaMilk == 0) { textLP(" Small drops bead around her areolas as you squeeze them gently, quickly running off and leaving each breast dry after just several slow pumps. You continue milking the nipples even after they've dried up, just to make sure you fully empty them."); }
					else if (lilaMilk <= 2)	{ textLP(" Thin trails of milk dribble down you fingers, requiring several good pumps to fully drain them.");	}
					else if (lilaMilk <= 5)	{ textLP(" Though the nipples feel quite stiff between your fingers, they easily squish in your grasp. A few thin streams spray into the air with the first couple of squeezes around each nipple, followed by a small steady flow of milk over your hands as you continue until they're empty."); }
					else if (lilaMilk <= 8) { textLP(" It takes a couple fingers to thoroughly cover the puffy nipples, squishing gently in your grasp. Each time you press down on them, thin streams spray into the air while more milk collects on your hands and flows steadily down, quickly making your hands and the girl quite wet.");	}
					else if (lilaMilk <= 12) { textLP(" Squirts of milk spurt through the air each time you press down on her puffy nipples, causing the girl to squirm as she feels the noticeable release. Quite quickly milk dribbles down your hands even without your aid, the flow picking up whenever you do.");	}
					else if (lilaMilk <= 18) { textLP(" You cup her whole breasts as you slowly knead down them, thick spurts of milk spraying in all directions as you do. She lets out an erotic gasp as the milk forcibly escapes her, her purring growing louder as it continues to dribble profusely afterward. The milk spills about your hands and down her body, taking quite a while to fully empty just a single breast.");	}
					else if (lilaMilk <= 19) { textLP(" The girl lets out a meek cry every time your knead one of her breasts, the milk gushing out as her nipples stretch out further as you lightly tug on them. You can hear some of the stuff splatter across the floor, it has so much pressure behind it. And once you start a nipple, it's hard to stop it from flooding down her body as the drops refuse to stop forming and pouring down until you've milked out quite a large amount. When you do, you can feel her breast become much softer, her nipples easily malleable in your grip as they continue to dribble no matter what you do."); }
					textLP("\r\rAs you take your time to release her, she quickly relaxes against your "+boobDesc()+" chest, closing her eyes and purring comfortably. Her hands slip between her legs. While you play with her breasts, milk flowing down into your combined laps, you can easily hear the sloshing of her fluids as her hands slip up and down through the cleft of her labia, rubbing her clitoris to heighten the pleasure. Just as you finish off her lowest pair, your hands so close to her loins, she whimpers and seizes as she quietly orgasms in your lap, the bed growing moist beneath you.\r\rIt takes a few moments for her breathing to calm down again and her eyes to open. A slimy hand comes up and touches your cheek, pushing your other cheek towards her mouth as she kisses you. \"Hehe, it felt good... Thank yew~\", she kisses you again.\r\rNow empty, she slides off your lap and onto the floor, strands of her feminine fluid stretching from her bottom to your lap, her tail catching and flicking them as it idly waves. As you stand, more of the stuff is stuck to your own "+buttDesc()+" rump, leaving your "+clothesBottom()+" thoroughly soaked. You help her put on her sundress, making sure it doesn't get stuck on a stray nipple or her tail, and she begins to head out.\r\r\"I'll always hope to see you again,\" she grins. Then she heads out, her friends waiting for her elsewhere in the city.");
					if (lilaMilk > 5 && lilaMilk <= 12)	{ 
						textLP("\r\rHowever, she was so milky that you managed to save a whole bottle of the stuff for yourself, at least, though much of it consists of her other fluids as well.");	
						itemAdd(224);
					}
					if (lilaMilk > 12)	{
						textLP("\r\rAnd she was so milky that you were able to save enough milk for two whole bottles! Though it's likely not all milk, thanks to all the mess.");	
						itemAdd(224);
						itemAdd(224);
					}

					hrs = 3;
					doLust(Math.floor(lib/3), 0);
					/*if (lilaMilk > 10) { doLust(Math.floor(lib/3), 0, 2, 5, 25, 53); }
					else if (lilaMilk > 2) { doLust(Math.floor(lib/4), 0, 2, 5, 25, 24, 53); }
					else { doLust(Math.floor(lib/5), 0, 2, 5, 24, 25); }
					if (lilaPreg > 35) { doLust(Math.floor(lib/6), 0, 51); }*/
					doEnd();
				}
				if (buttonChoice == 3) {
					textL("You simply lick your lips a little and she giggles, catching onto the fact that you're thirsty. She has no qualms about it, quite happy that you enjoy her flavor so much, and nearly skips her way to your place. Before you're even in the doorway, she pulls off her sundress and stands naked outside while you take the outfit and put it somewhere out in the heat to dry for now.");
					lilaDesc();
					textLP("\r\rLila grins happily as you kneel down in front of her, pushing back a bit so you're not obviously out on the walkway where everybody in the canopy can see. You open your mouth and slowly suck on each nipple.");
					if (lilaMilk == 0) { textLP(" It only takes a few good gulps before each nipple dries out, but you continue a little longer anyway to help please the girl."); }
					else if (lilaMilk <= 2)	{ textLP(" The nipples quickly begin to dribble onto your tongue, the sweet taste warming your throat as you swallow again and again."); }
					else if (lilaMilk <= 5)	{ textLP(" Almost having to bite down, the stiff nipples soon squish between your lips and spray thin streams into your mouth, then continue to dribble into your mouth providing several large gulps."); }
					else if (lilaMilk <= 8)	{ textLP(" Your mouth has to stretch rather wide to latch onto the puffy nipples and each suck is met with thin streams of milk splattering about your mouth, easily providing you with a consistent drink of sweet warm liquid."); }
					else if (lilaMilk <= 12) { textLP(" The perk, puffy nipples fill your mouth and each time you squeeze, the girl gasps as she feels the milk spray into your throat, the pressure noticeable releasing. You have to gulp twice between each suck, the milk builds up so quickly."); }
					else if (lilaMilk <= 18) { textLP(" You can feel her engorged breast give a little as you push your face against them, the large milky nipples sliding across your tongue. She gasps as her nipple gushes into your mouth as you slowly bite down and continues to squirm as you try guzzle down her milk. Some of it even escapes your lips and dribbles down your face and onto the wood below."); }
					else if (lilaMilk <= 19) { textLP(" She lets out a squeal as you first touch each breast, the thick nipple spraying milk into your face before you can even get it in your mouth. Then her tail flicks about behind her as she clenches down, the engorged breasts gush into your mouth with hardly any effort on your part. So much so that you can't seem to keep up with her output as plenty of it bubbles back out of your mouth and down your face, forming rivers through her fur.");	}
					textLP("\r\rShe purrs and mewls as you nip at her nipples, her hands hugging your head against her body. It doesn't take long before she's thrusting her hips and squeezing her thighs together to care for her hot loins. Being kind, you reach out and run your fingers through her sensitive cleft until she's maneuvering to hump you back.\r\rThough it's not a powerful sensation, over the amount of time it takes you to drain each nipple her arousal quickly builds until sheets of lubricant begin to spill. She presses your face into her last nipple as she clenches down with a soft moan, her hips twitching and her legs tensing with the climax. When she's finally done, her legs give out and she falls towards you, toppling back out into the city.\r\rThe warm air licking across her moist pussy, it doesn't take long before she's squirming again. \"Eehee, I bettew get dwessed befowe somebody sees me on yew.\"\r\rBefore she gets up, however, she slides down your body to give you a nice kiss on the forehead. Then she slides back up as she stretches out, her tail reaching high, and incidentally drags her stiff clit across your face and leaving you quite slick. And before you can get up, she grabs her dress and hurriedly dons it, hardly covering her rump and wet thighs, and runs off with some other task in mind."); 
					
					if (lilaMilk > 8) { 
						textLP("\r\rAll that milk does sit quite well in your stomach, however, and leaves you feeling rather good."); 
						doHP(lilaMilk*2);	
						exhaustion -= Math.floor(lilaMilk/2);
						skipExhaustion = true;
					}

					hrs = 3;
					doLust(Math.floor(lib/2), 0);
					/*if (lilaMilk > 10) { doLust(Math.floor(lib/2), 0, 2, 5, 25, 53); }
					else if (lilaMilk > 2) { doLust(Math.floor(lib/3), 0, 2, 5, 25, 24, 53); }
					else { doLust(Math.floor(lib/4), 0, 2, 5, 24, 25); }
					if (lilaPreg > 35) { doLust(Math.floor(lib/6), 0, 51); }*/
					doEnd();
				}
				if (buttonChoice == 5) {
					textL("You stick your tongue out at her and she immediately blushes. The blotch around her crotch deepens and spreads simply by the thought. A rather Pavlovian response from her nethers... She hugs onto your arm as you head up to your place and her thighs slip together with each step until she's fumbling the last few feet. You manage to catch her and hoist her up onto your bed, where she immediately twists around and crumples the fabric over her crotch in her hands. Barely lifting her dress a few inches, her legs spread slightly in welcome to you, she's a bit too timid to go any further.\r\rSo, with a mewl echoing about the room, you slide your hands up the sides of her legs and push the dress away, staring at her dewy lips. You lift the sundress over your head and dive inside. ");
					if (lilaVulva == 0) { textLP("Her petite folds are swollen and bright, shimmering with the surrounding fur from the slickness she's already made. You can easily engulf her entire groin in your mouth, your tongue running up and down over her little stiff button and slipping into her folds to ring around her tight sex."); }
					else if (lilaVulva <= 2) { textLP("Her swollen lips are nearly red with her arousal, a gob of lubrication already slipping down her folds and into the cleft of her backside, drooling down onto her tail. You nibble around her inner lips and nip at her standing clit, the developed vulva appreciating your efforts with even more slime."); }
					else if (lilaVulva <= 5) { textLP("Her thighs still squeeze her thick vulva by the time you reach it, spreading only to let your head through. A few strands stretch across your path, the engorged pussy almost gasping open as the large labia pulse in anticipation. Larger than your mouth, it engulfs your lips in a sloppy kiss while your tongue slips inside. You pull out only to slide up through the glistening folds and suckle from her thorn-like clit as it stands out from it's hood, causing her to immediately buck upon the bed.");	}
					else if (lilaVulva <= 8) { textLP("The bulbous pussy looks odd between her dainty thighs, so swollen and naughty. The inner lips dangle out of from the thicker ones, giving you something to gently bite down on as you reach towards it. She squirms as you do, letting out a gasp as you tenderize the supple meat. Feminine honey dribbles from her hole and smears about her thighs, forming webs around your face and running along her tail below. Your mouth slips into the labia and kisses her vaginal passage, your tongue slipping in deep to send her wild. Her hands push her dress into your head and she squirms wryly as you do, only to buck and knock on your skull as you pull out and suck upon her button. The thing pushes out from the folds, standing stiffly with clear strands stretching down around it. You lash your tongue over it again and again in your mouth, making her clenched fists dig her dress into your head.");	}
					else if (lilaVulva <= 12) { textLP("You can't even see where her thighs meet her body, the growing pussy is so large. She inadvertantly squeezes it, even with your head in there, and a handful of honey pushes out from her large lips, her hole gaping to let it pass and form sheets between her thighs, her tail becoming drenched along with a good portion of your bed. You suck some of the dangling inner labia into your mouth, kneading and tenderizing it with your teeth while she squirms behind it. Then the lips hug your face as you push inside, your mouth opening to push inside her vaginal passage. Your lips can pluck around the edges, your tongue slipping around the slick walls. Her hands hug around your head through her dress, clenching into you the best she can while her tail flicks her fluids up across your "+boobDesc()+" chest. Then you push upwards, your tongue quickly lashing across her urethra before wedging into her clitoral hood. You lick around the base of the stiff erection, sliding the whole thing into your mouth. You gently bite around the tip as your lips drag up and down its short length, making her tiny butt squirm upon the bed.");	}
					else if (lilaVulva <= 18) { textLP("Your hands reach up to flank the sides of the enormous cunt, mashing the large labia together as a constant dribble of slime coats her tail and the bed beneath. You grab her tail and wedge it up between her folds, slipping it up and down while her knees jerk and push around her vulva. Leaving it caught between the dangling lips, you reach in beside it, your face becoming drenched, and suck in a mouthful of the flesh. You gently chew on the meat, the tip of her tail slapping across the top of your head as she mewls erotically from the other side. Then you reach inside and bite down on the edge of her vaginal passage, the supple flesh easily handling your roughness. Your hand then leaves the side of the cunt to reach into her hole, grabbing it by the edge to hold it up and fondle it while your mouth moves up towards the standing protrusion above. The overgrown clitoris stands well beyond the massive mound and pulsates in your mouth as you engulf it. You suck and gnaw on the hard thing, the girl behind clenching her hands deep into her own flesh through the sundress as her hips grind down onto the bed.");  	}
					else if (lilaVulva <= 19) { textLP("You lift the heavy mass of lewd flesh higher so she can scoot back upon the bed until her feet are no longer dangling. Once it's well supported, the waterfall of lubrication already having slickened the fur all the way up between her legs well in advance, your hands palm either side of her huge thick labia and grind about, massaging the sensitive pussy from the outside. Her feet and knees soon join you, writhing about to knead it thoroughly. No longer needing to do it themselves, your hands pull back to help spread the large slit, tugging and twisting the dangling folds. You spread her wide, her pussy gaping, and you lick around her vaginal passage, biting her and there until you slip a hand in to massage from the inside. The rest of her body twitches about, the tip of her tail flailing from underneath, until she has to onto her own legs to hold herself still. Yet, her hips still manage to buck as you slip her large clitoris into your mouth, barely able to take in its full length. You suck it in and slide up and down its length, gnawing where you can, until your other hand comes to your aid and wraps around the base to stroke it in tune to your efforts. There is so much pleasure that the girl is stuck there, her mouth wide and her eyes shut, hardly able to breath or make a sound outside of high-pitched moans.");	}
					textLP("\r\rMilk from her breasts spills down around your head as the sensations grow stronger and stronger. Eventually, Lila falls backward onto the bed, grasping at the covers and wringing her legs around your neck. She pulls you deeper into her loins as she lets out a yowling cry, a mess of slime spilling out around you. Her body twitches and her hips continue to buck as she endures a lengthy orgasm.");
					if (lilaVulva >= 17) { textLP(" Yet, as you continue to assault her nether region, her fat pussy quivering in your grip, she can't seem to stop climaxing as she cries out again and again, showering you in her fluids, until her body is too exhausted and drained to maintain the high state of euphoria much longer, quickly dropping her back down to a heavy breathing, her chest swelling and deflating again and again as she pants loudly.");	}
					else if (lilaVulva >= 10) { textLP(" And just a few moments after the first, your mouth still licking away, she cries out again in ecstasy as she approaches a second orgasm, her legs nearly crushing you this time."); }
					else if (lilaVulva >= 5) { textLP(" However, she doesn't seem to be finished quite yet, as her legs maintain their hold. You lick and lick, hearing her breathing harder and harder and rapidly approaching yet another orgasmic cry.");	}
					textLP("\r\rTired, her breath slowly coming to a gentle purr, she curls around to look at you. Silently urging you up onto the bed, she licks across your dampened face as you climb up with her. She cuddles into your "+boobDesc()+" chest and quickly slips into sweet dreams while you follow behind.");
		
					if (lilaVulva > 10) { doLust(lilaVulva + Math.floor(lib/3), 0); }

					else { doLust(lilaVulva + Math.floor(lib/3), 0); }
					if (lilaPreg > 35) { doLust(Math.floor(lib/6), 0); }
					doNext();
					doListen = function():void{
						textL("By the time the two of you awaken, hours have passed. She finally pulls down her sundress, her naked loins on display the whole time she slept, your open doorway just a few feet away. She yawns and kisses you, trying to lap up some of the stuff that is still wettening your face.\r\r\"So gewd...,\" is all she can muster, with a bit of mumbling about her Mommy waiting. She slides out of the bed, pausing for a moment for her legs to adjust, and then slowly wobbles her way back out into the canopy.");
						hrs = 8;
						skipExhaustion = true;
						exhaustion = 0;
						if (lilaVulva <= 8)	{ aff(4, Math.floor(percent()/20 + 4), -1);	}
						else if (lilaVulva <= 16) { aff(4, Math.floor(percent()/10 + 4), -3);	}
						else { aff(4, Math.floor(percent()/10 + 6), -6);	}
						doEnd();
					}				
				}
				if (buttonChoice == 6) {
					//Lila Unbirth
					textL("Reaching up, you place a hand on the taller small girl's belly, giving her a kinky smile. It takes her a moment to realize what that is supposed to mean, but then she blushes terribly, her dress getting promptly more moist and her tail jerking about at the mere thought. Feigning reluctance, she nods hesitantly, but is the first to grab your hand and step towards your hut. However, she quickly slows to try and look like she's not as eager as she really is, still embarassed that she could even do such a thing. And when you get there, Lila stands by your bed, meekly lifting the front of her dress to hide her face and expose herself before you even shut the door.\r\r");
					if (lilaVulva == 0) { textLP(" A few drops of excitement already descend from her petite folds. It's amazing you could ever have fit in there as she can hardly fit an average sized penis."); }
					else if (lilaVulva <= 2) { textLP(" A gob of excitement splashes to the floor with a thin strand reaching all the way up to her slightly puffy lips. Even though her genitals are the size of a more developed girl, despite her petite figure, it's surprising you could even fit in them."); }
					else if (lilaVulva <= 5) { textLP(" Strands of honey stretch to the floor from her thick vulva. Her thighs squeeze it intently, imagining how you're gonna make them spread even larger. Well developed for any girl, especially one with her petite figure, it's hard to believe you could still manage to fit in them.");	}
					else if (lilaVulva <= 8) { textLP(" Thick strands of excitement stretch about her thighs and all the way down to the floor. Her thighs already spread from the bulbous pussy, larger than even most developed girls, she's only going to spread them wider to fit you, which is quite an astonishing feat.");	}
					else if (lilaVulva <= 12) { textLP(" Thick rivers descend straight to the floor from the large pussy. Almost as large as her head, if not larger, it's not too surprising that you could slip through, a fact she's well aware of as her thighs try to squeeze around it erotically.");	}
					else if (lilaVulva <= 18) { textLP(" Waterfalls of excitement coat the floor beneath her. She squeezes the massive pussy between her knees, her legs bowed to even stand with the thing. It's no surprise that you could fit inside of her, something she looks forward to as she strokes the clitoris that stands out from the folds.");  	}
					else if (lilaVulva <= 19) { textLP(" Sheets of excitement flow out over the floor from the amazing mass of plush lips that fills the gap between her legs. Her feet rub her enormous clitoris and spread the massive dangling inner-lips, well aware of how well you could fit inside of her with such an enormous entrance.");	}
					textLP(" She glances over her dress in anticipation. Not to leave her waiting, you lean her rump against the side of the bed. Keeping the bed for balance, she slides down slightly as she spreads her legs, angling the awaiting hole towards you while giving you better access. Your hands brush over the fur of her legs as you tenderly grab her supple lips. You spread them wider, looking into the gasping cavern before you.\r\rA wave of warm wet air rushes by, the heat and lubrication of her swollen pussy beckoning you in. She cutely gasps as your hand touches the inner wall, instantly coating your fingers in slime. You grab onto the velvety folds, almost immediatly losing your grip as she bucks in turn. But, she steadies herself and clenches her eyes shut, forcing her tail against the ground and anchors herself so you can proceed.\r\rPulling yourself in, the flood of slickness quickly drenches you. The stuff makes the journey even easier as you slip inside, stretching her as your torso enters. Her vaginal muscles then clench back with arousal in turn, sucking you up her passage until your "+legDesc(10)+" disappear"+legPlural(1)+" inside. You pause for a moment within the tunnel, waiting for her to loosen before you can continue any further. You can hear her hand rub something down towards from where you entered for a moment, before she calms herself and relaxes. And with the relaxing comes another rush of horny fluids. Climbing up against the current, you manage to make use of the void left behind from the released honey and slip yourself up into her womb.");
					doNext();
					doListen = function():void{
						if (tallness <= 26)	{ textL("Small and tight, the womb doesn't actually stretch much to fit your presence, settling quite stably within."); }
						else if (tallness <= 54) { textL("The womb stretches rather large to accomodate your presence, increasing in size to fit you. It's hard to tell from within, but you can feel one side hover a little as her belly bulges outward into the air.");	}
						else {	textL("A large space already, the huge womb stretches even further to fit you. At first it feels quite stable, but as your body fills it, you can feel her belly bulge grandly, hanging well beyond her pelvis and barely hovering in the air."); }
						textLP(" Curled up and comfy, the room around you swells and shrinks as you hear Lila pant heavily, coming down from the intense orgasm. Her hand rustles through the fur of her belly, gently pressing and rubbing it, which you can feel from within. The hand continues down further until you hear her gasp and the womb twitches as she pinches her button and squeezes her stretched labia. But that's not enough...\r\rMore rustling as she drops her dress. The room wobbles when she pushes off from the bed and stands, both hands quickly shooting down to catch you and cradle your swollen space. Once stable, she begins to waddle her way... somewhere. Outside, it seems, as you can hear a breeze blow across her belly.\r\rThe girl seems to be enjoying a nice walk through the bridges of Siz'Calit.");
						if (tallness <= 26)	{ textLP(" With your small body hardly giving her a bulge, nobody is any the wiser, thinking she just had a large meal. She walks about rather freely, a hand always on her belly, and frequently a hand delving further down and moistening her dress in her crotch. You feel her stop ocassionally and grab the rope-rail, her body shuddering with another orgasm in public. Your room grows quite soaked from the pleasurable outting, making her eventually head back to the room."); }
						else if (tallness <= 54) { textLP(" Your relatively large body gives her quite the bulge. You can hear people ask if she's pregnant as she walks by, rather surprised as they hadn't seen her show any signs earlier in the day. The girl never gives them a straight answer, merely giggling as she cradles the girth while slime oozes down her inner thighs. The gravid nature is too much for her normally fitting sundress, lifting it quite high. Her swollen pussy shudders below you as the air nips at the sensitive bits, exposed to anybody who takes a moment to actually look. Occassionally she'll stop and grab the rope-rail of the tree-top village, her hand grabbing and squishing and rubbing the bulbous cunt until the room quivers around you as she climaxes in public while nobody is watching. So much honey lubricating her legs, she quickly changes pace and rushes back to your room.");	}
						else if (tallness <= 82) { textLP(" Your large body in her small frame gives her an enormous bulge. You can hear people gasp and whisper, wondering if Lila is pregnant and, if so, with what? Her hands hug the sides of her huge belly, swaggering as she walks, as her normally-fitting dress is lifted so high that you can feel a draft on the lower portion of your room. Which is even worse for Lila, as that same draft rushes over her giant pussy and causes her to shudder every few steps. Completely exposed below her belly, you can also hear people comment about the lewd sight, but the girl doesn't seem to pay much heed. So dazed and entranced by the grand sensation of being so absolutely filled while her loins climax again and again, she simply staggers on. She even halts and grabs the rope-rail of the bridges every several steps as the clenches down for another intense orgasm. The sound of thick syrupy splashing across the wood below almost drowns out the ecstatic mewls crying out above. So much honey spilling out between her thighs, frequently flooding your stretched room, that she doesn't get to far before she feels the need to run back to your room, climaxing a couple more times just from the bouncing of her belly and pussy from the expedited retreat."); }
						textLP("\r\rShe collapses against the wall beside the doorway, her rump splashing in her own fluids as she hits the floor. The slurping of her hand furiously rubbing her extraordinarily stiff clitoris mixes with her mewling moans. Her arms clamp around her belly as she reaches around it, placing pressure on you within. The womb heats up with her masturbation and you can feel yourself being pushed back out. Whether she intended to or not, her orgasms are forcing you back through her cervix. The vaginal walls practically spray you with lubrication as you enter the passage, coating you in slime and accelerating your voyage out.\r\rYou come out with a splash as Lila howls loudly, launching you into the puddle she's made. Her pussy continues to gasp and gape largely, flexing and contracting vigorously while the sensation of you being thrust through lingers in her nerves. Juices continue to poor out of her, showering you as the maw squirts in pleasure. The girl's legs jerk, her hips buck, her tail twitches, and her whole body quakes from the experience...");
						doNext();
						doListen = function():void{
							textL("After a few minutes of continuous orgasm, Lila spends several more simply panting and gasping for air. You crawl up between her legs and hug around her belly, easing her nerves and helping bring her back to this world. She eventually regains enough of her wits to hug you back, kissing your forehead.\r\r\"Thank yew... That was... That was...\" She can't really finish the statement, merely pressing her plush vulva up against you and kissing your waist in another sense.\r\rAt a loss for words, the two of you lay there for a while until the feeling returns to her legs. Lila stands, swaying slightly while she catches her balance, and lowers her soaked dress the best she can. \"I need to go home nao and take a nice long nap... I weally enjoyed this, though, and won't mind if it happens again...\" She blushes with embarassment over her naughty desire for more and is quick to escape the hut, her tail writhing about as she recounts what happened in her mind, her knees twitching as she nearly climaxes from the memory alone...\r\rTaking your time with wiping yourself down from the deluge, you also think about what happened. Overall, it's rather arousing and feels quite pleasant...");
							if (checkItem(200))	{ 
								textLP("\r\rHowever, once you're dry, you notice a blotch still forming. You quickly open up your bag and take out the culprit. The gift Lila had given to you when you first met her now seems much... 'wetter'. The leaves and flowers of the little charm sweat with drops of 'dew', producing a small amount of familiar honey from nothing. There's also a general warmth to the object that wasn't there before and seems to be having an effect on yourself. It seems Lila's gift has become more imbued with the girl's nature with the rather intimate 'connection' you two shared..."); 
								loseManyItem(200, 1);
								itemAdd(237);
							}
							hrs = 4;
							aff(4, Math.floor(percent()/10 + 4), -3);
							doHP(10);
							doLust(Math.floor(lib/1.5), 0);
							doEnd();
						}
					}
				}
				if (buttonChoice == 7) {
					if (lilaPreg == -2)	{ textL("Not quite sure how to put it, you make a quick suggestion that the two of you could try something more... intimate. Confused at what you could possibly mean, considering how intimate you've already been before, she cocks her head to the side with a \"Huh?\". Not quite sure how to put it, you kneel down beside her, cupping your hands over her ears and whisper inside. To put it bluntly, you simply say \"Sex\".\r\rHer tail curls around behind her and her cheeks are instantly redder than ever before. You also hear a splash below her as her loins seem to catch on even faster than the rest of her body, her near-constant heat latching onto the word and pulling her mind towards it.\r\rShe gulps for a moment, but very quietly murmurs \"O-Okay.\"\r\rTaking her hand, you lead her up to your hut; her stride rather crooked along the way as she contemplates what will happen. Once inside, she already begins to take off her sundress before you can close a curtain across the open doorway as she thinks that's just what one does when it comes to sex. You chuckle at her innocent naivete, though your gazing upon her body makes her blush more in turn."); }
					else { textL("You give her a little hum, trying not to be too obvious about what your trying to suggest. When she eventually does, you can see the blush intensify in her face as her heart beats faster. Eyes darting around to make sure nobody notices, like she were trying to smuggle some illegal goods, she grabs your hand and hastily pulls you to your own hut, knowing well where it is.\r\rBefore you're even in the door, she's already tossing her sundress aside and scampers in eagerly with a giggle. As you stare at her, her body completely naked, she blushes again as she realizes how quick she was to get caught up in her body's desires."); }
					if (lilaMilk == 0) { textLP("\r\rA few drops of milk collect around her areolas, her naked nipples perking at the air."); }
					else if (lilaMilk <= 2)	{ textLP("\r\rDrops of milk bead around her nipples, slowly dripping down her fur as she stands there, her nipples quite stiff.");	}
					else if (lilaMilk <= 5)	{ textLP("\r\rHer nipples are so stiff that it almost looks like they hurt. A steady trickle of milk drips down from the pointy things, dribbling down her fur. "); }
					else if (lilaMilk <= 8) { textLP("\r\rHer puffy nipples protrude far from her chest and belly, engorged with milk and making her twitch as the air brushes across the hard things. Small streams of milk continually flow down her front, over and around her belly, and collect in between her thighs and mix with her honey as she stands there.");	}
					else if (lilaMilk <= 12) { textLP("\r\rHer puffy nipples occasionally spray thin streams of milk as the air licks across there moist sensitive skin, causing her to twitch as she stands there, trying to prevent herself from manually relieving the things while they slowly dribble down her front.");	}
					else if (lilaMilk <= 18) { textLP("\r\rLike little rivers, milk continually flows down her front, her small swollen breasts shuddering as the air licks across her stiff nipples, sending thin white squirts flying about. She can't help but squish them idly with her arms, causing more milk to spray about as she does and small gasps to escape from her lips.");	}
					else if (lilaMilk <= 19) { textLP("\r\rWhile standing there, her hands rove about her front, squeezing her small engorged breasts as they ache from her puffy nipples growing stiff with the air licking across their moist sensitive skin. She squeaks ever now and then as she does, with more white stuff flooding from the breasts that she cannot immediately attend to with only two hands."); }
					if (lilaPreg <= 35 && lilaVulva >= 11) { textLP(" The belly bulging with vaginal flesh, much of the milk diverts to either side for an easier path.");	}
					else if (lilaPreg <= 70 && lilaPreg > 35) { textLP(" Wobbling a little with her greater girth, her pregnant belly diverts most of the milk flow to the sides. Though it doesn't prevent her from rubbing the milk in over the whole thing anyways, while she absently rubs it with its taut fur being more sensitive."); }
					else if (lilaPreg <= 100  && lilaPreg > 70){ textLP(" The large belly, gravid with your children, blocks most of the milk from immediately reaching the ground, making most of it flow down to her protruding belly button. Her hands occasionally paint the white stuff around as she rubs the taut fur it in awe of herself, unable to even reach its underside as its size is larger than herself."); 	}
					if (lilaVulva == 0) { textLP(" Her petite folds are swollen and bright, shimmering with the surrounding fur from the slickness she's already made."); }
					else if (lilaVulva <= 2) { textLP(" Her swollen lips are nearly red with her arousal, a gob of lubrication already slipping down her folds and into the cleft of her backside, drooling onto her tail."); }
					else if (lilaVulva <= 5) { textLP(" Her thighs squeeze her thick vulva, the inner lips dangling out, nearly red and fairly swollen. Strands of her honey stretch between her thighs and latch onto her tail behind her.");	}
					else if (lilaVulva <= 8) { textLP(" The bulbous pussy in her groin looks odd between her dainty thighs, so swollen and naughty. The inner lips dangle out of from the thicker ones, red with arousal and shimmering brightly with the fluids that dribble down and form webs between her knees. Every now and then, she reaches down in an attempt to pull it back up, fearing that it's slowly falling down as it feels so noticeably weighty, causing her to wince and her tail to flick - flinging slime - from the intense sensation of grabbing herself in such a way.");	}
					else if (lilaVulva <= 12) { textLP(" The growing pussy is so large that it's difficult to tell where her torso ends and her legs begin. She inadvertantly squeezes it as she squirms about, forcing handfuls of honey to push out from her large lips, her hole gaping to let it pass and form sheets between her thighs, her tail becoming drenched along with a large portion of the floor. Her clitoris stands from the mass, like a thorn on her front, swollen with blood and making her shiver slightly from being exposed to even the slightest breeze.");	}
					else if (lilaVulva <= 18) { textLP(" Her legs bowed, her knees squeeze around the massive pussy between them. The dangling lips occasionally lewdly slap against her legs as she shifts in one place, leaving behind a stretching web of honey. The underside of her tail is nearly completely drenched by the stuff, pulling strands of it from her backside whenever it flicks from side to side in her anticipation. And a hand occasionally slips down, almost grabbing her erect clitoris as it stands far from the mass in an attempt to simply cover it and protect it from the breezes that cause her to shiver tremendously and fresh gobs to splash across the floor.");  	}
					else if (lilaVulva <= 19) { textLP(" Her knees bend to fit around the grand mass of vulvic flesh that fills her the gap between her legs. The inner folds occasionally brush against the ground as she squirms, her foot attempting to rub her long clitoris. The stiff thing looks nearly like a small penis, erect and aroused, begging for attention as a breeze nips across its extremely sensitive skin. Lubrication pools about beneath her, making her efforts even more difficult, but she eventually manages to catch the tip of the thing between her toes and gently pinch it, making her moan softly. Her tail flings more slime about as it flicks about, occasionally going stiff as it flicks a little too close and diddles between her deep slit with a gasp.");	}
					if (lilaPreg == -2) { textLP("\r\rEyes going wide, she stares in wonder as you begin to strip your own outfit. Roving from your "+boobDesc()+" chest to your "+buttDesc()+" rump, and especially fixating on your");	}
					else { textLP("\r\rEyes wide with joy, she watches happily as you begin to strip your own outfit. Always in awe of your "+bodyDesc()+" body, she loves to see what you really look like. However, thanks to her constant heat, she absently licks her lips as she fixates on your"); }
					if (cockTotal > 0) { textLP(" "+cockDesc()+" swelling cock"+plural(1)+""); }
					else { textLP(" "+vulvaDesc()+" dripping cunt"+plural(2)+""); }
					if (lilaPreg == -2)	{ textLP(", obviously confused and slowly taking in what you have, but also visibly aroused as a hand latches onto her cunny, unable to stop rubbing it.");			}
					textLP("\r\rThen her tail flails about with glee as you help her onto your bed, laying her back across the soft sheets.");
					if (lilaPreg == -2)	{ textLP(" She blinks up at you, a hand cutely curling about her mouth like she's about to lick her paw, wondering how this will possibly continue. Just to reassure her, you kiss her on the forehead. Her eyes close and a smile grows upon her face, accepting your comforting gesture. Though they then open as she realizes your mouth reaches down to touch against her own lips, kissing her lovingly. This time her eyes close from the sudden surge of warmth throughout her body, whimpering slightly into your mouth as she experiences such intimacy for the first time.");	}
					else { textLP(" She smiles up at you, her hands pawing at your "+boobDesc()+" chest, roving to your sides and holding onto you as you lean down to give her a deep kiss. Her mouth is ready to take your tongue, her rougher one dancing around it and licking your teeth and lips."); }
					//Lila Unbirth
					if (tallness < (6+4*lilaVulva) && lilaPreg != -2 && lilaUB == false) {
						textLP(" You slowly inch your way down her body to the hungry entrance, kissing her nipples and belly along the way. The plush labia dribble with arousal, gaping and awaiting your tender treatment to help cool the growing fever of her loins.");
						if (lilaVulva <= 5)	{ textLP(" Even as dainty as she may be, compared to your own size she is still relatively large. You can't help but bury your face between the slender lips, licking up and down the slippery pink flesh."); }
						else if (lilaVulva <= 12) { textLP(" Her enlarged lips gasp before you, steady streams of honey flowing down and out through the swollen petals. Though the increased size makes her walk awkwardly and spread her knees before you in this state, it seems so much larger from your relative perspective. You can't help but envelop your face in her pussy, the slick folds hugging you and pulsing as you lick about.");	}
						else if (lilaVulva <= 19) {	textLP(" The view warped by a waterfall of her slick fluids, the monstrous mound is easily larger than yourself. Gaping and succulent, you grab onto her outer lips, squishing them against her legs and burrow your face inside, nibbling and kissing the draping flesh around you.");	}
						textLP("\r\rLila coos in excitment, her knees pressing in around you and driving you deeper into the craving sex. You don't resist, groping about and kneading the sensitive meat. This only causes her to squeeze you back more and her pussy dilate wide in ectasy. So ravenous to be sated that you find yourself falling in deeper and deeper, being gently sucked into the luscious maw.\r\r");
						if (lilaVulva <= 5)	{ textLP("The tight surroundings stretch to engulf you, the slippery fluids around her thighs aiding in squeezing your backside to push you in further."); }
						else if (lilaVulva <= 12) { textLP("The engorged surroundings swallow you with pillowy gentleness, the clamping of her lubricated knees helping push your backside in further.");	}
						else if (lilaVulva <= 19) {	textLP("The grand mound wraps about you, stretching slightly and easily engulfing you. Her feet press against the lower edges of her own sex, clamping your backside and pushing you in further."); }
						textLP(" She cries out with intense pleasure as you fill her, rapidly coming to climax with your overwhelming 'proximity'. You can feel her inner walls roll about around you as they tense for orgasm. Then, a sudden rush of clear fluids washes over you, propelling from deeper into her depths to the exit behind you, splashing across the sheets of your bed. And with the expulsion of her fem-cum, the void in her womb recoils, sucking you in the rest of the way...");
						doNext();
						doListen = function():void{
							textL("All is dark when you begin to examine your situation. Forced to curl up in this spherical environment, the warm walls around you smother you with slick honey. Despite the cramped confines, you actually find yourself rather comfortable, cradled and safe. You can feel muscles still tensing around you, coming down from an extensive high. A portion of the walls presses down onto you as a hand rubs across the belly outside, caressing the odd yet pleasant sensation. The body rolls back and forth slightly, wallowing in the abundant warmth being shed. Yet, the rocking comes to an abrupt halt as the owner of your small room comes to a realization.\r\r\"Wh-Whewe did yew go?...\"\r\rThe hand pressing down on you moves slightly. Then stops as she pauses to process the information. Then picks back up as a hurried pace and suddenly pats, quaking your space, as she worriedly calls out. \"Are... Are you in thewe?!!\"\r\rNot really sure how to break the news to her, you meekly nod. Though, you realize she probably can't see you do that, so you instead shout a muffled confirmation and rub the inside of her womb to console her and show you're okay.\r\r\"Eeep!\" She struggles to sit up, making you lose track of which way is down. You can feel a rumble as she hops to the floor, hearing her feet heavily patter across the floor as she grabs her sundress and tosses it on.\r\rNot entirely sure where Lila intends to go, you hear her exit the hut as a breeze rustles her fur. Wood claps below as she runs over the canopy bridges");
							if (lilaVulva <= 12) { textLP(" with an awkard stride as her thighs sqeeze the recently-climaxed extra-sensitized mound");	}
							else if (lilaVulva <= 19) {	textLP(" slowly with an additional slurping sound as her knees clamp around the recently-climaxed extra-sensitized mass of flesh below"); }
							textLP(", frequently stumbling from side to side with the added weight. She soon takes into account her swollen belly, wrapping her hands around it like when she was pregnant, hugging you inside of her. She also pauses several times along the trek to adjust her dress, exposing herself far too often as she was not prepared for such girth.\r\rHer lungs huff above you as she frantically crosses bridged. They eventually settle as she hastily reaches her destination. The feet slow and she carefully enters another doorway.");
							doNext();
							doListen = function():void{
								textL("You can hear Lila take a deep breath to say something, but a loud gasp from a familiar voice interupts her outside.\r\r\"Lila! A-Are you pregnant again?");
								if (tallness > 26) { textLP(" And what could you have gotten pregnant by? A horse?! You're enormous! How are you even standing upright with a belly like that?! The dress can't even reach past your belly-button!"); }
								else if (tallness > 12)	{ textLP(" And what are you pregnant with?! You're huge! Your dress can't even cover your bum!"); }
								textLP("\"\r\rLila does her best to explain that she has YOU inside of her within a few sentences. \"I don't know what to dew!\"\r\r\"Okay, okay sweetie. If you can fit something in, you can push it back out. Here, just get up on our bed...\" You feel the room jounce around you, then slowly settle into something soft. \"and lay back and relax...\" You lose track of the 'down' direction yet again... \"Now sweetie, I just need you to settle down and think about pushing out, just like you did with your babies.\" You hear Lila's legs spread across the bed and feel a pressure slowly build around you.\r\r\"Good girl, good girl.\" A rhythmic beat echoes around as her mother softly pats the belly. \"Just think about how this happened and do it in reverse.\" ... You suddenly feel the pressure shift the other way, the surroundings growing hotter and a deluge of fresh fluids spill around you.\r\r\"Wait, no, stop thinking about it! You need to calm down, forget about what was happening and just focus on pushing. Geeze, I don't think I even want to know what you two were doing...\"\r\rWith her mother gently rubbing from outside, you can feel the tide shift the other way again, pressing you towards the exit. The muscles squeeze around you, slowly sending you towards a light at the end of a tunnel. You can feel the walls stretch around you, yet tighten and grow hotter at the same time. Even moreso as a pair of relatively large slender hands join you inside, a low cry being heard from Lila. The hands hug your sides, climbing up your body through the slime until they're able to get a grip on you. Then, in the blink of an eye, slide the rest of the way out with a wave of sensual fluids splattering out behind you, a howl of ecstasy filling the room.\r\rLila's mother places you on the ground, helping you stand as you regain your footing. She wipes you down with her bare hands, easily sloughing off plenty of fluids. On the bed before you, Lila lays with her legs spread and her cunt still gaping, dripping steadily while she gasps and pants for air.\r\r\"Umm...\" Her mother tries to think of what to say. \"Congratulations Lila, it's a- Nonono, I'm just kidding. But I guess you're a bit small for my little girl, huh?\"");
								if (lilaVulva > 5) { textLP(" She pauses and looks at her daughter, especially at the large erotic mass between the legs. \"Okay, maybe not 'little' in that regard...\""); }
								textLP(" Checking to make sure Lila is alright, she leans over and strokes a cheek until Lila's eyes open up with an embarassed blush. \"I guess you two just got carried away. You just have to be a little more cautious about going- err..., 'too deep', I guess? You both seem to be perfectly fine though, so even if this happens again by accident, there won't be a serious problem. Just be calm and you should be able to handle it, hun.\" Lila nods, leaning up to give her mother a hug while her loins are still gurgling towards you.\r\rHer mother hugs back, but then is quick to release her. She shakes her head. \"I don't even know what the heck I'm saying... My daughter just sucked in her lover and then gave birth to her lover. I don't even...\" She proceeds to walk out of the room, trying her best not to think too hard about it.\r\rLila giggles hesitantly before hopping down and giving you a hug as well. \"I... I didn't mean to do that to yew...\" Her tail lowers shamefully and she blushes harder, a hand rubbing over her belly. \"It did feel weally good though... So, umm, thank yew... If it happens again, I'll twy to be bettew about it.\"\r\rWith another peck on your cheek, Lila then runs out of the room as well, too embarassed to hear what your response might be. Left alone in her bedroom, you take the opportunity to use her sheets to wipe yourself off a bit more thoroughly. Not that it makes much of a difference, as her sheets are already (and probably always are) quite slick... A bit dumbfounded and confused, you leave the hut without saying goodbye. You'll see her again, but at the moment it's probably a good idea to continue on with your day.");
								hrs = 4;
								aff(4, Math.floor(percent()/10 + 4), -3);
								lilaUB = true;
								doLust(Math.floor(lib/2), 0, 2);
								doEnd();
							}
						}								
					}
					else{
						if (cockTotal < 1 && clitSize <= 10) { 
							if (lilaVulva > 10)	{ textLP(" While she's prone and melting in your embrace, you wrap your "+legDesc(2)+" around her bulbous vulva, pushing your own "+vulvaDesc()+" cunt"+plural(2)+" into it. You bounce up and down gently, humping her heavy pussy, your "+clitDesc()+" clit"+plural(2)+" grinding alongside her especially large female erection. Her feet hold onto your thighs the best she can, bucking her hips to get press her sensitive mass into you more.");	}
							else { textLP(" As she melts into your embrace, you press your "+vulvaDesc()+" slit"+plural(2)+" against hers, kissing again with the lower sets of lips. Her feet curl up around your "+hipDesc()+" hips to press back, trying to grind her little clit into you the best she can in her lustful state."); }
							if (lilaPreg == -2) { textLP(" Although, with her inexperience, her movements are awkward and wry, leaving her drooling from between her thighs even more in desparation. You take up most effort, humping and thrusting your sexes together until the bed is drenched in your combined feminine fluids. Eventually, one of her legs bends high, stretching her virgin pussy wide as she gives you plenty of room to push against her. She lets out a gentle cry as she shudders, hooking the leg around your back and jerking against you, a volley of slime splattering across your "+legDesc(2)+" with an intense orgasm, forcing you to your own.\r\rShe pants loudly for several minutes afterwards, her fur flush and sweaty. She nuzzles into your body, a few tears welling up. Yet, as she sniffles, it's obvious she's not crying from sadness.\r\r\"That felt... so gewd. I... I love yew!\"\r\rShe begins to lick you	trying to clean you up a bit, but the strokes of her tongue quickly slow. Within a few moments, she nods off beneath you, fast asleep. You shrug and chuckle, hugging her tight before cuddling up and joining her in the dream world."); }
							else { 
								textLP(" The two of you quickly find a rhythm, her small body writhing about beneath yours and matching your movements. Her legs move higher and higher up your back, stretching her hot pussy wider until it's practically nipping at your own as you press deeper into it. A flood of slick fluids gush out about your cunt"+plural(2)+" as Lila lets out a gentle cry, her tongue lolling out of her mouth with orgasm."); 		
								if (lilaVulva > 10)	{ textLP(" Yet, she continues to hump against your body, her huge sensitive cunt slapping against you wildly until she comes again and again with even more mess."); }
								textLP(" You can't help but shortly come after her, your combined messes drenching the bed beneath you.\r\rOnce you have both calmed down, her panting returning to a soft purr, she takes some time to cuddle with you, licking your body to clean up some of the mess. But, it doesn't take long before the two of you pass out with the delightful stress, snuggling upon the moist bed.");
							}	
						}
						else if (cockTotal > 0 && cockSize*cockSizeMod <= eVagLimit(8 + 5*lilaVulva)) {
							textLP(" As she melts within your embrace, she gasps as she feels the tip of "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+" slide across her belly, sandwiched between your two bodies. She shivers beneath you as you pull it back, slipping it through her supple lips and into her hungry hole.");
							if (lilaPreg == -2)	{ textLP(" Her mouth goes wide, stretching as you penetrate her, her eyes wincing as the odd sensation fills her. You can feel her toes curl behind you, her legs tensing like they were preparing for something far more extreme, and she is completely silent for the whole duration. Once your length has completely burrowed into her, she finally erupts with a long mewl. Her virgin pussy squeezes about the intruder, chewing on it and slowly relenting as her body settles around it, becoming used to this brand new, yet absolutely wonderful, sensation."); }
							else { textLP(" She grins stupidly as she pushes herself against your own efforts, slowly ramming your erection deep into her horny folds, forcing her to wince a little thanks to her own eager efforts. Her toes curl behind you, a soft moan escaping her lips as your whole length squeezes through the resistant walls, until she eventually calms and huffs beneath your body, her tail flicking about excitedly."); }
							if (cockSize*cockSizeMod > (8 + 2.5*lilaVulva) && lilaPreg < 35) { textLP(" She gasps, out of breath, as she looks down to see the tip of your member bulging her belly outwards. She absentmindedly strokes her fur, kneading the monster inside, amazed that it could possibly do such a thing.");	}
							else if (lilaPreg >= 35) { textLP(" Her hands quickly cradle her swollen belly, just to make sure that her lewd efforts and your girth didn't harm what is growing inside."); }
							textLP("\r\rGradually, you begin to pump in and out,");
							if (knot == true) { textLP(" your swelling knot stretching her hungry tunnel wider,"); }
							textLP("eliciting more cute noises from the small girl. Though she may have been in heat and knew well what it was like to pleasure herself, this sensation was far more than she ever expected. She accidentally scratches you occasionally with her claws as you thrust and her face transforms through a plethora of lewd expressions.");
							if (lilaVulva <= 5)	{ textLP(" Her tight pussy squeezes around your cock, tugging and pulling with its inner lips stretching along your length, sliding back up with a thick film of lubrication whenever you pull out with a soft mewl from the small body beneath you."); }
							else if (lilaVulva <= 12) { textLP(" Vulgar noises accompany the expressions as her honey spits and spews about your "+legDesc(2)+" with each pump, making her gasp and wince as her thighs squirm around to sqeeze the flesh between her legs.");	}
							else if (lilaVulva <= 19) {	textLP(" Your cock is lost in a river of slime that flood from her enormous pussy, flinging the stuff around everywhere with each powerful pump. Her plush belly expands and stretches each time you drive into it, leaving her mrowling erotically as you grab her clit and jerk it between the two of you.");	}
							if (lilaMilk <= 5) { textLP(" Milk dribbles down through her fur as she becomes more and more excited."); }
							else if (lilaMilk <= 12) { textLP(" Milk spurts up over her chest and belly as her body shakes with your movement, spilling down her sides and onto your sheets.");	}
							else if (lilaMilk <= 19) { textLP(" Milk gushes between the two of you, exploding with each shake of her little form and jiggle the swollen mounds, flooding about your sheets with its sweet scent.");	}
							if (lilaPreg <= 35)	{ textLP("\r\rYou lean down and hug Lila tight as you feel her begin to quake with orgasm, letting her cry out gently into your neck.");	}
							else if (lilaPreg <= 70 && lilaPreg > 35)	{ textLP("\r\rYou lean around her growing belly, protecting the child and hugging Lila tight as you feel her begin to quake with orgasm, letting her cry out gently into your neck."); }
							else if (lilaPreg > 70) { textLP("\r\rYou manage your best to twist around her greatly protruding baby, trying to avoid squishing the child within too much as you hug Lila tight, feeling her begin to quake with a powerful orgasm and shout out into the room."); }
							var getCum:int = cumAmount();
							if (getCum > 100*(lilaVulva+1)) { textLP(" Your own pressure erupts within her, raising her volume to near deafening levels as the stuff fills her passage and gushes out with tremendous force, more than her heat could have ever asked for.");	}
							else { textLP(" Your own pressure erupts within her, making her louder as she feels your warm spunk splashing against her hot walls, just what her heat truly needed."); }
							if (lilaPreg <= 35 && lilaVulva >= 11 && getCum > 150*(lilaVulva+1)) { textLP(" So much of your hot spunk swirls around within her that even her belly trembles beneath you, inflating and churning about.");	}
							textLP(" She clenches onto you with all her might, trying to mewl and wince through the climaxes that wrack her body, panting until her felin instincts take over and ");
							if (knot == true) { textLP("she goes limp within your arms, ready for a nice long nap. However, she blinks in wry confusion as her sated hole still gnaws around your shaft.\r\rThe thick knot keeping her stretched and full, she can't quite sleep with such a naughty sensation crowding her nethers. Lazily, she rolls beneath you, twisting around your girth and making her wince. In a half-minded effort, she tries to crawl out from under you to pull herself off. After a few yanks at her loins with quiet weary mewls of mild discomfort, her face plants itself on your bed. The lax purring that starts to emanate from her quickly indicates that she has completely passed out in bliss. Her butt raised and still pressed to your lap, your knotted appendage shoots a bit more spunk into her.\r\rWith a shrug, you merely curl up over her, letting yourself sink in deep as you join her in her slumber on top. You'll slip out eventually, but for now you're both plenty comfortable as is."); }
							else { textLP("she passes out within your arms, napping with a soft purr. You giggle a little and shrug, slowly slipping out of her and curling up around her, falling asleep as well."); }
						}
						else if (clitSize <= eVagLimit(20 + 12.5*lilaVulva)){
							textLP(" As she melts within your embrace, she gasps as she feels the tip of "+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+" slide across her belly, sandwiched between your two bodies. She shivers beneath you as you pull it back, slipping it through her supple lips and into her hungry hole.");
							if (lilaPreg == -2)	{ textLP(" Her mouth goes wide, stretching as you penetrate her, her eyes wincing as the odd sensation fills her. You can feel her toes curl behind you, her legs tensing like they were preparing for something far more extreme, and she is completely silent for the whole duration. Once your length has completely burrowed into her, she finally erupts with a long mewl. Her virgin pussy squeezes about the intruder, chewing on it and slowly relenting as her body settles around it, becoming used to this brand new, yet absolutely wonderful, sensation."); }
							else { textLP(" She grins stupidly as she pushes herself against your own efforts, slowly ramming your erection deep into her horny folds, forcing her to wince a little thanks to her own eager efforts. Her toes curl behind you, a soft moan escaping her lips as your whole length squeezes through the resistant walls, until she eventually calms and huffs beneath your body, her tail flicking about excitedly."); }
							if (clitSize > (8 + 6*lilaVulva) && lilaPreg < 35) { textLP(" She gasps, out of breath, as she looks down to see the tip of your clitoris bulging her belly outwards. She absentmindedly strokes her fur, kneading the monster inside, amazed that it could possibly do such a thing.");	}
							else if (lilaPreg >= 35) { textLP(" Her hands quickly cradle her swollen belly, just to make sure that her lewd efforts and your girth didn't harm what is growing inside."); }
							textLP("\r\rGradually, you begin to pump in and out, eliciting more cute noises from the small girl. Though she may have been in heat and knew well what it was like to pleasure herself, this sensation was far more than she ever expected. She accidentally scratches you occasionally with her claws as you thrust and her face transforms through a plethora of lewd expressions.");
							if (lilaVulva <= 5)	{ textLP(" Her tight pussy squeezes around your clit, tugging and pulling with its inner lips stretching along your length, sliding back up with a thick film of lubrication whenever you pull out with a soft mewl from the small body beneath you."); }
							else if (lilaVulva <= 12) { textLP(" Vulgar noises accompany the expressions as her honey spits and spews about your "+legDesc(2)+" with each pump, making her gasp and wince as her thighs squirm around to sqeeze the flesh between her legs.");	}
							else if (lilaVulva <= 19) {	textLP(" Your clit is lost in a river of slime that flood from her enormous pussy, flinging the stuff around everywhere with each powerful pump. Her plush belly expands and stretches each time you drive into it, leaving her mrowling erotically as you grab her own clit and jerk it between the two of you.");	}
							if (lilaMilk <= 5) { textLP(" Milk dribbles down through her fur as she becomes more and more excited."); }
							else if (lilaMilk <= 12) { textLP(" Milk spurts up over her chest and belly as her body shakes with your movement, spilling down her sides and onto your sheets.");	}
							else if (lilaMilk <= 19) { textLP(" Milk gushes between the two of you, exploding with each shake of her little form and jiggle the swollen mounds, flooding about your sheets with its sweet scent.");	}
							if (lilaPreg <= 35)	{ textLP("\r\rYou lean down and hug Lila tight as you feel her begin to quake with orgasm, letting her cry out gently into your neck.");	}
							else if (lilaPreg <= 70 && lilaPreg > 35)	{ textLP("\r\rYou lean around her growing belly, protecting the child and hugging Lila tight as you feel her begin to quake with orgasm, letting her cry out gently into your neck."); }
							else if (lilaPreg > 70) { textLP("\r\rYou manage your best to twist around her greatly protruding baby, trying to avoid squishing the child within too much as you hug Lila tight, feeling her begin to quake with a powerful orgasm and shout out into the room."); }
							textLP(" You shiver against her as well, your "+legDesc(2)+" growing numb from the lightning storm that envelops your whole self, centered on your gargantuan feminine member. She clenches onto you with all her might, trying to mewl and wince through the climaxes that wrack her body, panting until her felin instincts take over and she passes out within your arms, napping with a soft purr. You giggle a little and shrug, curling up around her and falling asleep with her, letting your anatomy remove itself naturally.");
						}
					
						if (cockTotal > 0 && cockSize*cockSizeMod <= eVagLimit(8 + 5*lilaVulva)) { doLust(-Math.floor(sen/2), 2, 1);	}
						else { doLust(-Math.floor(sen/2), 2, 2); }
						
						/*if (lilaMilk > 2 && lilaVulva > 10 && lilaPreg > 35) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 51, 53, 24, 58); }
						else if (lilaMilk > 2 && lilaVulva > 10) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 53, 24, 58); }
						else if (lilaMilk > 2 && lilaPreg > 35) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 51, 24, 53); }
						else if (lilaVulva > 10 && lilaPreg > 35) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 51, 24, 58); }
						else if (lilaMilk > 2) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 24, 53); }
						else if (lilaVulva > 10) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 24, 58); }
						else if (lilaPreg > 35) { doLust(-Math.floor(sen/2), 2, 2, 5, 25, 24, 51); }
						else { doLust(-Math.floor(sen/2), 2, 2, 5, 24, 25); }*/
						
						doNext();
						doListen = function():void{
							textL("Some hours later, you wake up to a kiss upon your lips, opening your eyes to a great big smile.");
							if (lilaPreg == -2)	{
								textLP("\r\r\"I... I weally liked that. It would be nice if we can do it some mowe,\" she says sheepishly, a big blush on her face.");
								lilaPreg = 0;
							}
							else { textLP("\r\r\"Mmm... It's always so... amazing with yew. I like it vewy much. I love yew.\" She kisses you again, so full of joy."); }
							if (lilaPreg == 0 && percent() >= 55 && cockTotal > 0 && cockSize*cockSizeMod <= eVagLimit(8 + 5*lilaVulva)) { 
								textLP(" However, for a moment, her attention turns down to her loins. A hand smears about the leftover cum that still drools from her, focusing on her lips and clit. \"It... It's not as warm as before,\" a hint of surprise in her voice. Then she begins to blush as her fingers keep smearing around, her clit beginning to stand stiffly and her honey increasing in flow. \"N-Nevermind...\""); 
								lilaPreg = 1;
							}
							textLP("\r\rThe two of you continue to cuddle for a bit longer, enjoying your company, before she realizes how much time has passed. Needing to get back home, she quickly tosses on her sundress, letting it mat against her wet fur and stick to all sorts of naughty places. With another quick peck on your lips, she dashes out of the hut, giving you a short goodbye as her cheeks redden, already thinking about doing it again..."); 
							hrs = 7;
							exhaustion = -7;
							doEnd();
						}
					}
				}
				if (buttonChoice == 9) {
					textL("You pull out a Cat's Meow from your bag and offer it to her.");
					if (lilaMilk == 19)	{ textLP(" However, she shakes her head no.\r\r\"Hehe, sowwy, but umm... I don't want to make anymowe milk. Mommy and I have a hawd time milking me alweady, don't need mowe. Thank yew for liking it so much and wanting mowe, though!\" She gives you a quick hug and heads off to get back to draining herself."); }
					else { 
						textLP(" Her eyes light up.\r\r\"Ooo, you like my milk so much that you want me to make mowe?\" She grins and blushes at how much you like her. \"Okays!\"\r\rShe quickly takes it and gulps it down. The blotches on her shirt spread as her milk production quickly kicks into higher gear, her face growing flush as she feels warm.");
						if (lilaMilk == 0) { textLP(" The blotches soon have trails of milk dribbling down the inside of her sundress, slowly collecting at the hem."); }
						else if (lilaMilk == 2)	{ textLP(" Her nipples stiffen more, forming small peaks against her dress while the blotched trails grow darker, collecting more quickly along the hem of her sundress and spilling onto the wooden path below."); }
						else if (lilaMilk == 5)	{ textLP(" Droplets begin to form on the outside of her dress, she's creating so much milk that it pushes through. Her nipples seem even puffier with the greater amount of milk, making her look down at herself in awe that she's actually got some noticeable boobs."); }
						else if (lilaMilk == 8)	{ textLP(" You can see her nipples visibly jiggle a little as they're so heavy with milk, the increased supply making the sundress quite translucent. Milk dribbles down constantly both inside and outside her sundress, and splashes about as she hops a little with a smile at her new bounciness."); }
						else if (lilaMilk == 12) { textLP(" Her whole breasts actually swell slightly, making her thick nipples protude even more than they already do. She winces a little at how full they feel and is astonished by how milk squirts through her sundress as she reaches up to massage on of the mounds."); }
						else if (lilaMilk == 18) { textLP(" Her breasts swell even more, making her feel really jiggly. As she tries to test the bounciness, she blushes heavily as her large nipples scrape along the inside of her sundress, milk squirting through it without her even trying. She moans as her hands come up to squeeze them as an immediate reflex to relieve their engorgement, gushes of milk spewing out. She seems rather surprised she can possibly make so much."); }
						textLP("\r\rHer hands roam about her new found lactation, testing just how much milk she can now produce and making quite a mess. \"Eehee... Yew weally want to dwink a lot, huh?,\" she laughs happily. \"I'm gonna go show Mommy!\"\r\rShe then turns and heads home, leaving a path of spilled milk behind her as she goes.");
						lilaMilk++;
						loseManyItem(105, 1);
					}
					hrs = 1;
					doEnd();
				}
				if (buttonChoice == 10) {
					textL("You pull out a vial of Concentrated Pussy Fruit Juice and offer it to her, telling her in advance what it does so she knows what it is.");
					if (lilaVulva == 19) { textLP(" However, she shakes her head no with a giggle.\r\r\"Hehe, Mommy says if I get any biggew, I'll need to watch out for splintews. I don't want splintews down thewe, silly.\"\r\rShe then turns around and walks off, giggling at the thought of how big you could possibly want her naughty place to be while she waddles in an attempt to walk with how big it already is.");	}
					else {
						textLP(" She looks at you curiously.\r\r\"You want to make my naughty place biggew? If... If it'll feel even bettew, and yew want me to, I guess it's okays.\"\r\rShe takes the vial and drinks it down. Her hips soon begin to twist about as a warmth nearly as bad as her heat fills her loins. Right in the middle of the canopy walkway, she lifts her dress and watches as it grows.");
						if (lilaVulva == 0)	{ textLP(" She pokes it curiously as the labia fill out and looks much more mature than what she had, only to gasp a bit at how much more sensitive it feels."); }
						else if (lilaVulva == 2) { textLP(" Her thighs squeeze together as the labia swell between them, making her moan and some slickness dribble all the way down to the wooden walkway."); }
						else if (lilaVulva == 5) { textLP(" She lets out a squeak as it grows so large in between her thighs. Her hand darts down to catch it as she's afraid it will fall, it's so noticeable now. And doing so makes her squirm as her fingers slip into her cleft, the flesh bigger than her grasp."); }
						else if (lilaVulva == 8) { textLP(" A weak gasp escapes her lips as she spreads her legs further apart. Her lips fill the gap between them, preventing her thighs from touching. Her clit grows out of the cleft, leaving it's hood and obviously protruding from the rest of her slit. Her fingers reach down and pinch it in curiousity, only to cause her to quiver as electricity shoots through her, a good deal of slime splashing down beneath her.");  }
						else if (lilaVulva == 12) { textLP(" Her knees bend outward as the labia push them apart, causing her to gasp as they squeeze her sex. Her clit is at least an inch and she can easily wrap her thumb and finger around it, stroking it's length slightly before she comes to an abrupt halt as it's too much to handle just yet. Nevertheless, her legs have sheets of slime between them from the experience, growing larger as the stuff dribbles from her dangling inner lips."); }
						else if (lilaVulva == 18) { textLP(" She bends down at her knees as the mass of sensitive genitalia fill the gap between her legs and feels so heavy. Her eyes flutter a little just trying to stand at first, the labia keeping her slightly bow-legged. Just trying to bend over to look at herself, her clit scrapes against the wooden walkway, already slick with her slime, and causes her to fall to her knees. She curls up slightly to reach her large clit, a whole hand wrapping around it, and her legs rub and push about her vulva while she jerks away, completely lost in the sensations. By the time she comes to climax, lubrication gurgling and splatting from her massive slit, all eyes with a clear view are staring at her."); }
						textLP("\r\rShe pants a bit, becoming accustomed to her new size. She lets her dress fall back down to cover herself, though there's still quite a mess between her legs. \"It... feels much bettew...\"\r\rShe lazily turns around and walks away, intent on further familiarize herself with her bigger girly bits...");
						lilaVulva++;
						loseManyItem(221, 1);
					}
					hrs = 1;
					doEnd();
				}
				if (buttonChoice == 12) {
					textL("With a smile, you take her hand so that the two of you may go and visit her mother to see how things are going at home. She seems a tad disappointed, her mess going unrelieved, but she smiles up with a nod and goes along with you.\r\rApproaching her home, however, she begins to get rather antsy. Her thighs keep rubbing together, making the blotch in her dress even worse. By the time her mother spots you through the doorway and comes to greet you, Lila lets go of your hand, grabbing her crotch through the dress, and dashes into the hut with a rapid-paced \"Hi-Mommy! I-need-to-do-somefing-weal-quick!\"\r\rHer mother looks at her curiously as she goes, but shrugs and turns to you. \"Hello~ Is there something wrong?\"\r\rYou shake your head, saying you just wanted to visit.\r\r\"Oh, well then, please, come in. Sit down and have some tea~,\" she smiles and ushers you through. She sits you at the kitchen table and gives you a cup to sip from and she sits beside you.\r\r\"So... I guess you'd like to know how Lila is doing.");
					if (lilaMilk == 0){ textLP(" Since she's gotten into the whole milking thing, she's been taking pretty good care of herself. I'm actually fairly surprised at how well she does. Once I taught her how to express herself, she makes sure to go into the bathroom every couple of hours and carefully take care of her, umm... nipples. And then she'll clean up everything and be as pleased as a peach for the next couple hours. It's actually quite cute, I think.\" She chuckles a little."); }
					else if (lilaMilk <= 2)	{ textLP(" She's been taking good care of herself, but even though she is quite vigilant about expressing herself every couple of hours, she'll still sometimes wind up leaking and making a mess in her clothes. She doesn't like when I laugh at her for it, and she'll storm into the bathroom right away, but by the red in her cheeks I think she kinda likes it.\" She giggles at the thought.");	}
					else if (lilaMilk <= 5)	{ textLP(" Though she loves how much milk she's been making, she's been starting to have a tough time keeping up with it. Her little hands have trouble fully expressing herself, so I have had to help her. She sits in my lap taking care of her smaller breasts and I'll take care of her bigger breasts. Yet, despite expressing her regularly, she'll just start leaking soon after an hour. But, it's a nice bonding experience.\" She sits back in her chair and smiles."); }
					else if (lilaMilk <= 8)	{ textLP(" Her milk has gotten to a point where she hardly bothers express herself to keep up her supply anymore. Now she tugs on my dress whenever she's feeling engorged and we'll sit over a bucket and milk her the best we can. Otherwise she'll just walk around with a wet front because it's nearly impossible to completely drain her. I've considered lining her dresses to better hide the milk, and her rather... obvious nipples, but she's been making so many new friends with it and she's been so happy that I don't think it's a very big deal. Heck, even I've been a tad eager to start lactating again myself.\" She chuckles a little to distract from her hand sneaking over to hide a breast as a moist blotch begins to spread."); }
					else if (lilaMilk <= 12) { textLP(" I'm actually quite surprised at how much she's... grown, from how milky she's gotten. It seems slightly odd to see her... jiggle like that, especially when she gets happy and starts spraying everywhere. My daughter leaks more than I ever did... But! We enjoy it. Since I've gotten back into lactating with her, we have made it a habit of suckling from each other. It's much easier than doing it manually by hand and it's so nice.\" She smiles brightly, despite her breasts sitting on the table and blatently leaking through her dress into small puddles."); }
					else if (lilaMilk <= 18) { textLP(" My goodness has she gotten milky. I don't know why I bother to put her in those dresses; I can see through the things within minutes with the rate she leaks into them. Heck, when we're suckling from each other, sometimes I don't even bother to lift her clothes, since I can suck right through them. And I can't even swallow it all... Thank goodness she's got all those friends to help. Although, I kinda drink most of it and I think my daughter's 'uniqueness' has kinda been rubbing off on me...\" She pauses as she shifts in her seat, a squishing sound coming from her bottom. Then her breasts spurt up a bit, spewing some milk across the table. She blushes a bit and stands to get a towel to wipe it up. As she turns away, you can see her tail twitching a little with clear webs stretching from its underside to a blotch on the backside of her dress.");	}
					else if (lilaMilk <= 19) { textLP(" My that girl has gotten so messy. Milk. Everywhere. Most of this isn't even mine!\" She brushes at her dress, blotched here and there all over, with the ones around her nipples even larger. \"We've got buckets all around the house, just so she can squeeze out a few cups whenever she has the time. I have to roll over and squish her tits in the middle of the night so she doesn't wake up sore. Those things are getting close to being as big as mine and she's nowhere near when I grew them! But, we do get all the milk we want. She drinks some of mine, I drink a lot of hers, she drinks a lot of hers; so we're happy cats around here. Except for one little thing that seems to come with ingesting her milk...\" She doesn't bother to mention what that little thing might be. Instead, she 'accidentally' pushes a spoon off the table and it bounces away. She stands up with a slight twitch and turns around to bend forward and pick it up. Clear strands still stretch out from her rump to the chair, with webs of the stuff swatting off her tail as it flicks about, her dress quite drenched on the backside. She bends down far, giving your a spectacular view of her backside, especially when her thick swollen lips nip at the cloth and push through another fresh gob as she leans back a little towards you, like she were trying to allure you. However, she quickly pops back up with a squish of her nethers, realizing what she was doing, and quickly sits back down with a tinge of red in her cheeks. \"S-Sorry...\"");	}
					
					if (lilaVulva == 0) { textLP("\r\rHeavy breathing can be heard from a few rooms over, causing Mommy to blush a little.\r\r\"And it seems she has learned some techniques to help deal with herself. It's not a bad thing, but even when we have company over...\" She trails off."); }
					else if (lilaVulva <= 2) { textLP("\r\rLight gasps can be heard from a few rooms over, causing Mommy to blush.\r\r\"And it seems she's really... developing. A bit faster than she's supposed to, I think, because she's been walking around like she's got something stuck between her legs. Kinda cute, when she's not masturbating when we have company over...\" She sighs with a shrug.");	}
					else if (lilaVulva <= 5) { textLP("\r\rGasps and quiet mewling can be heard from a few rooms over, causing Mommy to blush quite a bit.\r\r\"I really shouldn't be surprised. That girl's little naughty bits are bigger than mine. And on that small body, she walks around here with a kink in her step all day, leaving a splotch of her slime whereever she sits. It's really cute seeing her deal with it, but she winds up masturbating so frequently that it makes even me seem conservative...\" She chuckles at the comparison.");	}
					else if (lilaVulva <= 8) { textLP("\r\rHeaving sighs and slurping can be heard from a few rooms over, causing Mommy's cheeks to turn quite red.\r\r\"I'm a bit jealous of the girl. It sounds like she has more fun than I do, at that sort of thing... Though when I clean her, even I have trouble palming that huge pussy of hers. I try to discourage her from holding it wherever we go, whether it be out to visit family or even to go to the market, but with it almost bobbing between her legs like that, I wouldn't blame her. I'm sure she'll get used to it eventually.\" She shrugs.");	}
					else if (lilaVulva <= 12) { textLP("\r\rHeavy moaning and moist splattering about a wooden floor can be heard fairly clearly throughout the hut. Mommy just shakes her head with a chuckle. \"That girl is ridiculous with her masturbating. Makes such a mess... Not that she doesn't make a mess otherwise, though. Everywhere she sits becomes filled with a puddle of warm goo, even if she doesn't orgasm from grinding her naughty place as she sits on it. And I doubt she'll ever be able to wear panties with bits that large, she already gets wedgies from her dresses. She's beyond camel-toe; she doesn't leave much to the imagination when her pussy starts chomping down on the fabric... Oh my the stares she gets. I can practically see the men coming in their pants just looking at her~\" She lets out a laugh."); 	}
					else if (lilaVulva <= 18) { textLP("\r\rLoud cries and wet slapping echo around the hut. Mommy squirms in her chair, looking a bit uncomfortable. \"I must admit, I'm a bit envious of her. She has such powerful orgasm... Even though she leaves trails of slime everywhere and large puddles whenever she comes, it kinda makes me aroused just thinking about how intense it must be. Every night, together in our bed, she winds up grinding against my leg in her sleep. I wake up and... I can't help but masturbate along with her. And its not just me, either. When she walks around with that thing between her knees, if I'm not paying close attention she curl up and start masturbating right in the middle of public. And when she's not walking, she'll be humping whatever she sits or lies down on, whether she's conscious of it or not. I guess that's what happens when you sit on that part of your body instead of your own butt...\" You catch her hand stealthily disappear beneath the table as she thinks about the prospect, though you don't say anything.");	}
					else if (lilaVulva <= 19) { textLP("\r\rShouts of ecstacy and wet spurting and moist slurping and thick splattering fill the hut. A hand obviously pushes down beneath the table into Mommy's lap as she shivers a tad. \"My little slug~\" She chuckles as she pants a little. \"She always scowls at me when I call her that. But with the way she almost drags across the ground, leaving a trail of slime behind her, what would be a better nickname? Although, I really hope she doesn't actually start having to move like a slug... As it is, she shivers and shakes whenever she plops down or accidentally drags it across something, having an instant orgasm. Even at night, while we sleep together in the bed, the big thing makes the bed all slick and wet, rubbing and pushing against everything, until she finally wraps her legs around one of mine and devours my knee as she humps with that thing. Completely asleep, too, totally unconscious. And that huge clit... Sometimes in the middle of the night, I can't help but-\" She catches herself, her flicking tail halting in embarrassment as she bites her tongue to keep from saying more as her face is as red as can be."); }
							
					if (lilaPreg <= 35 && lilaVulva >= 11) { textLP(" \"I also like to poke fun at her swollen tummy. I know she's not fat, but squishing it and making her squirm like that is just so much fun~\"");	}
					else if (lilaPreg <= 70 && lilaPreg > 35) { textLP(" \"I also can hardly believe I'm going to be a grandmother already... But, it was bound to happen sometime or other, I'm just glad it wasn't with one of her brothers.\""); }
					else if (lilaPreg <= 100 && lilaPreg > 70 ){ textLP(" \"I also hope she gives birth soon... I'm not sure if it's the hormones or what, but she's as randy as ever, it seems. And when she starts having her... 'fun' like this, I'm always afraid she'll topple over with that great big belly of hers. I mean, it's a normal pregnant belly for my size, but on her small frame it's a tad silly.\""); }
					if (lilaPreg ==-1)	{ textLP(" \"But, her kittens are doing well. They spend most of the day napping or playing with each other in the bedroom, in a pen until they're big enough to not hurt themselves. Lila and I both take very good care of them, although it is odd seeing my daughter with children already... Thankfully the local alchemist gives us a good supply of anti-pregnancy potions so I don't have to worry about any more. Lila's just one of those cases of her first heat not going away, no matter how satisfied she gets. It happens every now and then for felins, but she'll grow out of it eventually, whether it be weeks or months or years. Though I guess her brothers and father will have to stay in our auxilliary hut next door. It's customary to keep the males outside when felin girls go into their first heat, to prevent any 'accidents'.\"");	}
					
					textLP("\r\rLila steps into the kitchen with the two of you, still a little out of breath and with a kink in her step. \"Umm... So what have yew and Mommy been talking about?\"\r\rYou and her mother laugh, making up some excuse. The three of you continue to drink tea and chat about various things, but eventually Lila starts to get antsy again, thanks to your presence, and her mother suggests that it is probably a good place to stop. Lila hops up and gives you a great big hug, then proceeds to scamper off into the hut once more. Her mother giggles and hands you some tea mix, thanking you for the company and letting you know you're welcome any time, as long as you keep her daughter safe.");
					hrs = 3;
					itemAdd(226);
					doEnd();
				}
			}
		}
		else if (lilaRep == 4){
			if (percent() <= 50){
				//Lila Bath
				textL("You spot Lila walking along at a rather rapid pace, though she doesn't seem to be terribly aroused like she normally does. You flag her down just to check up and make sure.\r\r\"Oh, hewwo!\" She seems a bit surprised. \"I was going home for bath-time. Would you like a bath too?\"");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("You nod, saying it would be nice. She grins and grabs your hand, pulling you along with her back to the hut.\r\rHer mother spots the two of you coming and looks at you curiously, wondering why you came along.\r\r\"My fwiend would like a bath too, Mommy.\"\r\r");
						if (cockSize*cockSizeMod > 96 || ballSize*balls > 120 || bustSize() > 120 || tallness > 84 || udderSize > 60) {
							textLP("Her mother eyes your rather large proportions. \"Umm... I'm sorry, but I don't think I could possibly take care of you myself. Maybe if I had a few friends over, we could, but... I simply don't have the ability.\"\r\rLila looks a bit disappointed that you couldn't join, but you shrug it off and say it's quite alright. You leave the two to take care of themselves and you head back to your own thing.");
							hrs = 2;
							doEnd();
						}
						else{
							textLP("\"Is that so?\" She chuckles and shrugs. \"Alright, come on in and strip down.\"");
							viewButtonOutline(1,0,1,0,0,1,0,0,0,0,0,0);
							viewButtonText(1,0,1,0,0,1,0,0,0,0,0,0);
							buttonWrite(1, "Strip");
							buttonWrite(3, "Don't Strip");
							buttonWrite(6, "Leave");
							doListen = function():void{
								if (buttonChoice == 1) {
									textL("Stepping inside, you already begin to remove your "+currentClothes()+". Lila has trouble focusing as her eyes keep staring at your body, curious to its differences from her own as she removes her sundress and exposes her nipples and dainty little slit. However, her mother urges her along into the bathroom, making sure the girl doesn't dawdle.\r\rThe bathroom is fiarly sparse and actually lacks any sort of tub or main faucet to get water from. It even has a rather plush carpet. Though it's quickly apparent as to why when the two of them sit down upon it. Lila's mother holds a cup she has been carrying up to her mouth and takes a swig, swishing it around before swallowing with a gasp. Lila then does the same and proceeds to begin licking at the fur of her arm. Her mother's tongue, being much larger, assists her daughter and starts licking at the girls back.\r\rWith each lick, Lila's coat seems to shine cleanly and softly, thanks to whatever was in that concoction. The two female felins quickly cover the girl's entire body, finishing off near the groin. Lila stretched her leg high over her head, curling around to lick further and further up her inner thigh. Yet, once she gets too close, her leg and tail begin to twitch about, her tender lips swelling and reddening slightly with her heat kicking in once again.\r\rHer mother rolls her eyes and chuckles, taking care of the girl's nether regions for her. Lila whimpers and mewls as her mother licks and laps at her sensitive sex, making sure to clean every crevice. The woman continues her efforts, even as some honey oozes out and dabs upon her nose. By the time she's done, Lila rolls backwards with a quiver, blushing as she climaxes softly...\r\rSmacking her lips, the girl's mother looks up to you. \"Your turn. Just sit down over there.\"");
									doNext();
									doListen = function():void{
										textL("You sit down on the plush carpet with Lila. Mommy takes another swig and instantly begins to assault you with her own tongue.");
										if (skinType == 2) {
											textLP(" The stuff feels nice on your fur, her rough tongue combing it in nicely. You can feel yourself glisten with a healthier coat, in a rather tingly and giddy kind of way.");
											stats(0,0,1,1);
										}
										else{
											textLP(" Her tongue feels quite rough along your "+skinDesc()+" and the concoction tinglies incessantly, making you squirm as you sit there. This probably wasn't the greatest idea...");
											stats(0,-1,2,1);
											doLust(10, 0);
										}
										textLP("\r\rLila soon recovers from her bit of fun with red cheeks and tries to jump right in as well. Without thinking too well, she takes a swig and immediately falls forward into your body, unintentionally starting at your lap. Trying to play it off as part of the plan, the small girl begins to lick away at your groin, making you begin to really squirm.");
										if (cockTotal > 0) {
											textLP(" Her tongue climbs higher and higher along "+oneYour(1)+" growing length"+plural(1)+", not really looking at what it could possibly be. All that she does know is that once she reaches the tip, a bit of pre keeps seeping from a hole and her tongue keeps lapping up all she can to keep it clean, until strands of it stretch between you and her mouth and dribble down her chin.\r\rWhatever is in the stuff she used, it tingles tremendously and causes you to quickly buck and spurt all over the little girl's face. Caught by surprise, Lila jumps backward and wipes the stuff off with an arm, then proceeds to clean her arm off as well, making strange faces as she tastes the stuff.\r\rHer mother much more wary, the woman moves in to take care of the rest of the mess. Although, afraid to explain to her daughter what really just happened, she's left licking it up herself as though it was a normal occurence, giving you quite the evil eye. Though she can't help but giggle at the humor in the situation as her daughter continues to lick up the white spunk oblivious to its lewdness.");
											doLust(-Math.floor(sen/2), 2, 1);
											if (cumAmount() > 2000){
												textLP("\r\rOn the other hand, she herself is having trouble keeping up with your enormous load, gulping down more and more despartely. Eventually, however, she gives up. Grabbing a bowl, she pushes it over the tip of your cock and presses it firmly against your urethra until the ejaculation comes to an abrupt halt, backing up inside of you.\r\rShe leans in and whispers in your ear. \"Could you please take care of that elsewhere? I'm afraid you're a bit too... messy to finish here, so if you don't mind...\"\r\rYou nod, understandingly. With Lila still busy, you hold the bowl tightly against your erection while you attempt to put on your clothes. Then you run out of the hut with a meager goodbye, rushing");
												if (ment > (lib+5))	{ textLP(" back to your own place to release what has clogged up inside of you..."); }
												else{ textLP(" outside to dangle your "+cockDesc()+" thing over the rail of the wooden bridge and blowing your load on whatever ventures down below. You then rush away, just in case..."); }
												hrs = 3;
												doEnd();
											}
											else{
												textLP("\r\rSoon finishing up, leaving the two of you clean, Mommy gulps the last of the unexpected taste and smirks at you. \"Alright, that's good enough. Here, take some of this, you might like it some time. Now you should better get going before you make Lila dirty again.\" She sticks out her tongue and hands you some of the concoction.\r\rYou take her advice, clothe yourself, give the naked Lila a hug goodbye, and head off.");
												itemAdd(227);
												hrs = 3;
												doEnd();
											}
										}
										else if (vagTotal > 0){
											textLP(" Her tongue slips in and out of your "+vulvaDesc()+" folds, thinking of it no differently than her mother. Which is an odd thought, considering how deftly her tongue lashes around your "+clitDesc()+" clit"+plural(2)+". Between her efforts and the exreme tingling of the concoction, you soon find your "+hipDesc()+" hips bucking upon the plush carpet as you climax into the girl's mouth.\r\rLila's mother giggles at your reaction. \"Good, isn't she?\"\r\rNot inquiring about the statement, you wait a few moments and you're soon as fresh as a can be. You take your time getting up and getting clothed when Mommy mentions Lila needs to help her with her own bath, but you didn't need to stick around for that. She gives you some of the cleaning solution and nudges you out, allowing you to give the naked Lila a hug and say goodbye before you're on your way.");
											itemAdd(227);
											doLust(-Math.floor(sen/2), 2, 2);
											hrs = 3;
											doEnd();
										}
										else{
											textLP(" Though there's no big difference, since you don't have anything down there. So, instead, you soon find yourself quite clean as they finish up quickly between their two tongues. You take your time getting up and getting clothed when Mommy mentions Lila needs to help her with her own bath, but you didn't need to stick around for that. She gives you some of the cleaning solution and nudges you out, allowing you to give the naked Lila a hug and say goodbye before you're on your way.");
											itemAdd(227);
											hrs = 3;
											doEnd();
										}
									}
								}
								if (buttonChoice == 3) {
									textL("\"Oh, ok, so you'd rather just help Lila then? An extra tongue is always welcome!\" Mommy speaks as though you already knew what the job entailed.\r\rYou step inside to spot Lila already removing her sundress, standing there naked with her nipples and dainty slit exposed for you both to see as she waits. Her mother then guides you both along into the bathroom, making sure the girl doesn't dawdle.\r\rThe bathroom is fiarly sparse and actually lacks any sort of tub or main faucet to get water from. It even has a rather plush carpet. Though it's quickly apparent as to why when the two of them sit down upon it. Lila's mother holds a cup she has been carrying up to her mouth and takes a swig, swishing it around before swallowing with a gasp. Lila then does the same and proceeds to begin licking at the fur of her arm. Her mother's tongue, being much larger, assists her daughter and starts licking at the girls back.\r\rWith each lick, Lila's coat seems to shine cleanly and softly, thanks to whatever was in that concoction. Shortly, her mother hands you the cup as well and urges you to take a sip to help with the process. As it goes into your mouth and down your throat, it feels quite tingly and fresh, your mouth feeling both burning and cold at the same time and continuing on down your throat as you swallow. Besides feeling a bit... odd, you otherwise have no problem joining in.\r\rWith her mother on the back, you decide to take the front. The fur is soft and sweet smelling, and actually tastes fairly nice as well. Your tongue laps across Lila's nipples, making them stiffen against your lips. Lila stretches her leg high over her head, curling around to lick along her thigh as you begin to touch down further and further towards her nethers. You can hear her begin to pant, her breathing growing heavy until her tender lips are swollen and red with her heat kicking in once again.");
									textLP("\r\rHer mother rolls her eyes and chuckles, nodding for you to take care of her. With another nod, Lila begins to whimper and mewl as you lick and lap at her sensitive sex, making sure to clean every crevice. You continue on, even as honey begins to ooze out and dab your nose and fill your mouth. You gulp down as much as you can, trying to make everything clean, but eventually Lila rolls backwards with a quiver, blushing as she climaxes softly...");
									doLust(10, 0);
									aff(4, Math.floor(percent()/20 + 4), -1);
									doNext();
									doListen = function():void{
										textL("Smacking her lips, the girl's mother looks up to you. \"KO! You win!.\" She chuckles. \"Pretty good, I must say. I'm sure you must have bathed your fare share of kittens. But, anyways, once Miss Hair-Trigger here gathers herself, it'll be my turn for a bath. As great as I'm sure you must be, I'd like to have a little mother-daughter time, if that's alright. Though here, take some of this wash for yourself.\"\r\rShe hands you some of the concoction and lets you give the naked Lila a hug before seeing you off.");
										itemAdd(227);
										hrs = 3;
										doEnd();
									}
								}
								if (buttonChoice == 6) {
									textL("On second thought, you think it best to head back out. You're not quite sure if you want 'that' kind of bath.\r\rLila waves goodbye and her mother sees you off, and the two disappear into the hut to take care of the girl's bath.");
									hrs = 2;
									doEnd();
								}
							}
						}
					}
					else{
						textL("You shake your head, saying you're clean enough. She looks at you dubiously, but shrugs. \"Okay, see yew latew!,\" and she continues to hurry home.");
						hrs = 1;
						doEnd();
					}
				}
			}
			/*else if (percent() <= 50 && hour > 8 && hour < 20){
				//Lila Sleepover
				textL("\"Hewwo~!\" The familiar voice of little Lila floats over to you as she closes the distance. Still with a kink in her step for obvious reasons, her demeanor seems to be rather giddy about something else. \"I'm having a sleepovew tonight with some of my giwl fwiends, would you like to join us?\"");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("Deciding you wouldn't mind spending the rest of the day and upcoming night with Lila and her friends, you accept her invitation with a nod.\r\r\"Gweat! Come with me and we'll go get my fwiends!,\" she shouts happily with a great big grin on her face.\r\rThe two of you make a trip across the bridges of Siz'Calit to knock on the doors of a few huts and are even redirected to more huts as you hunt down the current locations of Lila's friends. Only one girl was actually at her home while the other two had bounced around from home to home and eventually wound up doing some shopping before the slumber party was to begin. It was obvious one of the girls needed some special preparations to sleep over, but all three of Lila's female friends seem quite different.\r\rThe first girl you find, at her home, is about an inch taller than Lila. However, by the way the others treat her, she is apparently much younger than them all, though no particular age is specified. All that is clear is that she's the only one who hasn't had her first heat yet (whatever that means in terms of felin physiology) and is rather naive as to what such a thing could be, occassionally asking Lila if she needs to use the bathroom or something. The other girls giggle at her ignorance over such matters when they come up, though Lila herself tends to change the subject since she herself is still rather... 'innocent' in the same way.\r\rThe second girl accompanied the third with the shopping. Having had a rather significant growth spurt amongst felins, she is the tallest of the group. Yet, the most noticeable growth seems to have occurred along her front side. Several orbs wobble whenever she moves, nipples forming bumps through her bras, and all seem to put her off balance. Her steps aren't as sensual as most felins, her tail flitting about to keep up, making her walking look somewhat awkward. With her 'advanced' figure, the girl has attempted to compensate by having a rather large knowledge of lewd subjects. She's the one who usually pokes fun at the youngest girl's naivete, but her demeanor also suggests she doesn't know much of such things first hand herself, likely only experimenting in solo 'ventures'.\r\rThe third girl was the one who really needed the shopping. Having a large pregnant belly well along in its term has some extra requirements. You don't catch any mention of who the father is, but the other girls are quick to rub the mound and giggle at the bodies moving inside. The girls don't seem to pay much mind to the fact that she is pregnant, either because this isn't her first litter or such a thing isn't uncommon in felin society (or both), but everyone seems to enjoy the big belly for what it is, especially the girl wielding it. Relatively casual and content, she cherishes her belly enjoys the presence of her friends.\r\r\rFinally together and familiarized with each other, Lila happily takes the lead. \"Let's all go to my house now!\"");
						doNext();
						doListen = function():void{
							textL("Back at Lila's home, her mother greets you all with a warm meal. \"Now, I know you girls want to have fun together, so after dinner I'll leave you in peace.\"\r\rYou and the girls echo thanks in return and the table is quickly cleared, leaving you all to head to Lila's room well-fed. Fluffy mats have already been laid out upon the floor, complete with spare blankets and pillows, all in preparation for the guests. It doesn't take long for Lila's friends to settle in, well accustomed to such sleepovers, and they turn their backs to each other for the few moments it takes to strip and hop into more comfortable sleepwear. Whether you attempt to intentionally or not, you do get quite a view of naked backsides from all the girls as you wait, since you were caught off guard with these plans and didn't bring your own sleepwear (if you even have any).\r\rLila dons an over-sized t-shirt that reaches down to her knees, not much different from her usual sundresses besides the length, especially not in the 'hiding her wetness' department.\r\rThe 'young' girl is the only one who puts on what could obviously be called 'pajamas', a thin silken soft pair of pants and shirt that forms to her lack of curves easily, with exaggeratedly cute designs of mice all around.\r\rThe 'tall' girl has a t-shirt as well, with a big puppy face being stretched across the blatent nipple peaks of her upper breasts, the fabric greatly outlining the ample jiggly shapes thanks to the lack of a bra. The nipples of her second pair also brush against the fabric underneath, the sides of the orbs occassionally bouncing into the cloth. Apparently bought before the growth spurt, the shirt often lifts past and exposes the third pair, much to her embarrassment, though there's not much she can do. It also doesn't cover her nethers, which she, in turn, compensated for with lacy and erotic pair of soft panties...\r\rThe 'pregnant' girl opts for a flowing sleeveless nightgown that hangs from her shoulders. Easily and comfortably draping over her belly, it ripples slightly with even the slightest breeze. It also happens to be semi-translucent, allowing you to see her nipples beneath if you catch it at the right angle, and you didn't see her put on any form of panties either.\r\r\rAll dressed up and ready for some fun, once more Lila takes the lead. \"What would you all wike to do?\"\r\rAfter some discussion, the actual decision comes down to you, as you're the newest member of the group.");
							viewButtonOutline(1,0,1,0,0,0,0,0,1,0,1,0);
							viewButtonText(1,0,1,0,0,0,0,0,1,0,1,0);
							buttonWrite(1, "Pillow Fight");
							buttonWrite(3, "House");
							buttonWrite(9, "Board Games");
							buttonWrite(11, "?");
							doListen = function():void{
								if (buttonChoice == 3) {
									if (breastSize >= 6 && lactation > 1 && milkEngorgementLevel > 0) {
										//FINISH//outputMainText("\"Okay, let's play house! Who should be the mommy?\"\r\rGlances dart about the room for who would fit the role. Most of the glances, however, seem to be feigned as they all unanimously center in upon your "+clothesTop()+" and the moist blotches thereupon. 
									}
									else {
										textL("\"Okay, let's play house! Who should be the mommy?\"\r\r\"Umm...\" The pregnant girl looks down at her girth, as if suggesting the choice should be obvious.\r\r\"No, that's not fair, you ARE a mommy. What's the fun in that?\" The tall one objects.\r\r\"Umm...\" The young one attempts to make another suggestion. \"H-How about you?\"\r\rEveryone follows her line of sight to determine who she's referring to and the tall girl immediately begins to blush as the focus is clearly upon her breasts. \"Err, uhh, I g-guess it would make sense.\" The tall girl crosses her arms in a feeble attempt to cover up her unrestrained 'mom-like' assests out of embarrassment. But, nobody objects and everybody gets to playing pretend.");
									}
									doNext();
									doListen = function():void{
										if (breastSize >= 6 && lactation > 1 && milkEngorgementLevel > 0) {
										}
										else {
											textL("The tall girl recruits you as one of her 'older children' and the pregnant one as the father to help take care of the 'younger children'. Lila is treated like some kid, allowed to goof around as she pleases, but the young girl is treated... much much younger.\r\r\"Do I really have to?...\"\r\r\"Yes. I'm the mommy and you're the baby, so you need to wear one.\" The tall girl towers over the young one in dominance with a devious grin on her face. \"Now, time for changies~!\"\r\r\"Eek!\" The young one tries to jump back to no avail as the tall one's thumbs slip into the waistband of her pajama bottoms and yank them down. The the tall one pushes her down onto one of the pillowy mats, pulling along one of the blankets. The young girl squirms and attempts to hide her nethers with her hands, but the taller girl eventually wrestles her down and spreads her legs. With her cheeks burning deep red, the young one averts her eyes and pretends she doesn't care anymore while the tall girl folds the blanket around her hips and ties the make-do diaper snuggly.\r\r\"There, all done!\" The tall girl claps her hands at her masterpiece.\r\rThe young one grumbles as she stands, her tail awkwardly shifting behind her as she shuffles about in her new 'padding'. The blush never leaves her face, standing there in her pajama shirt with a fluffy bottom now far too large to fit her pants back on, her legs left bare. Then, her voice quivers meekly as she tries to turn the tide.\r\r\"F-Fine... If I have to wear a d-d-diaper, then you have to be the mommy and feed me...\"\r\rThe insecurity almost hides the sincerity in the statement and very much catches the tall girl off guard. Another weak shriek echoes around the room as she is tackled back onto another mat, the young one aiming for her lap. Before she can resist, her ill-fitting shirt easily flips up, letting the large wobbly extra-developed melons fall out. The vengeful attack strikes an equal amount of embarrassment into the tall girl, her cheeks flushing scarlet as a mouth latches onto one of her upper nipples. The young girl forces the rest of herself into the tall one's lap, preventing the 'mommy' from escaping, forcing them both to live through the humiliating scenario.\r\rLila and the pregnant one giggle at the antics of their friends, proceeding to play out their own roles as father and daughter. As Lila sits and leans back into the pregnant girl's belly, you can't help but stare back at the first two. For supposedly feigning a counter-attack, she seems oddly comfortable at the tall girl's breast, curling her legs around her diaper and holding onto the other girl like a true mother, suckling away contentedly. Meanwhile, the tall girl continually squirms, the blush only growing brighter, noticeably distressed about the sensations she's enduring. Judging by how far her other nipples are reaching as they become more and more erect, it's not too difficult to tell what those sensations might be.");
											doNext();
											doListen = function():void{
												textL("After about ten minutes of the girls 'roleplaying' while you sit and watch, the squirming of the tall one seems to have reached its peak. She has begun to rock the smaller body in her lap in tune with her wiggling with a rather desparate expression growing upon her face. Her eyes begin to dart about and quickly focus upon you; her escape route.\r\r\"H-Hey! Now that the baby is f-fed, I think you should change her again!\"\r\rAfter the young one had become so subdued in the suckling, it doesn't take much to catch her off guard and roll her out of the lap. A startled gasp is all she can muster as the breast is yanked from her mouth and proceeds to find herself on the floor, with a nicely padded rump softly taking most of the small impact.\r\rThe tall girl quickly jumps to her feet, using the bounce of her breasts to swiftly catch them within her shirt once more. A little too quickly, as a moist blotch darkens the area around the saliva-coated nipple and the others lewdly poke against the cloth, so blatently aroused. To make matters worse, her sexy adult panties do little to hide another large blotch, lightly beading and sticking to the surrounding thigh-fur. Nevertheless, she hastily tosses you another blanket. \"Y-You change her, I'm gonna go to the bathroom!\"\r\rWithout another word, the tall one dashes away to take care of some 'business', leaving you with the young girl lying before you. Still a little dazed herself, the young girl makes sure to avoid any eye-contact, not only bracing herself for what is about to happen but also to hide her emotions of what previously occurred. She spreads her legs in hopes of speeding up the process, doing the best to pretend there is nothing wrong. Yet, as you undo her original 'diaper', it's hard to miss her own awkwardness over the situation.\r\rWhether she has had her first heat before or not, nor have much in terms of curves, it seems she has developed in other ways. Sticking up from her dainty lips stands a stiff button. About as thick as her thumb and protruding nearly as long from her sex, the large clitoris exposes her hidden feelings and defies her otherwise youthful innocence.\r\rConsidering how much of an effort she's taking to pretend like nothing is wrong, you follow suit and slip out the older blanket to replace it with the newer one. Gingerly reaching around her tush to place the folds and then wrap it around, you inevitably pinch the erection a little making her gasp and her hips buck from the floor. She instantly recovers with a loud yawn to mask her gasp, allowing you to finish tying without issue.\r\r\"Th-Thanks,\" she mutters as she sits up. Then, with a devious grin of her own, she silently swaps out the blanket of the tall-girl's sleeping mat with that she had been wearing only moments ago, bringing her finger to her lips. \"Shhh.\"\r\rYou just shake your head in amusement, letting the games continue.");
												doNext();
												doListen = function():void{
													textL("Eventually the tall girl returns, with a rather 'relieved' look on her face and a content limp in her tail. She seems happy to bury the hatchet for now, joining the other girls and yourself with more 'mundane' roleplaying, with the game dying down as she and the pregnant girl tuck you all into bed. Of course, she neglects to return the young girl to an un-padded state, but everybody seems too tired to fix it, preferring to simply fall asleep.");
													doNext();
													doListen = function():void{
														sleepOverEnd(buttonChoice);
													}
												}
											}
										}
									}
								}
								if (buttonChoice == 9) {
									textL("\"Ooo, a board game would be fun.\" They all seem to agree. Lila crouches down to her hands and knees. Her rump in the air, her tail nearly lifting her shirt up to expose the tight cheeks, she searches under her bed until she emerges with a decorated box. She then opens it up and lays out the board in the middle of you all, distributing the pieces and fake money. After the fighting over who gets to be the milk-cart ends, you wind up with the shoe and the game gets under way.");
									if (tallness > 57 && str > 20) {
										outputMainText("\r\rAs everybody settles in for a few hours of economic fun, the pregnant girl scooches over to you.\"Umm... Would you mind supporting me? I've kinda gotten a bit... big,\" she looks down and roves a hand over her belly, \"and sitting while playing like this is already starting to make my back ache. You seem like you would be big enough and strong enough to help hold me up...\" There's a tinge of blush beneath her fur with the lack of discretion over her fertile nature.\r\r
									}
									//pregnant one leans against you if tall enough and strong enough, your hand masturbating her; otherwise she leans against bed opposite of you and has to spread her legs.
								}
							}
						}
					}
					else {
						textLP("Deciding the rest of your day and night is probably better spent elsewhere, you thank Lila for the invitation but decline.\r\rThe girl doesn't mind much at all and says her goodbye with cheery smile. \"Okays, maybe next time then!\" And then she's off on her way to get her friends.");
						hrs = 1;
						doEnd();
					}
				}
				function sleepOverEnd(buttonChoice:int):void{
				}
			}*/
			else {
				//Lila Tail
				textL("Out of the corner of your eye, the sight of a short felin girl across the bridges strikes you as odd, yet familiar. She waddles along with a kink in her step, her hands constantly roving over her thin dress. The odd part about the scene is the protruding belly her hands are so focused on rubbing, all the way down until she's tucking some of her dress between her legs, and the fact that you don't see any sign of the usual felin tail that should be bobbing behind. And as the girl spots you and begins to make her way closer to you, you realize why she seemed familiar, despite the strange appearance. This girl is Lila...");
				doNext();
				doListen = function():void{
					textL("\"Uh-umm... Hi...\" Lila greets you bashfully with a tremendous amount of blush in her cheeks. Even as she stands before you in the middle of the bridge, you notice her knees continually rub together beneath her dress, obviously pressing and grinding her thighs together. \"Umm... C-Can yew hewp me again pwease? I, umm... I got a wittle stuck...\" Her eyes glance from side to side, rather embarrassed about her situation out here.\r\rNot wanting to leave the poor girl in whatever trouble she's in, you nod and take her hand to lead her back to your hut. The trip takes a little longer than usual to make, thanks to the girl's exaggeratedly awkward steps, with a few wet blotches staining the wooden planks as wet drops fall from her dress along the way. It's not difficult to tell that this is an issue concerning her heat, though she doesn't say a word until you step inside the privacy of your Siz'Calit home.\r\r\"I-It got too hot, so I hid behind a hut and tried to stop it, and then it felt so good filwing it, and then, umm...\" She proceeds to lift her dress before you, wincing as her dress drags across her distended belly and perk nipples.\r\rHer thighs are swamped in slick fluids, webs of the stuff stretching about all the way to her knees with drops occasionally breaking free to fall to the floor below. The reddened lips of her swollen nether maw visible throb with every aroused contraction, chewing on the thick length of fuzz that is sufficiently stuffed inside of her. Every few seconds, the fuzz jerks about sporadically, sending out lewd squishy sounds as well as elliciting a muffled gasp from the girl and twitchy hips. Lila's hand rove over the filled womb in an attempt to calm herself, yet only managing to make the fuzzy thing squirm more from the oddly stretched sensations. Suffice it to say, you think you know where her tail went...\r\r\rWill you help her?");
					buttonConfirm();
					doListen = function():void{
						if (buttonChoice == 6) {
							textL("Telling the small girl everything will be alright, you motion for her to give you better access to the troublesome area. With a sheepish nod and hiked-up dress in hand, she turns away from you and bends forward, leaning against the wall. Her naked swollen belly bulges below her and quivers slightly as the new position yanks the invader from her loins ever so slightly, making another gob of slick fluid pulse out before your eyes and slowly descend down the back of her legs. The slim back can hardly remain straight as you inspect her, the spine gently curving from one side to the other to balance with the exposed stub of twitching tail at the end. The lithe appendage is thoroughly wedged between the cheeks of her small rump, its length only visible due to the way she has presented herself to you, down until it disappears into the stretched and swollen hungry lips of her slit.\r\rRealizing you're staring far more than helping, you quickly regain your wits and kneel down behind her. She mewls and gasps quietly as your fingers begin to dance around her backside, slowly slipping deeper and deeper between her cheeks, digging under the snugly-packed tail. 'Slipping' being the key word, as all the slimy arousal about her rear easily lubricates your efforts. Once underneath, you slide your hand down through the crevice, until you touch the sensitive flesh.\r\rA much louder, warbling mewl escapes her lips as you try to pull. Naughty spurts of her juices squirt about, followed by a prompt clamping of her inner passage that halts your progress. You pause for a moment as she huffs for air. Once she seems calm enough and you feel her hot vulva relax behind your hand, you attempt to pull once more.\r\rMore mess, more erotic mewls, and near-instant contraction of her vaginal muscles. Pause, wait for her to soften up, try again. Tug after tug, climax after climax, the girl whines and cries in ecstasy and embarassment, her little claws digging into the wall. And after a couple minutes of the process, you have managed to pull out... hardly two inches of the tail...\r\rTaking far too long with Lila rapidly growing exhausted over the ordeal, you prepare yourself for a more effective meneuver. You adjust your "+legDesc(6)+" to anchor yourself in the growing puddle of slick liquids. You adjust your posture for more stability. You firmly grab one of her tight cheeks with your other hand. And as she moans with that sensation, your working hand immediately slides down the length of her tail, yanking it out all in one go!\r\r\"MeeaAUUUUNGH!\" She nearly screeches with a surprised and orgasmic shout, her ears pinning back at her own voice, as the remaining length of her slender tail rushes out of her pussy. Her inner walls squeeze with all their might, but between your swift and powerful pull and her plentiful fluids, they have no chance, leaving her to endure the entire sensation at once.\r\rThe tail whips out of her hole with a squishy pop, flinging thick ribbons of feminine satisfaction everywhere. You can barely tell her belly has deflated back to its original shape before Lila's go limp and she collapses into her puddle with a splash. Claws still stuck in the wooden wall with dress pinned in between from holding it, the rest of her body is stripped nude in the fall and she winds up leaning into the wall, her face and upper breasts pressing against it while her spread thighs twitch limply in the slime, her sex still easily visible and gaping with a steady drool...");
							doNext();
							doListen = function():void{
								textL("It takes several minutes before she lets out a contented sigh with feeling returning to her legs. Her feet slip in her mess as she attempts to stand, leaving you to grab her nude hips and lift to help her stand. She removes her claws from the wall, allowing her sundress to fall down. Once she's able to stand on her own, you let go and let the dress complete the descent and cling to the soaked fur of her lower body.\r\rShe turns to you, oblivious to the fact that her claws had torn a hole right over her swollen crotch, and proceeds to wrap her arms around you in a warm wet embrace. \"Th-Thank yew so much...\"\r\rA little too dazed from the experience, she's unable to say much more and gives you an awkward peck on the cheek. She then lets go, wobbling slightly as she supports herself, and stumbles out of the hut, tail dripping and mostly confused as to what to do now.\r\rBeing rather confused yourself, you merely brush the thick fluids through the doorway to the bridge outside and feel better about yourself, knowing you REALLY helped a friend in need.");
								doLust(Math.floor(lib/2), 0);
								stats(0,2,0,0);
								hrs += 2;
								doEnd();
							}
						}
						else {
							textL("Not being something you think you should be doing, you caringly tell her that she should probably get someone else to help her, such as her mother.\r\rLila reddens further, her knees squirming as she realizes she has exposed herself to you a little too abruptly. \"O-Okay, that's a good idea. Thanks...\"\r\rShe awkwardly drops her dress and shuffles out of the hut. You look out and watch her to make sure she can get home alright. Still stumbling about, unbalanced without her tail to help her and having difficulty with... well, her small sensitive pussy stretched, stuffed, and wholly aroused. So aroused, in fact, that you nearly jump out as you see her fall against the ropes of the canopy bridge, but restrain yourself as you see and hear a splatter of juices fall below her accompanied by a poorly-muffled moan. She twitches for a bit with the minor orgasm, but is quick to right herself and pretend like nothing happened, only to hasten her pace home before she has another 'mishap'. Knowing she'll be fine, you return to your own shenanigans.");
							hrs += 1;
							doEnd();
						}
					}
				}
			}
		}
		else if (lilaRep == 3){
			textL("You come across Lila as you walk through the city. She grins and runs up to you, pouncing you with a great big hug around your waist. She thanks you again, although she shifts awkwardly as she lets go. 6 blotches form across her dress from chest to belly, with another, smaller one below...\r\r\"Uhh... Umm... I-I kinda have a diffewent problem now... The other kids don't know yet,\" she reaches under her dress, pulling out a large square of absorbant cloth that has been soaked through, \"and I'm afwaid of Mommy finding out. C-Can yew help me again?\" She blushes.\r\rNodding, you think it best to at least see what is going on. You take her hand and once again lead her up to your private hut. As you enter, you turn to shut the door-like curtain so nobody outside can see. Yet, as you turn back, you already find Lila pulling up her dress to show you her new issue. She get a bit stuck trying to pull it over her head, leaving the rest of her body completely naked. Thin streams of white liquid slowly drizzle down her half-dozen nipples, soaking into her fur. Not quite as bad as the slimy mess that has returned between her legs, but enough to leave her with a bashful blush as she finally frees herself and finds you staring at her dribbly nipples.\r\r\"I-I thought if I took a dwink like Mommy sometimes does, I would be older like her. But then the othew day my chest felt funny. I wubbed it and then milk stawted leaking. I keep wubbing it when I get milky, but it doesn't stop and I have to walk awound with a towel so nobody sees. What should I do?\"");
			viewButtonOutline(1,0,0,0,1,0,0,0,0,1,0,0);
			viewButtonText(0,0,0,0,1,0,0,0,0,1,0,0);
			if (checkItem(103))	{ Choice1.visible = true; }
			buttonWrite(1, "Dry Sand");
			buttonWrite(5, "Lick");
			buttonWrite(10,"Get Help");
			doListen = function():void{
				if (buttonChoice == 1) {
					textL("You reach into your bag and pull out a dose of Magical Sand of Dryness. Handing it to her, she nods and begins to rub it around her naked body. You watch as her cheeks turn redder, her nipples growing stiff and sticking out more obviously, droplets of milk spilling from their tips and onto the floor. The sand quickly does its work, on the other hand, and the milk quickly dries up.\r\rHowever, the mess between her legs only seems to have amplified, drooling from her crotch down to her knees and then some. Her hands continue to move about herself, her eyes closing and her breath turning into quiet \"mews\". Both hands find their way down between her legs and she starts masturbating right before your eyes. She doesn't seem to mind your presence, your previous encounter reminding her how to take care of herself, especially as her body begins to quiver.\r\rYou manage to duck in just in time and catch her as her legs buckle out from under her. She breathes heavily over her shoulder, a purring echoing through her body, and she melts against your body. \"Th-thank yew...\"");
					doNext();
					doListen = function():void{
						textL("Her body goes limp within your arms, a little exhausted from her sudden excitement. You opt to lift her up into your bed, letting her take a nap as you curl up to cuddle beside her.\r\rA few hours later, she rustles awake, well rested with a big content smile on her face. Her nipples don't seem to be leaking at all anymore and the other leak down below has been sated for now. She kisses you on the cheek for saving her once again, then picks up her sundress and drops it over her body rather lazily, neglecting her half-naked rump and groin as the fabric gets caught on her hip. She wistfully wanders back off into the city, pleasantly pleased.");
						doSexP(15);
						loseManyItem(103, 1);
						hrs = 4;
						exhaustion -= 8;
						skipExhaustion = true;
						lilaRep = 4;
						doEnd();
					}
				}
				if (buttonChoice == 5)	{
					textL("You give her a kind smile and kneel before her. Her eyes go wide, her cheeks reddening further, as she watches your face close in on her chest, your mouth opening wide. She winces a little in fear as your moist tongue touches against her fur, but she quickly lets out a subdued gasp as you lick up across her sensitive nipple.\r\rHer milk tastes sweet on your lips as you lap it up from around her areole. It instantly stiffens under your tongue, protruding more from her small body. A fresh drop of milk beads at the tip, as though expecting you to lift it away. Instead, your whole mouth comes down upon it, Lila squirming as your lips latch down upon her nipple. She mewls cutely as you begin to suckle from her, the mess between her legs spilling out across your own. You gulp down as much of her milk as you can, the small amount rapidly running dry. Then you release, eliciting another gasp as her sensitive and wet nipple is touched by the cooler air outside of your mouth. Then another as your mouth tends to another nipple to release more. Then another, and another.\r\rBy the time you're down to the last couple of nipples, the small felin girl is curled around and hugging your head as she purrs, her hips bending up towards you to help you reach the bottom pair and her honey drizzling down your neck. You find it difficult to latch on as you lick around. Her hips begin to buck against you, trying to rub her little button against your body. Her thighs are drenched with her arousal, your efforts forcing her natural instincts to take over. So, you decide to go with the flow and drink from her other leaking place.");
					doNext();
					doListen = function():void{
						textL("Wrapping your arms around her body, just above her tight little tush, you can feel her long soft tail whisk back and forth, twitchin expectantly. You drag your chin down between her legs and a mewling moan escapes her lips as your mouth opens around her small mound, softly biting down on it. Her hands rake across your "+clothesTop()+", grasping to hold on as her legs thrust her faster against your face. Sufficiently coated in her feminine slickness, just a slight lick from your tongue around her little button sends her over the edge.\r\rHer body seizes against your head. A flood of her fluid spills across the floor with an audible splash. All the while a meek whimper echoes about her throat, desparate to not turn into a loud cry of joy.\r\rShe quickly goes limp, relying on you for support. You slowly push her backwards, lifting her up onto your bed. She looks as though she's about to dose off, her tail wistfully brushing from side to side, but her hand dances across her nipples in thought before she looks up to you.\r\r\"D-Do you like my flavow? Would... Would you like me to keep making more?\"");
						aff(4, Math.floor(percent()/20 + 4), -1);
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6)	{
								textL("You nod your head, brushing a finger across one of her still-full breasts and licking off the droplets that leak out to grab onto your skin.\r\r\"Well...\", she smiles, her intense blush fading as she averts her eyes sweetly, \"I like yew tasting me too... So I will keep making milk fow yew. I don't care if Mommy or the othew kids find out.\" She lifts her head just enough to kiss you on the cheek.\r\rThen she nods back against the soft bedding and drifts off to sleep. You cuddle up next to her naked body and do the same, sleeping for a few hours until she recuperates and she awakens. You help her put on her sundress and let her know that she's welcome with you any time.");
								doSexP(30);
								hrs = 6;
								exhaustion = 0;
								skipExhaustion = true;
								lilaRep = 5;
								doEnd();
							}
							else {
								textL("You shake your head, telling her that it's probably best that she not continue lactating. Not that you thought her flavor was bad, but that there might be troubles with her mother and friends.\r\rShe smiles and nods back. \"Okay, if yew say so. I don't have to worwy about Mommy then. Thank you for helping me so much, though.\" She leans up to kiss you on the forehead. \"I'll say hewwo if I see you again.\"\r\rFighting her tiredness, she lazily gets up from the bed and puts on the sundress. Though slime still drips down between her legs and leaving a trail behind her, much of it webbed up against her tail, she slowly walks back out into the city and waves goodbye."); 
								doSexP(15);
								hrs = 2;
								lilaRep = 4;
								doEnd();
							}
						}
					}
				}
				if (buttonChoice == 10)	{
					textL("You pat her on her head and tell her she should go confront her mother about that kind of problem.\r\r\"Okay...\" Her shoulders drop in reluctance.\r\rShe takes your hand and begins to walk you out the doorway, but then pauses two steps out as she realizes she bare-naked still, with milk and heat dripping from her body. Face as bright as ever, she dashes back in and tosses on her sundress and rushes back out to you. As she leads you to her home, you take a moment to tug down the backside of her dress after walking for a while and realizing her bare bum had been exposed through the hasty dressing.\r\rAs you begin to approach her home, the girl's mother spots you through the doorway as you walk beside her moist daughte and jumps to greet you. \"Oh, hello! Ummm... Might you be the one she's been going on about, something about 'help'?\", she eyes you suspiciously.\r\rYou stammer to get the words out, not exactly sure how to explain it.\r\rA grin spreads across her face as she lets out a chuckle. \"Hehe, don't worry. Lila has seemed much happier than when she first went into heat, and the way she talks about you being so nice to her lets me know you took good care of her. Although, umm... What's wrong now?\" She looks down to Lila, who hangs her head in shame and tries to hide the blotches that decorate her dress.");
					doNext();
					doListen = function():void{
						viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
						viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
						buttonWrite(5, "Drink it");
						buttonWrite(7, "No thanks");
						textL("\"Ohh, so that's what happened?\" Lila's mother blushes as you explain the situation to her. \"I guess she saw me down a Cat's Meow every now and then when she wanted some motherly milk and thought that it helped me be more of an adult, a parent... Well-\" She bends down to her daughter's height, rubbing the girl between the ears and trying to cheer her up. \"It's okay sweetie, as long as you didn't hurt yourself. Milk isn't bad for you, you know that. Though it might be a little...\" She giggles. \"silly for someone your age. Do you want to stop it, honey?\"\r\rLila looks around, trying to think of what to say. \"Ummm... What would I do with it?\"\r\rHer mother smirks again. \"Silly...\"\r\r She takes her daughter's hand and leads her inside, motioning for you to wait a few minutes. You hear odd gasping and mewling coming from within, and not the pained or frightened kind either. It doesn't take long before they both come back, Lila rubbing her front with a blush on her face and her mother carrying a teacup in her hand.\r\rLila's mother offers you the teacup, wiping some white from her upper lip. \"Would you like some? It's fresh~\"\r\rLila looks up at you, curious as to what you will do.");
						doListen = function():void{
							if (buttonChoice == 5) {
								textL("You accept the cup, noticing it's warm in your hand. Halfway filled with milk, it does indeed seem quite fresh. Lifting it to your lips, the taste is sweet and light on your tongue. You sip it all the way down, going faster and faster until it's completely empty. With a smile, you lick your white mustache and thank them for the drink.\r\rLila's eyes light up as you seem quite pleased with something she made, her tail flicking happily behind her. \"No Mommy, I don't wanna stop it. I wanna keep making milk.\"\r\rHer mother lets out another chuckle. \"Alright honey. But just remember, it's up to you to take care of it. I don't want to hear you moan and groan about how your boobs hurt when you haven't milked them or anything.\"\r\r\"I won't!\" The girl is quite excited, nearly hopping up and down as her eyes dart bashfully up at you and the cup you hold. However, her legs quickly cross as she feels some moisture between her thighs, the blotch at her groin growing.\r\r\"Umm... Excuse me...\" She dashes off into the hut.\r\rOnce more, her mother laughs. \"I'm sorry she ran off on you like that, I'm sure she'll be a while. She seems to have learned a new trick to deal with her heat and tends to use it often, it seems. I wonder who could have possibly taught her how...\" Her eyes roll towards you.\r\rAfter a few moments of making you squirm beneath her glare, she sighs with a smile. \"Ahh well. She's becoming her own woman. At least she's not as young as I was.\" She averts her eyes with embarrassment. Then she places a hand on your arm and strokes it. \"You're welcome here whenever Lila wants you and as long as you take good care of her.\" She winks and then says her goodbyes, trying to make you leave before some loud mewls echo from deeper inside...");
								hrs = 3;
								lilaRep = 5;

								doHP(5);
								doSexP(25);
								doEnd();
							}
							else {
								textL("You shake your head, not really wanting the offered beverage.\r\r\"Hehe, it's alright, it's not for everyone.\" The mother then downs it herself, licking up the resulting mustache.\r\rHowever, Lila watches as you reject her milk and her expression turns somewhat serious. \"Mmm... I don't wanna make milk, Mommy. We can stop it.\"\r\rHer mother pats her on the head again. \"Alright honey, just try to not play with it so much and you'll stop making milk; I'll help you.\" Then she turns to you. \"Thanks for taking care of my daughter... again. I won't pretend to know how she has taken up certain... 'habits' to help her when her heat gets bad, but she seems much better for it. I hope you'll continue to take good care of her in the future and never harm her.\" She gives you a wink.\r\rEager to get dry again, Lila give you a quick hug and disappears into the hut. Her mother chuckles once more and says her goodbyes, giving you a few coins for you assistance.");
								doCoin(20);
								hrs = 2;
								lilaRep = 4;
								doSexP(5);
								doEnd();
							}
						}
					}
				}
			}
		}
		else if (lilaRep == 2){
			textL("You come across the small felin girl you had met before as you walk through the city. She walks up with a smile to say hello and thanks you again, though she shifts awkwardly as she stands, a small blotch forming on her dress at her groin as she recalls how you helped her...\r\rWith some slight embarrassment in her tone, she speaks \"Uhh... Umm... D-Do yew mind helping me like you did before? I-It seems to have come back...\"\r\rHer feet rub against each other as she looks up at you with an adorable expression. Obviously whatever you did before was only a temporary solution, for some reason. Not that it's a problem though, as she seems to enjoy your help.");
			viewButtonOutline(1,0,0,0,1,0,0,0,0,1,0,0);
			viewButtonText(0,0,0,0,1,0,0,0,0,1,0,0);
			if (checkItem(103))	{
				buttonWrite(1,"Dry Sand")
				Choice1.visible = true;
			}
			buttonWrite(5,"Fondle Her");
			buttonWrite(10,"Get Help");
			doListen = function():void{
				if (buttonChoice == 1){
					textL("You reach into your bag and pull out a dose of Magical Sand of Dryness. You give it to her and she seems to know what to do. Before you can turn around she immediately lifts her dress.\r\rHer little fuzzy nether-lips are pink and swollen, with webs of her feminine arousal splayed throughout her small thighs. The lowest pair of her six nipples are also visible, glowing slightly red as she has probably been rubbing them too much lately. Blushing heavily, she takes the sand in her small hand and brings it down to her crotch. With a mewl she touches herself, her knees knocking together as she shudders. Small gasps escape her lips as she rubs it in, her hand slipping over her sensitive button again and again, more than is needed by the sand. The slickness of her young pussy slowly dries up, but that doesn't prevent her from collapsing to her knees as she shudders.\r\rAfter a few awkward moments, her eyes snap open, her cheeks even redder than before, as she jumps to her feet. Wobbling a little, she brushes her dress down, her tail hanging languidly while the tip swishes from side to side, contently. She presses her dress to her crotch with a hand and smiles.\r\r\"It's not wet anymore!\" She cheers happily.");
					doNext();
					doListen = function():void{
						textL("Whether it was because of the sand or the relaxation in her lust, she seems to be dripping no longer. She lunges forward and wraps her arms around your waist, hugging into your groin.\r\r\"Thank yew so much!\"\r\rShe lets go and fumbles with one of her pockets.\r\r\"Here, you can have my milk Mommy gave me. I alweady had enough today.\"\r\rWith a smile and another hug, she gives you a bottle of milk before running off to join her friends in some tease-less fun.");
						stats(0,1,0,0);						
						doSexP(15);
						loseManyItem(103, 1);
						itemAdd(500);
						hrs = 1;
						doEnd();
					}
				}
				if (buttonChoice == 5){
					textL("You offer to masturbate her to dismiss her heat, though you mention it might be a bit... intimate. But, already accustomed to your presence, she smiles with a nod. Taking her hand, you lead her to your private hut high in the trees where you have been sleeping.\r\rSitting beside her on your bed, she pulls up her dress in front of you before you can turn away. Her little fuzzy nether-lips are pink and swollen, with webs of her feminine arousal splayed throughout her small lap. Blushing heavily, she turns to you and mewls,\r\r\"B-Be gentle, pwease.\"\r\rNodding, you carefully caress up the girl's thigh. She clenches her eyes shut at first as your hand approaches her sensitive area. Her tiny nether-lips are so soft and delicate on your fingertips, like flower petals. Flower petals completely drenched in dew.\r\rShe lets out a short gasp as you focus upon her little button. Her small hips squirm on the bed, her thighs quaking uncontrollably. All the while, her eyes still shut.\r\rWithin just a few moments of gently fondling the girl, her body seizes and she lets out stuttered mewls. Your hand is swamped in a flood of her feminine honey, drenching her dress and the side of the bed. She falls towards you, gasping for breath as she grasps at your "+clothesTop()+".");
					doNext();
					doListen = function():void{
						textL("A few minutes later, she sits upright, a bit woozy. As her wits return to her, she looks down at your hand and how it glistens with her moisture. \r\r\"I'm sowwy... B-But thank you, it was really nice!\" She jumps up from the bed, letting her dress fall. \"Here, Mommy gave this to me to help me grow up into a big girl.\"\r\rShe pulls a vial from her dress and hands it to you, then gives you a big hug before darting out of the hut, her dress still hiked up around her waist and stuck there from all the moisture, leaving her nethers free for all to see.");
						doSexP(10);
						itemAdd(114);					
						hrs = 3;
						doEnd();
					}
				}
				if (buttonChoice == 10){
					textL("You smile gently, telling her that you'll help her tell her Mommy. She nods with a blush, taking your hand and leading you back to her hut, leaving a slick trail behind her the whole way. Her tail twitches sporadically as she whimpers along the way, her thighs rubbing tightly together. As you approach, her mother spots you through the doorway and comes out to greet you.\r\r\"Hello, may I ask what is going on?\"\r\rShe eyes you with her daughter, especially noticing the moist river in her daughter's dress. Taking some time, you explain the situation. With a nod and a tinge of redness in her own cheeks, she speaks,\r\r\"Thank you for bringing her back to me. I'm so sorry to have involved you like this! I should have noticed when she was so quick to get out of the hut this morning... If you don't mind waiting outside, I'll be sure to repay you for your kindness; once I take care of my daughter.\"");
					doNext();
					doListen = function():void{
						textL("Nodding, you wait outside the doorway as the felin woman takes her daughter's other hand and the two disappear into the hut.\r\rYou hear them talking within, though it's too faint to make out. But, several minutes later, it's hard to miss the high-pitched mewling, followed by loud moans that echo back out. A few minutes more, and some shuffling can be heard as the mother returns to the doorway.\r\r\"Thank you once more. Please, take these coins as a small repayment for being so gentle with her. If she comes to you for help again, I'll gladly pay you more for assisting!\"\r\rShe hands you a bunch of coins. She then blushes heavily as a strand of a clear slick fluid splashes down into her cleavage, having missed wiping it from the fur on her chin. She nods in thanks again before ducking inside, trying to hide the wet fur...");
						doCoin(Math.floor(percent()/4)+3);
						doSexP(5);
						hrs = 3;
						doEnd();
					}
				}
			}
		}
		//Lila Diaper
		else if (lilaRep == 20)	{
			textL("You hear a few soft steps from behind you as you hear Lila's voice \"Hewwo again~ I umm... Couwd use yewr help...\"\r\rTurning around, ");
			if (lilaWetness == 1) {	textLP("she doesn't seem to be too perturbed. There's no noticeable discomfort from her and she seems otherwise cheery in her sundress. You wouldn't even think she was wearing a diaper if you didn't know better.\r\r\"Umm, I'm just a wittle wet down thewe...");	}
			else if (lilaWetness <= 3) { textLP("she seems to be doing alright. There's some slight slurps from underneath her sundress as she squirms around in the crinkly padding, a bit moist.\r\r\"It's not much... but it buiwds up and gets slimy...");	}
			else if (lilaWetness <= 5) { textLP(" you can tell she's got a bit of a mess down there from the crinkly slurps as her hips twist about. Her squirming from the slimy buildup downstairs makes her diaper more obvious as it pushes out against her sundress.\r\r\"It feels so squishy down thewe...");		}
			else if (lilaWetness <= 8) { textLP(" her diaper is outlined by her sundress. A bit bigger than the one you got her, she must have needed to upgrade to keep up with her flowing honey. It seems otherwise intact though, but the slurping is fairly obvious as she squirms around, shaking her rump trying to get comfortable in her slimy mess.\r\r\"I'm pwetty wet down thewe... It feews like a lot.");	}
			else if (lilaWetness <= 12) { textLP(" her diaper is outlined by her sundress and small moist blotches adhere the dress to the poofy thing, almost making it visible. Her flowing honey has gotten so bad that it is seeping beyond her diaper, which is already larger than the one you got her, and the wetness only grows worse as her slurping squirms let more of the stuff escape around her thighs.\r\r\"It's ovewflowing. Soon people will start noticing..."); 	}
			else if (lilaWetness <= 18) { textLP(" her diaper is fairly obvious, giving her an enlarged rump and crotch through her sundress. She stands slightly bow-legged as the padding fills the gap between her thighs. The thing is quite a bit larger than what you originally got her, and it's obvious as to why. Despite her attempts to not give herself away, the slurping between her legs can catch anybody's ear as she walks by, not too mention the occasional drizzling of her honey around her rump when she sits down. But, it still manages to make her look more dry than if she weren't wearing it; her sundress would have been drenched from the waist down otherwise.\r\r\"The diapew is getting a bit full and people are beginning to notice..."); 	}
			else if (lilaWetness <= 25) { textLP(" she squirms and waddles as she tries to hide the diaper, only making things worse with the loud lewd slurping noises and crinkling between her thighs. Lines of moisture drool down the inside of her sundress, falling from the hem in steady drizzles that mark the path behind her. The large puffy undergarment is pretty much impossible to conceal at this point, but she still tries. Otherwise, if she weren't wearing it, she'd likely cause an accident from her slick syrup flowing everywhere.\r\r\"Umm... The diapew is getting heavy... I'm afwaid it will fall down or break open and show evewybody...");	}
			else { textLP(" you can hear the splattering of her fluids as they seep out around the diaper and fall to the wooden floor, marking her slick path whereever she goes. Each movement of her hips result in loud blatent crinkling and lewd slurping, but it doesn't expose her secret. Rather, the large poofiness around her crotch and rump, pushing out her sundress to the point that a bit of the underside of the undergarment is visible with the dripping waterfall of honey around it, gives her secret away much more obviously. At this point, the diaper isn't to hide her overflowing nature, but rather to hinder it as she waddles around town bow-legged while swinging her rump to and fro.\r\r\"Umm... the diapew is getting weally heavy, I almost can't walk with it...");   }
			textLP(" Could yew take cawe of it?\"");
			viewButtonOutline(1,0,1,0,0,0,0,0,1,0,0,1);
			viewButtonText(0,0,0,0,0,0,0,0,1,0,0,1);
			if (checkItem(103))	{
				buttonWrite(1,"Dry Sand")
				Choice1.visible = true;;
			}
			if (checkItem(213))	{
				buttonWrite(3,"Wet Cloth");
				Choice3.visible = true;
			}
			buttonWrite(9, "Lick");
			buttonWrite(12, "Not Now");
			doListen = function():void{
				textL("You lead her back to your place and plop her onto your bed. She lays back so you can have easy access");
				if (lilaWetness > 5) { textLP(", her crotch propped up in the air by the excessive padding"); }
				if (lilaWetness > 25) { textLP(" to the point that her legs are mostly dangling from the puffy thing"); }
				if (lilaWetness > 18) { textLP(" and a good deal of honey presses out the sides from her relatively light weight, soaking into your sheets");	}
				textLP(". She blushes a little as you pull up her dress, exposing her lowest pair of nipples, but she's mostly used to it by now. Yet she simply can't resist twitching as your hands brush over her hips, releasing her from the elastic waistband and pulling the diaper off to expose her sensitive reddened and swollen hot cunny to the air. ");
				if (lilaWetness == 1) {	textLP("There's not terribly much of a mess to speak of, merely just a couple drops of dew on her lips, hardly any from the diaper. Despite her persistant arousal, this is a rather small amount to deal with, but you humor her anyways.");	}
				else if (lilaWetness <= 3) { textLP("There's not all that much, just a few strands stretching from her tender lips to the barely moist diaper below, not enough to be terribly worried about but enough to be noticeable when you've got it sealed against your crotch.");	}
				else if (lilaWetness <= 5) { textLP("Small webs and long strands stretch from her tender lips to the moist diaper below, with a little more already flowing out as you stare at her. You can see why she needed you; you can squish the padding between your fingers and see the fluids pool within the padding.");		}
				else if (lilaWetness <= 8) { textLP("The larger padding seems to have been necessary as webs of slick honey stretch from her tender lips, pooling at the creases in the diaper and plenty more soaked throughout. And as you stare at her, more stuff flows and collects with the rest, threatening to dribble out over the edge.");	}
				else if (lilaWetness <= 12) { textLP("This larger padding doesn't seem to be able to keep up with her flow as webs of her honey stretch through her thighs and down to the end of the diaper, with plenty smeared through the fur on her lower belly from the containment. A few large gobs are already making their way out of her supple hole, making it wink at you slightly as more they flow, her arousal increasing as you stare at her. The stuff pools out onto the padding, pushing more aside until some of it drizzles out over the edges and onto your bed."); 	}
				else if (lilaWetness <= 18) { textLP("Her fur from her belly down to her thighs are completely drenched in her slick honey with plenty more pooling up around her tight little rump. Small rivers of her arousal flow down from the crevices of her tender lips, some from being freed by the restricted garment and some freshly flowing with her persistant arousal. Despite the even larger size of the diaper, the whole thing is completely soaked with plenty more pooling on top, easily keeping her moisture quite close and constantly slurping with each step..."); }
				else if (lilaWetness <= 25) { textLP("Plenty of her fluid flows out over the edges of the much larger diaper as you unlatch it, slickening her legs even further and flowing down off your bed. Webs of the stuff stretch between her thighs all the way down to her knees, with plenty more reaching up to her lower belly and down around her tight little rump to her lower back. Her sensitive hole expands and contracts with her breath, a steady stream of her arousal flowing out and pooling the large padding to add to the rest. There's so much here that she could probably wash herself with it...");	}
				else { textLP("Her fluid pours out over the edges of the huge diaper as you unlatch it, coating your "+legDesc(2)+" until you're nearly as drenched as she is. The undergament is so large and puffy that you have to bend it over the edge of your bed, allowing it to direct most of the flow in rivers down to your floor. Webs and strands stretch everywhere about her midsection - between her knees, along her thighs, around her hips and across the cheeks of her tight little rump. Some reaches up her back as she lays there and gets in her hair, let alone the stuff she flicks with her tail. Some even pools within her bellybutton in front as it settles from being released by the restricting padding. The sensitive hole before you gapes open, expanding slightly more with each breath she takes, a steady current of her honey slurping as it flows out in thick slow bouts. It just continuously adds to the mess that pools in the enormous diaper...");   }
				
				if (buttonChoice == 1){
					textLP("\r\rWith the dry sand, you hope it will soak up some of her mess. You ");
					if (lilaWetness == 1) { textLP("powder her nethers with the stuff and the few drops therein quickly vanish. There's plenty of excess sand, however, and her thighs twitch as you try to brush it out without irritating her. Yet, as soon as you do, her lips are already starting to shine again with faint dew. No matter how much sand you use, this girl will never get perfectly dry, especially with her heated labia..."); }
					else if (lilaWetness <= 8) { textLP("powder her nethers with the stuff and a good portion of the mess vanishes. She twitches and mewls as you rub the sand into her labia, but calms down as the sand becomes wet and more pleasant with your massaging. The sand isn't enough to make her perfectly dry, but her excess moisture is gone and the diaper isn't as damp.");	}
					else if (lilaWetness <= 18)	{ textLP("powder her nethers and tight little bum with the stuff, the sand growing wet and slick in her mess. You rub it through her labia, her hips twitching and bucking as the grains tease her greatly, and you're also take care to massage it about her lower belly and the cheeks of her rump. You brush it off onto the diaper and use it to help wring out the padding a bit, sloughing it all to the floor. The sand doesn't make her anywhere near what one might consider 'dry', but there's much less of her mess than before at least."); }
					else { textLP("push the stuff into her mess, the sand growing went and slick as it clumps in your hand. You do your best to rub it across her belly and around her tight little rump, and especially knead it through her supple labia until she's bucking and writhing in your grasp. However, she's flowing so much that you quickly lose most of the sand to the rivers that descend from her diaper and you're left squeezing and wringing out the padding manually in hopes of lightening her load. The sand might not have soaked up a significant amount of her mess, but considering how much honey there is it did a relatively good job of cleaning things up a little. At least she doesn't have to worry about the diaper slipping off from its own weight...");	}
					textLP(" With a quick flip and some snug latching, the diaper is back on nice and tight, less slurpy than before. You help slide her off the bed and onto her feet.\r\rShe crinkles it loudly as she adjusts it the best she can, blushing a bit at the embarassment of it. \"Thank yew... It feels a bit better.\" Lila  gives you a hug.");
					if (lilaWetness > 18) { textLP(", the extra thick padding crinkling with a slurp as it presses into you"); }
					textLP(".");
					if (lilaWetness > 1) { 
						textLP(" She seems rather happy with the results, her tail swishing behind her joyfully as her moitness doesn't return as quickly.");
						lilaWetness--;
					}
					else { textLP(" Though the sand didn't do much, she's still quite satisfied and her tail dances behind her happily."); }
					textLP(" Then she feels safe to walk back outside, not as concerned about concealing the puffy padding beneath her sundress.");
					loseManyItem(103, 1);
					doLust(Math.floor(lib/6), 0);
					hrs = 3;
					doEnd();
				}
				if (buttonChoice == 3){
					textLP("\r\rWith a wet cloth, you hope it will be able to wipe her up more efficiently while remaining sensitive to her tender areas, considering it's similarly slimy as she. You ");
					if (lilaWetness <= 3) { textLP("touch it gently against her supple lips and dab the moisture from her. She mewls a little from the coolness of the cloth and twitches as it drags over her sex. In the end, you clean up her little bit of mess, but probably leave more behind from the cloth than was already there...");	}
					else if (lilaWetness <= 8) { textLP("slip it through her slit, gathering up as much as you can in one go before flicking it to the floor. The girl's back arches with the quick glide over her nethers, mewling with a shiver at the tingly sensation. Once she calms down, you continue to wipe her up, kneading her labia with the cloth between your fingers, cleaning her well before wiping more of the gunk from the diaper. She's still quite shiny down there, well oiled from the cloth, but the majority of the mess has been removed."); }
					else if (lilaWetness <= 18)	{ textLP("rub it across her belly, slipping down through her slit, and lifting her legs a little to palm the cheeks of her rump as you clean the backside. She gasps and writhes under your touch, causing more mess to flow from her sex and forcing you to make another round. The girl shivers with the soft touch of the cloth, bucking slightly as you knead her supple labia. It's pretty difficult to clean her up completely since she simply replenishes the supply, but you're able to get a good portion of the backed-up fluids free and you use the cloth to squeeze against the diaper and slough the pooling stuff out onto the floor, leaving her relatively more dry than before.");	}
					else { textLP("smear it over her belly, poking into her belly button and making her giggle before slipping it back around through her slit, turning her giggle into a gasp. You proceed around to her bottom, lifting her legs as you massage her tight little ass, cleaning out the slime from her backside the best you can. Wiping around her thighs, she's already twitching and bucking before you head back to her supple labia. You knead the delicate petals the best you can, but as the stuff continues to flow from her in such great amount that you mostly just make her well polished and replace the backed-up honey with a fresher batch. Then you press the cloth down into the large diaper, pushing with most of your weight and squeezing out a great deal of the soaked up slime. The stuff descends from the rim of the diaper like a waterfall, splattering across your floor and creating a large puddle below you. The girl is definitely not dry, but you at least cleaned out the crevices a bit and lightened her load significantly."); }
					textLP(" With a quick flip and some snug latching, the diaper is back on nice and tight, catching her before even more flows out... You help slide her off the bed and onto her feet.\r\rShe crinkles it loudly as she adjusts it the best she can, blushing a bit at the embarassment of it. \"Thank yew... It feels a bit better.\" Lila  gives you a hug.");
					if (lilaWetness > 18) { textLP(", the extra thick padding crinkling with a slurp as it presses into you,"); }
					textLP(" and takes her leave.");
					if (lilaWetness < 26) { 
						textLP("\r\rHowever, just a few steps out the door, you see her pause as her hands press against the poofy padding through her sundress, elliting more crinkly sounds. She blushes as she feels the wetness returning with even more force than before, her tail drooping around the padding in hopes of holding it back a little. The cloth you used might have had the opposite effect than intended... Unless you intended that, you evil person.");
						lilaWetness++;
					}
					else { textLP(" This time, however, she doesn't stop or notice an increased moistness after using the cloth. Considering how much she's flowing, the cloth probably doesn't make a difference anymore."); }
					loseManyItem(213, 1);
					doLust(Math.floor(lib/5), 0);
					hrs = 3;
					doEnd();
				}
				if (buttonChoice == 9){
					textLP("\r\rHowever, you can't stare forever, you've got a duty you have to uphold. Which you're not too hesitant about...\r\rYou lean in, hugging your arms around her legs");
					if (breastSize > 4) { 
						textLP(", pressing your "+boobDesc()+" chest into the padding");
						if (lilaWetness > 4) { textLP(", your "+clothesTop()+" becoming thoroughly soaked");	}
						textLP(",");
					}
					textLP(" and reach your tongue out");
					if (lilaWetness > 8) { textLP(" through the flowing honey");	}
					else if (lilaWetness > 4) { textLP(" through the webs of honey"); }
					textLP(" to touch upon her tender pussy. You dig in, feasting upon her soft flesh and lapping up all that you can, reaching into each crack and crevice, digging deep into her hole");
					if (lilaWetness > 25) { textLP(" and drowning yourself in her fresh syrup");	}
					else if (lilaWetness > 8) { textLP(" and gulping down her fresh syrup");	}
					textLP(". Lila writhes and bucks with the intense sensation");
					if (lilaWetness > 25) { textLP(", splattering her stuff around while her hips rock upon the grand poofiness"); }
					else if (lilaWetness > 5) { textLP(", slurping about in her mess while her hips bounce up and down on the thick padding");}
					textLP(", mewling in restrained bliss. Her flow picks up slightly, giving you even more to taste until your face is thoroughly covered, with one last blast as her back arches and her tail flicks about beneath her");
					if (lilaWetness > 12) { textLP(", slinging more honey about");	}
					textLP(".\r\rWith the girl gasping and calming down, you quickly finish her up before you make things even worse. ");
					if (lilaWetness <= 8) { textLP("Making her lips as dry from her own slickness as you can, you then wipe off a good deal of what's in the diaper onto your floor.");	}
					else if (lilaWetness <= 18) { textLP("Licking out most of the gobs hidden about her lips and thighs, you then give the diaper a good squeeze to wring out the stuff onto the floor.");  }
					else { textLP("Sucking out most of the gobs from her belly and tush and licking the larger wads from her lips and thighs the best you can, you then press down onto the diaper to make more run out onto the floor, lightening the load a good deal."); }
					textLP(" With a quick flip and some snug latching, the diaper is back on nice and tight, doing a little better than it did before, thanks to some of her flow being sated... for now. You help slide her off the bed and onto her feet.\r\rShe crinkles it loudly as she adjusts it the best she can, blushing a bit at the embarassment of it. \"Thank yew... That was...\" Lila trails off with a shy mewl. \"Thank you...\"\r\rThe girl gives you a hug");
					if (lilaWetness > 18) { textLP(", the extra thick padding crinkling with a slurp as it presses into you,"); }
					textLP(" and takes her leave.");
					if (lilaWetness > 12) { 
						textLP(" Yet, just a few steps out the door, you see her pause as her hands press against the poofy padding through her sundress, elliting more crinkly sounds as she feels the slickness already spreading well within... Her tail droops and she shuffles on, likely to call upon you again in the future. On the other hand, as you clean up the mess from your face, you can't help but notice that your own loins are growing rather moist, more than usual after that encounter...");
						cockMoistMod += 6;
						vagMoistMod += 6;
						minLust += 5;
						lilaWetStatus = 72;
					}
					hrs = 4;
					doLust(Math.floor(lib/4), 0);
					aff(4, Math.floor(percent()/20 + lilaWetness/2), -3);
					doEnd();
				}
				if (buttonChoice == 12){
					textL("You can't really do much to help her right now, but maybe next time.\r\r\"Oh, okay. I'll see yew later!\" She proceeds to creep away, cautious of her undergarment beneath.");
					hrs = 1;
					doEnd();
				}
			}
		}
		else if ((moistCalc(1) > 7 && cockTotal > 0) || (moistCalc(2) > 7 && vagTotal > 0)){
			bc();
			textL("A little felin girl slowly approaches you, an awkward kink in her step. The cat-like ears atop her head flick about anxiously as she coils her tail over and over in her nervous hands. She seems to be looking side to side for others, but her eyes keep glancing across you. Eventually, she comes right up to you and with a squeak in her voice and a slight lisp, she asks,\r\r\"Umm... E-Excuse me. B-But can yew help me?\"\r\rShe stares at the wet blotch in your "+clothesBottom()+" and then moves her tail aside to reveal her own dress. From her groin all the way down to the ground runs a clear path of moistness, rather obvious now that she's revealed it. She speaks again, meekly and cutely,\r\r\"Th-The others make fun of me because I'm so wet... They say I wee'd myself, but-but...\" The fur on her cheeks blush red. \"It is my first heat and I-I was too embarrassed to tell Mommy... C-Can yew help me?\"\r\rShe looks once more to your own wetness issue, hoping you know better how to handle it.");
			if (lilaRep == 1){ textLP("\r\rYou've seen this girl before, yet she doesn't seem to recall your face nor what you might have done in the past. You probably didn't leave a strong enough impression or the memory got lost in her stress from last time.");	}
			textLP("\r\r\rWhat do you do?");
			viewButtonOutline(1,0,1,0,1,1,1,0,0,1,0,0);
			viewButtonText(0,0,1,0,1,1,1,0,0,1,0,0);
			if (checkItem(103))	{
				buttonWrite(1,"Dry Sand");
				Choice1.visible = true;
			}
			buttonWrite(3, "Diaper");
			buttonWrite(5,"Masturbate");
			buttonWrite(6,"Lick");
			buttonWrite(7,"Sex");
			buttonWrite(10,"Get Help");
			doListen = function():void{
				if (buttonChoice == 1){
					textL("You reach into your bag and pull out a dose of Magical Sand of Dryness. You give it to the poor girl and explain how to use it. She nods and before you can turn around she immediately lifts her dress.\r\rHer little fuzzy nether-lips are pink and swollen, with webs of her feminine arousal splayed throughout her small thighs. The lowest pair of her six nipples are also visible, glowing slightly red as she has probably been rubbing them too much lately. Blushing heavily, she takes the sand in her small hand and brings it down to her crotch. With a mewl she touches herself, her knees knocking together as she shudders. Small gasps escape her lips as she rubs it in, her hand slipping over her sensitive button again and again, more than is needed by the sand. The slickness of her young pussy slowly dries up, but that doesn't prevent her from collapsing to her knees as she shudders.\r\rAfter a few awkward moments, her eyes snap open, her cheeks even redder than before, as she jumps to her feet. Wobbling a little, she brushes her dress down, her tail hanging languidly while the tip swishes from side to side, contently. She presses her dress to her crotch with a hand and smiles.\r\r\"It's not wet anymore!\" She cheers happily.");
					doNext();
					doListen = function():void{
						textL("Whether it was because of the sand or the relaxation in her lust, she seems to be dripping no longer. She lunges forward and wraps her arms around your waist, hugging into your own dampness.\r\r\"Thank yew so much!\"\r\rShe lets go and fumbles with one of her pockets.\r\r\"Pwease, have this. It's not much... But I was going to drink it later to show I was a big girl. And now I don't have to!\"\r\rWith a smile, she hands you a vial of Cat's Meow.");
						stats(0,1,0,0);
						lilaRep = 2;
						doSexP(25);
						loseManyItem(103, 1);
						itemAdd(105);
						hrs = 1;
						doEnd();
					}
				}
				if (buttonChoice == 3) {
					if (lilaWetness == 4) {
						textL("You mention that a diaper would probably be much better for her condition, since they're made specifically so that people can't see your wetness. She goes pale with embarassment at the thought, but has to admit that it's better than the alternative.\r\r\"...Alwight.\"\r\rYou take her hand and lead her back to the tailor, grabbing another poofy diaper and bringing it up to the counter for purchase.");
						if (coin < 40) { 
							textLP(" However, you don't seem to have enough coin on hand to pay for it.\r\rYou tell her that you'll have to get it another time and she sighs in relief. Yet, she rubs her thighs together in an attempt to wipe away some more of her slime before it catches onto her dress and her relief feels torn. Either way, she's rather quick to head off, not wanting to think about it all too much. ");
							hrs = 2;
							doEnd();
						}
						else{
							textLP(" You pay the 40 coins for the diaper and turn to take her hand once again. Not quite afraid as the first time, but still rather hesitant.\r\rYou lead her back up to your private room and sit her up on the bed. She mewls in defeat, closing her eyes with an intense blush and lies back as you pull up her sundress, exposing her dribbling nethers. Her lower lips are extra-pink and swollen, signs of her heat. You spread her legs wide and wipe up the mess with a towel, eliciting more mewls from her, before pulling her feet high and raising her bum so you can wedge the diaper underneath. You place her back down, spreading her legs once more to pull up the flap and then fasten its sides.\r\rLifting her back up to a stand and checking to make sure her tail comfortably fits over the waistband, she contemplates her state. As her dress falls back down, the outline of the thick undergarment is quite obvious, though her wetness is completely concealed.\r\r\"It weally does work...\" She pats her own rear, the crinkly sounds not as bad as she remembered. With a bit of adjustment, she actually manages to settle the diaper around her waist and between her thighs, and it's hardly noticeable beneath her dress anymore. She steps around, waddling slowly at first, but eventually picks up her pace and almost walks normally, save for a twitch in her tail whenever the thick padding rubs against it.\r\rShe looks down to herself, relatively surprised at how well it works after all, and then she looks back up to you. \"Do yew think I should always weaw one?\"");
							doCoin(-40);
							hrs = 3;
							buttonConfirm();
							doListen = function():void{
								if (buttonChoice == 6){
									textL("Considering how much of a wetness problem she has, you tell her that this is probably the best solution for her problem and continuing to wear the diaper will get her used to them until her problem should eventually subside.\r\r\"O-Okay...\" Her foot paws at the floor as her hands hold each other over her crotch, pressing in slightly to sense the plushness there. \"I can do that, thank yew. I hope yew will be awound, in case I might need mowe help. My name is Lila, I hope to see yew again!\"\r\rAnd with that she shuffles out the door, cautious with her first few steps outside to make sure nobody notices her padding before disappearing back into town.");
									lilaRep = 20;
								}
								else {
									textL("Mmm... You don't think she should always have to wear a diaper and this should just be temporary. She responds with a blush, suddenly embarassed again as she realizes how odd this must be. \"O-Okay...\"\r\rThe little girl proceeds to head back out, already considering how soon she will be abandoning the undergarment...");
								}
							
								doEnd();
							}
						}
					}
					else {
						textL("You mention that you should take her to the local tailor to get herself a more 'fitting' piece for her outfit that will help her stay dry. She nods and takes your hand, but as you go to the tailor, her face turns pale as she sees what you mean. You grab a diaper from a shelf, with the only variety available being the extra poofy kind, and bring it up to the counter for purchase.");
						if (coin < 40) { 
							textLP(" However, you don't seem to have enough coin on hand to pay for it.\r\rYou break to her the bad news, but for some reason she seems especially joyful. And she's rather quick to get away from you, seemingly in a hurry to do something else... ");
							hrs = 2;
							lilaRep = 1;
							doEnd();
						}
						else{
							textLP(" You pay the 40 coins for the diaper and turn to take her hand once again. Although, she seems rather afraid as you do...\r\rYou lead her back up to your private room and sit her up on the bed. She seems oddly silent, closing her eyes with an intense blush and trying to ignore the fact that you're laying her down and pulling up her sundress, exposing her dribbling nethers. Her lower lips are extra-pink and swollen, signs of her heat. You spread her legs wide and wipe up the mess with a towel, eliciting a small mewl from her, before pulling her feet high and raising her bum so you can wedge the diaper underneath. You place her back down, spreading her legs once more to pull up the flap and then fasten its sides.\r\rLifting her back up to a stand and checking to make sure her tail comfortably fits over the waistband, she doesn't seem particularly pleased. As her dress falls back down, the outline of the thick undergarment is quite obvious, though her wetness seems to have ended.\r\r\"Uhh... Umm... Th-Thank you..\"\r\rShe begins to head back out, waddling slowly. With each step she cringes at the crunch of the padding, her cheeks even redder than when you first met her. Her tail twitches in an annoyed sense and, somehow, you have a feeling she won't be wearing your gift for too long. Nor will she probably wish to remember this experience...");
							doCoin(-40);
							hrs = 3;
							lilaWetness = 4; 
							lilaRep = 1;
							
							doEnd();
						}
					}
				}
				if (buttonChoice == 5){
					bc();
					textL("You offer to help her learn how to take care of it herself, though you mention it might be a bit... intimate. Nervous and unsure, she meekly nods. Taking her hand, you lead her to your private hut high in the trees where you have been sleeping.\r\rSitting beside her on your bed, you tell her that she'll have to reach up to where it feels the hottest. Nodding, and without thinking, she pulls up her dress in front of you before you can turn away. Her little fuzzy nether-lips are pink and swollen, with webs of her feminine arousal splayed throughout her small lap. Blushing heavily, she turns to you and mewls,\r\r\"I-I'm scared... C-Can you show me?\"");
					viewButtonOutline(0,0,0,0,1,0,1,0,0,1,0,0);
					viewButtonText(0,0,0,0,0,0,1,0,0,1,0,0);
					if (gender != 0) { 
						buttonWrite(5,"On yourself");
						Choice5.visible = true;
					}
					buttonWrite(7,"On her");
					buttonWrite(10,"Don't");
					doListen = function():void{
						if (buttonChoice == 5){
							textL("Pulling "+pullUD(2)+" your "+clothesBottom()+", you give her a good view of your ");
							if (cockTotal > 0) { 
								textLP(cockDesc()+" appendage"+plural(1)+". She shrieks at the sight of such an odd thing, closing her eyes and running out the door, her wet dress sticking to her belly while her nethers are clear for all to see.\r\rFortunately, little girls showing off their nethers is somewhat common in Siz'Calit and nobody seems to pay any mind.");
								doLust(3, 0);
								lilaRep = 1;
								hrs = 2;
								doEnd();
							}
							else if (vulvaSize > 4) { 
								textLP(vulvaDesc()+" female sex. It's so mature and large, so much stranger than her own, that the girl shuts her eyes and covers them with her hands.\r\r\"I'm sorry miss lady, I-I don't think I'm weady for this\"\r\rStill covering her eyes, she jumps off the bed and heads out the door of the hut, her moist skirt stuck to her belly and her nethers clear for everyone to see.");
								doLust(3, 0);
								lilaRep = 1;
								hrs = 2;
								doEnd();
							}
							else {
								textLP(vulvaDesc()+" female sex. Not much different than herself, she stares intently at the moist webs that mirrors her own lap. Taking your fingers, you rub up through your cleft"+plural(2)+" focusing on the "+clitDesc()+" button therein.\r\rDoing the same, the little girl lets out a gasp as she touches herself, her thighs twitching upon the bed. You smile at her, placing a hand on her head between her ears and continue to fondle yourself.\r\rAgain, she does the same, although soon her eyes close and her small hand moves faster and faster. She leans into your body, allowing you to wrap your arm around her while the other busies itself at your groin. Rapidly, you begin to gasp, more aroused than you thought you were, and she echoes in turn.\r\rWithin moments, you both cry out in unison, collapsing onto the bed in an orgasmic fit, your combined honey dripping down the side.");
								doNext();
								doListen = function():void{
									textL("The little felin girl snuggles into your body, hugging you close as she dozes off, a leg hanging over your own as her bare sex presses against your thigh. Not wanting to move, you do the same, falling asleep beside her.");
									doNext();
									doListen = function():void{
										textL("Some hours later, she rustles awake within your arms, rousing you as well. She nuzzles into your "+boobDesc()+" chest, purring softly. A few sweet moments pass and she mews, slipping a hand between her legs.\r\r\"Thank yew so much! It woked!\" She grins happily. Then she blushes, \"And thank yew for teaching me... I'll neva forget it!\"\r\rKissing you on the cheek, she pushes something into your belly before hopping off the bed and running out of the hut, her tail swishing high behind her ...And her butt in plain view as she forgot to string the perky tail through its hole, leaving it to pull the dress up from underneath.");
										doLust(-Math.floor(sen/4), 0, 2);
										exhaustion = 0;
										skipExhaustion = true;
										hrs = 6;
										stats(0,4,0,2);
										lilaRep = 3;
										itemAdd(200);
										aff(4, Math.floor(percent()/20 + 4), -1);					
										doSexP(45);
										doEnd();
									}
								}
							}
						}
						if (buttonChoice == 7){
							textL("Nodding, you carefully caress up the girl's thigh. She clenches her eyes shut at first as your hand approaches her sensitive area. Her tiny nether-lips are so soft and delicate on your fingertips, like flower petals. Flower petals completely drenched in dew.\r\rShe lets out a short gasp as you focus upon her little button. Her small hips squirm on the bed, her thighs quaking uncontrollably. All the while, her eyes still shut.\r\rWithin just a few moments of gently fondling the girl, her body seizes and she lets out stuttered mewls. Your hand is swamped in a flood of her feminine honey, drenching her dress and the side of the bed. She falls towards you, gasping for breath as she grasps at your "+clothesTop()+".");
							doNext();
							doListen = function():void{
								textL("A few minutes later, she sits upright, a bit woozy. As her wits return to her, she looks down at your hand and how it glistens with her moisture. Aghast, she hops off the bed.\r\r\"I'm so sowwy! Please, forgive me! Thanks for trying to help, please, take this!\"\r\rShe pulls a vial from her dress and hands it to you before darting out of the hut, her dress still hiked up around her waist and stuck there from all the moisture, leaving her nethers free for all to see.\r\r\rYou have obtained a Cat's Meow!");
								lilaRep = 2;
								doSexP(30);
								itemAdd(105);					
								hrs = 3;
								doEnd();
							}
						}
						if (buttonChoice == 10) {
							textL("Deciding it best to not get any more involved than you already are, you pat her on the head between her ears. You tell her this is something her Mommy should teach her and that it's nothing to be ashamed of. You pat your own moistness as proof and dab a bit of it on her little button nose.\r\rCheered up a little, she smiles and gives you a hug.\r\r\"Thank yew. I'll try!\"\r\rShe pushes her dress back down and runs out the door, leaving you feeling slightly warm and fuzzy inside.");
							stats(0,3,0,0);
							lilaRep = 1;
							hrs = 2;
							doEnd();
						}
					}
				}
				if (buttonChoice == 6){
					bc();
					textL("You offer to help lick the mess from her, if she's alright with going to the private hut where you're staying. As licking is quite common among Felin's, she nods her head in agreement and takes your hand in hers. The two of you head up to your hut in the trees.\r\rYou help her up onto the bed, her legs dangling off to the side. You kneel down before her, gently petting her knees as you wait for her to be comfortable enough. She closes her eyes and nods, pulling up her wet dress. Her cheeks flush with an instense blush as you inspect her tiny lap, completely filled with slick webs, her tender nether-lips pink and puffing out from her fur. You pull her legs open so your head can fit in between, a soft mewl escaping her lips. You lean forward, licking the stuff up from her thighs...\r\r\rJust clean up the stuff or lick her virgin sex more intimately?");
					viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
					viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
					buttonWrite(5,"Clean");
					buttonWrite(7,"Intimate");
					doListen = function():void{
						if (buttonChoice == 5) {
							textL("Carefully, you slurp the stuff up from her fur. Slowly going up her thighs, her hips twitch, her tail flailing wildly behind her. Her eyes clench as you come closer to her naughty bits, her hands clenching the bedsheets with anxiety.\r\rNot wanting to go too far, you gently lap at her swollen nether-lips, the soft, delicate folds like flower petals. Flower petals completely drenched in dew. Quickly and cautiously, you take care of what you can before she lets out a soft moan.\r\rEyes still clenched shut, you nudge her and tell her you're finished. Her eyes blink open and she looks down at herself. She looks a bit happier, noticing she's relatively dry, but a shiver shoots through her small body and she clenches her thighs.\r\rIn an instant, she flips her dress down and hops from the bed, running out of the hut, calling back, \"Th-Thank you!\"\r\rAs she darts through the doorway, you hear a splash. A large gob of feminine honey marks the floor, just before the exit, trailing along her path. You wipe the massive amount of slick fluids from your own face, feeling a bit tingly yourself, and go on your way.");
							lilaRep = 1;
							doLust(Math.floor(lib/4), 0);
							aff(4, Math.floor(percent()/20 + 4), -1);
							hrs = 3;
							doEnd();
						}
						if (buttonChoice == 7){
							textL("Carefully, you slurp the stuff up from her fur. Slowly going up her thighs, her hips twitch, her tail flailing wildly behind her. Her eyes clench as you come closer to her naughty bits, her hands clenching the bedsheets with anxiety.\r\rAs you reach her swollen nether-lips, your tongue licks across the soft, delicate folds. Like petite flower petals, your mouth nibbles gently on the dew-drenched bits, making her hips jerk upon the bed. You slurp up more stuff as it gushes from her virgin sex, swamping your face from nose to chin in the slick sweetness. Your tongue roams up through the supple slit, until it lands at the little button in the front. Your maw engulfs that corner of her dainty vulva, devouring her sensitive portions with intense sucking. In mere seconds, her whole body quivers, her spine seizing and falling backwards onto the bed. Her legs wrap around your head and weakly push you into her cunt as a flood of her feminine honey splashes out around you, covering nearly all your face and spilling down your "+boobDesc()+" chest.\r\rMoments, later, she lets go, purring softly as she falls asleep. You wipe your face off, cleaning up some of the mess, before curling up beside her, surprisingly tired. As you drift off, she rolls towards you and snuggles against your body, her leg crossing over yours and her sex pushing into your thigh..."); 
							doNext();
							doListen = function():void{
								textL("Some hours later, she rustles awake within your arms, rousing you as well. She nuzzles into your "+boobDesc()+" chest, purring softly. A few sweet moments pass and she mews, slipping a hand between her legs.\r\r\"Thank yew so much! It woked!\" She grins happily. Then she blushes, \"And thank yew for cleaning me so well, I really liked it... I'll neva forget it!\"\r\rKissing you on the cheek, she pushes something into your belly before hopping off the bed and running out of the hut, her tail swishing high behind her ...And her butt in plain view as she forgot to string the perky tail through its hole, leaving it to pull the dress up from underneath.");
								stats(0,0,2,2);
								doLust(Math.floor(lib/4), 0);
								itemAdd(200);
								lilaRep = 3;
								aff(4, Math.floor(percent()/20 + 8), -2);
								doSexP(45);
								exhaustion = 0;
								skipExhaustion = true;
								hrs = 3;
								doEnd();
							}
						}
					}
				}
				if (buttonChoice == 7){
					textL("Her eyes go wide as you mention sex.\r\r\"Eww! That's what my Mommy and my Daddies do! I don't wanna do that!!\"\r\rShe then runs off in the other direction, trailing slime behind her as it still dribbles from her dress.\r\rIt's probably best you move along.");
					stats(0,-2,0,0);
					lilaRep = 1;
					hrs = 1;		
					doEnd();
				}
				if (buttonChoice == 10){
					textL("You smile gently, telling her that you'll help her tell her Mommy. She nods with a blush, taking your hand and leading you back to her hut, leaving a slick trail behind her the whole way. Her tail twitches sporadically as she whimpers along the way, her thighs rubbing tightly together. As you approach, her mother spots you through the doorway and comes out to greet you.\r\r\"Hello, may I ask what is going on?\"\r\rShe eyes you with her daughter, especially noticing the moist river in her daughter's dress. Taking some time, you explain the situation. With a nod and a tinge of redness in her own cheeks, she speaks,\r\r\"Thank you for bringing her back to me. I'm so sorry to have involved you like this! I should have noticed when she was so quick to get out of the hut this morning... If you don't mind waiting outside, I'll be sure to repay you for your kindness; once I take care of my daughter.\"");
					doNext();
					doListen = function():void{
						textL("Nodding, you wait outside the doorway as the felin woman takes her daughter's other hand and the two disappear into the hut.\r\rYou hear them talking within, though it's too faint to make out. But, several minutes later, it's hard to miss the high-pitched mewling, followed by loud moans that echo back out. A few minutes more, and some shuffling can be heard as the mother returns to the doorway.\r\r\"Thank you once more. Please, take these coins as a small repayment for being so gentle with her. Oh, and take this,\" she reaches into a pocket and pulls out a vial. \"Apparently she got this from a friend of the family, saying it was for me. It seems she thought it would help her seem like a grown up in front of her friends... Thankfully, we caught her before she could use it and you can have it in turn.\"\r\rShe hands you the vial of Cat's Meow as well 20 coins. She then blushes heavily as a strand of a clear slick fluid splashes down into her cleavage, having missed wiping it from the fur on her chin. She nods in thanks again before ducking inside, trying to hide the wet fur...");
						doCoin(20);
						itemAdd(105);
						lilaRep = 2;
						doSexP(15);
						hrs = 3;
						doEnd();
					}
				}
			}
		}
		else { 
			textL("As you wander about the tree-borne city of Siz'Calit, you see a young felin girl scurry by. Her cheeks are red while her ears flick upon her head, her tail swishing sporadically behind. Her hands seem to be trying to cover the lower front of her small sundress. She glances up at you, her eyes staring at your groin for a moment. She blushes more and increases her pace, hurrying past you. Turning to watch her, you see the backside of her dress has a blotched river of moisture running down from her bum. However, judging by the dollops of clear slick fluid that glisten a path behind her, it doesn't seem like she had peed herself...\r\rShrugging, you continue on.");
			hrs = 1;
			doEnd();
		}

	}

	//Cat attack
	else if (chance == 2) {
		if (percent() < 25 && breastSize > 14) {
			textL("As you walk across the wooden bridges, you have a feeling like you're... being stalked? A strange sensation of focus upon you "+boobDesc()+" breasts... Whatever. You shake off the feeling and-\r\rEverything goes dark as you're pounced by something hot and your face covered by a bag.");
			doNext();
			doListen = function():void{
				textL("Everything is a blur as you're carried off without any sense of direction. All you can hear the whole way is collective purring and the smacking of lips, though exactly which kind of lips is hard to tell. Eventually, your arms are tied behind your back and the bag slips off, revealing your new surroundings.\r\rIt seems to just be some strange felin's hut, nothing special. However, the three felins before you are much more notable. Three females, barely clothed in torn tops and loincloths, gasping and panting as they rub their thighs desparately and fluff their fur to try and cool off. The holes in their simple shirts match their own claws, having been scratched at in attempts to get cooler. None of them seem terribly concious of their actions, mewling and purring and mrowling at each other, so drowned in their own heat that they probably are running on instinct. Though how that instinct involves you...\r\rBecomes quite clear quite quickly. Two of the felins begin to paw at your chest, pulling "+pullUD(1)+" your "+clothesTop()+" to expose your "+boobDesc()+" mounds, their fingers twirling about your "+nipDesc()+" nipples to stiffen them up. The third felin picks up a handful of vials filled with white liquid, stuff that can easily be brought from the store. She saunters over to you, her tail waving perversely, like she was about to climax from just thinking about what she's going to do. Then, her free hand reaches up to your mouth and pries it open, leaning back your head to make sure you swallow.");
				if (percent() < (str - 40)) {
					textLP(" However, the restraints they used on you aren't exactly tough and you manage to pull yourself free.\r\rSo entranced by their own heat, the felins hardly put up much of a fight, falling to the ground with the slightest push. They were so worked up over their plans with you that the falls send them over the edge. Their hands immediately slip under their loincloths and begins to ellicit plenty of wet and lewd sounds as they masturbate, neglecting you completely.\r\rNot really having been harmed, you take the vials that they were going to feed to you as reparations for their assault and go on your way, leaving them to their orgasmic fits.");
					itemAdd(105);
					itemAdd(105);
					itemAdd(105);
					hrs = 2;
					doEnd();
				}
				else {
					textLP(" She pours the contents of all the vials down your gullet at once, rubbing your throat in a more-erotic-than-necessary fashion to ensure you swallow.\r\rWithin moment after gulping down the sweet fluid, you feel your "+boobDesc()+" breasts begin to grow warm and heavy. Pressure builds up behind your "+nipDesc()+" nipples until you let out a gasp - white drops pool around the tips and splash onto the awaiting tongues of the other two felins.");
					if (lactation > 0) { textLP(" Your leaking picks up as your previous disposition for such lewdness kicks in, allowing the felins to lap at the resulting stream that descends.");	}
					textLP(" Then they latch on, suckling with all their might, trying to really get the flow of milk going.");
					if (boobTotal == 2)	{ textLP(" The third girl eventually pushes one aside so she can get some of the delectable treat. Then that girl pushes the other girl and again and again they rotate through your nipples, mewling and purring so loudly that it feels like the whole room is vibrating."); }
					else { textLP(" The third girl then ducks beneath the other two, bumping through their own breasts to get to one of your freely-flowing ones. She suckles just like the rest, mewling and purring so loudly that it feels like almost the whole room is vibrating."); }
					textLP("\r\rTheir thirst isn't the only thing that needs satiating though. The more they drink, the more their hands dive into their loincloths, until their purrs become moans and are nearly drowned by the pervese wet schlicking sounds. But that isn't enough. With the milk soothing their stomach cravings, the pleasant tasty warmth is only making their lower cravings more severe.\r\rEventually, one pops off a nipple with one last big suck. The milk sprays freely, showering the front of the felin. The other two catch on, doing the same and letting the liquid splash over their many tits. They rub it in, mrowling in pleasure and digging deeper beneath their loincloths. Their legs soon give in, making them fall to the floor and lift their loincloths in your direction, exposing their swollen reddened pussies to you and your rain of milk. With each splash over their lower lips, the catty girls twitch and shudder, coming to small orgasms from the feeling and thought alone. Then as the white fluids beads into drops that runs down through their labia, slipping into their nooks and crevices and holes, their hands help the stuff along by rubbing it all over their cunts.\r\rThey climax again and again, delighting in the milky goodness, even after your squirting dies down to steady trickles. When that happens, the girls simply curl around each other, licking the milk from each others slits, jerking and rubbing and groping and coming more and more. The room grows so hot that even your bindings begin to sweat and... you slip free.\r\rHolding back the milk with an arm, you put back on your "+clothesTop()+", where it then begins to blotch. With the felins still having an orgy on your floor, you grab one of the leftover vials and make your escape, though a little milkier than before...");
					lactation += 50;
					if (submissiveFetish > 1) { doLust(10,0); }
					itemAdd(105);
					hrs = 3;
					doEnd();
				}
			}
		}
		else {
			textL("A group of felins pass by on one of the wide wooden bridges, some males with some females. They sway a little with each step, their tails oddly swinging the wrong way. Within their hands they have some bottles of milk, though they seem a bit disappointed with how little is left.");
			if ((milkEngorgement > 300 && milkEngorgementLevel > 0) || (udderEngorgement > 300 && udderEngorgementLevel > 0 && udders == true)) {
				textLP(" However, just a few steps behind you, they come to a stop. Their button noses sniff at the air, their whiskers twitching curiously. Slowly, they turn towards you, their eyes focusing on your milky breasts...\r\rCatty grins grow upon their faces. Although they may be out of their tasty beverages that makes them a little woozy with joy, they seemed to have found another nice source of their favorite drink~\r\rBefore you know it, you're laying on the ground, your "+clothesTop()+" pulled "+pullUD(1)+", your front exposed and leaking. Your sight is quickly covered as one of the females in a skirt sits on your face, her slightly moist panties squishing your nose between her nether-lips. Her tail swishes across your head again and again as you feel your body ravaged, your "+nipDesc()+"nipples");
				if (udders == true)	{ textLP(" and "+teatDesc()+" teats");	}
				textLP(" being tugged and suckled from until milk is spraying from your body.");
				var getMilk:int = Math.max(milkAmount(1), milkAmount(2));
				if (getMilk <= 1000)	{ 
					textLP("\r\rTheir many thirsty mouths quickly drain you dry. Disappointed once more with the lack of delicious motherly goodness, they stumble away from you, leaving you used and half-naked...\r\rAt least they didn't bite.");
					hrs = 2;
					doEnd();
				}
				else if (getMilk > 1000 && getMilk <= 4000)	{
					textLP("\r\rTheir many thirsty mouths suck and suck, guzzling down your delicious milk. It doesn't take long before they drain you dry, but once they do, they let out little burps of satisfaction. Thoroughly pleased with their bartender, they drop a bunch of coins on you for the drink before stumbling off again, their tails drooping much more lazily than before.");
					doCoin(Math.floor(percent()/3.3));
					hrs = 2;
					doEnd();
				}
				else if (getMilk > 4000) {
					textLP("\r\rTheir many thirsty mouths suck and suck, guzzling down your delicious milk. However, you produce so much that they simply can't seem to drain you. Yet that doesn't keep them from trying... The more and more they suck from you, the more lazy their efforts become. Even the tail on your head slows in pace, until it comes to a stop...\r\rStill pinned by the many bodies, you can hear them purr as they have fallen asleep. You take the opportunity to wiggle yourself free, nearly yanking down the girl's panties in the process. Once out, they merely curl up on the bridge, cuddling against each other. Another girl seems to have her skimpy shirt pulled up to her second pair of breasts, while a male has a prickly penis pulled from his pants. Whatever they were planning to do, it obviously didn't get too far.\r\rAs payment for their feast, you grab a couple of their small pouches. It's the least you could do to make up for their rude ambush.");
					itemAdd(204);
					itemAdd(204);
					hrs = 3;
					doEnd();
				}
			}
			else{ 
				textLP(" They ignore you for the mostpart, busy talking and laughing amongst themselves.");
				hrs = 1;
				doEnd();
			}
		}
	}

	//Hyper Mistress
	else if (chance == 3) {
		textL("\"E-Excuse me...\" A meek voice calls from behind you.\r\rAs you turn, you spot a felin male. Somewhat on the short side, he seems rather effeminate with some hips that are wider than his shoulders and his nipples poking through his fur, stiff and erect as though he were cold, despite the warm weather of the jungle. He also seems to be wearing nothing but a hardly modest loincloth that exposes half of each cheek of his round rear. And he seems to be quite embarrassed to be walking around as such.\r\r\"Umm... Y-You seem as though you might be the kind of person that would explore outside of the city. I-If you don't mind, my mistress would like a word with you.\"\r\r\rDo you accept?");
		if (mistressRep > 0) { textL("\"H-Hello!\" You hear a familiar voice from behind you.\r\rYou turn to see Fidoris, still in his skimpy outfit and embarrassed look, though his fur is slightly matted with some sort of slick liquid. It would hardly take two guesses to figure out where he has been.\r\r\"M-Mistress would like to invite you over again, if that's alright.\"\r\rWill you go?");	}
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6) {
				textL("The felin femme-boy leads you to a rather large tree-borne hut. The closer he gets, the quicker his pace seems to be, as his tail begins to swish in anticipation.\r\rOpening the veil to the home, it seems the 'mistress' is rather well off. Lots of large, plush furniture, plenty of ornate, expensive trinkets and decorations, and overall elegant lifestyle. However, despite all of that, the femme-boy leads you straight to the bedroom.\r\rHe stops just inside the doorway. Past him, you can see an extavagent bed, perpendicular from your perspective, sitting in the middle of the room. On top of it lays the mistress. She's a gorgeous felin lady, with a youthful face and silky-smooth fur that has a healthy shine. You can see her erotically knead the top two pairs of her six breasts through her gown while she lays on her back, oblivious to your presence. Past her second pair, however, her body is hidden behind a mostly opaque curtain. Although, you can still see the silhouette of what might be her form. Her belly seems to be much larger than her figure would suggest, as if she were somewhat pregnant. And her legs seems to be bent and drawn back, straddling a large, round object that is even larger than her belly, perhaps even her whole body.");
				if (mistressRep > 10) { textL("Fidoris leads you to the usual place. The mistress awaits upon her bed, her belly massive with vaginal flesh and pushing her many breasts towards her sides. So large that her gown cannot cover her lowest pair of breasts and stretching it across the next. The curtain that hides her giant pussy from the bedroom entrance is rather useless as you can see the thick lips protrude past the edge, her large clit standing erect above them. All of the growth thanks to your efforts.");	}
				doNext();
				doListen = function():void{
					if (mistressRep == 0) { textL("\"Mistress, I've found an explorer!\" The felin boy announces with a wag of his tail.\r\rThe woman turns to look at you. \"Ahh, good boy, Fidoris.\" She rolls onto her side, both her large belly and the thing between her legs shifting with her. She props herself up with an arm and smiles. \"Well, traveler. I have a proposition for you. Every now and then, I get certain... 'urges' for a particular kind of fruit. It is found within the jungle and looks very much like a... well, let's just say we call it a 'Pussy Fruit'. Due to the dangers in retrieving it, however, it is hard to obtain such a fruit safely. So, I will pay well for such a fruit, when I'm in the mood. And if I am, I will send my boy, Fidoris, out to retrieve you. I hope that sounds alright?\""); }
					if (mistressRep > 0) { textL("Fidoris speaks out \"Mistress, I have brought the traveler once again!\"\r\rThe woman rolls over, her belly and massive vulva rolling with her. \"Good boy! I hope you have brought along something nice for me?\" Her eyes light up.");	}
					viewButtonOutline(1,0,0,0,0,0,0,0,0,0,1,0);
					viewButtonText(0,0,0,0,0,0,0,0,0,0,1,0);
					buttonWrite(1, "Puss Fruit");
					if (checkItem(210))	{ Choice1.visible = true;	}
					if (mistressRep > 10) { 
						textLP(" Then her hands grope across her belly, squishing the aroused passage within. \"Mmm... You've been so good to me, though, so I'll let you in on another deal. If you can bring me three of the fruits at a time, I'll have Fidoris cook up my special concoction. Just between you and I, of course, for all the fun we've had~,\" she gives you a naughty wink. \"I'll also let you in on the recipe, but without dear Fidoris I'm afraid it might be less efficient for you.\""); 
						Choice3Outline.visible = true;
						if (knowPussJuice == false) { knowPussJuice = true;	}
					}
					buttonWrite(3, "3x"); 
					if (countItem(210) >= 3 && mistressRep > 10) { Choice3.visible = true; }
					buttonWrite(11, "Nothing");
					doListen = function():void{
						if (buttonChoice == 1) {
							loseManyItem(210,1);
							viewButtonOutline(1,0,1,0,0,0,0,0,1,0,1,0);
							viewButtonText(1,0,0,0,0,0,0,0,0,0,0,0);
							buttonWrite(1, "Fidoris");
							buttonWrite(3, "You");
							buttonWrite(9, "Both");
							buttonWrite(11,"Cock");
							if (tallness/12 < (mistressRep + 4)) { Choice3.visible = true; }
							if (tallness/12 < mistressRep/3) { Choice9.visible = true; }
							if (cockSize*cockSizeMod > (60 + mistressRep*4) && cockSize*cockSizeMod < eVagLimit(120 + mistressRep*8) && cockTotal > 0) { Choice11.visible = true; }
							textL("\"Great! Fidoris, bring our guest over here!\" She grins with excitement.");
							if (mistressRep == 0) { textL("\r\rThe femme-boy takes you by the hands and leads you towards the bed. As he takes you around the curtain to get closer to his mistress, your eyes grow wide as you see what had been hidden. First of all, the woman obviously had no underwear; her spread legs giving you a great view beneath her gown. However, it doesn't seem like she could have done otherwise, as the gown simply wasn't long enough to reach around her enormous nether region. The large round object whose shadow you had seen from the other side was actually her vulva!\r\rHer legs are spread simply due to the fact that the fat labia wouldn't allow for otherwise. It's more than half as tall as she is, with the slit gaping before you like a giant maw. If she were to stand, it'd be dreadfully close to dragging upon the floor with each step. The large inner-lips dangle from the outer in thick folds and her giant clitoris is nearly as big as her head, protruding from its huge flap of a hood. Feminine slime drools and drips down through the crevice, pooling around onto the bed and draining off into a bucket. You can see into her deep pussy, the emanating heat reaching you from several feet away. And it's quite easy to tell that she's not pregnant, but rather her belly is huge from all the vaginal flesh within."); }
							if (mistressRep > 0) { textL("\r\rThe femme-boy leads you back behind the curtain. Even though you've seen it before, the sight of her massive feminine genitalia is still awe-inspiring. Swelling and pulsing with her heartbeat, the heat warming the room. Fidoris is glad to be back in its presence, sighing in comfort. The slime continues to pool around the massive folds, perpetually keeping them well lubricated. And each time you come, she just seems even bigger and bigger than before...");	}
							textLP("\r\r\"Come on, over here now!\" She eagerly waves for the fruit.\r\rHanding it to Fidoris, he quickly presents it to his mistress. Like a child, she giggles with giddyness. She begins by licking up through the lewd crack in the fruit, squeezing it gently until its juices start to seep out. Once her tongue touches the sweet nectar, her mouth opens wide and bites into it, letting the juices spill out onto her face with ecstasy. She proceeds to devour it rapidly, cherishing every bite thoroughly.\r\rShe heaves a few loud sighs once the fruit is gone. Her hands dig into her gown, pushing into her gravid belly as she feels the fruit's effects begin to settle in. With a shiver and a moan, you watch as her cunt begins to shudder. Before your eyes, it swells even larger, her belly becoming more prominent.");
							if (cockTotal > 0) {
								if (cockSize*cockSizeMod >= eVagLimit(120 + mistressRep*8)) { textLP(" Yet, despite her tremendous size, your own "+cockDesc()+" appendage"+plural(1)+" still have no chance of fitting into that chasm of flesh."); }
								else if (cockSize*cockSizeMod <= (60 + mistressRep*4)) { textLP(" She has gotten so large that there's no way your "+cockDesc()+" thing"+plural(1)+" could hope to pleasure her."); }
							}
							textLP(" The fruit seems to be more potent than usual with this woman...\r\r\"Mmm!\" She mewls. \"Somebody fill me! Now!\"");
							doListen = function():void{
								if (buttonChoice == 1) {
									textL("You wait as Fidoris enthusiastically steps forward to help his mistress. His small hand reaches out to stroke the fur of her outer labia, petting upward until his hand reaches the grand clitoris. Slipping a hand beneath the hood, he rubs it until the woman quivers upon the bed, a spurt of her feminine honey leaping from her wide hole and drenching his legs. His other hand meets the first, flanking the sides of the massive button and holding it still while he leans in for a gentle kiss. Then, he opens his arms, embracing the whole of the vulva the best he could. The vulva hugs back, letting him sink in between the folds, smearing its drizzling goo throughout his fur. He descends more and more into the maw, until he decides to duck down to the primary attraction.\r\rWithout much trouble, his arms easily slip into her pussy. They help stretch her a little wider, allowing his head to slip in. From there, he's practically sucked inside, slowly going deeper and deeper. The only difficulty they come across is when his wide hips hit the entrance. He waggles his legs a bit, his loincloth flailing from his bum and flashing you his small package several times, but eventually makes it through, sliding the rest of the way.\r\rThe mistresses belly deforms and grows even larger as Fidoris fills it. All the while, she moans in pleasure, gasping lightly and groping her breasts. Once Fidoris eventually settles within her womb, her belly no longer moving as much, she lets out a long groan, her arms roaming about the taut fur. The gaping maw gasps as well, contracting again and again with orgasm, her juices flooding out until the bucket overflows and spills out onto the floor...\r\rStill high with climax, she doesn't want to seem rude \"H-Here. F-For your ~ungh~ efforts.\" She fumbles with a pile of coins on the desk beside her bed, having to shimmy a little with her extra weight.");
									textLP(" \"Thank you very much, I hope to do more business with you in the future~\"\r\rShe gives you the coins while the slime from the fruit drizzles from her hands onto yours. Then she lets you lead yourself out, her eyes closing shut to enjoy the warm body inside of her...");
									doCoin(30);
									hrs = 2;
									doSexP(3);
									mistressRep++;
									doEnd();
								}
								if (buttonChoice == 3) {
									textL("Offering to fill her yourself, Fidoris gives you a nod and guides you towards her. Your hands caress her supple folds at first, delighting in the softness and the warm moistness that quickly coats your fingers. You rub up around her swollen pussy, feeling the beat of her pulse so easily through her large flesh, even with the surrounding fur hardly muffling it. As your hands meet at the top, they wring the massive button, returning a gush of slick fluids about your "+legDesc(2)+" from her awaiting hole.\r\r\"Y-You may want to remove your clothes, or else they'll get pretty messy.\" Fidoris instructs, indicating how he wears nothing but a meager loincloth.\r\rYou nod and strip down. Compare to the mistress and her boy, it would be difficult to worry about modesty here. But, as the fresh air wafts cooly against your naked "+skinDesc()+", you find yourself drawn closer to the heat of the maw. You soon lean in towards it, sinking into its velvety flesh. The lips hug you, surrounding your body, and dribbling lubrication all about until you're slick and shiny. This action itself arouses you a little, your parts slipping past each other and throughout her cunt. Yet, as you feel a shudder from the mistress, you realize there's something else you have to do.\r\rDucking down, you easily find her open pussy. It's amazing how easily you can fit a hand, and then two, and then both your arms. You can feel her hungry womb begin to suck you in, the slick mess that covers the walls making it difficult to resist. Not that you would want to. Your head easily slips in next, spreading her wider and wider with your anatomy. It's an odd sensation at first. Very stuffy with all of the moisture and heat. However, it's also surprisingly relaxing and inviting, pulling you in further and further. Before you know it, your "+legDesc(10)+" snap"+legPlural(1)+" into her entrance and you crawl into her womb.\r\rIn complete darkness, you can't seem to tell where you are.");
									textLP(" Her belly seems to adjust for you, sucking you in and curling you around until you fit much more comfortably. So comfortably, in fact, that the warmth and moisture and complete peace make you drift off into a wonderful sleep...");
									doNext();
									doListen = function():void{
										textL("You eventually wake back up, though you don't know how long you've been asleep. All that you know is that you had some of the most restful sleep you've ever had. And as you begin to rustle around in the darkness, the soft walls shudder around you.\r\r\"Oh my, are you finally awake in there?\" The mistress pats her belly from the outside with a giggle, the sound echoing around in a low beat. \"Mmm... That was a lot of fun. I hope you slept well, I know I had a nice nap~ Well then, I suppose you'd like to be moving on. Just go out the way that feels most natural~!\"\r\rBefore you can respond, you can feel the walls press down around you. The suction that you felt before when entering now seems to be pulling the other way. You slip about inside her belly, quickly finding your way through her enormous passage. The next thing you know, you're body is being gently squeezed all around you, the slickness propelling you out into the cold air.\r\rFidoris catches you as you slip out of her cunt, well prepared with a thick towel to wrap you up in. Your teeth jitter at first, the coolness of the air against your wet skin chilling you to the bone. Drawn back towards the massive vulva, you hover nearby to bask in the heat while you dry yourself off and don your clothes.\r\r\"Take your time. You're not as used to this as Fidoris is\" She winks. \"And here, here's your payment for the fruit, with a little something extra for the fun.\"\r\rShe hands you some coins and lets you sit on her bed next to her for a bit while you readjust to the warmth of the jungle. It takes a bit of getting used to, but once you finally leave, you feel quite rejuvenated!");
										doCoin(40);
										doLust(Math.floor(lib/5), 0);
										hrs = 2+Math.floor(percent()/20);
										exhaustion = 0;
										skipExhaustion = true;
										doHP(50);
										aff(4, Math.floor(percent()/10), -1);
										doSexP(5);
										mistressRep++;
										doEnd();
									}
								}
								if (buttonChoice == 9) {
									textL("Realizing she's big enough to fit both you and Fidoris, you take Fidoris' hand and pull him over to the massive maw with you. Realizing it as well, Fidoris nods. The two of you grope about her velvety folds, rubbing her massive button as she bucks upon the bed from the concerted effort. It doesn't take much before spurts of feminine honey drench the both of you, coating the both of you in her slick lubricant.\r\r\"Don't forget to remove your clothes\" Fidoris mentions quickly, eager to get inside.\r\rYou strip down to nothing, letting the fluids smear about your naked "+skinDesc()+", until you're as slippery and shiny as the prospect before you. Fidoris motions for you to go first and you duck down to the gaping pussy. It's amazing how easily you can fit a hand, and then two, and then both your arms. You can feel her hungry womb begin to suck you in, the slick mess that covers the walls making it difficult to resist. Not that you would want to. Your head easily slips in next, spreading her wider and wider with your anatomy. It's an odd sensation at first. Very stuffy with all of the moisture and heat. However, it's also surprisingly relaxing and inviting, pulling you in further and further. Before you know it, your "+legDesc(10)+" snap"+legPlural(1)+" into her entrance and you crawl into her womb.\r\rIn complete darkness, you can't seem to tell where you are. Her belly seems to adjust for you, sucking you in and settling you within her womb.");
									
									if (vagLimit() > 100 && percent() < 50 && vagTotal > 0)	{
										textLP(" Moments later, you feel the walls around you shiver as Fidoris climbs through the entrance. However, you gasp as you feel his small hands blindly grope "+legWhere(1)+" your "+legDesc(2)+", eventually grabbing upon your own "+vulvaDesc()+" labia. Thinking you're just another set of folds within the Mistress' passage, he pulls you open, making you moan as he stretches you further and further. You can feel his head push itself into your pussy, followed by the exploring arms. Your belly expands as he pushes you out from within, making your "+legDesc(2)+" kick at the Mistress' interior and causing her to giggle from outside. The felin boy pulls himself into your womb, his legs brushing over the walls as they curl up to his chest. His hands rove about within, making you shudder from the sensation, as he tries to determine if he has reached the end of the journey. And he realizes you're not there...\r\r\"Ummm...\" You hear him muffled within yourself. He feels the walls more thoroughly, noticing how they aren't quite the same as he is used to. \"Oh dear... I do believe I've gone off course... Maybe I should have taken a left turn back there?\"\r\rShuffling about within, movement around your womb triggers a rather pleasant feeling. The warmth of the relatively large body inside of you, rubbing and grinding the sensitive walls, makes the walls begin to weep an aroused fluid. The slickness only makes Fidoris' efforts more slippery, preventing him from being able to leave.\r\rYet, the growing warmth within his confines and increased lubrication alert him to the fact that he is more than welcome there. Without much other choice, he settles in and gets comfortable. Quite comfortable... To the point where you feel something hard and pointy and slightly abrasive poke at your walls. The barbs of his cat-cock scrape along as he slowly begins to hump your womb, soft enough to not pain your womb, but hard enough to not make you burst out in laughter from an internal tickling. Instead, it falls right in the middle, causing your to writhe within the Mistress and buck at her walls");
										if (cockTotal > 0) {
											textLP(", gliding your own erection"+plural(1)+" across her supple flesh");
											cumAmount();
										}
										textLP(", which in turn makes her shudder around you as well.\r\rThe buildup of heat becomes immense, body inside body inside body, cooking you in slick arousal while you're nerves are stimulated beyond comprehension. It doesn't take too long before you're brought over the edge, crying out in ecstasy as your body quakes from head to toe");
										if (cockTotal > 0) { textLP(", your cock"+plural(1)+" exploding over the Mistress' womb,"); }
										textLP(" and you drench Fidoris in your fem-cum.\r\rYour intense climax reverberates through the other two, causing the Mistress to writhe upon her bed and Fidoris to spray his seed against your own womb. The hot spunk coats your inner walls, being smeared about by his fur and mixed with your juices. The high energy permeates all three of you, quickly exhausting your muscles and minds.\r\rYou all soon pass out blissfully in your cozy states...");
										doImpregnate(4);
										doLust(-Math.floor(sen/2), 2, 2);
										doNext();
										doListen = function():void{
											textL("Some time passes before you come to your senses, having slept rather soundly. You seem to be the first one awake as well, as you don't sense any movement from Fidoris inside and you hear a steady sleepy breathing of the Mistress outside. You take the moment to rub over your enlarged belly, the "+skinDesc()+" pulled tight from by full-grown body within. It excite you, making you quiver pleasantly, but also rouses the walls you disturb.\r\r\"Mmm... That was a gratifying slumber.\" The Mistress squirms about as she wakes, tremoring slightly as another small orgasm overtakes her from a naughty dream, grabbing onto her own belly that bulges even further than yours. \"Oh my~ I suppose I should be getting you out now before I get dehydrated.\"\r\rWith a chuckle from the Mistress, you feel the moist plush walls begin to press down around you. The suction that you felt before when entering now seems to be pulling the other way. You instinctively move your "+legDesc(2)+" and arms to help guide yourself out, feeling fresh air kiss your "+legDesc(10)+" and "+legDesc(2)+" and bum, and then your whole body as you slip out of the massive pussy with a slurp. A thick puddle and soft carpet breaking your fall, you move your limbs to regain coordination out in the open space. Webs of fluid slough from your appendages in large sheets, your "+skinDesc()+" completely coated. More spills about you as you begin to stand, but then you find yourself splashing into more as you crash back into the mountain of flesh you had just exited.\r\rLike you've had a couple beachballs stuff into you, your belly was made so suddenly more gigantic that you were left unbalanced. Though that quickly changes as the collision shakes awake the felin inside. Unable to withstand the sensation of him wriggle around again, you too begin to place pressure on the being you hold.\r\rYou "+legVerb(1)+" your "+legDesc(2)+" and lean into the Mistress' labia, pushing and pushing to give birth to the boy. While his movements are sporadic and flustered, they help propel him through your meaty corridor. The rapid and powerful stretching of your passage almost immediately brings you to yet another climax");
											if (cockTotal > 0) { textLP(", sending another bout of semen over the Mistress,"); }
											textLP(" and leaves you panting for air as the other body hits the floor with a large splash.\r\rFidoris fumbles about, trying to understand his surroundings after being so abruptly wakened and birthed. \"Fidoris, be a dear and help our guest clean up. Things may have gone a little... different, but that's still no reason to be rude.\"\r\r\"Y-Yes Mistress!\"\r\rThe Mistress chuckles as he scrambles to his feet, slinging your fluids about.\r\r\"I must admit deary, that was quite the enjoyable experience. I'll be sure Fidoris gives you something extra for the confusion and pleasure.\" She gives you a wink.\r\rIt doesn't take you long before you're cleaned up and clothed. Along with the coins for the fruit, Fidoris hands you a free batch of the Mistress' juice. You thank them both before heading on your way, stepping back out into the world feeling quite rejuvenated.");
											doCoin(30);
											doLust(-Math.floor(sen/3), 2, 2);
											hrs = 4+Math.floor(percent()/20);
											exhaustion = 0;
											skipExhaustion = true;
											doHP(50);
											aff(4, Math.floor(percent()/10), -1);
											itemAdd(221);
											doSexP(15);
											mistressRep++;
											doEnd();
										}
									}
									else {
										textLP(" Moments later, you feel the walls around you shiver and shudder as the space grows larger. Another body slips in beside you, as wet and slippery and hot as you are, and squeezes against you in a rather intimate fashion.\r\r\"Are you comfortable?\" He whispers. You can feel the vibrations of his voice throughout the stretched walls around you.\r\rYou nod, blushing within the darkness, squeezed so tightly against him.");
										textLP(" The two of you squirm again and again, trying to find a better position that won't leave you so close, but all the warm, slippery rubbing does is arouse you. And him as well, it seems, as you can feel his small prick poke at you through his loincloth. Slowly, the slipping progresses until ");
										if (gender == 1 || (gender == 3 && percent() <= 50) || gender == 0)	{ textLP("you find yourself turned away from Fidoris, your "+buttDesc()+" rump grinding his small prick between your cheeks. He lets out a whine of surprise as his loincloth slides away, leaving his pointy erection to feel your butt first-hand. His arms wrap around you in embrace, unable to prevent his cock from gliding into your moist ass."); 	}
										else if (gender == 2 || gender == 3) { 
											textLP("you find your "+legDesc(2)+" "+legVerb(2)+", straddling Fidoris' lap, your "+vulvaDesc()+" slit"+plural(2)+" wedging around his small prick. He lets out a whine of surprise as his loincloth slides away, leaving his pointy erection to feel your folds first-hand. His arms wrap around you in embrace, unable to prevent his cock from gliding into "+oneYour(2)+" wet cunt"+plural(2)+"."); 
											doImpregnate(4);
										}
										textLP("\r\rThe two of you quickly begin writhing against each other within the mistress' belly, Fidoris plunging his cat-cock into you again and again. The barbs around the tip of his tiny prick scrape against the walls of your flesh insides, but not nearly large enough to cause any pain. The scraping merely arouses you further, bringing you to orgasm much faster, despite his small size. His little cock begins to squirt a smoldering batch of cum into you, making your own hips buck back in turn with climax.");
										if (gender == 1 || gender == 3)	{ 
											textLP(" Your cock"+plural(1)+" begin"+plural(3)+" to launch your cum within the confined space, smearing about the mistress' womb and making you both sticky.");	
											cumAmount();
										}
										textLP(" Even the walls themselves begin to shake and quiver as you hear ecstatic moans from outside...\r\rHowever, you quickly find yourself setting back down as the constant warmth and comfort of your room calms you. With Fidoris still inside of you, the two of you drift off to sleep...");
										doNext();
										doListen = function():void{
											textL("You eventually wake back up, though you don't know how long you've been asleep. All that you know is that you had some of the most restful sleep you've ever had. And it seems that Fidoris' cock had eventually withdrawn back into its sheath, no longer penetrating you. As you begin to rustle around in the darkness, waking up the femme-boy beside you, the soft walls shudder around you.\r\r\"Oh my, are you two finally awake in there?\" The mistress pats her belly from the outside with a giggle, the sound echoing around in a low beat. \"Mmm... That was a lot of fun. I hope you two slept well, I know I had a nice nap~ The thought of you two having sex within me... Mmm~\" The womb shudders once more. \"Well then, I suppose you'd like to be moving on. Just go out the way that feels most natural~!\"\r\rBefore you can respond, you can feel the walls press down around you. The suction that you felt before when entering now seems to be pulling the other way. Fidoris' body moves past you, leaving you alone in her belly for a moment before you begin to slide out as well, quickly finding your way through her enormous passage. The next thing you know, you're body is being gently squeezed all around you, the slickness propelling you out into the cold air.\r\rFidoris catches you as you slip out of her cunt, well prepared with a thick towel to wrap you up in just as he already is. Your teeth jitter at first, the coolness of the air against your wet skin chilling you to the bone. Drawn back towards the massive vulva, you hover nearby to bask in the heat while you dry yourself off and don your clothes.\r\r\"I hope you had fun.\" She winks. \"Though I wonder if I'll be getting pregnant from all that...\" She giggles at the thought. \"And here, here's your payment for the fruit, with a little something extra for the fun.\"\r\rShe hands you some coins and lets you sit on her bed next to her for a bit while you readjust to the warmth of the jungle.");
											textLP(" It takes a bit of getting used to, but once you finally leave, you feel quite rejuvenated!");
											doCoin(45);
											doLust(-Math.floor(sen/2), 2, 2, 5);
											hrs = 2+Math.floor(percent()/20);
											exhaustion = 0;
											skipExhaustion = true;
											doHP(50);
											aff(4, Math.floor(percent()/10), -1);
											doSexP(10);
											mistressRep++;
											doEnd();
										}
									}
								}
								if (buttonChoice == 11) {
									textL("Amazed at how large her pussy is, the bulge in your "+clothesBottom()+" throbs in anticipation. You pull out "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+", thinking that she might actually be able to take your giant size. Fidoris and his mistress both blink at you for a moment, taking in what they see. Then, a giant, giddy grin grows upon her face.\r\r\"Yes!\" Her pussy squishes and squirts with a gush of feminine honey in her excitement.\r\rFidoris blushes as he steps towards you, gauging your massive erection. He wraps his arms around it, lifting it and helping you guide it into his mistress. The effort is a bit of a strain on his small build, relying mostly on the leverage from your body to kiss the tip of your cock against the soft flesh. From there, nature easily takes its course... if you consider the situation 'natural'.\r\rThe mistress lets out a long warbling moan as you step towards her, the velvelty folds sucking in your "+cockDesc()+" cock. Her belly begines to stretch, pulling out larger and longer to conform to your man-meat. Eventually, her belly begins to push past her chest, her arms wrapping around your cock from outside, hugging it close and grinding her many tits into it. And as you push her belly past her own head, she licks at her own fur, the sensation merely a light caress against your monster within. Eventually, you stand up against her vulva, pressing your body against her massive labia.\r\rYou both pause for a moment, relishing both the feeling of being completely engulfed/filled and the sensation of having a cock so large pushing a pussy so huge well past the mistress' own body. You squeeze her inner lips, the flesh hugging your body and oozing lubricant all about you."); 
									if (showBalls == true) { textLP(" Your "+ballDesc()+" balls rest upon her bed, the honey drizzling over them as they squish comfortably between her legs."); }
									textLP(" You bury your face against her giant clitoris, nuzzling it at first before kissing and biting it. Quite quickly, the mistress begins to writhe behind your attention, grabbing and kneading her breasts so much that her nipples poke out from her gown. Her belly flesh twists about your member, urging you to start pumping while you still can. And so you oblige.\r\rAlthough your "+hipDesc()+" hips can hardly pull back, relative to the size of your endowment, you both shudder immensely. The grand genitals and all their nerves rubbing so gently against each other, with so much slime that you begin to slip on the floor from what just happens to spill out, you can tell this will end quickly. So, with a fervor, you begin to pump in and out, faster and faster, while you gnaw at her clit. The two of you wince and whine, trying to hold back the tsunami-like wave of instense climax in hopes of just a few more seconds of this extreme intercourse!\r\rYet, it's difficult to beat nature...");
									doNext();
									doListen = function():void{
										textL("The mistress lets out a loud, deafening cry as her legs lock around your "+buttDesc()+" rear, strangling your bottom half as she quakes. Her body lunges up against your "+cockDesc()+" cock, her claws digging into her own distended belly, weighted down by her heavy cunt. Her feminine fluids gush out around you, drenching you in the warm juices. Her belly rumbles at the opposite end as you begin to ejaculate, your own body twitching against her soft vulva.");
										if (cumAmount() > 4000)	{ textLP(" You cum so much that a portion of her belly hangs from the tip of your member, absolutely bloated with spunk as though she were some giant condom, before the rest begins to flood its way back through her vaginal passage and joins the rest of the fem-cum in drowning you.");	}
										textLP(" You spill your seed with great force, your abdomen aching as it works to shoot it all through your length. Then you both collapse onto the bed with a huff...\r\rShe lays sprawled upon her bed, idly licking at the fur of her belly once more. She hugs and squeezes at the bulge as you begin to grow flaccid and deflate her form. Though her pussy may make for a nice pillow, you soon find yourself being pushed away as her vagina begins to grow flaccid itself, the internal blood shrinking the passage and pushing your cock back out. It doesn't take long before before she gives birth to your "+cockDesc()+" member, letting it flop onto the bed.\r\r\"Mmmmm~\" With a purr, her legs wrap around her pussy, kneading it in satisfaction. \"I don't think anybody can satisfy me like you just did... I might even get pregnant!\" She chuckles. \"Oh my, for service like that... I should really pay you more for bringing me the fruit.\"\r\rAs she winks, she motions Fidoris over. In addition to giving him some coin, she also hands him a vial to give to you.\r\r\"This vial contains some rather... concentrated juices from the kinds of fruit you bring me. I drink it myself, on occasion. But too much... well, you know.\" Her foot pats her plush pussy. \"You might be able to find a use for it on somebody else, to help you fit a bit better. I figure it might come in handy for you. If not, it should still fetch a decent price. Either way, thank you for a great time, love~\" She winks once more before returning her attention to coming down from her high.\r\rFidoris hands you the coins and vial and escorts you to the exit. Though, just as you're about to leave, you can hear the mistress call out \"Fidoris, sweetie, I think I'd like to feel full for a bit longer. Would you be a dear?\" To which Fidoris replies \"Yes Mistress!\"");
										doCoin(45);
										doLust(-Math.floor(sen/2), 2, 1);
										hrs = 4;
										itemAdd(221);
										doSexP(13);
										mistressRep++;
										doEnd();
									}
								}
							}
						}
						if (buttonChoice == 3) {
							textL("\"Hehe, very well. I suppose you like bigger girls~\" Purrs enticingly as her feet rub around the grand mound of her vulva. She nods to Fidoris to take the fruit from you. \"Fidoris will make it for you with what your brought. The process only takes a couple hours, so why don't we both enjoy your visit in the meantime and you help me massage myself. I've grown so large because of you that I can't reach myself anymore~\" Her feet reach out as far as they can, showing how they're unable to reach her more supple folds.\r\rWith a shrug, you step towards the swollen cunt, already shimmering with her slight arousal. The large inner lips hang like curtains down either side, flanking the gaping vagina that drools thick strands and sheets of feminine lubrication, pooling within itself or filling the bucket that's been placed beneath to catch the excess. The curtains pulse, swelling and contracting with her blood flow, almost as if the whole maw were slowly breathing. They meet at the top where the giant clitoris stands erect, protruding a couple feet from the rest of the mound and several inches thick.\r\rNot quite sure how to go about the task, you simply alternate between kneading the hanging labia with your arms and wringing the standing clit with your hands. All of the wondrous pussy surrounds you, soft and malleable, and drenching you in the honey. The mistress croons and writhes on the bed, her feet patting the outer labia as she slowly comes to orgasm. The climax isn't terribly powerful, but the amount of fluid that spills from her instantly fills the bucket beneath and splatters across the floor.\r\r\"Mmm~\", she sighs pleasantly, \"Would you be a dear and empty the bucket out for me? I'm not quite done... being drippy and I don't want to make too much of a mess for poor Fidoris. Just pour it out over the rest of me.\"");
							textLP("\r\rWith another shrug, you haul up the bucket and walk beside her. Stepping up onto the bed, you tip the bucket over, letting her honey spill across her large belly and breasts, her fur becoming slick and matted and her gown growing transparent, her upper nipples quickly becoming erect and viewable through the cloth. With her help, the two of you smear it about, massaging her pregnant-like belly and hefty breasts. There's so much of her to cover that you find yourself using your own body to smear the stuff across hers, making you just as slick and slimy. Her nipples drag across your belly as you do and her hand slips down to play with your groin...\r\rYou hear a splatter across the floor beyond the foot of the bed.\r\r\"Oh my, you should probably get back down there as well~\", she winks at you while she nods towards the bucket.");
							doNext();
							doListen = function():void{
								textL("Several times you wind up alternating between the two tasks. The only time you get a break is when she asks for some water, in which case it takes her nearly five minutes to down several liters. With all the fluid she loses otherwise, it's not terribly surprising. She manages to come again and again, whereas you're only teased constantly... Just as you're about to masturbate within her folds and out of her sight, Fidoris manages to return.\r\r\"The process is finished. Here is the batch you requested.\"\r\rYou move out from the mistress' slit, futily attempting to hide your arousal. Fidoris blushes as he spots your condition as well and how drenched you are in his mistress' honey. He thrusts a vial into your hand, trying to avert his eyes.\r\r\"U-Umm... Th-Thank you for doing my job with mistress while I was busy. I'm s-sure she's warmed up for a nice nap now.\"\r\rHe quickly nudges you towards the exit, as if in a hurry. It makes you begin to wonder what a 'nap' might actually entail? Either way, you've got what you asked for and then some...");
								doLust(Math.floor(lib/6), 0);	
								loseManyItem(210, 3);
								itemAdd(221);
								hrs = 3;
								doEnd();
							}
						}
						if (buttonChoice == 11) {
							if (mistressRep == 0) { textL("\"That is quite alright, you don't need any now, though it would have been nice. Here, take some coin as encouragement at least.\""); }
							if (mistressRep > 0) { textL("\"Aww, that's a shame. Well, here, have some more coin as encouragement to pick some more for me.\"");	}
							textLP("\r\rShe nods to the femme-boy who goes to a shelf and grabs some coins from a bag. He hands them to you and leads you out the front door, thanking you for obliging.");
							doCoin(5);
							hrs = 2;
							doEnd();
						}
					}
				}
			}
			else {
				textL("\"O-Okay. Thanks anyways!\"\r\rHe turns and skitters off in a hurry, his tail hanging low with his bashfulness. You shrug and continue on with your walk.");
				hrs = 1;
				doEnd();
			}
		}
	}
	
	else if (chance == 4){
		textL("You wander about the tree-borne city, enjoying the sights and sounds.\r\rFelins are quite the agile people, able to work so high up in the canopy. Some spend their time harvesting various fruits from the nearby trees, while some others hunt for birds or even head down to the jungle floor for other game. Others have varying other professions, but they're all mostly laid back. It's not uncommon to catch someone dozing off in the middle of the day, the warm atmosphere quickly sending them to sleep.\r\rThere's also a few places to socialize, often in the form of singing or milk drinking. Since they don't have their own cows, they rely on their more abundant source for milk: their women.\r\rBeing a woman in Siz'Calit seems to be quite profitable, with many of the more wealthy families being headed by females. And when they go into their heat, well... they're probably one of the greater powers to reckon with in this community.\r\rThe males seem to be rather happy nevertheless. At the very least, they don't have to worry about finding mates.\r\rOther than enjoying yourself, there's nothing else you find to do.");
		stats(0,1,0,0);
		hrs = 2;
		doEnd();
	}
}


//Lila Description
function lilaDesc():void{
	if (lilaMilk == 0) { textLP("\r\rHer small breasts leak only a few drops of milk as she stands there, but her nipples are quite erect and peek through her fur as she blushes at you staring at her."); }
	else if (lilaMilk <= 2) { textLP("\r\rThin trails of white milk travel through her fur from her many erect nipples, slowly dripping onto the floor as she stands there and waits for you, a slight blush crossing her cheeks as the air chills her wet areolas and makes her shiver."); }
	else if (lilaMilk <= 5) { textLP("\r\rHer nipples push out from her fur, drops almost continually forming around them and drizzling down her naked body. Shyly, she brings a hand up to squeeze one that's especially stiff and sensitive, making her cheeks red as a squirt of milk launches across the floor of your room." ); }
	else if (lilaMilk <= 8) { textLP("\r\rThick streams of white milk dribble down her body, her puffy nipples bulging from their retained milk. Her arms cross over a few of them in embarrassment at how obvious they are, but milk squirts out around them and runs down over her pussy, mixing with the fluids there, and pooling on the floor."); }
	else if (lilaMilk <= 12) { textLP("\r\rThough not completely engorged thanks to her 'sharing', her nipples are still quite puffy. A hand reaches up to massage one of the breasts as it feels a bit full to her and it spews several thin spurts in different directions from the slight touch, making her blush furiously."); }
	else if (lilaMilk <= 18) { textLP("\r\rDespite having just fed some of her friends, her breasts are still swollen, her nipples puffing out further than ever before. Stiff and long, she can't help but play with them with her fingers, milk spilling profusely down her hand and body, and making her moan before you even get to her. With her eager actions, her face grows red with embarrassment."); }
	else if (lilaMilk <= 19) { textLP("\r\rShe stands there, short and happy as her breasts squirt thin sprays of milk simply by moving a little. Her hands often pass over them, squeezing her thick stiff nipples and moaning as thick streams gush from them, spilling down her body. Rather used to them by now, she hardly blushes at all, and is quite eager for you to get back to her."); }
	if (lilaVulva == 0) { textLP(" Her dainty little vulva also dribbles onto her thighs, her pink lips panting with lubrication in excitement."); }
	else if (lilaVulva <= 2) { textLP(" She also twists her hips back and forth while she waits, still trying to figure out how to stand with her thick developed labia filling much the gap between her thighs, making slick webs spread back and forth between them.");   }
	else if (lilaVulva <= 5) { textLP(" Her nose seems somewhat red from a different kind of blush, a heat filling her face as her thighs tense and relax, squeezing the thick vulva between her legs again and again. You can see her clit peek out from its hood through the cleft, aroused and urging on the slimy coating about her thighs."); }
	else if (lilaVulva <= 8) { textLP(" She still holds onto her swollen vulva, with much of the flesh bulging out from between her fingers. Standing with her legs slightly spread so as to not squeeze it, she still manages to cause long strands of thick lubricant to spill from her fingers as she kneads the mass about, afraid to stop or it'll drop from body."); }
	else if (lilaVulva <= 12) { textLP(" She also stands with her legs spread, her thighs unable to touch due to the thick lips between them. Each outer labia is as big as her fist, with the inner labia dangling down and nearly red with arousal, drizzling thick strands of clear honey down to the floor without her even touching it. Which she puts a great deal of effort into doing, afraid that she won't stop rubbing the thick clit that sticks out slightly."); }
	else if (lilaVulva <= 18) { textLP(" And between her knees hangs her overgrown lips, making her stand slightly bow-legged. Her legs almost constantly twist about, using her knees to squish the flesh again and again since her hands can hardly hold it all if she tried. Her clitoris can hardly be called a button, stroked like a small penis as it pushes out from the massive folds. Her inner lips are so pink with arousal that they seem to be growing longer, due to the the amount of slickness flowing down them that creates the illusion and forms a puddle around her feet."); }
	else if (lilaVulva <= 19) { textLP(" And she hardly seems like's she's standing at all. With how much her legs bend around and squeeze the large squishy labia that fills the space between them, it seems like she's nearly sitting on her own pussy. However, it barely hovers over the floor, the inner labia dangling down and brushing across it when she presses down slightly to push her clit against the floor to please it a bit. If she curled up and actually wrapped her whole hand around the sensitive thing, there would have still been some more length to cover. Which only makes her original 'wetness' problem worse, the overall size of her genitals causing a flood about her feet and leaving them almost constantly slick and wet with a trail of more following her wherever she goes. However, thanks to her size, when she slips from her moisture she simply lets out an erotic mewl as she falls down onto her soft flesh.");  }
	if (lilaPreg <= 35 && lilaVulva >= 11){ textLP(" Her belly seems to be sporting some extra cushioning as well. Not exactly chubby, her excess vaginal flesh from all the growth causes it to protrude, her lower breasts pushing out even more."); }
	else if (lilaPreg <= 70 && lilaPreg > 35) { textLP(" Her hands have a tendancy to cup her growing belly as well, imagining how big she will get. Already protruding quite a bit, her belly button just beginning to stick out, she giggles a little to herself at the thoughts of what's to come."); }
	else if (lilaPreg <= 100 && lilaPreg > 70){ textLP("Yet, despite all of that, her focus mostly remains on her large belly. Nearly as large as herself if she were to curl up, the thing hangs forward to the point where she can't see her messy arousal below. Her hands often roam over the taut fur, taking her naked opportunity to caress it and pleasure in it, cradling it gently."); }
}