/****************
 *Game Beginning*
 ****************/
 
/*************
 *Choose Race*
 *************/
 
function doRace():void {
	trace("race");
	trace(tallness);
	bc();
	viewButtonText(1,0,1,0,0,1,0,0,1,0,1,0);
	viewButtonOutline(1,0,1,0,0,1,0,0,1,0,1,0);
	Choice1.htmlText="Equan";
	Choice3.htmlText="Lupan";
	Choice6.htmlText="Human";
	Choice9.htmlText="Felin";
	Choice11.htmlText="Lizan";
	textL("Choose which race you want to be:");
	textLP("\r\rHuman - A race supposedly descendant of apes, their curious minds are more open to change and their skin is slightly more sensitive.");
	textLP("\r\rEquan - A race supposedly descendant of horses, their large genitals make them slightly more sexual and their muscles are more powerful.");
	textLP("\r\rLupan - A race supposedly descendant of wolves, their lean bodies are stronger and their minds more quick-witted.");
	textLP("\r\rFelin - A race supposedly descendant of cats, their lust-driven society makes them a bit more sexual and sensitive.");
	textLP("\r\rLizan - A race supposedly descendant of some kind of reptile, their desert-adapted bodies have made them stronger, but they're still careful as their scales make them somewhat sensitive.");
	doListen = function():void{
		boobTotal = 2;
		if (buttonChoice == 6){
			race = 1;
			changeMod += .5;
			currentZone = 1;
			foundSoftlik = true;
			humanAffinity = 50;

			dominant = 1;
			ears = 1;
			skinType = 1;
			faceType = 10;
			strength = 15;
			mentality = 17;
			libido = 15;
			sensitivity = 17;
			doGender();
		}
		if (buttonChoice == 1){
			race = 2;
			foundFirmshaft = true;
			currentZone = 2;
			horseAffinity = 50;
			cockSizeMod += 1;
			cockNarrowMod += 0.5;
			vagSizeMod += 1;
			dominant = 2;
			tail = 2;
			ears = 2;
			skinType = 2;
			faceType = 20;
			strength = 17;
			mentality = 15;
			libido	= 17;
			sensitivity = 15;
			tallness += 4;
			doGender();			
		}
		if (buttonChoice == 3){
			race = 3;
			foundTieden = true;
			currentZone = 3;
			wolfAffinity = 50;
			knot = true;
			boobTotal = 6;
			dominant = 3;
			tail = 3;
			ears = 3;
			skinType = 2;
			faceType = 30;
			strength = 17;
			mentality = 17;
			libido = 15;
			sensitivity = 15;
			tallness += -2;
			doGender();			
		}
		if (buttonChoice == 9){
			race = 4;
			foundSizCalit = true;
			currentZone = 4;
			catAffinity = 50;
			dominant = 4;
			heat++;
			heatMaxTime = 96;
			heatTime = 96;
			boobTotal = 6;
			tail = 4;
			ears = 4;
			skinType = 2;
			faceType = 40;
			strength = 15;
			mentality = 15;
			libido = 17;
			sensitivity = 17;
			tallness += -3;
			doGender();			
		}	
		if (buttonChoice == 11){
			race = 6;
			foundOviasis = true;
			currentZone = 6;
			lizardAffinity = 50;
			dominant = 6;
			eggLaying = 1;
			eggTime = 36;
			eggMaxTime = 36;
			tail = 6;
			ears = 6;
			skinType = 3;
			faceType = 60;
			strength = 17;
			mentality = 16;
			libido = 15;
			sensitivity = 16;
			tallness += 2;
			doGender();			
		}	
	}	
}


/***************
 *Choose Gender*
 ***************/
 
