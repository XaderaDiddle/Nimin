/**************
 *Battle Event*
 **************/

function doBattle():void {
	bc();
	viewButtonOutline(1,1,0,0,1,0,1,0,1,1,0,1);
	viewButtonText(1,1,0,0,1,0,1,0,1,1,0,1);
	buttonWrite(1, "Bag");
	buttonWrite(2, "Run");
	buttonWrite(5, "Attack");
	//buttonWrite(6, "Lust-Cast");
	buttonWrite(7, "Special");
	buttonWrite(9, "Rape");
	buttonWrite(10, "Entice");
	buttonWrite(12, "Submit");
	if (lust < 15){ Choice12.visible = false; }
	doListen = function():void{
		if (buttonChoice == 1){
			doBag();
		}
		if (buttonChoice == 2){
			if (percent() <= (20+runMod)){
				textL("You successfully run away!");
				if (inDungeon == true) {
					regionChange(currentZone);
					inDungeon = false;
					textLP("\r\rTo escape, you run all the way back to "+regionName(currentZone)+".");
				}
				currentState = 1;
				hrs = 1;
				doEnd();
			}
			else {
				textL("You fail to run away...");
				if (currentState == 2) { enemyAttack(); }
				if (currentState == 2) { doBattle(); }
			}
		}
		if (buttonChoice == 5){
			weaponAttack();
			if (currentState == 2) { enemyAttack(); }
			if (currentState == 2) { doBattle(); }
		}
		/*if (buttonChoice == 6) {
			doLustCast();
		}*/
		if (buttonChoice == 7) { doSpecialAbility(1); }
		if (buttonChoice == 9){
			if (gender == 0 || eGen == 0){
				textL("What are you going to rape it with? Good intentions?\r\rChoose another option.");
				if (currentState == 2) { doBattle(); }
			}
			else {
				textL("You attempt to toss the "+enemyName()+" to the ground and fuck it wildly!");
				if (lust < 15){
					textLP("\r\rHowever, you aren't nearly aroused enough to even think about penetration, leaving your efforts futile.");
					if (currentState == 2) { enemyAttack(); }
				}
				else if ((percent()/5+str+rapeMod) <= (percent()/5+eStr-(eLust/2))){ 
					textLP("\r\rHowever, the "+enemyName()+" overpowers you and tosses you off!");
					if (currentState == 2) { enemyAttack(); }
				}
				else if (((ePref != gender && ePref != 4) && gender != 3) || ePref == 0){
					var dmg:int = Math.floor(percent()/10+lust/10);
					textLP("\r\rHowever, the "+enemyName()+" is sorely turned off by your rough pounding on its sensitive area, merely hurting its genitals and its pride.\r\rBut you do deal "+dmg+" damage and satisfy yourself a bit.");
					doeHP(-dmg);
					if (enemyID < 300) { doLust(-Math.floor(percent()/20+sen/10), 2, 1, 2); }
					else { doLust(-Math.floor(percent()/20+sen/10), 2, 1, 2); }
				} 
				else {
					doRape();
					var eLustChange:int = Math.floor(percent()/10+eSen/5);
					if ((eLust - eLustChange) <=0){
						eLust = 0;
					}
					if ((eMenta - eLustChange) < 0){
						specialRapeWin();
						textLP("\r\rYou win!" );
						currentState = 1;
						doNext();
						doListen = function():void{ battleWin(); }
					}
					else {
						textLP("\r\rThe "+enemyName()+" picks itself up after you had your way with it, a little distraught but not yet defeated." );
						eLust -= eLustChange;	
					}
					eMenta -= eLustChange;
				}

				if (currentState == 2) { doBattle(); }
			}
		}
		if (buttonChoice == 10){
			doEntice();
			if (currentState == 2) { enemyAttack(); }
			if (currentState == 2) { doBattle(); }
		}
		if (buttonChoice == 12)	{
			textL("No longer wishing to fight, you attempt to submit yourself to the "+enemyName()+"'s whims in hopes of leaving the battle with a little fun.");
			if (ePref == 0 || (ePref == 1 && gender == 2) || (ePref == 2 && gender == 1) || gender == 0) {
				textLP("\r\rHowever, it is quickly apparent that the enemy has no interest in you, in that fashion.");
				if (currentState == 2) { enemyAttack(); }
			}
			else if (eLust < eMenta)	{
				textLP("\r\rHowever, the "+enemyName()+" isn't nearly aroused enough, a bit too cautious at the moment to assault you in such a way.");
				if (currentState == 2) { enemyAttack(); }
			}
			else {
				currentState = 1;
				doNext();
				doListen = function():void{
					doGetRaped();
				}
			}
			if (currentState == 2) { doBattle(); }
		}
	}
}

