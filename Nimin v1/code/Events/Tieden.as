function doTieden():void{
	var chance:int = eventSelect("Tieden");
	if (chance == 1){
		textL("Wandering through the Tieden night, you see only a few small buildings are lit with lanterns – some night-time taverns entertaining their patrons, while other buildings and shops unoccupied and darkened. Beyond the few nocturnal venues, you assume the residents are home sleeping or potentially outside the city’s walls.\r\rHowever, stepping into a rather active, lantern and torch speckled area; you do believe you've come across the staple of Tieden. What struck you as such is a rather large structure, easily three times as wide as those flanking it, four times as long, and two stories high. Above the entrance, a large sign is carved into the broad wall depicting a large tree trunk with a sizable knothole flanked by a pair of Lupans, one with a whip and the other bound with a collar. The sign bears the name “The Knothole” below the detailed motif.\r\rGreeting your ears from the grand building are the sounds of drums. The deep base echoing out of the building makes your muscles tense in anticipation. The closer you get, the more your nose picks up the scent of the gathered Lupans, both male and female. The beat thumping from within the Knothole starts to get your heart going faster.");
		viewButtonOutline(0,0,0,0,0,1,0,0,0,1,0,0);
		viewButtonText(0,0,0,0,0,1,0,0,0,1,0,0);
		buttonWrite(6, "Enter");
		buttonWrite(10, "Leave");
		doListen = function():void{
			if (buttonChoice == 6) {
				knotholeMain(true);
			}
			else {
				textL("Deciding not to see what's going on and with nothing else to do in the Tieden night, you end your wandering for now.");
				hrs = 1;
				doEnd();
			}
		}
	}
	//Foxy preggo lover
	else if (chance == 2){ 
		textL("While walking about with your rather gravid nature, you notice some... 'extra attention' coming your way. A normally lithe girl, with a vulpine face, reddish fur, and a long fluffy tail swaying behind her, she sports her own large swollen belly that defies her small frame and swings with her prancing steps. Her swollen breasts create a good deal of cleavage in her low-cut shirt, a pair of short shorts exposing most of her legs, while the gap between allows her stomach to protrude nakedly. However, hers isn't nearly as large as yours, which she seems rather fascinated by, staring at it in amazement as she approaches you.\r\r\"Oh my~ You're so... big! C-Can I touch it?\" She asks in a rather intrigued tone, already bending forward over her own girth to get closer to yours.");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				textL("\"Ooo, thank you~\" She practically purrs as her small hands touch down on your huge abdomen. Rubbing slowly across the vast expanse, she hovers closer and closer until she's resting the side of her head against you. She croons and rises up, letting her belly bump against yours. Her attention feels... a bit more intimate than anticipated.\r\rWhen you shiver from the lovely sensations and the being inside gives the foxy woman a kick, she finally pries herself off. \"Oh dear, I'm sorry! I think I got a little carried away...\" Thanks to how much her belly sways with her movement, it's not difficult to tell that her thighs are rubbing together as she tries to restrain herself. \"I wouldn't suppose you'd like to... have a bit of a 'belly massage', would you?\" She gives you a kinky wink, suggesting a bit more than what she verbally communicated.");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("\"Ooo~\" Her tail dances around behind her, very excited. \"Just lead me back to your place, hun~\"\r\rShe skips behind you the whole way, her belly bobbing up and down with her frame. Before you're stepping through your entryway, she's already beginning to strip; her shirt flying off and exposing her engorged breasts long enough for a few drops of milk to splash upon the ground outside, leaking in anticipation. And when she passes through the door, she's quick to spot the bed and drag you down on top of it.\r\r\"Mmm... This is going to be so delightful~\"\r\rYou lay back and let her take charge of the kinky followings, though you probably wouldn't have had much choice anyways. She ");
						if (pregnancyTime >= 400) { textLP("climbs"); }
						else { textLP("rolls"); }
						textLP(" on top of you and rapidly strips you of your "+currentClothes()+" and promptly rests her large belly atop yours. She coos as she rubs the stretched abdomen across your own, eventually dipping off to the side so she can bend down to your bosom. Her supple lips lean in and snatch up one of your "+nipDesc()+" nipples. She suckles from you while her rump bobs about in the air, brushing the side of her belly against yours");
						if (lactation > 0) {
							textLP(", making you leak yourself and feeding her the sweet flavor of your milk");
							milkAmount(1);					
						}
						textLP(". Feeling your peaks grow aroused and stiff beneath her tongue, she gradually descends away from them, licking down your breast and onto the "+bellyDesc()+" mound. Nuzzling and lapping at it, you can't help but shiver from her sensitive care upon your taut "+skinDesc()+". She doesn't fare much better either, the act itself sending her rump into a swinging tizzy. Just as she finally makes her way down to your "+vulvaDesc()+" lips and takes a few licks at the honey that flows, she springs upright with frustration.\r\r\"I can't take this anymore!\" She attempts to undo her short shorts, but after only a few seconds she gives up and tears them free from her crotch. A torrent of drooling lubricant splashes down over her thighs and the sheets below.\r\rOnce freed, she immediately rolls onto her back like yourself, her legs wrapping around your "+bellyDesc()+" womb the best they can and pulling her heated pussy right up against the stretched "+skinDesc()+". The plumped labia of her aroused crotch grinds over your belly again and again, feeling even more lewd and erotic than her previous licking, and much more messy as a slick layer of feminine arousal coats the underside of your swollen gut. However, such strenuous activity while balancing her own engorged weight quickly sends her sliding down your belly until her butt touches down against the sheets. Her plush lower lips kiss your own "+vulvaDesc()+" labia, mashing into them and slipping in between each other sloppily with the salivated-arousal making things plenty wet. And the trail she left down your underbelly perfectly lubes up the rubbing from her own, your two girths pressing against each other as your hips gyrate with squishy kissing below.\r\rThe foxy woman quickly begins to howl long and wonderful orgasms, her whole body shuddering and bringing you to your own. Your bellies quake with the children inside, amplifying the electrifying orgasms further...");
						nipplePlay += 6;
						doLust(-Math.floor(lib/2), 2, 2);
						doNext();
						doListen = function():void{
							textL("The strange woman lies in bed with you for another hour, cuddling up and resting your bellies side-to-side. But eventually she realizes how much time she has spent indulging herself at your 'expense'. \"I'm sorry to have taken so long to get that out of my system, but... it was very enjoyable indeed. Here, sweetie, a gift from my business. I'm actually a breeder of pets for people and this helps with the process. I do love the big swollen bellies so~ You could probably sell it for a nice chunk of change, or maybe you can find some use for it too.\" She gives you a wink as she slips a potion into your hand.\r\rThen she cradles her belly as she slinks off the bed and stands, her nipples blotching her shirt as she dons it. When she reaches for her shorts, however, she realizes they're a bit... unwearable now. Her fluffy tail curls down between her legs, snugging up against the underside of her belly on the other side like a pair of panties. She gives you another wink. \"Don't worry, I'll be alright. Wouldn't be the first time~\" and she skips out the door, so absolutely giddy from her time with you.");
							if (pregCheck(0)) {
								i = 0;
								while (i < pregArray.length) {
									if (pregArray[i] == true) { pregArray[i+3] += 20; }
									i += 5;
								}
							}
							itemAdd(248);
							hrs = 3;
							doEnd();
						}
					}
					else { 
						textL("\"Aww, that's a shame~ Well, thank you very much for letting me feel your fertile womb, it was quite the pleasure~ Maybe I'll see you around again some time~\" The strange foxy woman turns away, swishing her soft tail over your pregnant bulge in a tempting manner before stepping away. Her belly and tail seem to sway even more than when she approached as well, her hips bobbing from side to side as her thighs press together, the shorts looking a bit moist from the view behind.\r\rYou can't deny that the contact has left you a bit randy yourself either...");
						doLust(5, 0);
						stats(0,0,2,0);
						hrs = 1;
						doEnd();
					}
				}
			}
			else {
				textL("\"Oh, alright. But I must say, you have a very beautiful belly~ I'd just looove to get more acquainted with it some time~ See you around sweety~\" The strange foxy woman quickly twists away, swishing her tail enough to gently brush against your pregnant bulge before she steps away. And she seems to be in quite the rush too, her hips swaying even more than when she approached...");
				doLust(5, 0);
				hrs = 1;
				doEnd();
			}
		}
	}
	else {
		textL("You try to explore Tieden during the day, but there doesn't seem to be much to do yet.");
		hrs = 1;
		doEnd();
	}
}