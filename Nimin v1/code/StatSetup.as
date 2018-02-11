//Starting stats when starting a game

function startStats():void {

      //Character general stats
      str  = 15;
      ment = 15;
      lib  = 15;
      sen  = 15;
      HP   = 5;
      lust = 0;
      coin = 0;
      strMod = 0;
      mentMod = 0;
      libMod = 0;
      senMod = 0;
      hunger = 0;

      //Time stats
      day = 0;
      hour = 8;

      //Equipment stats
      attireTop = 1;
      attireBot = 2;
      weapon = 10;      

      //Base body stats
      gender = 1;
      race = 1;
      body = 15;
      dominant = 1;
      hips = 1;
      butt = 1;
      tallness = 60;
      skinType = 1;
      tail = 0;
      ears = 1;
      hair = 0;
      hairLength = 0;
      hairColor = 0;
      legType = 1;
      wings = 0;
      faceType = 10;
      skinColor = 0;

      //Phallic stats
      cockTotal = 0;
      humanCocks = 0;
      horseCocks = 0;
      wolfCocks = 0;
      catCocks = 0;
      lizardCocks = 0;
      rabbitCocks = 0;
      cockSize = 0;
      cockMoist = 0;
      balls = 0;
      ballSize = 0;
      showBalls = true;
      knot = false;
      bugCocks = 0;

      //Mammary stats
      breastSize = 0;
      boobTotal = 2;
      nippleSize = 1;
      udders = false;
      udderSize = 0;
      teatSize = 0;
      clitSize = 0;
      vagTotal = 0; //If this is >0 for testing purposes, be sure to add pregArray = [false, 0, 0, 0, 0]; at the start of Time based statuses
      vagSize = 0;
      vagMoist = 0;
      vulvaSize = 0;
      nipType = 1;

      //Stat modifiers (not base stats themselves, they're mostly just multipliers as perks)
      runMod = 0;
      rapeMod = 0;
      cumMod = 1;
      cockSizeMod = 1;
      vagSizeMod = 1;
      vagElastic = 1;
      milkMod = 0;
      carryMod = 0;
      vagBellyMod = 0;
      pregChanceMod = 0;
      extraPregChance = 0;
      pregTimeMod = 0;
      enticeMod = 0;
      milkHPMod = 0;
      changeMod = 1;
      HPMod = 0;
      SexPMod = 1;
      minLust = 0;
      milkCap = 0;
      coinMod = 0;
      hipMod = 1;
      buttMod = 1;
      bellyMod = 0;
      cockMoistMod = 0;
      vagMoistMod = 0;
      lockTail = 0;
      lockFace = 0;
      lockSkin = 0;
      lockBreasts = 0;
      lockEars = 0;
      lockLegs = 0;
      lockNipples = 0;
      lockCock = 0;
      breastSizeMod = 1;
      nippleSizeMod = 1;
      nipNarrowMod = 1.07;
      cockNarrowMod = 1.3;
      clitNarrowMod = 1.5;
      ballSizeMod = 1;      

      //Time-based statuses
      pregArray = [];
      pregStatus = 0;
      pregnancyTime = 0;
      pregRate = 1;
      eggLaying = 0;
      eggMaxTime = 0;
      eggTime = 0;
      eggRate = 0;
      exhaustion = 0;
      exhaustionPenalty = 0;
      milkEngorgement = 0;
      milkEngorgementLevel = 0;
      udderEngorgement = 0;
      udderEngorgementLevel = 0;
      heat = 0;
      heatTime = 0;
      heatMaxTime = 0;
      lactation = 0;
      udderLactation = 0;
      nipplePlay = 0;
      udderPlay = 0;
      blueBalls = 0;
      teatPump = 0;
      nipPump = 0;
      cockPump = 0;
      clitPump = 0;
      vulvaPump = 0;
      masoPot = 0;
      sMasoPot = 0;
      babyFree = 0;
      charmTime = 0;
      pheromone = 0;
      eggceleratorTime = 0;
      eggceleratorDose = 0;
      bodyOil = 0;
      lustPenalty = 0;
      snuggleBall = false;
      fertileGel = 0;
      eggType = 0;
      milkSuppressant = 0;
      milkSuppressantLact = 0;
      milkSuppressantUdder = 0;
      suppHarness = false;
      fertilityStatueCurse = 0;
      plumpQuats = 0;
      lilaWetStatus = 0;
      cockSnakePreg = 0;
      milkCPoisonNip = 0;
      milkCPoisonUdd = 0;
      cockSnakeVenom = 0;

      //Race transformation stats
      humanAffinity = 0;
      horseAffinity = 0;
      wolfAffinity = 0;
      catAffinity = 0;
      cowAffinity = 0;
      lizardAffinity = 0;
      rabbitAffinity = 0;
      fourBoobAffinity = 0;
      mouseAffinity = 0;
      birdAffinity = 0;
      pigAffinity = 0;
      twoBoobAffinity = 0;
      sixBoobAffinity = 0;
      eightBoobAffinity = 0;
      tenBoobAffinity = 0;
      cowTaurAffinity = 0;
      humanTaurAffinity = 0;
      skunkAffinity = 0;
      bugAffinity = 0; 

       //Leveling stats
      SexP = 0;
      levelUP = 0;
      level = 0;

      //Leveling up
      babyFactLevel = 0;
      bodyBuildLevel = 0;
      hyperHappyLevel = 0;
      alchemistLevel = 0;
      fetishMasterLevel = 0;
      milkMaidLevel = 0;
      shapeshiftyLevel = 0;
      shapeshiftyFirst = "";
      shapeshiftySecond = "";           

      //NPC stats
      lilaRep = 0;
      lilaVulva = 0;
      lilaMilk = 0;
      lilaPreg = -2;
      malonRep = 0;
      malonPreg = 0;
      malonChildren = 0;
      mistressRep = 0;
      jamieRep = 0;
      jamieSize = 4;
      jamieChildren = 0;
      silRep = 0;
      silPreg = 0;
      silRate = 0;
      silLay = 10;
      silTied = false;
      silGrowthTime = 0;
      lilaUB = false;
      dairyFarmBrand = false;
      jamieRep1 = 0;
      jamieRep2 = 0;
      jamieRep3 = 0;
      lilaWetness = 0;      

      //Alchemy knowledge
      knowLustDraft = false;
      knowRejuvPot = false;
      knowExpPreg = false;
      knowBallSwell = false;
      knowMaleEnhance = false;

      knowSLustDraft = false;
      knowSRejuvPot = false;
      knowSExpPreg = false;
      knowSBallSwell = false;
      knowGenSwap = false;
      knowMasoPot = false;
      knowBabyFree = false;
      knowPotPot = false;
      knowMilkSuppress = false;

      knowSGenSwap = false;
      knowSMasoPot = false;
      knowSBabyFree = false;
      knowSPotPot = false;            
      knowPussJuice = false;
      knowPheromone = false;
      knowBazoomba = false;


      //Fetishes (not really used atm)
      maleFetish = 1;
      femaleFetish = 1;
      hermFetish = 1;
      narcissistFetish = 1;
      dependentFetish = 1;

      dominantFetish = 1;
      submissiveFetish = 1;
      lboobFetish = 1;
      sboobFetish = 1;            
      furryFetish = 1;
      scalyFetish = 1;
      smoothyFetish = 1;

      pregnancyFetish = 1;
      bestialityFetish = 1;
      milkFetish = 1;
      sizeFetish = 1;
      unbirthingFetish = 1;
      ovipositionFetish = 1;
      toyFetish = 1;
      hyperFetish = 1;


      //Children tracking
      currentDayCare = 0;

      humanChildren = 0;
      equanChildren = 0;
      lupanChildren = 0;
      felinChildren = 0;
      cowChildren = 0;
      lizanEggs = 0;
      lizanChildren = 0;
      bunnionChildren = 0;
      miceChildren = 0;
      birdEggs = 0;
      birdChildren = 0;
      pigChildren = 0;
      bugEggs = 0;
      bugChildren = 0;
      skunkChildren = 0;
      minotaurChildren = 0;
      freakyGirlChildren = 0;


      wolfPupChildren = 0;
      calfChildren = 0;


      /*itemSlot1 = 0;
      itemSlot2 = 0;
      itemSlot3 = 0;
      itemSlot5 = 0;
      itemSlot6 = 0;
      itemSlot7 = 0;
      itemSlot9 = 0;
      itemSlot10 = 0;
      itemSlot11 = 0;*/


      //Tracking stats
      currentState = 0;
      currentZone = 0;
      inBag = false;
      inShop = false;
      inDungeon = false;
      currentDungeon = 0;

      //Progress tracking
      foundSoftlik = false;
      foundFirmshaft = false;
      foundTieden = false;
      foundSizCalit = false;
      foundOviasis = false;
      foundValley = false;
      foundSanctuary = false;

      defeatedMinotaur = false;
      defeatedFreakyGirl = false;
      defeatedSuccubus = false;

      firstExplore = false;

      //Emptying bag and stash
      bagPage = 1;
      bagArray = [];
      bagStackArray = [];
      bagSlotAdd(27); //Start with 27 bag slots

      stashArray = [];
      stashStackArray = [];
      stashSlotAdd(27);  //Start with 27 stash slots

      //Gain whatever items needed for testing
      //gainItem(ID);

      //Debug Items
      //itemAdd(258)
      /*knowPussJuice = true;
      levelUP += 20;
      doCoin(10000);
      for(i=1;i<20;i++) {
            itemAdd(210);
            itemAdd(114);
      }*/
}