function weaponAttack():void{
	var dmg:int = 0;
	//Math.floor(Math.random()*(1+high-low))+low + Math.floor(str/2 -((100-eSen)/20));
	if (weapon == 10){
		dmg = Math.floor(Math.random()*(1+10-1))+1 + Math.floor(str/2 -((100-eSen)/20));
		textL("You punch the "+enemyName()+" with your fists, dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 116){
		dmg = Math.floor(Math.random()*(1+12-5))+5 + Math.floor(str/2 -((100-eSen)/20));
		textL("You lunge at the "+enemyName()+" and stab it with your dagger, dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 117){
		dmg = Math.floor(Math.random()*(1+20-2))+2 + Math.floor(str/2 -((100-eSen)/20));
		textL("You swing your hammer at the "+enemyName()+", dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 118){
		dmg = Math.floor(Math.random()*(1+25-10))+10 + Math.floor(str/2 -((100-eSen)/20));
		textL("You slash at the "+enemyName()+" with your saber, dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 119){
		dmg = Math.floor(Math.random()*(1+18-12))+12 + Math.floor(str/2 -((100-eSen)/20));
		textL("You lash at the "+enemyName()+" with your whip, dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 127){
		dmg = Math.floor(Math.random()*(1+20-10))+10 + Math.floor(str/2 -((100-eSen)/20));
		textL("You whip around your tail and smack the "+enemyName()+" with the spike at the end, dealing "+dmg+" damage!");
		doeHP(-dmg);
	}
	if (weapon == 235){
		dmg = Math.floor(Math.random()*(1+5-1))+1 + Math.ceil(ment/10);
		if (ment < 30){	textL("You awkwardly stuff the wide-rimmed head of the rod into your mouth, sucking as hard as you can even though you only manage drain "+dmg+" HP from the "+enemyName()+"."); }
		else if (ment < 70)	{ textL("You gently lick around the wide-rimmed head of the rod before sliding it into your mouth and gently sucking from the tip, draining a whole "+dmg+" HP from the "+enemyName()+"."); }
		else { textL("You lick up the shaft of the rod before swirling your tongue around the wide-rimmed head, coaxing it into your mouth as you continue to drag your tastebuds over and around it while pumping it in and out gently, draining "+dmg+" HP from the "+enemyName()+"!"); }
		doeHP(-dmg);
		doHP(dmg);
	}
}

//Special Abilities
function doSpecialAbility(more:int):void {
	viewButtonOutline(0,0,0,0,0,0,0,0,0,0,0,1);
	viewButtonText(0,0,0,0,0,0,0,0,0,0,0,1);
	choicePage = more;
	showPage(true, "Spc Abilities");
	buttonWrite(4, "&#60;&#60;");
	buttonWrite(8, ">>");
	buttonWrite(12, "Return");
	
	var specialAbilityArray:Array = [];
	if (skunkAffinity >= 40) { specialAbilityArray.push(1);	}

	if (specialAbilityArray.length < 1) { textL("Your do not currently have any special abilities that you can use."); }
	else { textL("Which special ability would you like to use?"); }

	if (specialAbilityArray.length > 9) {
		Choice4Outline.visible = true;
		Choice4.visible = true;
		Choice8Outline.visible = true;
		Choice8.visible = true;
	}

	if (specialAbilityArray[0 + (more*9 - 9)]) { 
		buttonWrite(1, specialAbilityName(specialAbilityArray[0 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[0 + (more*9 - 9)]);
		Choice1Outline.visible = true;
		Choice1.visible = true;
	}
	if (specialAbilityArray[1 + (more*9 - 9)]) { 
		buttonWrite(2, specialAbilityName(specialAbilityArray[1 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[1 + (more*9 - 9)]);
		Choice2Outline.visible = true;
		Choice2.visible = true;
	}
	if (specialAbilityArray[2 + (more*9 - 9)]) { 
		buttonWrite(3, specialAbilityName(specialAbilityArray[2 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[2 + (more*9 - 9)]);
		Choice3Outline.visible = true;
		Choice3.visible = true;
	}
	if (specialAbilityArray[3 + (more*9 - 9)]) { 
		buttonWrite(5, specialAbilityName(specialAbilityArray[3 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[3 + (more*9 - 9)]);
		Choice5Outline.visible = true;
		Choice5.visible = true;
	}
	if (specialAbilityArray[4 + (more*9 - 9)]) { 
		buttonWrite(6, specialAbilityName(specialAbilityArray[4 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[4 + (more*9 - 9)]);
		Choice6Outline.visible = true;
		Choice6.visible = true;
	}
	if (specialAbilityArray[5 + (more*9 - 9)]) { 
		buttonWrite(7, specialAbilityName(specialAbilityArray[5 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[5 + (more*9 - 9)]);
		Choice7Outline.visible = true;
		Choice7.visible = true;
	}
	if (specialAbilityArray[6 + (more*9 - 9)]) { 
		buttonWrite(9, specialAbilityName(specialAbilityArray[6 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[6 + (more*9 - 9)]);
		Choice9Outline.visible = true;
		Choice9.visible = true;
	}
	if (specialAbilityArray[7 + (more*9 - 9)]) { 
		buttonWrite(10, specialAbilityName(specialAbilityArray[7 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[7 + (more*9 - 9)]);
		Choice10Outline.visible = true;
		Choice10.visible = true;
	}
	if (specialAbilityArray[8 + (more*9 - 9)]) { 
		buttonWrite(11, specialAbilityName(specialAbilityArray[8 + (more*9 - 9)]));
		specialAbilityDescription(specialAbilityArray[8 + (more*9 - 9)]);
		Choice11Outline.visible = true;
		Choice11.visible = true;
	}

	doListen = function():void{
		if (buttonChoice == 1){	specialAbilityUse(specialAbilityArray[0 + (more*9 - 9)]); }
		if (buttonChoice == 2){	specialAbilityUse(specialAbilityArray[1 + (more*9 - 9)]); }
		if (buttonChoice == 3){	specialAbilityUse(specialAbilityArray[2 + (more*9 - 9)]); }
		if (buttonChoice == 5){	specialAbilityUse(specialAbilityArray[3 + (more*9 - 9)]); }
		if (buttonChoice == 6){	specialAbilityUse(specialAbilityArray[4 + (more*9 - 9)]); }
		if (buttonChoice == 7){	specialAbilityUse(specialAbilityArray[5 + (more*9 - 9)]); }
		if (buttonChoice == 9){	specialAbilityUse(specialAbilityArray[6 + (more*9 - 9)]); }
		if (buttonChoice == 10){ specialAbilityUse(specialAbilityArray[7 + (more*9 - 9)]); }
		if (buttonChoice == 11){ specialAbilityUse(specialAbilityArray[8 + (more*9 - 9)]); }
		
		if (buttonChoice == 4) { 
			if (specialAbilityArray.length/9 < more)	{ doSpecialAbility(1); }
			else { doSpecialAbility(more+1); }
		}
		if (buttonChoice == 8) { 
			if (more == 1)	{ doSpecialAbility(Math.floor(specialAbilityArray.length/9)); }
			else { doSpecialAbility(more - 1); }
		}
		if (buttonChoice == 12)	{
			showPage(false, "");
			doReturn();
		}
	}
}

function specialAbilityName(ID:int):String {
	var tempStr:String = "SPECIAL ABILITY NAME ERROR "+ID+"";

	if (ID == 1) { tempStr = "Skunk Spray";	}
	
	return tempStr;
}

function specialAbilityDescription(ID:int):String {
	var tempStr:String = "SPECIAL ABILITY DESC ERROR "+ID+"";

	if (ID == 1) { tempStr = "\r\rSkunk Spray - Using your scent glands in your rump, you can unleash this terrible stench upon your enemy, causing damage and potentially making them miss their next turn."; }

	return tempStr;
}

function specialAbilityUse(ID:int):void {
	var dmg:int = 0;

	//Skunk Spray
	if (ID == 1) {
		dmg = Math.floor(10 + percent()/10);
		textLP("\r\rYou turn around and aim your "+buttDesc()+" butt at the "+enemyName()+" and spray out a foul odor. The "+enemyName()+" snorts and shakes, taking "+dmg+" damage.");
		doeHP(-dmg);
		if (percent() < 35 && currentState == 2) {
			textLP("\r\rThe "+enemyName()+" flinches so badly from the stench that it misses its chance to counter.");
		}
		else if (currentState == 2)	{ enemyAttack();	}
	}
	
	if (currentState == 2) { doBattle(); }
}

function doEntice():void{
	var chance:int = percent();
	if (eGen == 1 && gender == 1 && ePref != 2 && ePref !=0){
		if (chance <= 50)
		{
			textL("You turn around and bend over before the "+enemyName()+" stroking the "+cockDesc()+" bulge in your "+clothesBottom()+" and patting your "+buttDesc()+" rump while you wave your "+hipDesc()+" hips");
			if (tail != 0) { textLP(", your "+tailDesc()+" tail dancing above"); }
			textLP(" tantalizingly.");
		}
		if (chance > 50){
			textL("You flex your muscles, trying to show off your masculinity, while you thrust your "+hipDesc()+" hips in an attempt to show off your "+cockDesc()+" bulge.");
		}
			
		if (ePref == 1 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5+enticeMod/2));	}
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10+enticeMod/2)); }
	}
	else if (eGen == 1 && gender == 2 && ePref != 1 && ePref !=0){
		if (chance <= 50)
		{
			textL("You turn around and bend over before the "+enemyName()+", stroking your "+vulvaDesc()+" vulva through your "+clothesBottom());
			if (lust > 20 && moistCalc(2) > 3){	textLP(" until your feminine arousal seeps through"); }
			textLP(". Your "+hipDesc()+" hips wiggle erotically");
			if (tail != 0) { textLP(", your "+tailDesc()+" tail dancing above"); }
			textLP(".");
		}
		if (chance > 50){
			textL("You lick your finger before sliding it into your mouth, sucking and pulling it out slowly with a small drop of saliva dangling upon your supple lips while you rub a "+nipDesc()+"nipple through your "+clothesTop()+" with your other hand.");
		}
		
		if (ePref == 2 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5+enticeMod/2)); }
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10+enticeMod/2)); }
	}
	else if (eGen == 2 && gender == 1 && ePref != 2 && ePref !=0){
		if (chance <= 50){
			textL("You pull "+pullUD(2)+" your "+clothesBottom()+" a little, revealing the base of your cock-flesh");
			if (lust > 20){ textLP(", the "+cockDesc()+" erection pulsing strongly beneath your "+clothesBottom());	}
			textLP(", rubbing it to show off what you can offer");
			if (moistCalc(1) > 3){ textLP(", a blotch of pre beginning to seep across the fabric"); }
			textLP(".");
		}
		if (chance > 50){
			textL("You flex your muscles as you groan with sexual desire, trying to turn you opponent on with the possibilities of what might come.");
		}
		
		if (ePref == 1 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5+enticeMod/2)); }
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10+enticeMod/2)); }
	}
	else if (eGen == 2 && gender == 2 && ePref != 1 && ePref !=0){
		if (chance <= 50){
			textL("You spread your "+legDesc(6)+", crouching down as both hands grind into your "+vulvaDesc()+" pussy");
			if (lust > 20 && moistCalc(2) > 3){ textLP(", your honey spreading from the crotch of your "+clothesBottom()+",");	}
			if (tail != 0){	textLP(", your "+tailDesc()+" tail swishing across the ground,"); }
			textLP(" luring the "+enemyName()+" to come grind instead.");
		}
		if (chance > 50){
			textL("Your arms hug beneath your "+boobDesc()+" chest, squeezing the mounds and making them look even bigger");
			if ((lust > 20 && nippleSize > 1) || nippleSize > 6){ textLP(", your "+nipDesc()+"nipples clearly visible through your "+clothesTop()); }
			textLP(".");
		}
		
		if (ePref == 2 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5+enticeMod/2));	}
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10+enticeMod/2));	}
	}
	else if (eGen == 3 && gender == 1 && ePref != 2 && ePref !=0){
		if (chance <= 25)
		{
			textL("You turn around and bend over before the "+enemyName()+" stroking the "+cockDesc()+" bulge in your "+clothesBottom()+" and patting your "+buttDesc()+" rump while you wave your "+hipDesc()+" hips");
			if (tail != 0) { textLP(", your "+tailDesc()+" tail dancing above"); }
			textLP(" tantalizingly.");
		}
		if (chance > 25 && chance <= 50){
			textL("You flex your muscles, trying to show off your masculinity, while you thrust your "+hipDesc()+" hips in an attempt to show off your "+cockDesc()+" bulge.");
		}
		if (chance > 50 && chance <= 75){
			textL("You pull "+pullUD(2)+" your "+clothesBottom()+" a little, revealing the base of your cock-flesh");
			if (lust > 20){ textLP(", the "+cockDesc()+" erection pulsing strongly beneath your "+clothesBottom());	}
			textLP(", rubbing it to show off what you can offer");
			if (moistCalc(1) > 3){ textLP(", a blotch of pre begining to seep across the fabric");	}
			textLP(".");
		}
		if (chance > 75){
			textL("You flex your muscles as you groan with sexual desire, trying to turn you opponent on with the possibilities of what might come.");
		}
		
		if (ePref == 1 || ePref ==4){ doeLust(Math.floor(percent()/10+eLib/5+enticeMod/2)); }
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10+enticeMod/2)); }
	}
	else if (eGen == 3 && gender == 2 && ePref != 1 && ePref !=0){
		if (chance <= 25){
			textL("You spread your "+legDesc(6)+", crouching down as both hands grinding into your "+vulvaDesc()+" pussy");
			if (lust > 20 && moistCalc(2) > 3){	textLP(", your honey spreading from the crotch of your "+clothesBottom()+",");	}
			if (tail != 0){	textLP(", your "+tailDesc()+" tail swishing across the ground,"); }
			textLP(" luring the "+enemyName()+" to come grind instead.");
		}
		if (chance > 25 && chance <= 50){
			textL("Your arms hug beneath your "+boobDesc()+" chest, squeezing the mounds and making them look even bigger");
			if ((lust > 20 && nippleSize > 1) || nippleSize > 6){ textLP(", your "+nipDesc()+"nipples clearly visible through your "+clothesTop()+"."); }
			textLP(".");
		}
		if (chance > 50 && chance <= 75)
		{
			textL("You turn around and bend over before the "+enemyName()+", stroking your "+vulvaDesc()+" vulva through your "+clothesBottom());
			if (lust > 20 && moistCalc(2) > 3){	textLP(" until your feminine arousal seeps through");}
			textLP(". Your "+hipDesc()+" hips waggle erotically");
			if (tail != 0) { textLP(", your "+tailDesc()+" tail dancing above");	}
			textLP(".");
		}
		if (chance > 75){
			textL("You lick your finger before sliding it into your mouth, sucking and pulling it out slowly with a small drop of saliva dangling upon your supple lips while you rub a "+nipDesc()+"nipple through your "+clothesTop()+" with your other hand.");
		}
		
		if (ePref == 2 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5)); }
		else if (ePref == 3){ doeLust(Math.floor(percent()/10+eLib/10)); }
	}
	else if (gender == 3 && ePref !=0 && eGen != 0){
		if (chance <= 25){
			textL("You turn around and bend over before the "+enemyName()+", patting your "+buttDesc()+" ass and "+vulvaDesc()+" pussy. You waggle your "+hipDesc()+" hips, the "+cockDesc()+" bulge in your "+clothesBottom()+" swaying");
			if (tail != 0) { textLP(", your "+tailDesc()+" tail dancing above");	}
			textLP(" deliciously.");
		}
		if (chance > 25 && chance <= 50){
			textL("Your arms hug beneath your "+boobDesc()+" chest, squeezing the mounds and making them look even bigger while you flex, thrusting at the air with your "+cockDesc()+" package bobbing.");
		}
		if (chance > 50 && chance <= 75){
			textL("You pull "+pullUD(2)+" your "+clothesBottom()+" a little, revealing the base of your male anatomy while you spread your "+legDesc(6)+", crouching down as both hands grind across the bulge and into your female portions");
			if (lust > 20 && (moistCalc(2) > 3 || moistCalc(1) > 3)){ textLP(", the fabric quickly growing damp"); }
			textLP(".");
			if (tail != 0){	textLP("Your "+tailDesc()+" tail swishes across the ground in anticipation."); }
		}
		if (chance > 75){
			textL("You lick your finger before sliding it into your mouth, sucking and pulling it out slowly with a small drop of saliva dangling upon your supple lips while you rub the "+cockDesc()+" phallic outline in your "+clothesBottom()+" with your other hand.");
		}
		
		if (ePref == 3 || ePref == 4){ doeLust(Math.floor(percent()/10+eLib/5)); }
		else if (ePref == 1 || ePref == 2){	doeLust(Math.floor(percent()/10+eLib/10));	}
	}
	else if (gender == 0 && ePref != 0 && eGen != 0){
		textL("Your "+hipDesc()+" hips dance provocatively while you lick and suckle your fingers, trying to show off what you can do with what you've still got.");	
		doeLust(Math.floor(percent()/10+eLib/10));
	}
	else{
		textL("Your attempt at an erotic display only seems to turn the "+enemyName()+" off further.");
		eLust -= 5;
	}
}