function doGender():void {
	currentDayCare = dominant;
	statDisplay();
	viewButtonText(0,0,0,0,1,1,1,0,0,0,0,0);
	viewButtonOutline(0,0,0,0,1,1,1,0,0,0,0,0);
	Choice5.htmlText="Male";
	Choice6.htmlText="Female";		
	Choice7.htmlText="Herm";	
	textL("Choose which gender you want to be:\r\rMale - You has painus!\r\rFemale - You has vagoo!\r\rHerm - You has painus and vagoo!");
	doListen = function():void{
		if (buttonChoice == 5){	gender = 1;	}
		if (buttonChoice == 6){	gender = 2;	}
		if (buttonChoice == 7){ gender = 3;	}
		if (gender == 1){
			cockSize = 12;
			ballSize = 4;
			balls = 2;
			cockTotal = 1;
			cockMoist = 1;
			strength++;
			if (dominant == 1){ humanCocks = 1;}
			if (dominant == 2){ horseCocks = 1;}
			if (dominant == 3){ wolfCocks = 1;}
			if (dominant == 4){ catCocks = 1;}
			if (dominant == 6){ 
				lizardCocks = 2;
				cockTotal++;
			}
		}
		if (gender == 2){
			vagSize = 12;
			vulvaSize = 5;
			pregArray = [false, 0, 0, 0, 0];
			vagTotal = 1;
			vagMoist = 1;
			clitSize = 2;
			mentality++;
		}
		if (gender == 3){
			cockSize = 8;
			ballSize = 2;
			balls = 2;
			cockTotal = 1;
			cockMoist = 1;
			pregArray = [false, 0, 0, 0, 0];
			vagTotal = 1;
			vagMoist = 1;
			vagSize = 8;
			vulvaSize = 3;
			if (dominant == 1){ humanCocks = 1;}
			if (dominant == 2){ horseCocks = 1;}
			if (dominant == 3){ wolfCocks = 1;}
			if (dominant == 4){ catCocks = 1;}
			if (dominant == 6){ 
				lizardCocks = 2;
				cockTotal++;
			}
			libido++;
		}
		bodyType();
	}
}

/******************
 *Choose Body Type*
 ******************/

