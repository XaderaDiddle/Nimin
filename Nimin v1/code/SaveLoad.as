/*******************
 *Save/Loading Game*
 *******************/

function saveGo():void {
	var so1:SharedObject = SharedObject.getLocal("Nimin_Save1", "/");
	var so2:SharedObject = SharedObject.getLocal("Nimin_Save2", "/");
	var so3:SharedObject = SharedObject.getLocal("Nimin_Save3", "/");
	var so5:SharedObject = SharedObject.getLocal("Nimin_Save5", "/");
	var so6:SharedObject = SharedObject.getLocal("Nimin_Save6", "/");
	var so7:SharedObject = SharedObject.getLocal("Nimin_Save7", "/");
	var so9:SharedObject = SharedObject.getLocal("Nimin_Save9", "/");
	var so10:SharedObject = SharedObject.getLocal("Nimin_Save10", "/");
	var so11:SharedObject = SharedObject.getLocal("Nimin_Save11", "/");

	appearanceText.visible = false;
	appearanceBox.visible = false;
	viewButtonOutline(1,1,1,1,1,1,1,0,1,1,1,1);
	viewButtonText(1,1,1,1,1,1,1,0,1,1,1,1);
	if (so1.data.track) { buttonWrite(1, "D:"+so1.data.track[2]+" H:"+so1.data.track[3]); }
	else { buttonWrite(1, "Empty"); }
	if (so2.data.track) { buttonWrite(2, "D:"+so2.data.track[2]+" H:"+so2.data.track[3]);	}
	else { buttonWrite(2, "Empty"); }
	if (so3.data.track) { buttonWrite(3, "D:"+so3.data.track[2]+" H:"+so3.data.track[3]); }
	else { buttonWrite(3, "Empty"); }
	if (so5.data.track) { buttonWrite(5, "D:"+so5.data.track[2]+" H:"+so5.data.track[3]); }
	else { buttonWrite(5, "Empty"); }
	if (so6.data.track) { buttonWrite(6, "D:"+so6.data.track[2]+" H:"+so6.data.track[3]); }
	else { buttonWrite(6, "Empty"); }
	if (so7.data.track) { buttonWrite(7, "D:"+so7.data.track[2]+" H:"+so7.data.track[3]); }
	else { buttonWrite(7, "Empty"); }
	if (so9.data.track) { buttonWrite(9, "D:"+so9.data.track[2]+" H:"+so9.data.track[3]); }
	else { buttonWrite(9, "Empty"); }
	if (so10.data.track) { buttonWrite(10, "D:"+so10.data.track[2]+" H:"+so10.data.track[3]); }
	else { buttonWrite(10, "Empty"); }
	if (so11.data.track) { buttonWrite(11, "D:"+so11.data.track[2]+" H:"+so11.data.track[3]); }
	else { buttonWrite(11, "Empty"); }

	buttonWrite (4, "Save as");	
	buttonWrite (12, "Return");
	textL("Click on a save slot to save your current game to that slot.");
	textLP("\r\rClicking \"Save as\" will allow you to save the game to a location on your computer. Be sure to save with the \".nim\" file type. Keep in mind, while you can save while playing online, you can only load the file if Nimin.swf has been saved to your computer. This is a limitation with Flash.");
	textLP("\r\rOtherwise, click Return to go back to what you were doing.");
	doListen = function():void{
		if (buttonChoice != 12 && buttonChoice != 4){
			var slot:int = buttonChoice;
			//UPDATE THIS
			if (buttonChoice == 1 && so1.data.track) { textL("Day: "+so1.data.track[2]+", Hour: "+so1.data.track[3]+":00"); }
			else if (buttonChoice == 1) { textL("The chosen slot is empty"); }
			if (buttonChoice == 2 && so2.data.track) { textL("Day: "+so2.data.track[2]+", Hour: "+so2.data.track[3]+":00"); }
			else if (buttonChoice == 2) { textL("The chosen slot is empty"); }
			if (buttonChoice == 3 && so3.data.track) { textL("Day: "+so3.data.track[2]+", Hour: "+so3.data.track[3]+":00"); }
			else if (buttonChoice == 3) { textL("The chosen slot is empty"); }
			if (buttonChoice == 5 && so5.data.track) { textL("Day: "+so5.data.track[2]+", Hour: "+so5.data.track[3]+":00"); }
			else if (buttonChoice == 5) { textL("The chosen slot is empty"); }
			if (buttonChoice == 6 && so6.data.track) { textL("Day: "+so6.data.track[2]+", Hour: "+so6.data.track[3]+":00"); }
			else if (buttonChoice == 6) { textL("The chosen slot is empty"); }
			if (buttonChoice == 7 && so7.data.track) { textL("Day: "+so7.data.track[2]+", Hour: "+so7.data.track[3]+":00"); }
			else if (buttonChoice == 7) { textL("The chosen slot is empty"); }
			if (buttonChoice == 9 && so9.data.track) { textL("Day: "+so9.data.track[2]+", Hour: "+so9.data.track[3]+":00"); }
			else if (buttonChoice == 9) { textL("The chosen slot is empty"); }
			if (buttonChoice == 10 && so10.data.track) { textL("Day: "+so10.data.track[2]+", Hour: "+so10.data.track[3]+":00"); }
			else if (buttonChoice == 10) { textL("The chosen slot is empty"); }
			if (buttonChoice == 11 && so11.data.track) { textL("Day: "+so11.data.track[2]+", Hour: "+so11.data.track[3]+":00"); }
			else if (buttonChoice == 11) { textL("The chosen slot is empty"); }
	
			textLP("\r\rAre you sure you want to save your game to slot "+buttonChoice+"?\r\rAny data already saved there will be automatically overwritten.");
			buttonConfirm();
			doListen = function():void {
				if (buttonChoice == 6){
					doSave(slot);
					doReturn();
				}
				else {
					saveGo();
				}
			}
		}
		
		if (buttonChoice == 4) {
			doSave(4);
			doReturn();
		}
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function loadGo():void {
	var so1:SharedObject = SharedObject.getLocal("Nimin_Save1", "/");
	var so2:SharedObject = SharedObject.getLocal("Nimin_Save2", "/");
	var so3:SharedObject = SharedObject.getLocal("Nimin_Save3", "/");
	var so5:SharedObject = SharedObject.getLocal("Nimin_Save5", "/");
	var so6:SharedObject = SharedObject.getLocal("Nimin_Save6", "/");
	var so7:SharedObject = SharedObject.getLocal("Nimin_Save7", "/");
	var so9:SharedObject = SharedObject.getLocal("Nimin_Save9", "/");
	var so10:SharedObject = SharedObject.getLocal("Nimin_Save10", "/");
	var so11:SharedObject = SharedObject.getLocal("Nimin_Save11", "/");

	appearanceText.visible = false;
	appearanceBox.visible = false;
	viewButtonOutline(1,1,1,1,1,1,1,0,1,1,1,1);
	viewButtonText(0,0,0,0,0,0,0,0,0,0,0,1);
	//UPDATE THIS
	if (so1.data.track) { 
		buttonWrite(1, "D:"+so1.data.track[2]+" H:"+so1.data.track[3]);
		Choice1.visible = true;
	}
	if (so2.data.track) { 
		buttonWrite(2, "D:"+so2.data.track[2]+" H:"+so2.data.track[3]);
		Choice2.visible = true;
	}
	if (so3.data.track) { 
		buttonWrite(3, "D:"+so3.data.track[2]+" H:"+so3.data.track[3]);
		Choice3.visible = true;
	}
	if (so5.data.track) { 
		buttonWrite(5, "D:"+so5.data.track[2]+" H:"+so5.data.track[3]);
		Choice5.visible = true;
	}
	if (so6.data.track) { 
		buttonWrite(6, "D:"+so6.data.track[2]+" H:"+so6.data.track[3]);
		Choice6.visible = true;
	}
	if (so7.data.track) { 
		buttonWrite(7, "D:"+so7.data.track[2]+" H:"+so7.data.track[3]);
		Choice7.visible = true;
	}
	if (so9.data.track) { 
		buttonWrite(9, "D:"+so9.data.track[2]+" H:"+so9.data.track[3]);
		Choice9.visible = true;
	}
	if (so10.data.track) { 
		buttonWrite(10, "D:"+so10.data.track[2]+" H:"+so10.data.track[3]);
		Choice10.visible = true;
	}
	if (so11.data.track) { 
		buttonWrite(11, "D:"+so11.data.track[2]+" H:"+so11.data.track[3]);
		Choice11.visible = true;
	}
	
	this.stage.loaderInfo.url
	var doMain:String = this.stage.loaderInfo.url;
	var doMainArray:Array = doMain.split("/");
	if (doMainArray[0] == "file:") { Choice4.visible = true;	}

	buttonWrite (4, "Load File"); 
	buttonWrite (12, "Return");
	textL("Click on a load slot to load the game that was saved to that slot.");
	textLP("\r\rThe \"Load File\" button will allow you to load a previously saved Nimin file from your computer. This option is only available if the Nimin.swf is playing directly from your local computer (right-click the appropriate download link and \"Save as\" to save the game to your computer).");
	textLP("\r\rOtherwise, click Return to go back to what you were doing (unless you weren't doing anything yet, in which case click New Game).");
	doListen = function():void{
		if (buttonChoice != 12 && buttonChoice != 4){
			var slot:int = buttonChoice;
			if (buttonChoice == 1 && so1.data.track1) { textL("Day: "+so1.data.track[2]+", Hour: "+so1.data.track[3]+":00"); }
			if (buttonChoice == 2 && so2.data.track2) { textL("Day: "+so2.data.track[2]+", Hour: "+so2.data.track[3]+":00"); }
			if (buttonChoice == 3 && so3.data.track3) { textL("Day: "+so3.data.track[2]+", Hour: "+so3.data.track[3]+":00"); }
			if (buttonChoice == 5 && so5.data.track5) { textL("Day: "+so5.data.track[2]+", Hour: "+so5.data.track[3]+":00"); }
			if (buttonChoice == 6 && so6.data.track6) { textL("Day: "+so6.data.track[2]+", Hour: "+so6.data.track[3]+":00"); }
			if (buttonChoice == 7 && so7.data.track7) { textL("Day: "+so7.data.track[2]+", Hour: "+so7.data.track[3]+":00"); }
			if (buttonChoice == 9 && so9.data.track9) { textL("Day: "+so9.data.track[2]+", Hour: "+so9.data.track[3]+":00"); }
			if (buttonChoice == 10 && so10.data.track10) { textL("Day: "+so10.data.track[2]+", Hour: "+so10.data.track[3]+":00"); }
			if (buttonChoice == 11 && so11.data.track11) { textL("Day: "+so11.data.track[2]+", Hour: "+so11.data.track[3]+":00"); }
			textL("\r\rAre you sure you want to load slot "+buttonChoice+"?\r\rYou will lose any unsaved data from the current game.");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					var so:SharedObject = SharedObject.getLocal("Nimin_Save"+slot+"", "/");
					doLoad(so);
					so.flush();
					doReturn();
				}
				else {
					loadGo();
				}
			}
		}

		if (buttonChoice == 4) {
			loadFromFile();
		}
		
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function doSave(slot:int):void {
	var bagSaveArray:Array = [];
	var bagStackSaveArray:Array = [];
	var stashSaveArray:Array = [];
	var stashStackSaveArray = [];
	var pregSaveArray:Array = [];
	
	//Store data

	//Tracking
	var trackSave:Array = [];
	trackSave[0] = currentState;
	trackSave[1] = currentZone;
	trackSave[2] = day;
	trackSave[3] = hour;
	trackSave[4] = currentDayCare;
	trackSave[5] = inDungeon;
	trackSave[6] = currentDungeon;
	trackSave[7] = 0.75;

	var statsSave:Array = [];
	statsSave[0] = strength;
	statsSave[1] = mentality;
	statsSave[2] = libido;
	statsSave[3] = sensitivity;
	statsSave[4] = HP;
	statsSave[5] = lust;
	statsSave[6] = coin;
	statsSave[7] = strMod;
	statsSave[8] = mentMod;
	statsSave[9] = libMod;
	statsSave[10] = senMod;
	statsSave[11] = hunger;


	var levelSave:Array = [];	
	levelSave[0] = SexP;
	levelSave[1] = levelUP;
	levelSave[2] = level;
	levelSave[3] = babyFactLevel;
	levelSave[4] = bodyBuildLevel;
	levelSave[5] = hyperHappyLevel;
	levelSave[6] = alchemistLevel;
	levelSave[7] = fetishMasterLevel;
	levelSave[8] = milkMaidLevel;
	levelSave[9] = shapeshiftyLevel;
	levelSave[10] = shapeshiftyFirst;
	levelSave[11] = shapeshiftySecond;

	var modSave:Array = [];	
	modSave[0] = runMod;
	modSave[1] = rapeMod;
	modSave[2] = cumMod;
	modSave[3] = cockSizeMod;
	modSave[4] = milkMod;
	modSave[5] = carryMod;
	modSave[6] = vagBellyMod;
	modSave[7] = pregChanceMod;
	modSave[8] = extraPregChance;
	modSave[9] = pregTimeMod;
	modSave[10] = enticeMod;
	modSave[11] = milkHPMod;
	modSave[12] = vagSizeMod;
	modSave[13] = vagElastic;
	modSave[14] = changeMod;
	modSave[15] = HPMod;
	modSave[16] = SexPMod;
	modSave[17] = minLust;
	modSave[18] = milkCap;
	modSave[19] = coinMod;
	modSave[20] = hipMod;
	modSave[21] = buttMod;
	modSave[22] = bellyMod;
	modSave[23] = cockMoistMod;
	modSave[24] = vagMoistMod;
	modSave[25] = lockTail;
	modSave[26] = lockFace;
	modSave[27] = lockSkin;
	modSave[28] = lockBreasts;
	modSave[29] = lockEars;
	modSave[30] = lockLegs;
	modSave[31] = lockNipples;
	modSave[32] = lockCock;
	
	var qualitySave:Array = [];	
	qualitySave[0] = gender;
	qualitySave[1] = race;
	qualitySave[2] = body;
	qualitySave[3] = dominant;
	qualitySave[4] = hips;
	qualitySave[5] = butt;
	qualitySave[6] = tallness;
	qualitySave[7] = skinType;
	qualitySave[8] = tail;
	qualitySave[9] = ears;
	qualitySave[10] = hair;
	qualitySave[11] = hairColor;
	qualitySave[12] = hairLength;
	qualitySave[13] = legType;
	qualitySave[14] = wings;
	qualitySave[15] = faceType;
	qualitySave[16] = skinColor;

	var cockSave:Array = [];	
	cockSave[0] = cockTotal;
	cockSave[1] = humanCocks;
	cockSave[2] = horseCocks;
	cockSave[3] = wolfCocks;
	cockSave[4] = catCocks;
	cockSave[5] = rabbitCocks;
	cockSave[6] = lizardCocks;
	cockSave[7] = cockSize;
	cockSave[8] = cockMoist;
	cockSave[9] = balls;
	cockSave[10] = ballSize;
	cockSave[11] = showBalls;
	cockSave[12] = knot;
	cockSave[13] = bugCocks;

	var girlSave:Array = [];	
	girlSave[0] = breastSize;
	girlSave[1] = boobTotal;
	girlSave[2] = nippleSize;
	girlSave[3] = udders;
	girlSave[4] = udderSize;
	girlSave[5] = teatSize;
	girlSave[6] = clitSize;
	girlSave[7] = vagTotal;
	girlSave[8] = vagSize;
	girlSave[9] = vagMoist;
	girlSave[10] = vulvaSize;
	girlSave[11] = nipType;


	var gearSave:Array = [];	
	gearSave[0] = attireTop;
	gearSave[1] = attireBot;
	gearSave[2] = weapon;

	var statusSave:Array = [];	
	statusSave[0] = pregRate;
	statusSave[1] = pregnancyTime;
	statusSave[2] = pregStatus;
	statusSave[3] = eggLaying;
	statusSave[4] = eggMaxTime;
	statusSave[5] = eggTime;
	statusSave[6] = eggRate;
	statusSave[7] = exhaustion;
	statusSave[8] = exhaustionPenalty;
	statusSave[9] = milkEngorgement;
	statusSave[10] = milkEngorgementLevel;
	statusSave[11] = udderEngorgement;
	statusSave[12] = udderEngorgementLevel;
	statusSave[13] = heat;
	statusSave[14] = heatTime;
	statusSave[15] = heatMaxTime;
	statusSave[16] = lactation;
	statusSave[17] = udderLactation;
	statusSave[18] = nipplePlay;
	statusSave[19] = udderPlay;
	statusSave[20] = blueBalls;
	statusSave[21] = teatPump;
	statusSave[22] = nipPump;
	statusSave[23] = cockPump;
	statusSave[24] = clitPump;
	statusSave[25] = vulvaPump;
	statusSave[26] = masoPot;
	statusSave[27] = sMasoPot;
	statusSave[28] = babyFree;
	statusSave[29] = charmTime;
	statusSave[30] = pheromone;
	statusSave[31] = eggceleratorTime;
	statusSave[32] = eggceleratorDose;
	statusSave[33] = bodyOil;
	statusSave[34] = lustPenalty;
	statusSave[35] = fertileGel;
	statusSave[36] = snuggleBall;
	statusSave[37] = eggType;
	statusSave[38] = milkSuppressant;
	statusSave[39] = milkSuppressantLact;
	statusSave[40] = milkSuppressantUdder;
	statusSave[41] = suppHarness;
	statusSave[42] = fertilityStatueCurse;
	statusSave[43] = plumpQuats;
	statusSave[44] = lilaWetStatus;
	statusSave[45] = cockSnakePreg;
	statusSave[46] = milkCPoisonNip;
	statusSave[47] = milkCPoisonUdd;
	statusSave[48] = cockSnakeVenom;


	
	var affinitySave:Array = [];	
	affinitySave[0] = humanAffinity;
	affinitySave[1] = horseAffinity;
	affinitySave[2] = wolfAffinity;
	affinitySave[3] = catAffinity;
	affinitySave[4] = cowAffinity;
	affinitySave[5] = lizardAffinity;
	affinitySave[6] = rabbitAffinity;
	affinitySave[7] = fourBoobAffinity;
	affinitySave[8] = mouseAffinity;
	affinitySave[9] = birdAffinity;
	affinitySave[10] = pigAffinity;
	affinitySave[11] = twoBoobAffinity;
	affinitySave[12] = sixBoobAffinity;
	affinitySave[13] = eightBoobAffinity;
	affinitySave[14] = tenBoobAffinity;
	affinitySave[15] = cowTaurAffinity;
	affinitySave[16] = humanTaurAffinity;
	affinitySave[17] = skunkAffinity;
	affinitySave[18] = bugAffinity;

	
	var repSave:Array = [];	
	repSave[0] = lilaRep;
	repSave[1] = lilaVulva;
	repSave[2] = lilaMilk;
	repSave[3] = lilaPreg;
	repSave[4] = malonRep;
	repSave[5] = malonPreg;
	repSave[6] = malonChildren;
	repSave[7] = mistressRep;	
	repSave[8] = jamieRep;
	repSave[9] = jamieSize;
	repSave[10] = jamieChildren;
	repSave[11] = silRep;
	repSave[12] = silPreg;
	repSave[13] = silRate;
	repSave[14] = silLay;
	repSave[15] = silGrowthTime;
	repSave[16] = silTied;
	repSave[17] = lilaUB;
	repSave[18] = dairyFarmBrand;
	repSave[19] = lilaWetness;
	repSave[20] = jamieButt;
	repSave[21] = jamieBreasts;
	repSave[22] = jamieHair;


	var knowledgeSave:Array = [];	
	knowledgeSave[0] = foundSoftlik;
	knowledgeSave[1] = foundFirmshaft;
	knowledgeSave[2] = foundTieden;
	knowledgeSave[3] = foundSizCalit;
	knowledgeSave[4] = foundOviasis;
	knowledgeSave[5] = foundValley;
	knowledgeSave[6] = foundSanctuary;

	var bossSave:Array = [];
	bossSave[0] = defeatedMinotaur;
	bossSave[1] = defeatedFreakyGirl;
	bossSave[2] = defeatedSuccubus;

	var knowSimpleAlchemySave:Array = [];
	knowSimpleAlchemySave[0] = knowLustDraft;
	knowSimpleAlchemySave[1] = knowRejuvPot;
	knowSimpleAlchemySave[2] = knowExpPreg;
	knowSimpleAlchemySave[3] = knowBallSwell;
	knowSimpleAlchemySave[4] = knowMaleEnhance;

	var knowAdvancedAlchemySave:Array = [];
	knowAdvancedAlchemySave[0] = knowSLustDraft;

	knowAdvancedAlchemySave[1] = knowSRejuvPot;
	knowAdvancedAlchemySave[2] = knowSExpPreg;
	knowAdvancedAlchemySave[3] = knowSBallSwell;
	knowAdvancedAlchemySave[4] = knowGenSwap;
	knowAdvancedAlchemySave[5] = knowMasoPot;
	knowAdvancedAlchemySave[6] = knowBabyFree;
	knowAdvancedAlchemySave[7] = knowPotPot;
	knowAdvancedAlchemySave[8] = knowMilkSuppress;

	var knowComplexAlchemySave:Array = [];
	knowComplexAlchemySave[0] = knowSGenSwap;
	knowComplexAlchemySave[1] = knowSMasoPot;
	knowComplexAlchemySave[2] = knowSBabyFree;
	knowComplexAlchemySave[3] = knowSPotPot;
	knowComplexAlchemySave[4] = knowPussJuice;
	knowComplexAlchemySave[5] = knowPheromone;
	knowComplexAlchemySave[6] = knowBazoomba;
	

	var majorFetishSave:Array = [];
	majorFetishSave[0] = maleFetish;
	majorFetishSave[1] = femaleFetish;
	majorFetishSave[2] = hermFetish;
	majorFetishSave[3] = narcissistFetish;
	majorFetishSave[4] = dependentFetish;

	var moderateFetishSave:Array = [];
	moderateFetishSave[0] = dominantFetish;
	moderateFetishSave[1] = submissiveFetish;
	moderateFetishSave[2] = lboobFetish;
	moderateFetishSave[3] = sboobFetish;			
	moderateFetishSave[4] = furryFetish;
	moderateFetishSave[5] = scalyFetish;
	moderateFetishSave[6] = smoothyFetish;
	
	var minorFetishSave:Array = [];
	minorFetishSave[0] = pregnancyFetish;
	minorFetishSave[1] = bestialityFetish;
	minorFetishSave[2] = milkFetish;
	minorFetishSave[3] = sizeFetish;
	minorFetishSave[4] = unbirthingFetish;
	minorFetishSave[5] = ovipositionFetish;
	minorFetishSave[6] = toyFetish;
	minorFetishSave[7] = hyperFetish;
	
	var kidSave:Array = [];	
	kidSave[0] = humanChildren;
	kidSave[1] = equanChildren;
	kidSave[2] = lupanChildren;
	kidSave[3] = felinChildren;
	kidSave[4] = cowChildren;
	kidSave[5] = lizanChildren;
	kidSave[6] = lizanEggs;
	kidSave[7] = bunnionChildren;
	kidSave[8] = wolfPupChildren;
	kidSave[9] = miceChildren;
	kidSave[10] = birdEggs;
	kidSave[11] = birdChildren;
	kidSave[12] = pigChildren;
	kidSave[13] = calfChildren;
	kidSave[14] = bugEggs;
	kidSave[15] = bugChildren;
	kidSave[16] = skunkChildren;
	kidSave[17] = minotaurChildren;
	kidSave[18] = freakyGirlChildren;

	/*saveArray[88] = itemSlot1;
	saveArray[89] = itemSlot2;
	saveArray[90] = itemSlot3;
	saveArray[91] = itemSlot5;
	saveArray[92] = itemSlot6;
	saveArray[93] = itemSlot7;
	saveArray[94] = itemSlot9;
	saveArray[95] = itemSlot10;
	saveArray[96] = itemSlot11;*/

	var travSave:Array = [];	
	/*for each (var j:int in travArray){
		var tempObj:Object = Object(ObjectUtil.copy(travArray[j]));
		travSave[j] = tempObj;
	}*/


	i = 0;
	while (i < pregArray.length){
		pregSaveArray[i] = pregArray[i];
		i++;

	}
	
	for (i = 0; i<bagArray.length ;i++) {
		bagSaveArray[i] = bagArray[i];
		bagStackSaveArray[i] = bagStackArray[i];
	}

	for (i = 0; i<stashArray.length ;i++) {
		stashSaveArray[i] = stashArray[i];
		stashStackSaveArray[i] = stashStackArray[i];
	}
	
	var so;
	
	if (slot == 4) {
		so = new Object();
		so.data = new Object();
	}
	else{ so = SharedObject.getLocal("Nimin_Save"+slot+"", "/"); }
	/*
	if (slot == 1) { so = SharedObject.getLocal("Nimin_Save1");	}
	if (slot == 2) { so = SharedObject.getLocal("Nimin_Save2");	}
	if (slot == 3) { so = SharedObject.getLocal("Nimin_Save3");	}
	if (slot == 5) { so = SharedObject.getLocal("Nimin_Save5");	}
	if (slot == 6) { so = SharedObject.getLocal("Nimin_Save6");	}
	if (slot == 7) { so = SharedObject.getLocal("Nimin_Save7");	}
	if (slot == 9) { so = SharedObject.getLocal("Nimin_Save9");	}
	if (slot == 10) { so = SharedObject.getLocal("Nimin_Save10"); }
	if (slot == 11) { so = SharedObject.getLocal("Nimin_Save11"); } 
	*/

	so.data.versionNumber = versionNumber;
	so.data.track = trackSave; 
	so.data.stats = statsSave; 
	so.data.level = levelSave; 
	so.data.mod = modSave; 
	so.data.quality = qualitySave; 
	so.data.cock = cockSave; 
	so.data.girl = girlSave; 
	so.data.gear = gearSave; 
	so.data.status = statusSave; 
	so.data.affinity = affinitySave; 
	so.data.rep = repSave; 
	so.data.knowledge = knowledgeSave; 
	so.data.boss = bossSave;
	so.data.knowSimpleAlchemy = knowSimpleAlchemySave;
	so.data.knowAdvancedAlchemy = knowAdvancedAlchemySave;
	so.data.knowComplexAlchemy = knowComplexAlchemySave;
	so.data.majorFetish = majorFetishSave;
	so.data.moderateFetish = moderateFetishSave;
	so.data.minorFetish = minorFetishSave;
	so.data.kid = kidSave; 

	so.data.trav = travSave;

	so.data.bagSave = bagSaveArray;
	so.data.bagStackSave = bagStackSaveArray;
	so.data.stashSave = stashSaveArray;
	so.data.stashStackSave = stashStackSaveArray;
	so.data.pregSave = pregSaveArray;
	so.data.p = p;

	if (slot == 4) {
		var saveToFile:FileReference = new FileReference();
		var byteData:ByteArray = new ByteArray();
		byteData.writeObject(so);
		saveToFile.save(byteData, "NiminSave1.nim");
	}
	else { so.flush(); }
}

function doLoad(so:Object):void {
	/*
	if (slot == 1) { so = SharedObject.getLocal("Nimin_Save1");	}
	if (slot == 2) { so = SharedObject.getLocal("Nimin_Save2");	}
	if (slot == 3) { so = SharedObject.getLocal("Nimin_Save3");	}
	if (slot == 5) { so = SharedObject.getLocal("Nimin_Save5");	}
	if (slot == 6) { so = SharedObject.getLocal("Nimin_Save6");	}
	if (slot == 7) { so = SharedObject.getLocal("Nimin_Save7");	}
	if (slot == 9) { so = SharedObject.getLocal("Nimin_Save9");	}
	if (slot == 10) { so = SharedObject.getLocal("Nimin_Save10"); }
	if (slot == 11) { so = SharedObject.getLocal("Nimin_Save11"); }
	*/
	
	var trackLoad:Array = so.data.track;
	var statsLoad:Array = so.data.stats;
	var levelLoad:Array = so.data.level;
	var modLoad:Array = so.data.mod;
	var qualityLoad:Array = so.data.quality;
	var cockLoad:Array = so.data.cock;
	var girlLoad:Array = so.data.girl;
	var gearLoad:Array = so.data.gear;
	var statusLoad:Array = so.data.status;
	var affinityLoad:Array = so.data.affinity;
	var repLoad:Array = so.data.rep;
	var knowledgeLoad:Array = so.data.knowledge;
	if (so.data.boss) { var bossLoad:Array = so.data.boss; }
	else { var bossLoad:Array = []; }
	var knowSimpleAlchemyLoad:Array = so.data.knowSimpleAlchemy;
	var knowAdvancedAlchemyLoad:Array = so.data.knowAdvancedAlchemy;
	var knowComplexAlchemyLoad:Array = so.data.knowComplexAlchemy;
	var majorFetishLoad:Array = so.data.majorFetish;
	var moderateFetishLoad:Array = so.data.moderateFetish;
	var minorFetishLoad:Array = so.data.minorFetish;
	var kidLoad:Array = so.data.kid;

	var travLoad:Array = so.data.trav;
	var bagLoadArray:Array = so.data.bagSave;
	var stashLoadArray:Array = so.data.stashSave;
	var bagStackLoadArray:Array = so.data.bagStackSave;
	var stashStackLoadArray:Array = so.data.stashStackSave;
	var pregLoadArray = so.data.pregSave;
	var p:Character = so.data.p as Character;
	
	if (!knowSimpleAlchemyLoad) { knowSimpleAlchemyLoad = []; }
	if (!knowAdvancedAlchemyLoad) { knowAdvancedAlchemyLoad = []; }
	if (!knowComplexAlchemyLoad) { knowComplexAlchemyLoad = []; }
	//Bag and Stash Load fix
	if (!bagLoadArray) {
		bagStackLoadArray = [];
		bagLoadArray = [];
		stashLoadArray = [];
		stashStackLoadArray = [];
		var itemLoadFix:Array = so.data.itemSave;
		var stashLoadFix:Array = so.data.stashSave;
		var stackLoadFix:Array = so.data.stackSave;
		var stashStackLoadFix:Array = so.data.stashStackSave;

		for (i = 1;i<=itemLoadFix.length ;i++ ) {
			if (itemLoadFix[i] > 10) { 
				bagLoadArray.push(itemLoadFix[i]);
				bagStackLoadArray.push(stackLoadFix[i]);
			}
		}
		if (bagLoadArray.length < 27) {
			for (i = bagLoadArray.length; i < 27 ; i++ ) {
				bagLoadArray.push(0);
				bagStackLoadArray.push(0);
			}
		}
		for (i = 1;i<=stashLoadFix.length ;i++ ) {
			if (stashLoadFix[i] > 10) { 
				stashLoadArray.push(stashLoadFix[i]);
				stashStackLoadArray.push(stashStackLoadFix[i]);
			}
		}
		if (stashLoadArray.length < 27) {
			for (i = stashLoadArray.length; i < 27 ; i++ ) {
				stashLoadArray.push(0);
				stashStackLoadArray.push(0);
			}
		}		
	}
	
	
	//if (!loadArray[127]) { loadArray[127] = 0; }
	/*i = (88 - loadArray.length);
	while ( i > 0){
		//Add variables to loadArray until it's up to date
	}
	i = (39 - itemLoadArray.length);
	while (i > 0){
		//Add empty slots to itemLoadArray until it covers all bag space
	}*/
	
	currentState = trackLoad[0];
	currentZone = trackLoad[1];
	day = trackLoad[2];
	hour = trackLoad[3];
	currentDayCare = trackLoad[4];
	inDungeon = trackLoad[5];
	currentDungeon = trackLoad[6];


	strength = statsLoad[0];
	mentality = statsLoad[1];
	libido = statsLoad[2];
	sensitivity = statsLoad[3];
	HP = statsLoad[4];
	lust = statsLoad[5];
	coin = statsLoad[6];
	strMod = statsLoad[7];
	mentMod = statsLoad[8];
	libMod = statsLoad[9];
	senMod = statsLoad[10];
	hunger = statsLoad[11];

	SexP = levelLoad[0];
	levelUP = levelLoad[1];
	level = levelLoad[2];
	babyFactLevel = levelLoad[3];
	bodyBuildLevel = levelLoad[4];
	hyperHappyLevel = levelLoad[5];
	alchemistLevel = levelLoad[6];
	fetishMasterLevel = levelLoad[7];
	milkMaidLevel = levelLoad[8];
	shapeshiftyLevel = levelLoad[9];
	shapeshiftyFirst = levelLoad[10];
	shapeshiftySecond = levelLoad[11];

	runMod = modLoad[0];
	rapeMod = modLoad[1];
	cumMod = modLoad[2];
	cockSizeMod = modLoad[3];
	milkMod = modLoad[4];
	carryMod = modLoad[5];
	vagBellyMod = modLoad[6];
	pregChanceMod = modLoad[7];
	extraPregChance = modLoad[8];
	pregTimeMod = modLoad[9];
	enticeMod = modLoad[10];
	milkHPMod = modLoad[11];
	vagSizeMod = modLoad[12];
	vagElastic = modLoad[13];
	changeMod = modLoad[14];
	HPMod = modLoad[15];
	SexPMod = modLoad[16];
	minLust = modLoad[17];
	milkCap = modLoad[18];
	coinMod = modLoad[19];
	hipMod = modLoad[20];
	buttMod = modLoad[21];
	bellyMod = modLoad[22];
	cockMoistMod = modLoad[23];
	vagMoistMod = modLoad[24];
	lockTail = modLoad[25];
	lockFace = modLoad[26];
	lockSkin = modLoad[27];
	lockBreasts = modLoad[28];
	lockEars = modLoad[29];
	lockLegs = modLoad[30];
	lockNipples = modLoad[31];
	lockCock = modLoad[32];


	gender = qualityLoad[0];
	race = qualityLoad[1];
	body = qualityLoad[2];
	dominant = qualityLoad[3];
	hips = qualityLoad[4];
	butt = qualityLoad[5];
	tallness = qualityLoad[6];
	skinType = qualityLoad[7];
	tail = qualityLoad[8];
	ears = qualityLoad[9];
	hair = qualityLoad[10];
	hairColor = qualityLoad[11];
	hairLength = qualityLoad[12];
	legType = qualityLoad[13];
	wings = qualityLoad[14];
	faceType = qualityLoad[15];
	skinColor = qualityLoad[16];

	cockTotal = cockLoad[0];
	humanCocks = cockLoad[1];
	horseCocks = cockLoad[2];
	wolfCocks = cockLoad[3];
	catCocks = cockLoad[4];
	rabbitCocks = cockLoad[5];
	lizardCocks = cockLoad[6];
	cockSize = cockLoad[7];
	cockMoist = cockLoad[8];
	balls = cockLoad[9];
	ballSize = cockLoad[10];
	showBalls = cockLoad[11];
	knot = cockLoad[12];
	bugCocks = cockLoad[13];

	breastSize = girlLoad[0];
	boobTotal = girlLoad[1];
	nippleSize = girlLoad[2];
	udders = girlLoad[3];
	udderSize = girlLoad[4];
	teatSize = girlLoad[5];
	clitSize = girlLoad[6];
	vagTotal = girlLoad[7];
	vagSize = girlLoad[8];
	vagMoist = girlLoad[9];
	vulvaSize = girlLoad[10];
	nipType = girlLoad[11];

	attireTop = gearLoad[0];
	attireBot = gearLoad[1];
	weapon = gearLoad[2];

	pregRate = statusLoad[0];	
	pregnancyTime = statusLoad[1];
	pregStatus = statusLoad[2];
	eggLaying = statusLoad[3];
	eggMaxTime = statusLoad[4];
	eggTime = statusLoad[5];
	eggRate = statusLoad[6];
	exhaustion = statusLoad[7];
	exhaustionPenalty = statusLoad[8];
	milkEngorgement = statusLoad[9];
	milkEngorgementLevel = statusLoad[10];
	udderEngorgement = statusLoad[11];
	udderEngorgementLevel = statusLoad[12];
	heat = statusLoad[13];
	heatTime = statusLoad[14];
	heatMaxTime = statusLoad[15];
	lactation = statusLoad[16];
	udderLactation = statusLoad[17];
	nipplePlay = statusLoad[18];
	udderPlay = statusLoad[19];
	blueBalls = statusLoad[20];
	teatPump = statusLoad[21];
	nipPump = statusLoad[22];
	cockPump = statusLoad[23];
	clitPump = statusLoad[24];
	vulvaPump = statusLoad[25];
	masoPot = statusLoad[26];
	sMasoPot = statusLoad[27];
	babyFree = statusLoad[28];
	charmTime = statusLoad[29];
	pheromone = statusLoad[30];
	eggceleratorTime = statusLoad[31];
	eggceleratorDose = statusLoad[32];
	bodyOil = statusLoad[33];
	lustPenalty = statusLoad[34];
	fertileGel = statusLoad[35];
	snuggleBall = statusLoad[36];
	eggType = statusLoad[37];
	milkSuppressant = statusLoad[38];
	milkSuppressantLact = statusLoad[39];
	milkSuppressantUdder = statusLoad[40];
	suppHarness = statusLoad[41];
	fertilityStatueCurse = statusLoad[42];
	plumpQuats = statusLoad[43];
	lilaWetStatus = statusLoad[44];
	cockSnakePreg = statusLoad[45];
	milkCPoisonNip = statusLoad[46];
	milkCPoisonUdd = statusLoad[47];
	cockSnakeVenom = statusLoad[48];

	
	humanAffinity = affinityLoad[0];
	horseAffinity = affinityLoad[1];
	wolfAffinity = affinityLoad[2];
	catAffinity = affinityLoad[3];
	cowAffinity = affinityLoad[4];
	lizardAffinity = affinityLoad[5];
	rabbitAffinity = affinityLoad[6];
	fourBoobAffinity = affinityLoad[7];
	mouseAffinity = affinityLoad[8];
	birdAffinity = affinityLoad[9];
	pigAffinity = affinityLoad[10];
	twoBoobAffinity = affinityLoad[11];
	sixBoobAffinity = affinityLoad[12];
	eightBoobAffinity = affinityLoad[13];
	tenBoobAffinity = affinityLoad[14];
	cowTaurAffinity = affinityLoad[15];
	humanTaurAffinity = affinityLoad[16];
	skunkAffinity = affinityLoad[17];
	bugAffinity = affinityLoad[18];


	lilaRep = repLoad[0];
	lilaVulva = repLoad[1];
	lilaMilk = repLoad[2];
	lilaPreg = repLoad[3];
	malonRep = repLoad[4];
	malonPreg = repLoad[5];
	malonChildren = repLoad[6];
	mistressRep = repLoad[7];
	jamieRep = repLoad[8];
	jamieSize = repLoad[9];
	jamieChildren = repLoad[10];
	silRep = repLoad[11];
	silPreg = repLoad[12];
	silRate = repLoad[13];
	silLay = repLoad[14];
	silGrowthTime = repLoad[15];
	silTied = repLoad[16];
	lilaUB = repLoad[17];
	dairyFarmBrand = repLoad[18];
	lilaWetness = repLoad[19];
	jamieButt = repLoad[20];
	jamieBreasts = repLoad[21];
	jamieHair = repLoad[22];

	//Jamie Fix
	if (jamieSize == 0 && jamieRep > 5) { jamieRep = 3; }
	if (jamieSize == 0) { jamieSize = 4; }

	foundSoftlik = knowledgeLoad[0];
	foundFirmshaft = knowledgeLoad[1];
	foundTieden = knowledgeLoad[2];
	foundSizCalit = knowledgeLoad[3];
	foundOviasis = knowledgeLoad[4];
	foundValley = knowledgeLoad[5];
	foundSanctuary = knowledgeLoad[6];

	defeatedMinotaur = bossLoad[0];
	defeatedFreakyGirl = bossLoad[1];
	defeatedSuccubus = bossLoad[2];

	knowLustDraft = knowSimpleAlchemyLoad[0];
	knowRejuvPot = knowSimpleAlchemyLoad[1];
	knowExpPreg = knowSimpleAlchemyLoad[2];
	knowBallSwell = knowSimpleAlchemyLoad[3];
	knowMaleEnhance = knowSimpleAlchemyLoad[4];
	
	knowSLustDraft = knowAdvancedAlchemyLoad[0];
	knowSRejuvPot = knowAdvancedAlchemyLoad[1];
	knowSExpPreg = knowAdvancedAlchemyLoad[2];
	knowSBallSwell = knowAdvancedAlchemyLoad[3];
	knowGenSwap = knowAdvancedAlchemyLoad[4];
	knowMasoPot = knowAdvancedAlchemyLoad[5];
	knowBabyFree = knowAdvancedAlchemyLoad[6];
	knowPotPot = knowAdvancedAlchemyLoad[7];
	knowMilkSuppress = knowAdvancedAlchemyLoad[8];

	knowSGenSwap = knowComplexAlchemyLoad[0];
	knowSMasoPot = knowComplexAlchemyLoad[1];
	knowSBabyFree = knowComplexAlchemyLoad[2];
	knowSPotPot = knowComplexAlchemyLoad[3];			
	knowPussJuice = knowComplexAlchemyLoad[4];
	knowPheromone = knowComplexAlchemyLoad[5];
	knowBazoomba = knowComplexAlchemyLoad[6];
	
	
	maleFetish = majorFetishLoad[0];
	femaleFetish = majorFetishLoad[1];
	hermFetish = majorFetishLoad[2];
	narcissistFetish = majorFetishLoad[3];
	dependentFetish = majorFetishLoad[4];

	dominantFetish = moderateFetishLoad[0];
	submissiveFetish = moderateFetishLoad[1];
	lboobFetish = moderateFetishLoad[2];
	sboobFetish = moderateFetishLoad[3];			
	furryFetish = moderateFetishLoad[4];
	scalyFetish = moderateFetishLoad[5];
	smoothyFetish = moderateFetishLoad[6];

	pregnancyFetish = minorFetishLoad[0];
	bestialityFetish = minorFetishLoad[1];
	milkFetish = minorFetishLoad[2];
	sizeFetish = minorFetishLoad[3];
	unbirthingFetish = minorFetishLoad[4];
	ovipositionFetish = minorFetishLoad[5];
	toyFetish = minorFetishLoad[6];
	hyperFetish = minorFetishLoad[7];

	humanChildren = kidLoad[0];
	equanChildren = kidLoad[1];
	lupanChildren = kidLoad[2];
	felinChildren = kidLoad[3];
	cowChildren = kidLoad[4];
	lizanChildren = kidLoad[5];
	lizanEggs = kidLoad[6];
	bunnionChildren = kidLoad[7];
	wolfPupChildren = kidLoad[8];
	miceChildren = kidLoad[9];
	birdEggs = kidLoad[10];
	birdChildren = kidLoad[11];
	pigChildren = kidLoad[12];
	calfChildren = kidLoad[13];
	bugEggs = kidLoad[14];
	bugChildren = kidLoad[15];
	skunkChildren = kidLoad[16];
	minotaurChildren = kidLoad[17];
	freakyGirlChildren = kidLoad[18];


	/*itemSlot1 = loadArray[88];
	itemSlot2 = loadArray[89];
	itemSlot3 = loadArray[90];
	itemSlot5 = loadArray[91];
	itemSlot6 = loadArray[92];
	itemSlot7 = loadArray[93];
	itemSlot9 = loadArray[94];
	itemSlot10 = loadArray[95];
	itemSlot11 = loadArray[96];*/
	

	/*for each (var j:int in travLoad){
		var tempObj:Object = Object(ObjectUtil.copy(travLoad[j]));
		travArray[j] = tempObj;
	}*/

	i = 0;
	pregArray = [];
	while (i < pregLoadArray.length){
		pregArray[i] = pregLoadArray[i];
		i++;
	}

	bagArray = [];
	bagStackArray = [];
	for (i = 0;i < bagLoadArray.length ;i++ ) {
		bagArray[i] = bagLoadArray[i];
		bagStackArray[i] = bagStackLoadArray[i];
	}	

	stashArray = [];
	stashStackArray = [];
	for (i = 0;i < stashLoadArray.length ;i++ ) {
		stashArray[i] = stashLoadArray[i];
		stashStackArray[i] = stashStackLoadArray[i];
	}
		
	//etc.
	
	currentRegion.visible = true;
	region.visible = true;
	hideUpDown();
	statPane.visible = true;
	DayPane.visible = true;
	levelPane.visible = true;
	strNum.visible = true;
	mentNum.visible = true;
	libNum.visible = true;
	senNum.visible = true;
	hpNum.visible = true;
	lustNum.visible = true;
	hungerNum.visible = true;
	hpText.visible = true;
	lustText.visible = true;
	hungerText.visible = true;
	dayNum.visible = true;
	hourNum.visible = true;
	levelNum.visible = true;
	sexPNum.visible = true;
	coinNum.visible = true;
	
	checkUpdate();
	regionChange(currentZone);
	stats(0,0,0,0);
	dayTime(0);
	doSexP(0);
	toggleSide();
	toggleSide();
	Option7.visible = true;
}

function checkUpdate():void{
	
}

function loadFromFile():void{
	var nimFilter:FileFilter = new FileFilter("Nimin Saves", "*.nim");
	loadFile = new FileReference();
	loadFile.browse([nimFilter]);
	loadFile.addEventListener(Event.SELECT, fileSelected);
}

function fileSelected(evt:Event):void{
	loadFile.load();
	loadFile.addEventListener(Event.COMPLETE, fileLoaded);
}

function fileLoaded(evt:Event):void{
	var tempRef:FileReference = FileReference (evt.target);
	fileLoader = new URLLoader();
	fileLoader.dataFormat = URLLoaderDataFormat.BINARY;
	fileLoader.addEventListener(Event.COMPLETE, dataLoaded);
	fileLoader.addEventListener(IOErrorEvent.IO_ERROR, loadError);
	var urlReq = new URLRequest(tempRef.name);
	fileLoader.load(urlReq);
}

function loadError(e:IOErrorEvent):void{ textL("Save file not found. Make sure your Nimin game is in the same directory as the save you are attempting to load. Please retry."); }

function dataLoaded(evt:Event):void{
	try	{
		doLoad(fileLoader.data.readObject());
		textL("Your file has been successfully loaded.");
		doReturn();
	}
	catch (rangeError:RangeError){ textL("File is either corrupted or not a valid save. Please retry.");	}
	catch (error:Error){ 
		textL("Some error I did not account for occured. Please retry.");	
		textLP("\r\r"+error);
	}
}