function battleWin():void{
	textL("You walk away from the battle the victor and to the victor goes the spoils.");
	if (eCoin != 0){ 
		textLP("\r\rSomewhere on the passed out body (you probably don't want to know where) you find "+eCoin+" coins.");
		doCoin(eCoin);
	}
	if (eItem != 0){
		textLP("\r\rYou manage to obtain "+itemName(eItem)+" from your opponent.");
	}
	if (eSexP != 0){
		textLP("\r\rFor your efforts, you grow in experience, gaining "+eSexP+" SexP!");
		doSexP(eSexP);
	}
	if (eItem != 0){ itemAdd(eItem); }
	hrs = 2;
	doEnd();
}


function setEnemyStats(enemyHP:int, enemyStr:int, enemyMenta:int, enemySen:int, enemyLib:int, enemyLust:int, enemyGen:int, enemyPref:int, enemyCoin:int, enemySexP:int, enemyItem:int):void {
		eHP = enemyHP;
		eStr = enemyStr;
		eMenta = enemyMenta;
		eSen = enemySen;
		eLib = enemyLib;
		eLust = enemyLust;
		eGen = enemyGen;
		ePref = enemyPref;
		eCoin = enemyCoin;
		eSexP = enemySexP;
		eItem = enemyItem;
}

function doeHP(changes:int):void {
	if ((eHP + changes) <=0){
		specialKOWin();
		textLP("\r\r You win the battle!");
		if (inBag == true) { inBag = false; }
		currentState = 1;
		doNext();
		doListen = function():void{	battleWin(); }
	}
	eHP += changes;
	if(eHP > 0) {textLP("\r\rYour enemy now seems to be under "+(Math.ceil(eHP/eMaxHP*10)*10)+"% Stamina."); }
}