function bodyType():void{
	statDisplay();
	if (gender == 1){
		viewButtonOutline(1,0,1,0,1,0,1,0,0,1,0,0);
		viewButtonText(1,0,1,0,1,0,1,0,0,1,0,0);
		buttonWrite(1, "Bodybuilder");
		buttonWrite(3, "Average");
		buttonWrite(5, "Cunt Boy");
		buttonWrite(7, "Femme Boy");
		buttonWrite(10, "Childlike");
	}
	if (gender == 2){
		viewButtonOutline(0,1,1,0,1,0,0,0,0,1,0,0);
		viewButtonText(0,1,1,0,1,0,0,0,0,1,0,0);
		buttonWrite(2, "Bodybuilder");
		buttonWrite(5, "Average");
		buttonWrite(3, "Voluptuous");
		buttonWrite(10, "Childlike");
	}
	if (gender == 3){
		viewButtonOutline(0,1,0,0,1,1,0,0,0,1,0,0);
		viewButtonText(0,1,0,0,1,1,0,0,0,1,0,0);
		buttonWrite(2, "Bodybuilder");
		buttonWrite(5, "Masculine");
		buttonWrite(6, "Feminine");
		buttonWrite(10, "Childlike");
	}
	textL("Choose your body type. Types determine height and a few beginning characteristics. Their names describe what they look like and may potentially alter your true gender.");
	doListen = function():void{
		if (gender == 1){
			if (buttonChoice == 1) { 
				body = 29;
				hips = 4;
				butt = 4;
				tallness += 70+Math.floor(percent()/10);
				strength += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 3) { 
				body = 20; 
				hips = 3;
				butt = 3;
				tallness += 68+Math.floor(percent()/10);
				libido += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 5) {
				body = 20;
				hips = 3;
				butt = 3;
				tallness += 68+Math.floor(percent()/10);
				libido += 1;
				stats(0,0,0,0);
				//Remove male bits
				cockSize = 0;
				ballSize = 0;
				balls = 0;
				cockTotal = 0;
				cockMoist = 0;
				humanCocks = 0;
				horseCocks = 0;
				wolfCocks = 0;
				catCocks = 0;
				lizardCocks = 0;
				//Add female bits
				vagSize = 8;
				vulvaSize = 3;
				pregArray = [false, 0, 0, 0, 0];
				gender = 2;
				vagTotal = 1;
				vagMoist = 1;
				clitSize = 2;
				doStartingDescription();
			}
			if (buttonChoice == 7) {
				body = 15;
				hips = 7;
				butt = 6;
				breastSize = 4;
				nippleSize = 2;
				tallness += 60+Math.floor(percent()/10);
				sensitivity += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 10)	{
				body = 7;
				hips = 1;
				butt = 2;
				tallness += 42+Math.floor(percent()/10);
				sensitivity += 2;
				mentality -= 2;
				strength -= 4;
				libido += 2;
				cockSize = 6;
				cockMoist = 1;
				ballSize = 2;
				stats(0,0,0,0);
				doStartingDescription();
			}
		}
		if (gender == 2){
			if (buttonChoice == 2) { 
				body = 29;
				hips = 5;
				butt = 4;
				tallness += 68+Math.floor(percent()/10);
				breastSize = 4;
				nippleSize = 4;
				strength += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 3) { 
				body = 16; 
				hips = 9;
				butt = 6;
				tallness += 60+Math.floor(percent()/10);
				breastSize = 10;
				nippleSize = 10;
				libido += 2;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 5) {
				body = 13;
				hips = 6;
				butt = 5;
				tallness += 60+Math.floor(percent()/10);
				breastSize = 6;
				nippleSize = 6;
				mentality += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 10)	{
				body = 7;
				hips = 2;
				butt = 2;
				tallness += 41+Math.floor(percent()/10);
				sensitivity += 2;
				mentality -= 2;
				strength -= 4;
				libido += 2;
				vagSize = 6;
				breastSize = 2;
				nippleSize = 2;
				vulvaSize = 2;
				clitSize = 1;
				vagMoist = 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
		}
		if (gender == 3){
			if (buttonChoice == 2) { 
				body = 29;
				hips = 4;
				butt = 4;
				tallness += 68+Math.floor(percent()/10);
				breastSize = 5;
				nippleSize = 6;
				strength += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 5) { 
				body = 19; 
				hips = 3;
				butt = 3;
				tallness += 62+Math.floor(percent()/10);
				breastSize = 2;
				nippleSize = 2;
				libido += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 6) {
				body = 14;
				hips = 5;
				butt = 4;
				tallness += 58+Math.floor(percent()/10);
				breastSize = 6;
				nippleSize = 6;
				mentality += 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
			if (buttonChoice == 10)	{
				body = 7;
				hips = 2;
				butt = 2;
				tallness += 42+Math.floor(percent()/10);
				sensitivity += 2;
				mentality -= 2;
				strength -= 4;
				libido += 2;
				cockSize = 4;
				cockMoist = 1;
				ballSize = 1;
				vagSize = 4;
				clitSize = 1;
				vagMoist = 1;
				vulvaSize = 1;
				breastSize = 1;
				nippleSize = 1;
				stats(0,0,0,0);
				doStartingDescription();
			}
		}
	}
}

/***********************
 *Starting Descriptions*
 ***********************/
 
function doStartingDescription():void{
	regionChange(currentZone);
	dayTime(0);
	currentRegion.visible = true;
	region.visible = true;
	doHP(10000);
	doSexP(0);
	textL("\r\"...Hello?\"");
	doNext();
	doListen = function():void{
		textL("\r\r\"...Can anybody hear me?\"");
		doNext();
		doListen = function():void {
			textL("\r\r\r\"Please... I know you are still young... You still do not know the world... But... It is almost ready again...\"");
			doNext();
			doListen = function():void {
				textL("\r\r\r\r\"I am so tired...\"\r\r\"...Please...\"");
				doNext();
				doListen = function():void {
					textL("\r\r\r\r\r\"S⌠æ☼m±¥§ me...\"");
					doNext();
					doListen = function():void {
						textL("Ugh... You awaken from that dream for the fifth time this month. That soft, gentle voice echoes around your mind. A numbing dream with nothing to keep your attention. Something about a tower... Not a dream about flying or fleeing, nor school nor sex. Just this bland dream that you can remember better than all the rest. And yet you can never recall those last words...\r\rIt's been a few months since you started having that dream and it's been growing in frequency. Just so... annoying. Makes you feel anxious and antsy, like there is something missing in your life.\r\rLife isn't bad in ");
						if (race == 1) { textLP("Softlik, though. The houses of wood and stone are comfortable, safe, and stable. The rolling hills around the city are quite beautiful. Lots of people in town are coming up with new potions or inventions, and with humans being so prone to being changed by the outside world of Nimin, there's rarely a dull moment."); }
						if (race == 2) { textLP("Firmshaft, though. The large canvas tents provide plenty of room for harems filled with the large genitals equans are most notable for, with plenty of airflow to keep things from getting too hot. The broad plains allow for lots of trotting and races. Between the warmth and the plentiful activity, there's always great sex and comfort around here, with little need to venture into the outside world of Nimin."); }
						if (race == 3) { textLP("Tieden, though. The wooden buildings and surrounding walls provide plenty of security from the outside world of Nimin, all the forest and jungle around filled with dangers. Not that there's any reason to be afraid; with the training and constant vigil, lupans are great at handling their foes. Especially when it comes to \"handling\" them. Plus letting off steam around here tends to be rather enjoyable."); }
						if (race == 4) { textLP("Siz'Calit, though. The tree-borne huts and bridges admist the canopy of the jungle allows for plenty of breezes and pleasant napping spots in the hot and humid area. And with so many felin females going into heat and craving sex, it's difficult to tell if the humidity is from the jungle itself or the kinky activity within. It's hard to imagine a sex-crazed felin surviving long in the outside world on Nimin."); }
						if (race == 6) { textLP("Oviasis, though. The rock-hewn homes built into the sides of the surrounding cliffs provide plenty of insulation against the warm days and cool nights of the desert. This small oasis of paradise in the middle of nowhere provides plenty of ways to lounge, allowing the lizan people to soak in the sun and the women to casually lay their eggs. This near-resort is usually much more pleasant than the outside world of Nimin."); }
						textLP("\r\rBut that dream...");
						doNext();
						doListen = function():void {
							textL("It isn't unheard of to go venturing out. In fact, you know there are other civilizations around, separated by the strange wilderness. Explorers of other races have come and visited from time to time. A rarity and always so interesting in how they look and act, so diverse from your own people.\r\rAlthough, they do make you wonder... Why don't you see them more often? They seem to enjoy visiting, after all. There's no history of hate or trouble between the peoples. Although, the recorded history only goes back a few generations, so who knows what could have happened centuries ago...\r\rOh well.");
							doNext();
							doListen = function():void {
								textL("You finally get out of bed and start your day. And after that dream, you just can't seem to shake the feeling that there's more to this life, this world... The dangerously odd world of Nimin.");
								doNext();
								doListen = function():void{
									toggleSide();
									toggleSide();
									Option7.visible = true;
									currentState = 1;
									doGeneral();
								}
							}
						}
					}
				}
			}
		}
	}

	/*textL("In the world of Nimin, civilizations are scattered and isolated by the harsh wilderness. Not that the wilderness was deadly, however. Most towns knew of their neighbors and were never surprised by new faces. Rather... people who ventured into the wilderness rarely returned the same as when they left, if they managed to find their way back amidst the seemingly changing geography.\r\rThere's little history to Nimin beyond that, a mystery that may be solved some day.");
	if (race == 1) { textLP("\r\rFrom the Human city of Softlik, you were raised amongst a curious civilization. Humans are often the first to visit the others, though most generally don't explore too far, rarely reaching the further civilizations.  Yet, the city of Softlik has always been welcoming of newcomers, their houses of wood and stone allowing for plenty of stability in the rather safe rolling hills."); }
	if (race == 2) { textLP("\r\rFrom the Equan city of Firmshaft, you were raised amongst a nomadic civilization. Equans are a strong race and roam about the plains, well used to travel. As such, it's not too unusual for some to travel abroad, though that tends to mean not being able to enjoy the harems... Nevertheless, the core city of Firmshaft stays relatively still, mostly made up of large canvas tents that slowly shifts its borders around as they move about."); }
	if (race == 3) { textLP("\r\rFrom the Lupan city of Tieden, you were raised amongst a toughened civilization. Lupans have managed to survive with jungle and forest surrounding them, defending themselves from the more savage creatures. Tieden is a tribal city made from wooden buildings and surrounded by tall walls to protect themselves. And being so experienced against the 'odd' forces, some are encouraged to keep up ties with the other civilizations and maybe discover more."); }
	if (race == 4) { textLP("\r\rFrom the Felin city of Siz'Calit, you were raised amongst a sexual civilization. Felins are often open about their sexuality, especially with their females often going into heat. Although, sometimes the heat of the women, along with the heat of the jungle they live in, can be too sweltering and some feel the need for fresh air. Whatever their true reason is for leaving, their home city of Siz'Calit is always a safe and welcome refuge, with many huts and bridges high in the canopy."); }
	if (race == 6) { textLP("\r\rFrom the Lizan city of Oviasis, you were raised amongst a relaxed civilization. Lizans have a sleek build, strong and resilient, adapted to survive in the harsh desert environment. Having taken refuge within a hidden oasis, their homes built into the surrounding rock formations and beaches, they tend to relax and bask in the warm sun in their rather luxurious city. However, they must frequently venture into the surrounding desert for resources and the danger and severe weather may make some wish to venture elsewhere."); }
	textLP("\r\rStanding "+Math.floor(tallness/12)+" feet and "+(tallness - Math.floor(tallness/12)*12)+" inches tall with a "+bodyDesc()+" figure, you head off with your own reasons.");
	*/
}
