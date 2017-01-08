/*************
 *Leveling Up*
 *************/

function doLevelUP():void{
	
	choiceListArray = [];
	textL("You have this many perks pending: "+levelUP+"\r\rClick on an option to view a description and spend a perk.\r\rSuper perks are different from normal perks in that they only apply a single major effect and cost 3 perks to take." );
	
	choiceListArray.push("Super Perk");
	choiceListArray.push("");
	choiceListArray.push("Body Build");
	choiceListArray.push("Hyper Happy");
	if (vagTotal > 0) { choiceListArray.push("Baby Fact"); }
	choiceListArray.push("Alchemist");
	if (lactation > 0 || udderLactation > 0) { choiceListArray.push("Milk Maid"); }
	choiceListArray.push("Shapeshifty");

	choiceListButtons("Level Up");
	doListen = function():void{

		choiceListSelect("Level Up");
		if (buttonChoice == 4 || buttonChoice == 8) { doLevelUP(); }
		else { choicePage = 1; }

		//Body Builder
		if (choiceListResult[0] =="Body Build"){
			textL("Body Builder is training to make you strong and more buff.\r\rWith every level in Body Builder, you gain a +2 increase to your maximum Stamina.\r\rWith every 2 levels, your Strength score increases by 2.\r\rEvery 3 levels, you grow 2 inches taller and your body fills out more.\r\rYou have "+bodyBuildLevel+" levels in Body Builder.\r\r\rAre you sure you want to spend a Perk on Body Builder?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					HPMod += 2;
					doHP(2);
					textL("The exercise makes you healthier.");
					if (Math.floor((bodyBuildLevel + 1)/2) > Math.floor(bodyBuildLevel/2)) { 
						stats(2,0,0,0);
						textLP(" You flex your muscles, feeling stronger already!");
					}
					if (Math.floor((bodyBuildLevel + 1)/3) > Math.floor(bodyBuildLevel/3)) {
						body +=2;
						textLP("\r\rEven your body feels more developed and you measure 2 inches taller than you were before.");
						tallness += 2;
					}
					bodyBuildLevel++;
					levelUP--;
					doEnd();
				}
				else{
					doLevelUP();
				}
			}
		}

		//Lust Mage
		if (buttonChoice == 2){
		}

		//Hyper Happy
		if (choiceListResult[0] == "Hyper Happy"){
			textL("Hyper Happy is a perk for those who like things... 'big'.\r\rEvery level of Hyper Happy, you can choose a body part you would like to make a little bigger.\r\rEvery 3 levels, you become slightly used to your growth, increasing your carrying capacity.\r\rEvery 5th level, you forego that level's smaller change for a much greater growth.\r\rYou have "+hyperHappyLevel+" levels in Hyper Happy.");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (Math.floor((hyperHappyLevel + 1)/5) == Math.floor(hyperHappyLevel/5)) {
						choiceListArray = [];
						textL("Choose a body part you would like to increase.");
						
						choiceListArray.push("Breasts");
						choiceListArray.push("Nipples");
						choiceListArray.push("Butt");
						choiceListArray.push("Hips");
						if (vagTotal > 0) {
							choiceListArray.push("Pussy");
							choiceListArray.push("Vulva");
							choiceListArray.push("Clit");
						}
						if (cockTotal > 0) {
							choiceListArray.push("Cock");
							if (showBalls == true) { choiceListArray.push("Balls"); }
						}
						if (udders == true) {
							choiceListArray.push("Udder");
							choiceListArray.push("Teats");
						}

						choiceListButtons("Hyper Happy");

						doListen = function():void{

							choiceListSelect("Hyper Happy");

							if (choiceListResult[0] == "Cock") { 
								textL("Your cock"+plural(1)+" grow"+plural(3)+" slightly larger.");
								cockChange(2,0);
							}
							if (choiceListResult[0] == "Balls") { 
								ballSize += 2;
								textL("Your testicles swell a bit.");
							}
							if (choiceListResult[0] == "Pussy") { 
								textL("Your vagina"+plural(2)+" grow"+plural(4)+" slightly deeper.");
								vagChange(2,0);
							}
							if (choiceListResult[0] == "Vulva") { 
								vulvaSize += 2;
								textL("Your pussy lips swell a bit.");
							}
							if (choiceListResult[0] == "Clit") { 
								clitSize += 2;
								textL("Your clit"+plural(2)+" grow"+plural(4)+" slightly larger.");
							}
							if (choiceListResult[0] == "Breasts") { 
								breastSize += 2;
								textL("Your breasts swell a bit.");
							}
							if (choiceListResult[0] == "Nipples") { 
								nippleSize += 2;
								textL("Your nipples grow slightly longer.");
							}
							if (choiceListResult[0] == "Udder") { 
								udderSize += 2;
								textL("Your udder swells a bit.");
							}
							if (choiceListResult[0] == "Teats") { 
								teatSize += 2;
								textL("Your teats grow slightly longer.");
							}
							if (choiceListResult[0] == "Butt") { 
								butt += 2;
								textL("Your rump swells a bit.");
							}	
							if (choiceListResult[0] == "Hips") { 
								hips += 2;
								textL("Your hips widen a bit.");
							}

							if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Hyper Happy"); }
							else if (buttonChoice == 12) { 
								choicePage = 1;
								doLevelUP(); 
							}
							else {	
								choicePage = 1;
								levelUP--;
								hyperHappyLevel++;
								doEnd();
							}
						}
					}
					if (Math.floor((hyperHappyLevel + 1)/5) > Math.floor(hyperHappyLevel/5)) {

						choiceListArray = [];
						textL("Choose a body part you would like to greatly increase. This will be 10x more effective than a normal level in Hyper Happy, so be careful what you choose.");
						choiceListArray.push("Breasts");
						choiceListArray.push("Nipples");
						choiceListArray.push("Butt");
						choiceListArray.push("Hips");
						if (vagTotal > 0) {
							choiceListArray.push("Pussy");
							choiceListArray.push("Vulva");
							choiceListArray.push("Clit");
						}
						if (cockTotal > 0) {
							choiceListArray.push("Cock");
							if (showBalls == true) { choiceListArray.push("Balls"); }
						}
						if (udders == true) {
							choiceListArray.push("Udder");
							choiceListArray.push("Teats");
						}
						choiceListButtons("Hyper Happy");
						doListen = function():void{
							choiceListSelect("Hyper Happy");

							if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice !=12) { textL("With some focus and a sudden surge of growth, your "); }
							if (choiceListResult[0] == "Cock") {
								textLP("cock"+plural(1)+" extend"+plural(3)+" within your "+clothesBottom()+", growing thicker and longer until "+plural(11)+" spring"+plural(3)+" out and you catch "+plural(11)+" in your hands. Heavier and more cumbersome, you barely manage to fit "+plural(9)+" back into your "+clothesBottom()+"...");
								cockChange(20,0);
							}
							if (choiceListResult[0] == "Balls") { 
								ballSize += 20;
								textLP("testicles swell tremendously within your "+clothesBottom()+", lifting your cock"+plural(1)+" and pushing against your thighs. You quickly pull "+pullUD(2)+" your "+clothesBottom()+" and breathe a sigh of relief as the orbs settle before you. It takes some time to squeeze them back in...");
							}
							if (choiceListResult[0] == "Pussy") { 
								textLP("vagina"+plural(2)+" grow"+plural(4)+" much deeper, filling you up inside with more tunnel space to plow...");
								vagChange(20,0);
							}
							if (choiceListResult[0] == "Vulva") { 
								vulvaSize += 20;
								textLP("pussy lips swell tremendously, bulging in your "+clothesBottom()+" and pressing into your thighs until you have to pull"+pullUD(2)+" your "+clothesBottom()+" and give your labiasome air. So thick and tender, it takes some time to stuff yourself back into your clothes...");
							}
							if (choiceListResult[0] == "Clit") { 
								clitSize += 20;
								textLP("clit"+plural(2)+" extend"+plural(4)+" within your "+clothesBottom()+", forming a more noticeable bulge in the fabric and nearly driving you to orgasm as "+plural(12)+" drag"+plural(4)+" across the cloth...");
							}
							if (choiceListResult[0] == "Breasts") { 
								breastSize += 20;
								textLP("breasts swell tremendously, pressing against your "+clothesTop()+" until you have to pull the cloth "+pullUD(1)+" and let your bosom fall out with a gasp. They're much heavier and wobble a bit until you can get balanced and take some time to stuff back in...");
							}
							if (choiceListResult[0] == "Nipples") { 
								nippleSize += 20;
								textLP("nipples grow much longer, protruding through your "+clothesTop()+" far more and making you gasp in near-orgasm as they drag across the fabric...");
							}
							if (choiceListResult[0] == "Udder") { 
								udderSize += 20;
								textLP("udder swells tremendously, making you fall to your knees as it weighs you down until you let it flop over the ground. You take a few moments before you're able to lift yourself back up, swinging your hips slightly as you try to balance yourself with the added mass...");
							}
							if (choiceListResult[0] == "Teats") { 
								teatSize += 20;
								textLP("teats grow much longer, flopping out over your udder and protruding much further, almost like you've got multiple erections forming over your belly...");
							}
							if (choiceListResult[0] == "Butt") { 
								butt += 20;
								textLP("rump swells tremendously, making your "+clothesBottom()+" creak as your tush pushes at the fabric. You quickly pull the "+clothesBottom()+" "+pullUD(2)+" and bend forward while your ass hangs out behind you, wobbling and jiggling with its sudden spurt. You have quite some trouble fitting back into your clothes, with a good deal of crack and cheek still exposed...");
							}	
							if (choiceListResult[0] == "Hips") { 
								hips += 20;
								textLP("hips widen tremendously, making your "+clothesBottom()+" pull tighter and tigher around your waist. The fabric slips over your pelvis as it tries to make room until you're eventually sucking in your gut the best you can to not make the cloth explode...");								
							}
							if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Hyper Happy"); }
							else if (buttonChoice == 12) { 
								choicePage = 1;
								doLevelUP(); 
							}
							else {	
								levelUP--;
								hyperHappyLevel++;
								doEnd();
							}
						}
					}
					if (Math.floor((hyperHappyLevel + 1)/3) > Math.floor(hyperHappyLevel/3)) {
						textLP("\r\rYou also become a bit more accustomed to your attributes, learning how to carry them more efficiently.");
						carryMod += 10;
					}
				}
				else{
					doLevelUP();
				}
			}
		}

		//Baby Factory
		if (choiceListResult[0] == "Baby Fact"){
			textL("Baby Factory makes you much better at making babies.\r\rEvery level of Baby Factory increases your chance to get pregnant by 4%.\r\rEvery 2 levels, you have an increased chance of having more offspring.\r\rEvery 4 levels results in hip and rear growth.\r\rYou have "+babyFactLevel+" levels in Baby Factory.\r\r\rAre you sure you want to spend a Perk on Baby Factory?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					pregChanceMod += 4;
					textL("There's an odd feeling like you... 'need' to get pregnant? Like you could really enjoy some hot come inside of you...");
					if (Math.floor((babyFactLevel + 1)/2) > Math.floor(babyFactLevel/2)) { 
						extraPregChance += 5; 
						textLP("\r\rYour ovaries kinda tickle a little, a tad more likely to pop out more eggs when you ovulate.");
					}
					if (Math.floor((babyFactLevel + 1)/4) > Math.floor(babyFactLevel/4)) { 
						hips += 3;
						butt += 3;
						textLP("\r\rWith all of the fertile preparation, your hips widen and your ass swells, giving you a more fecund appearance.");
					}
					levelUP--;
					babyFactLevel++;
					doEnd();
				}
				else{
					doLevelUP();
				}
			}
		}

		//Fetish Master
		if (choiceListResult[0] == "Fetish Master"){
			textL("For those who want to be the very best, like no one ever was, Fetish Master allows you to collect all the kinks. Kinks affect how much you gain or lose lust in situations that involve the appropriate factors.\r\rEvery 4th level, you can increase a Major kink by 30%, but also reduces opposing kinks by a smaller amount.\r\rEvery 3rd level, you can increase a Moderate kink by 20%, also reducing opposing kinks by a smaller amount.\r\rOtherwise, levels in Fetish Master will allow you to increase Minor kinks by 10%.\r\rYou have "+fetishMasterLevel+" levels in Fetish Master.");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (Math.floor((fetishMasterLevel + 1)/4) > Math.floor(fetishMasterLevel/4)) { 
						textL("Major fetishes affect most sexual situations. Selecting one will increase your lust gained or lost by an additional 30%. However, since they are so profound, they will also make opposing kinks even less interesting.");
						textLP("\r\rMale - Applies to sexual situations with males. Selecting it will reduce your Female kink by 20% and your Herm kink by 10%.");
						textLP("\r\rFemale - Applies to sexual situations with females. Selecting it will reduce your Male kink by 20% and your Herm kink by 10%.");
						textLP("\r\rHerm - Applies to sexual situation with hermaphrodites, people with both male and female genetalia. Selecting this kink will reduce your Male and Female kinks by 20%.");
						textLP("\r\rNarcissist - Applies to sexual situations that only involve yourself. Selecting it will reduce your Dependent kink by 20%.");
						textLP("\r\rDependent - Applies to sexual situations that involve others with you. Selecting it will reduce your Narcissist kink by 20%.");
						viewButtonText(1,1,1,0,1,1,0,0,0,0,0,1);
						viewButtonOutline(1,1,1,0,1,1,0,0,0,0,0,1);
						buttonWrite(1, "Male");
						buttonWrite(2, "Female");
						buttonWrite(3, "Herm");
						buttonWrite(5, "Narcissist");
						buttonWrite(6, "Dependent");
						buttonWrite(12, "Cancel");
						doListen = function():void{
							if (buttonChoice == 1) { 
								textL("You now find pee-pees more attractive and vagoos more icky.");
								maleFetish += .3;

								femaleFetish -= .2;
								hermFetish -= .1;
							}
							if (buttonChoice == 2) { 
								textL("You now find vagoos more attractive and pee-pees more icky.");
								femaleFetish += .3;
								maleFetish -= .2;
								hermFetish -= .1;
							}
							if (buttonChoice == 3) { 
								textL("You now find pee-pees and vagoos more attractive together, but kinda weird apart.");
								hermFetish += .3;
								femaleFetish -= .2;
								maleFetish -= .2;
							}
							if (buttonChoice == 5) { 
								textL("You now see yourself as more of a sexy devil and everyone else as just trash.");
								narcissistFetish += .3;
								dependentFetish -= .2;
							}
							if (buttonChoice == 6) { 
								textL("You now find yourself more needy of others and have less confidence in your own body.");
								dependentFetish += .3;
								narcissistFetish -= .2;
							}
							if (buttonChoice == 12) { doLevelUP(); }
							else {								
								levelUP--;
								fetishMasterLevel++;
								doEnd();
							}
						}
					}
					else if (Math.floor((fetishMasterLevel + 1)/3) > Math.floor(fetishMasterLevel/3)) { 
						textL("Moderate fetishes affect many sexual situations. Selecting one will increase your lust gained or lost by an additional 20%. However, since they are somewhat important, they will also make opposing kinks even less interesting.");
						textLP("\r\rDominant - Applies to sexual situations where you are in charge. Selecting it will reduce your Submissive kink by 10%.");
						textLP("\r\rSubmissive - Applies to sexual situations where you are being dominated. Selecting it will reduce your Dominant kink by 10%.");
						textLP("\r\rLarge Breasts - Applies to sexual situations that involve relatively big titties. Selecting it will reduce your Small Breasts kink by 10%.");
						textLP("\r\rSmall Breasts- Applies to sexual situations that involve relatively small boobies (mostly does not apply to males). Selecting it will reduce your Large Breasts kink by 10%.");
						textLP("\r\rFurry - Applies to sexual situations with fur-covered people. Selecting it will reduce your Scaley and Smoothy kinks by 10%.");
						textLP("\r\rScaly - Applies to sexual situations with scale-covered people. Selecting it will reduce your Furry and Smoothy kinks by 10%.");
						textLP("\r\rSmoothy - Applies to sexual situations with smooth skin-covered people. Selecting it will reduce your Furry and Scaly kinks by 10%.");
						viewButtonText(1,1,0,0,1,1,0,0,1,1,1,1);
						viewButtonOutline(1,1,0,0,1,1,0,0,1,1,1,1);
						buttonWrite(1, "Dominant");
						buttonWrite(2, "Submissive");
						buttonWrite(5, "Large Boobs");
						buttonWrite(6, "Small Boobs");
						buttonWrite(9, "Furry");
						buttonWrite(10, "Scaly");
						buttonWrite(11, "Smoothy");
						buttonWrite(12, "Cancel");
						doListen = function():void{
							if (buttonChoice == 1) { 
								textL("You now enjoy stomping on people more and dislike being stepped on.");
								dominantFetish += .2;
								submissiveFetish -= .1;
							}
							if (buttonChoice == 2) { 
								textL("You now enjoy being told what to do more and dislike telling others what to do.");
								submissiveFetish += .2;
								dominantFetish -= .1;
							}
							if (buttonChoice == 5) { 
								textL("You now enjoy motorboating more and dislike boards.");
								lboobFetish += .2;
								sboobFetish -= .1;
							}
							if (buttonChoice == 6) { 
								textL("You now find small dainty tatas more attractive and dislike the excessively fat kind.");
								sboobFetish += .2;
								lboobFetish -= .1;
							}
							if (buttonChoice == 9) { 
								textL("You now enjoy cuddling up with fuzzies more and lack of fuzziness less.");
								furryFetish += .2;
								scalyFetish -= .1;
								smoothyFetish -= .1;
							}
							if (buttonChoice == 10) { 
								textL("You now enjoy shiny, luxurious scales more and dull skin less less.");
								scalyFetish += .2;
								furryFetish -= .1;
								smoothyFetish -= .1;
							}
							if (buttonChoice == 11) { 
								textL("You now enjoy the feeling of smooth, soft skin more and wierd kinds less.");
								smoothyFetish += .2;
								scalyFetish -= .1;
								furryFetish -= .1;
							}
							if (buttonChoice == 12) { doLevelUP(); }
							else {	
								levelUP--;
								fetishMasterLevel++;
								doEnd();
							}
						}
					}
					else { 
						textL("Minor fetishes affect some ssexual situations. Selecting one will increase your lust gained or lost by an additional 10%. They easily allow room for other fetishes, so they don't reduce others.");
						textLP("\r\rPregnancy - Applies to sexual situations where someone is pregnant.");

						textLP("\r\rBestiality - Applies to sexual situations with feral animals.");
						textLP("\r\rMilk - Applies to sexual situations that involve lactation.");
						textLP("\r\rSize - Applies to sexual situations where one person is significantly larger than the other.");
						textLP("\r\rUnbirthing - Applies to sexual situations that involve reverse-birthing.");
						textLP("\r\rOviposition - Applies to sexual situations where eggs are popping out.");
						textLP("\r\rToy - Applies to sexual situations with inanimate objects.");
						textLP("\r\rHyper - Applies to sexual situations where something is significantly bigger than usual.");
						viewButtonText(1,1,1,0,1,1,1,0,1,1,0,1);
						viewButtonOutline(1,1,1,0,1,1,1,0,1,1,0,1);
						buttonWrite(1, "Pregnancy");
						buttonWrite(2, "Bestiality");
						buttonWrite(3, "Milk");
						buttonWrite(5, "Size");
						buttonWrite(6, "Unbirthing");
						buttonWrite(7, "Oviposition");
						buttonWrite(9, "Toy");
						buttonWrite(10, "Hyper");
						buttonWrite(12, "Cancel");
						doListen = function():void{
							if (buttonChoice == 1) { 
								textL("You now enjoy big swollen baby-filled bellies more.");
								pregnancyFetish += .1;
							}
							if (buttonChoice == 2) { 
								textL("You now enjoy 'doggy-style' being literal more.");
								bestialityFetish += .1;
							}
							if (buttonChoice == 3) { 
								textL("You now want to suck on those drippy milkbags more.");
								milkFetish += .1;
							}
							if (buttonChoice == 5) { 
								textL("You now enjoy giants and tiny people more.");
								sizeFetish += .1;
							}
							if (buttonChoice == 6) { 
								textL("You now find the thought of being stuffed back into a womb more appealing.");
								unbirthingFetish += .1;
							}
							if (buttonChoice == 7) { 
								textL("You now find egg-laying to be more fun.");
								ovipositionFetish += .1;
							}
							if (buttonChoice == 9) { 
								textL("You now enjoy the things you keep in your dresser drawer more.");
								toyFetish += .1;
							}
							if (buttonChoice == 10) { 
								textL("You now find absurd proportions more amusing.");
								hyperFetish += .1;
							}
							if (buttonChoice == 12) { doLevelUP(); }
							else {	
								levelUP--;
								fetishMasterLevel++;
								doEnd();
							}
						}
					}
				}
				else{
					doLevelUP();
				}
			}
		}
		
		//Alchemist
		if (choiceListResult[0] == "Alchemist"){
			textL("When not turning metals into gold, alchemists also dabble in a variety of other... things.\r\rEvery level, you manage to scrounge up an ingredient or two for a recipe you know, finding more as you become more proficient.\r\rAlso, every level of Alchemist increases your chance of creating an extra simple concoction by 2%, complex concoction by 1%, and advanced concoction by .66%, up to a maximum of 4 concoctions from a single batch.\r\rYou have "+alchemistLevel+" levels in Alchemist.\r\r\rAre you sure you want to spend a Perk on Alchemist?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					textL("Your alchemical prowess has improved!");
					levelUP--;
					alchemistLevel++;

					i = 0;
					while (percent() < (alchemistLevel*(10+percent()) - (20*(i+2)*(i)))) {
						rndArray = [];

						rndArray.push(209, 110, 203, 212);

						if (knowLustDraft == true) { rndArray.push(209, 114, 523); }
						if (knowRejuvPot == true) { rndArray.push(115, 203); }
						if (knowExpPreg == true) { rndArray.push(114, 219); }
						if (knowBallSwell == true) { rndArray.push(208); }
						if (knowMaleEnhance == true) { rndArray.push(201, 208, 218); }

						if (knowSLustDraft == true) { rndArray.push(209, 112, 524); }
						if (knowSRejuvPot == true) { rndArray.push(503, 500, 501); }
						if (knowSExpPreg == true) { rndArray.push(213, 219); }
						if (knowSBallSwell == true) { rndArray.push(208, 218); }
						if (knowGenSwap == true) { rndArray.push(110, 120); }
						if (knowMasoPot == true) { rndArray.push(203, 503); }
						if (knowBabyFree == true) { rndArray.push(110, 203); }
						if (knowPotPot == true) { rndArray.push(507, 523); }
						if (knowMilkSuppress == true) { rndArray.push(201, 533); }

						if (knowSGenSwap == true) { rndArray.push(201, 202, 207, 210); }
						if (knowSMasoPot == true) { rndArray.push(222, 504); }					
						if (knowSBabyFree == true) { rndArray.push(120, 210); }
						if (knowSPotPot == true) { rndArray.push(512, 524); }
						if (knowPussJuice == true) { rndArray.push(210, 114); }
						if (knowPheromone == true) { rndArray.push(530, 212, 206); }
						if (knowBazoomba == true) {  rndArray.push(207, 212, 501, 529);	}

						itemAdd(chooseFrom());

						i += 1;
					}					
					doEnd();
				}
				else{
					doLevelUP();
				}
			}
		}

		//Milk Maid
		if (choiceListResult[0] == "Milk Maid"){
			textL("If you want to feed the world, Milk Maid is... well, one way to go I suppose.\r\rWith every level of Milk Maid, your lactation rate increases by 100 ml/hr (and so does your udder lactation rate, if you have an udder).\r\rEvery other level increases your milk modifier (a bonus that won't drop naturally and applies to all sources) by 50 ml/hr. Your milk modifier doesn't deplete naturally and adds to your lactation rate when you're lactating. It also applies to udder lactation as well.\r\rEvery 4th level increases your base milk capacity 300 ml, before engorgement is calculated.\r\rEvery 5th level, your affinity for milk makes you more receptive to the healing powers of milk, increasing the amount of stamina restored by 2 whenever you drink it.\r\rYou have "+milkMaidLevel+" levels in Milk Maid.\r\r\rAre you sure you want to spend a Perk on Milk Maid?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					lactChange(1,100);
					if (udders == true)	{ lactChange(2,100); }
					textL("Your mammaries feel warm and you can already feel them begin to swell with the sudden increase in production.");
					if (Math.floor((milkMaidLevel + 1)/2) > Math.floor(milkMaidLevel/2)) { 
						milkMod += 50;
						textLP(" So much so that you'll always be prone to large amounts of milking...");
					}
					if (Math.floor((milkMaidLevel + 1)/4) > Math.floor(milkMaidLevel/4)) {
						milkCap += 300;
						textLP("\r\rIt's surprising how much you've grown accustomed to storing milk, your body much more efficient at the task.");
					}
					if (Math.floor((milkMaidLevel + 1)/5) > Math.floor(milkMaidLevel/5)) {
						milkHPMod += 2;
						textLP("\r\rAnd with all this milk flowing within your body, drinking the stuff would make you feel even better.");
					}
					milkMaidLevel++;
					levelUP--;
					doEnd();
				}
				else{
					doLevelUP();
				}
			}
		}

		//Shapeshifty
		if (choiceListResult[0] == "Shapeshifty"){
			textL("While it is rather difficult to remain in control of one's form in the world of Nimin, some can be a little shifty about it and maintain slight shape-discipline.\r\rAt the first level and every three levels after, you may increase the amount of blood of a race that already exists in your system by a decent amount.\r\rAt the second level and every three levels after, you can choose to increase or decrease your sensitivity to blood changes, making you change more or less frequently.\r\rAt the third level and every six levels after, you can choose to lock a single racial trait, preventing it from being removed or replaced by blood changes. However, this does not prevent your blood from changing, nor does it prevent direct changes to these features, should they occur. Subsequent selections change what you choose to be locked.\r\rAt the sixth level and every six levels after, you may choose a second feature to lock, independent of the first. Subsequent selections change what second feature is locked.\r\rYou have "+shapeshiftyLevel+" levels in Shapeshifty.\r\r\rAre you sure you want to spend a Perk on Shapeshifty?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (Math.floor((shapeshiftyLevel + 1)/3) > Math.floor(shapeshiftyLevel/3)) {
						var tempBool:Boolean = false;
						if (Math.floor((shapeshiftyLevel + 1)/6) > Math.floor(shapeshiftyLevel/6)) { tempBool = true; }
						choiceListArray = [];
						textL("What feature would you like to lock, preventing it from being changed by racial blood?");
						if (tempBool == false) {
							if(shapeshiftySecond != "Face") { choiceListArray.push("Face"); }
							if(shapeshiftySecond != "Skin") { choiceListArray.push("Skin"); }
							if(shapeshiftySecond != "Ears") { choiceListArray.push("Ears"); }
							if(shapeshiftySecond != "Legs") { choiceListArray.push("Legs"); }
							if(shapeshiftySecond != "Breasts") { choiceListArray.push("Breasts"); }
							if(shapeshiftySecond != "Nipples") { choiceListArray.push("Nipples"); }
							if(shapeshiftySecond != "Tail") { choiceListArray.push("Tail"); }
							if(shapeshiftySecond != "Cock") { choiceListArray.push("Cock"); }
						}
						else {
							if(shapeshiftyFirst != "Face") { choiceListArray.push("Face"); }
							if(shapeshiftyFirst != "Skin") { choiceListArray.push("Skin"); }
							if(shapeshiftyFirst != "Ears") { choiceListArray.push("Ears"); }
							if(shapeshiftyFirst != "Legs") { choiceListArray.push("Legs"); }
							if(shapeshiftyFirst != "Breasts") { choiceListArray.push("Breasts"); }
							if(shapeshiftyFirst != "Nipples") { choiceListArray.push("Nipples"); }
							if(shapeshiftyFirst != "Tail") { choiceListArray.push("Tail"); }
							if(shapeshiftyFirst != "Cock") { choiceListArray.push("Cock"); }
						}
						choiceListButtons("Shapeshifty");
						doListen = function():void{
							choiceListSelect("Shapeshifty");
							if (tempBool == false) {
								if (shapeshiftyFirst == "Face") { lockFace -= 1;	}
								if (shapeshiftyFirst == "Skin") { lockSkin -= 1;	}
								if (shapeshiftyFirst == "Ears") { lockEars -= 1;	}
								if (shapeshiftyFirst == "Legs") { lockLegs -= 1;	}
								if (shapeshiftyFirst == "Breasts") { lockBreasts -= 1;	}
								if (shapeshiftyFirst == "Nipples") { lockNipples -= 1;	}
								if (shapeshiftyFirst == "Tail") { lockTail -= 1;	}
								if (shapeshiftyFirst == "Cock") { lockCock -= 1;	}
							}
							else {
								if (shapeshiftySecond == "Face") { lockFace -= 1;	}
								if (shapeshiftySecond == "Skin") { lockSkin -= 1;	}
								if (shapeshiftySecond == "Ears") { lockEars -= 1;	}
								if (shapeshiftySecond == "Legs") { lockLegs -= 1;	}
								if (shapeshiftySecond == "Breasts") { lockBreasts -= 1;	}
								if (shapeshiftySecond == "Nipples") { lockNipples -= 1;	}
								if (shapeshiftySecond == "Tail") { lockTail -= 1;	}
								if (shapeshiftySecond == "Cock") { lockCock -= 1;	}
							}

							if (choiceListResult[0] == "Face") { 
								if (tempBool == false) { shapeshiftyFirst = "Face"; }
								else { shapeshiftySecond = "Face"; }
								lockFace += 1;
							}
							if (choiceListResult[0] == "Skin") { 
								if (tempBool == false) { shapeshiftyFirst = "Skin"; }
								else { shapeshiftySecond = "Skin"; }
								lockSkin += 1;
							}
							if (choiceListResult[0] == "Ears") { 
								if (tempBool == false) { shapeshiftyFirst = "Ears"; }
								else { shapeshiftySecond = "Ears"; }
								lockEars += 1;
							}
							if (choiceListResult[0] == "Legs") { 
								if (tempBool == false) { shapeshiftyFirst = "Legs"; }
								else { shapeshiftySecond = "Legs"; }
								lockLegs += 1;
							}
							if (choiceListResult[0] == "Breasts") { 
								if (tempBool == false) { shapeshiftyFirst = "Breasts"; }
								else { shapeshiftySecond = "Breasts"; }
								lockBreasts += 1;
							}
							if (choiceListResult[0] == "Nipples") { 
								if (tempBool == false) { shapeshiftyFirst = "Nipples"; }
								else { shapeshiftySecond = "Nipples"; }
								lockNipples += 1;
							}
							if (choiceListResult[0] == "Tail") { 
								if (tempBool == false) { shapeshiftyFirst = "Tail"; }
								else { shapeshiftySecond = "Tail"; }
								lockTail += 1;
							}
							if (choiceListResult[0] == "Cock") { 
								if (tempBool == false) { shapeshiftyFirst = "Cock"; }
								else { shapeshiftySecond = "Cock"; }
								lockCock += 1;
							}

							if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Shapeshifty"); }
							else if (buttonChoice == 12) { 
								choicePage = 1;
								doLevelUP(); 
							}
							else {
								textL("With some effort, you manage to gain control of that portion of your body, preventing it from shifting further from blood changes.");
								choicePage = 1;
								levelUP--;
								shapeshiftyLevel++;
								doEnd();
							}
						}
					}
					else if (Math.floor((shapeshiftyLevel + 2)/3) > Math.floor(shapeshiftyLevel/3)) {
						viewButtonOutline(1,0,1,0,0,0,0,0,0,1,0,1);
						viewButtonText(1,0,1,0,0,0,0,0,0,1,0,1);
						textL("Would you like to increase or decrease your racial susceptibility by 10%?");
						if (changeMod == 0)	{
							textLP("\r\rHowever, you're already immune to blood-type changes, so you cannot decrease it any further.");	
							Choice3.visible = false;
						}
						buttonWrite(1,"Increase");
						buttonWrite(3,"Decrease");
						buttonWrite(10,"Lay Egg");
						buttonWrite(12,"Cancel");
												
						doListen = function():void{
							choiceListSelect("Shapeshifty");

							if (buttonChoice == 1) {
								textL("You meditate and focus hard, riling up your blood and allowing it to become more influenced by change.");
								changeMod += 0.1;
							}
							else if (buttonChoice == 3) {
								textL("You meditate and focus hard, calming your blood and bracing it against change.");
								changeMod -= 0.1;
							}
							else if (buttonChoice == 10) {
								textL("You meditate and focus hard... but you're not sure what you're focusing on to begin with. You grunt and push, trying to focus with all your might, seeing where it might go!\r\r\r... *Ploop*\r\rFrom somewhere "+legWhere(1)+" your "+legDesc(2)+", a single... egg descends and gently falls to the ground. You're not sure where it came from and your energy feels as though it had dissipated, but at least you've got a snack.");
								itemAdd(219);
							}
							else if (buttonChoice == 12) { 
								doLevelUP(); 
							}
							if (buttonChoice != 12) {
								choicePage = 1;
								levelUP--;
								shapeshiftyLevel++;
								doEnd();
							}
						}

					}
					else if (Math.floor((shapeshiftyLevel + 3)/3) > Math.floor(shapeshiftyLevel/3)) {
						choiceListArray = [];
						textL("What blood-type would you like to increase?");
						if (humanAffinity > 0) { choiceListArray.push("Human"); }
						if (horseAffinity > 0) { choiceListArray.push("Equan"); }
						if (wolfAffinity > 0) { choiceListArray.push("Lupan"); }
						if (catAffinity > 0) { choiceListArray.push("Felin"); }
						if (cowAffinity > 0) { choiceListArray.push("Cow"); }
						if (lizardAffinity > 0) { choiceListArray.push("Lizan"); }
						if (rabbitAffinity > 0) { choiceListArray.push("Rabbit"); }
						if (mouseAffinity > 0) { choiceListArray.push("Mouse"); }
						if (birdAffinity > 0) { choiceListArray.push("Bird"); }
						if (pigAffinity > 0) { choiceListArray.push("Pig"); }
						if (skunkAffinity > 0) { choiceListArray.push("Skunk"); }
						if (bugAffinity > 0) { choiceListArray.push("Bug"); }

						choiceListButtons("Shapeshifty");
						doListen = function():void{
							choiceListSelect("Shapeshifty");

							if (choiceListResult[0] == "Human") { aff(1, 20, 0); }
							else if (choiceListResult[0] == "Equan") { aff(2, 20, 0); }
							else if (choiceListResult[0] == "Lupan") { aff(3, 20, 0); }
							else if (choiceListResult[0] == "Felin") { aff(4, 20, 0); }
							else if (choiceListResult[0] == "Cow") { aff(5, 20, 0); }
							else if (choiceListResult[0] == "Lizan") { aff(6, 20, 0); }
							else if (choiceListResult[0] == "Rabbit") { aff(7, 20, 0); }
							else if (choiceListResult[0] == "Mouse") { aff(8, 20, 0); }
							else if (choiceListResult[0] == "Bird") { aff(9, 20, 0); }
							else if (choiceListResult[0] == "Pig") { aff(10, 20, 0); }
							else if (choiceListResult[0] == "Skunk") { aff(11, 20, 0); }
							else if (choiceListResult[0] == "Bug") { aff(12, 20, 0); }

							if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Shapeshifty"); }
							else if (buttonChoice == 12) { 
								choicePage = 1;
								doLevelUP(); 
							}
							else {
								textL("Breathing slowly and with intense focus, you reach deep within to strengthen an aspect of yourself...\r\rYou feel it stir and well up within, although it is hard to tell how much of an affect it had.");
								choicePage = 1;
								levelUP--;
								shapeshiftyLevel++;
								doEnd();
							}
						}
					}
				}
				else{
					doLevelUP();
				}
			}
		}

		//Super Perks
		if (choiceListResult[0] == "Super Perk") {
			textL("Super perks focuses the experience from 3 perks to apply a single major effect upon yourself. They can be taken as many times as you like, but cost 3 perks every time.\r");
			textLP("\r\rPure Blood - Choose a currently major blood type active within your body (at least 50% maximum or your dominant type). That blood type will get a slight boost while all other blood types will be purged from your body.");
			textLP("\r\rRegression - Your body regresses to a more childlike state.");
			textLP("\r\rBalance - Your primary stats are added together and evenly distributed amongst them all.");
			textLP("\r\rStamina Boost - Your body becomes fortified, increasing your maximum stamina by 15.");
			textLP("\r\rSex Reset - Choose a gender. All genitals not related to the chosen gender will be purged. All extra genitals related to the chosen gender will be purged, leaving you with a single basic set.");

			if (levelUP < 3){
				textLP("\r\rHowever, you do not have enough levels to achieve any of the perks.");
				viewButtonOutline(0,0,0,0,0,1,0,0,0,0,0,0);
				viewButtonText(0,0,0,0,0,1,0,0,0,0,0,0);
				buttonWrite(6, "Back");
				doListen = function():void{
					if (buttonChoice == 6){	doLevelUP(); }
				}
			}
			else {
				choiceListArray = [];
				
				choiceListArray.push("Pure Blood");
				choiceListArray.push("Regression");
				choiceListArray.push("Balance");
				choiceListArray.push("Stam Boost");
				choiceListArray.push("Sex Reset");

				choiceListButtons("Super Perks");
				doListen = function():void{
					choiceListSelect("Super Perks");

					//Pure Blood
					if (choiceListResult[0] == "Pure Blood"){	
						textL("Pure Blood will allow you to select a single racial blood type to make pure, boosting it and flushing out all other blood types currently in your system. Only blood types that are significant in your body will be available.\r\rWARNING: Any items or abilities that prevent racial transformations can and likely will impede Pure Blood.\r\rAre you sure you want to spend 3 perks to gain Pure Blood?");
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6){	
								choiceListArray = [];
								
								if (humanAffinity > 50 || dominant == 1)	{ choiceListArray.push("Human"); }
								if (horseAffinity > 50 || dominant == 2)	{ choiceListArray.push("Equan"); }
								if (wolfAffinity > 50 || dominant == 3)	{ choiceListArray.push("Lupan"); }
								if (catAffinity > 50 || dominant == 4)	{ choiceListArray.push("Felin"); }
								if (cowAffinity > 50 || dominant == 5)	{ choiceListArray.push("Cow"); }
								if (lizardAffinity > 50 || dominant == 6)	{ choiceListArray.push("Lizan"); }
								if (rabbitAffinity > 50 || dominant == 7)	{ choiceListArray.push("Rabbit"); }
								if (mouseAffinity > 50 || dominant == 8)	{ choiceListArray.push("Mouse"); }
								if (birdAffinity > 50 || dominant == 9)	{ choiceListArray.push("Bird"); }
								if (pigAffinity > 50 || dominant == 10)	{ choiceListArray.push("Pig"); }
								if (skunkAffinity > 50 || dominant == 11)	{ choiceListArray.push("Skunk"); }
								if (bugAffinity > 50 || dominant == 12)	{ choiceListArray.push("Bug"); }

								choiceListButtons("Pure Blood");

								textL("Select the racial blood type you would like to purify. Only those that are significant in your body are noticeable enough to select.");

								doListen = function():void{
									choiceListSelect("Pure Blood");
									textL("You take a moment to focus, channeling the experience you have gained to single out the blood coursing through your body, making yourself racially pure blood-wise, though you may have some 'leftovers'...");
									if (choiceListResult[0] == "Human"){ aff(1, 10, -1000); }
									if (choiceListResult[0] == "Equan"){ aff(2, 10, -1000); }
									if (choiceListResult[0] == "Lupan"){ aff(3, 10, -1000); }
									if (choiceListResult[0] == "Felin"){ aff(4, 10, -1000); }
									if (choiceListResult[0] == "Cow"){ aff(5, 10, -1000); }
									if (choiceListResult[0] == "Lizan"){ aff(6, 10, -1000); }
									if (choiceListResult[0] == "Mouse"){ aff(8, 10, -1000); }
									if (choiceListResult[0] == "Bird"){	aff(9, 10, -1000); }
									if (choiceListResult[0] == "Pig"){ aff(10, 10, -1000); }
									if (choiceListResult[0] == "Rabbit"){ aff(7, 10, -1000); }
									if (choiceListResult[0] == "Skunk"){	aff(11, 10, -1000); }
									if (choiceListResult[0] == "Bug"){	aff(12, 10, -1000); }
									
									if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Pure Blood"); }
									else if (buttonChoice == 12) { 
										choicePage = 1;
										doLevelUP(); 
									}
									else {	
										levelUP -= 3;
										doEnd();
									}
								}
							}
							else { doLevelUP(); }
						}
					}

					//Regression
					if (choiceListResult[0] == "Regression"){	
						textL("Regression will cause your body to regress to a more childlike state, reducing your height by half (to a minimum of 3 inches) and giving you a childlike figure.  Besides your height and body type, this super perk does not affect your sizes. The regression does decrease your strength and mentality by 3 points, however, and increases your libido and sensitivity by 5 points.\r\rAre you sure you want to spend 3 perks to gain Regression?");
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6){
								textL("You take a moment to focus, channeling the experience you have gained to return your body to a more youthful state. You close your eyes and concentrate, feeling your "+skinDesc()+" brush across the inside of your "+currentClothes()+" as you shrink within. The feeling slowly grows more and more powerful as you become more sensitive, a breeze licking across you and causing you to shiver erotically.\r\rBy the time you open your eyes, wispy steam floats off of you from the energy you expelled in the process. Your body seems to have fully reverted to a less aged state, your muscles and mind weaker, but your nerves and arousal stronger.");
								if (tallness > 5) { 
									textLP("\r\rThere's also the slight problem of your clothes barely hanging onto you, much of your body being exposed from the overly loose garments. You quickly grab the fabric before it can completely fall away, holding it the best you can to cover yourself as you quickly dash away to the tailor for a quick re-fitting.");	
									hrs += 1;
								}
								tallness -= Math.floor(tallness/2);
								body = 5;
								stats(-3,-3,5,5);
								levelUP -= 3;
								doEnd();
							}

							else { 
								choicePage = 1;
								doLevelUP(); 
							}
						}
					}

					//Balance
					if (choiceListResult[0] == "Balance"){	
						textL("Balance will redistribute your primary stats (strength, mentality, libido, and sensitivity) evenly.\r\rAre you sure you want to spend 3 perks to gain Balance?");
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6){
								textL("You take a moment to focus, channeling the experience you have gained to achieve a state of balance within your body. You feel several sensations begin to whirl around you; your strength, your mind, your naughtiness, your nerves, all shifting and swaying with the ebb and flow of the energies melting together.\r\rOnce they finally settle, you relax with a sense of equilibrium.");
								var tempInt:int = Math.ceil((str + ment + lib + sen)/4);
								str = 0;
								ment = 0;
								lib = 0;
								sen = 0;
								stats(tempInt, tempInt, tempInt, tempInt);
								levelUP -= 3;
								doEnd();
							}
							else { 
								choicePage = 1;
								doLevelUP();
							}
						}
					}

					//HP Boost
					if (choiceListResult[0] == "Stam Boost"){	
						textL("Stamina Boost will give you a permanent +15 to your maximum stamina points.\r\rAre you sure you want to spend 3 perks to gain Stam Boost?");
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6){
								textL("You take a moment to focus, channeling the experience you have gained to fortify your body from harm. It doesn't really take long, and once finished you feel... much healthier.");
								HPMod += 15;
								doHP(15);
								levelUP -= 3;
								doEnd();
							}
							else { 
								choicePage = 1;
								doLevelUP(); 
							}
						}
					}

					//Sex Reset
					if (choiceListResult[0] == "Sex Reset"){	
						textL("Sex Reset will allow you to select a gender (male, female, or herm) and nullify all genitals not belonging to that gender and all excess genitals besides a single pair for that gender. Sizes of genitals will not be affected. Breasts are not genitals and will not be affected. If you select a gender whose genitals you do not have, you will wind up androgynous.\r\rAre you sure you want to spend 3 perks to gain Sex Reset?");
						buttonConfirm();
						doListen = function():void{
							if (buttonChoice == 6){
								viewButtonOutline(0,0,0,0,1,1,1,0,0,0,0,1);
								viewButtonText(0,0,0,0,1,1,1,0,0,0,0,1);
								buttonWrite(5, "Male");
								buttonWrite(6, "Female");
								buttonWrite(7, "Herm");
								buttonWrite(12, "Cancel");
								textL("Which gender would you like to reset to? (The one you select is the one you will remain as, if you have the appropriate genitals)");
								doListen = function():void{
									textL("You take a moment to focus, channeling the experience you have gained to adjust your sex...");
									if (buttonChoice == 5) {
										vagChange(0, -vagTotal);
										if (cockTotal > 1) { cockChange(0, -(cockTotal - 1)); }
										if (balls > 2) { 
											textLP("\r\rWithin your scrotum, you feel your extra testicles begin to shrink until they vanish from within, leaving you with a single pair.");
											balls = 2;
										}										
									}
									if (buttonChoice == 6) {
										if (vagTotal > 1) { vagChange(0, -(vagTotal - 1)); }
										cockChange(0, -cockTotal);
									}
									if (buttonChoice == 7) {
										if (vagTotal > 1) { vagChange(0, -(vagTotal - 1)); }
										if (cockTotal > 1) { cockChange(0, -(cockTotal - 1)); }
										if (balls > 2) { 
											textLP("\r\rWithin your scrotum, you feel your extra testicles begin to shrink until they vanish from within, leaving you with a single pair.");
											balls = 2;
										}
									}
									if (buttonChoice == 12) { doLevelUP(); }
									else {	
										levelUP -= 3;
										doEnd();
									}
								}
							}
							else { 
								choicePage = 1;
								doLevelUP(); 
							}
						}
					}

					if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Super Perks"); }
					else if (buttonChoice == 12) { 
						choicePage = 1;
						doLevelUP(); 
					}
				}
			}
		}
		if (buttonChoice == 12){
			doReturn();
		}
	}
}