function doeLust(changes:int):void{
	if (eGen == 1){
		if ((eLust + changes) > 65 && eLust <= 65){
			textLP("\r\rThe "+enemyName()+" smears the pre across its rod, stroking it gently while fighting, majorly distracted.");
		}
		else if ((eLust + changes) > 40 && eLust <= 40){
			textLP("\r\rThe "+enemyName()+" squirms, pre dripping from the tip of its stiffness.");
		}
		else if ((eLust + changes) > 20 && eLust <= 20){
			textLP("\r\rThe "+enemyName()+" shifts a little, an erection clearly beginning to grow.");
		}		
	}
	if (eGen == 2){
		if ((eLust + changes) > 65 && eLust <= 65){
			textLP("\r\rThe "+enemyName()+" smears the honey all over as it rubs itself constantly while fighting, majorly distracted.");
		}
		else if ((eLust + changes) > 40 && eLust <= 40){
			textLP("\r\rThe "+enemyName()+" squirms, honey dribbling from its naughty hole.");
		}
		else if ((eLust + changes) > 20 && eLust <= 20){
			textLP("\r\rThe "+enemyName()+" shifts a little, caressing its pussy here and there when it can.");
		}		
	}
	if (eGen == 3){
		if ((eLust + changes) > 65 && eLust <= 65){
			textLP("\r\rThe "+enemyName()+" smears the lubricant all over as it rubs and strokes itself constantly while fighting, majorly distracted.");
		}
		else if ((eLust + changes) > 40 && eLust <= 40){
			textLP("\r\rThe "+enemyName()+" squirms, honey dribbling and pre dripping from its aroused genitals.");
		}
		else if ((eLust + changes) > 20 && eLust <= 20){
			textLP("\r\rThe "+enemyName()+" shifts a little, caressing its pussy here and there when it can while its erection clearly grows.");
		}		
	}
	eLust += changes;
}

function eDmg(eweapon:Number):int{
	var dmgRed:int 
	if (sen > 0){ dmgRed = Math.floor((100-sen)/2); }
	if (dmgRed > level) { dmgRed = level; }
	var dmg:int = Math.floor((percent()/eweapon+eStr/2)-dmgRed);
	if (dmg < 0) { dmg = 0; }
	return dmg;
}