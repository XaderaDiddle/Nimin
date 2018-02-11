/*
These are the stat changes, until they are placed into the grouped body files
*/

/**************
 *Stat Changes*
 **************/

function stats(stre:int, menta:int, libi:int, sens:int) {
    hideUpDown();
    strength+=stre;
    mentality +=menta;
    libido +=libi;
    sensitivity +=sens;
    if(strength > 100) strength = 100;
    if(strength < 1) strength = 1;
    if(mentality > 100) mentality = 100;
    if(mentality < 1) mentality = 1;
    if(libido > 100) libido = 100;
    if(libido < 1) libido = 1;
    if(sensitivity > 100) sensitivity = 100;
    if(sensitivity < 1) sensitivity = 1;
    if(lust > 100) lust = 100;
    if(lust < 0) lust = 0;
    if(stre > 0) {
        strUp.visible = true;
        strDown.visible = false;
    }
    if(stre < 0) {
        strDown.visible = true;
        strUp.visible = false;
    }
    if(menta > 0) {
        mentaUp.visible = true;
        mentaDown.visible = false;
    }
    if(menta < 0) {
        mentaDown.visible = true;
        mentaUp.visible = false;
    }
    if(libi > 0) {
        libUp.visible = true;
        libDown.visible = false;
    }
    if(libi < 0) {
        libDown.visible =true;
        libUp.visible = false;
    }
    if(sens > 0) {
        senUp.visible = true;
        senDown.visible = false;
    }
    if(sens < 0) {
        senDown.visible = true;
        senUp.visible = false;
    }
    statDisplay();  
}

function statsMod(stre:int, menta:int, libi:int, sens:int) {
    hideUpDown();
    strMod+=stre;
    mentMod+=menta;
    libMod+=libi;
    senMod+=sens;

    if(stre > 0) {
        strUp.visible = true;
        strDown.visible = false;
    }
    if(stre < 0) {
        strDown.visible = true;
        strUp.visible = false;
    }
    if(menta > 0) {
        mentaUp.visible = true;
        mentaDown.visible = false;
    }
    if(menta < 0) {
        mentaDown.visible = true;
        mentaUp.visible = false;
    }
    if(libi > 0) {
        libUp.visible = true;
        libDown.visible = false;
    }
    if(libi < 0) {
        libDown.visible =true;
        libUp.visible = false;
    }
    if(sens > 0) {
        senUp.visible = true;
        senDown.visible = false;
    }
    if(sens < 0) {
        senDown.visible = true;
        senUp.visible = false;
    }
    statDisplay();  
}


//Update Stat Display
function statDisplay():void { 

    str = strength + strMod;
    ment = mentality + mentMod;
    lib = libido + libMod;
    sen = sensitivity + senMod;

    var tempStr:String = "BaseStats\r\rStrength   :\rMentality  :\rLibido     :\rSensitivity:";

    tempStr += "\r\rCombat Stats\rHP         :\rLust       :\rHunger     :";

    statPane.htmlText =  tempStr; 

    strNum.htmlText = ""+str;
    mentNum.htmlText = ""+ment;
    libNum.htmlText = ""+lib;
    senNum.htmlText = ""+sen;

    hpNum.htmlText = ""+HP;
    lustNum.htmlText = ""+lust;
    hungerNum.htmlText = ""+hunger;

    statPane.textColor = uint("0x"+fontColor);
    hpText.textColor = uint("0x"+fontColor);
    lustText.textColor = uint("0x"+fontColor);
    hungerText.textColor = uint("0x"+fontColor);
    strNum.textColor = uint("0x"+fontColor);
    mentNum.textColor = uint("0x"+fontColor);
    libNum.textColor = uint("0x"+fontColor);
    senNum.textColor = uint("0x"+fontColor);
    hpNum.textColor = uint("0x"+fontColor);
    lustNum.textColor = uint("0x"+fontColor);
    hungerNum.textColor = uint("0x"+fontColor);
    //statValuePane.htmlText = "\r\r" + int(str) + "\r" + int(ment) + "\r" + int(lib) + "\r" + int(sen) + "\r\r\r" + int(HP) + "\r" + int(lust); 
    //statValuePane.textColor = uint("0x"+fontColor);
}

//Changes level and SexP value and updates level/SexP display
function doSexP(changes:int):void{
    if ((SexP + changes*SexPMod) >= (100)){
        changes -= Math.ceil(((100) - SexP)/SexPMod);
        SexP = 0;
        level++;
        levelUP++;
        doSexP(changes);
    }
    else { SexP += changes*SexPMod; }
    levelPane.text = "Level :\rSexP  :\rCoin  :";
    levelNum.text = ""+level;
    sexPNum.text = ""+SexP;
    coinNum.text = ""+coin;
    levelNum.textColor = uint("0x"+fontColor);
    sexPNum.textColor = uint("0x"+fontColor);
    coinNum.textColor = uint("0x"+fontColor);
    levelPane.textColor = uint("0x"+fontColor);
}

function regionChange(changes:int):void{
    if (inDungeon == false) {
        currentZone = changes;
        if (changes == 1) { region.text = "Softlik"; }
        if (changes == 2) { region.text = "Firmshaft"; }
        if (changes == 3) { region.text = "Tieden"; }
        if (changes == 4) { region.text = "Siz'Calit"; }
        if (changes == 6) { region.text = "Oviasis"; }
        if (changes == 12) { region.text = "Sanctuary"; }
    }
    
    if (inDungeon == true){
        currentDungeon = changes;
        if (changes > 1000 && changes < 1010) { region.text = "Cave Descent"; }
    }
    
    region.textColor = uint("0x"+fontColor);
}

function dayTime(Time:Number):void{
    var addTime:int = Time;
    while (hour + addTime >= 24){
        addTime = addTime - (24-hour);
        hour = 0;
        day++;
    }
    hour = hour + addTime;
    DayPane.text = "Day   :\rHour  :";
    dayNum.text = ""+day;
    hourNum.text = ""+hour;
    DayPane.textColor = uint("0x"+fontColor);
    doStatus(Time);
}

//Changes coin value and updates Coins display
function doCoin(changes:int):void{
    if ((coin + changes) < 0){
        coin = 0;
        changes = 0;
    }
    if (changes > 0) { changes += coinMod; }
    coin += changes;
    doSexP(0);
}

function doHP(changes:int):void {

    //MasoPot Status Effect
    if (masoPot > 0 && sMasoPot <= 0 && changes < 0){
        doLust(Math.floor(-changes/2), 0);
        changes -= Math.ceil(changes/2);
    }
    if (sMasoPot > 0 && lust < 100 && changes < 0){
        doLust(-changes, 0);
        changes = 0;
    }
    if (sMasoPot > 0 && lust >= 100 && changes < 0) { textLP("\r\rIt seems that no matter how much fun you had getting beaten like that, there's just some things your body wasn't meant to withstand."); }

    if (changes < 0){ hpDown.visible = true; }
    if (changes > 0){ hpUp.visible = true; }
    if ((HP + changes) <= 0){
        HP = 1;
        changes = 0;
        doPassOut();
    }
    if ((HP + changes) > (30+Math.floor(str/2)+HPMod)){ HP = (30+Math.floor(str/2)+HPMod); }
    else { HP += changes; }
    statDisplay();
}

function doPassOut():void{

    var tempNum:int = Math.floor((percent()/10)*level + level*percent()/10);
    if ((coin - tempNum) < 0){
        tempNum = coin;
    }
    textLP("\r\rYou run out of stamina.");
    if (lust >= 30) {
        textLP(" You twitch with a pitiful and premature orgasm, your body too tired to withstand your arousal.");
        if (cockTotal > 0) {
            var getCum:int = cumAmount();
            if (getCum <= 24) { textLP(" Spunk drools slowly from your softening erection"+plural(1)+"."); }
            if (getCum > 24 && getCum <= 72) { textLP(" A few small wads of cum ooze down from your softening erection"+plural(1)+"."); }
            if (getCum > 72 && getCum <= 1000) { textLP(" Gobs of cum collect and fall feebly from the tips of your softening erection"+plural(1)+"."); }
            if (getCum > 1000 && getCum <= 2200) { textLP(" A stream of squandered spunk flows from your softening erection"+plural(1)+", like a casual piss."); }
            if (getCum > 2200 && getCum <= 4500) { textLP(" Your softening erection"+plural(1)+" buck slightly as a heavy flow of spunk washes out weakly."); }
            if (getCum > 4500 && getCum <= 20000) { textLP(" Cum continually spills from your softening erection"+plural(1)+", making them buck simply from volume, without any force and pooling beneath you."); }
            if (getCum > 20000) { textLP(" Your "+legDesc(2)+" become"+legDesc(11)+" drenched in your own white spunk as your softening erection"+plural(1)+" weakly spew up the contents of your balls, spilling into a puddle around you."); }
        }
        if (vagTotal > 0) {
            textLP(" Your "+vulvaDesc()+" lips quiver and clench against the air, frustratedly grabbing nothing.");
        }
        textLP(" The climax is completely unsatisfactory and wasted pathetically.");
    }
    textLP(" You collapse to the ground, exhausted.");
    specialKOLose();
    textLP("\r\rYou wake back up some time later, feeling totally drained. Stumbling back to town, you take a moment to reflect and sigh.");
    if (currentState == 2){ currentState = 1; }
    if (inDungeon == true) { inDungeon = false; }
    doLust(-lust, 3);
    exhaustion -= Math.floor(percent()/20);
    skipExhaustion = true;
    hrs = (2+Math.floor(percent()/20));
    doEnd();
}

function doLust(changes:int, source:int, ...triggers):void{
    //Source = 1: Offensive lust; Source = 2: XP gaining lust (loss); Source = 0: Neutral, no resist
    
    /*if (fetishes.indexOf(1) != -1) { changes = changes*maleFetish; }
    if (fetishes.indexOf(2) != -1) { changes = changes*femaleFetish; }
    if (fetishes.indexOf(3) != -1) { changes = changes*hermFetish; }
    if (fetishes.indexOf(4) != -1) { changes = changes*narcissistFetish; }
    if (fetishes.indexOf(5) != -1) { changes = changes*dependentFetish; }
    
    if (fetishes.indexOf(21) != -1) { changes = changes*dominantFetish; }
    if (fetishes.indexOf(22) != -1) { changes = changes*submissiveFetish; }
    if (fetishes.indexOf(23) != -1) { changes = changes*lboobFetish; }
    if (fetishes.indexOf(24) != -1) { changes = changes*sboobFetish; }  
    if (fetishes.indexOf(25) != -1) { changes = changes*furryFetish; }
    if (fetishes.indexOf(26) != -1) { changes = changes*scalyFetish; }
    if (fetishes.indexOf(27) != -1) { changes = changes*smoothyFetish; }

    if (fetishes.indexOf(51) != -1) { changes = changes*pregnancyFetish; }
    if (fetishes.indexOf(52) != -1) { changes = changes*pregnancyFetish; }
    if (fetishes.indexOf(53) != -1) { changes = changes*milkFetish; }
    if (fetishes.indexOf(54) != -1) { changes = changes*sizeFetish; }
    if (fetishes.indexOf(55) != -1) { changes = changes*unbirthingFetish; }
    if (fetishes.indexOf(56) != -1) { changes = changes*ovipositionFetish; }
    if (fetishes.indexOf(57) != -1) { changes = changes*toyFetish; }
    if (fetishes.indexOf(58) != -1) { changes = changes*hyperFetish; }*/
    
    if (source == 1) { 
        if (changes > 0){
            changes -= Math.floor(changes*ment/125);
            if (changes < 0) { changes = 0; }
        }
    }
    
    if (source == 2){
        if (changes <= 0) { changes += Math.floor(changes*ment/125);    }
        /*if (changes > 0) { 
            doHP(-Math.floor(changes/2));
            textLP("\r\rThe act is not actually something you enjoy, being quite unpleasant and painful in the efforts, making you feel less aroused from sheer disgust.");
            changes = -10;
        }*/
    }
    

    if (changes <= 0 && source == 2) {
        changes -= 6;
        
        if (fertilityStatueCurse > 0) {
            textLP("\r\rWith your orgasm, you feel strange as wispy fumes escape from your crotch, just like those that descended from the statue you encountered...");
            vagChange(0, 1);
        }

        if (cockSnakeVenom > 0 && triggers.indexOf(1) != -1 && cockTotal > 0)   {
            textLP("\r\rHowever, after you have finished, you realize there's a bit more meat to your meat... The venom from the cock-snake fed off of your orgasm, causing your appendage"+plural(1)+" to flop a bit lower down your "+legDesc(3)+" as "+plural(11)+" shrink"+plural(3)+" back down...");
            cockChange(2, 0);
        }
        if (cockSnakeVenom > 0 && triggers.indexOf(2) != -1 && vagTotal > 0)    {
            textLP("\r\rHowever, after you have finished, you realize your clit"+plural(2)+" "+plural(14)+" a bit more prominent... The venom from the cock-snake fed off of your orgasm, causing the button"+plural(2)+" swell larger than before, and aren't shrinking all the way back down...");
            clitSize += 3;
        }

        if (milkCPoisonNip > 0 && triggers.indexOf(3) != -1){
            textLP("\r\rHowever, now that you've calmed down, you notice a bit more weight at your chest... The warmth from the milk creeper poison in your bosom intensified with your pleasure, causing your flesh to grow larger while you were distracted by the climax. A hefty reminder.");
            boobChange(1);
            nipplePlay += 15;
        }

        if (milkCPoisonUdd > 0 && triggers.indexOf(4) != -1){
            textLP("\r\rHowever, now that you've calmed down, you notice a bit more weight at your belly... The warmth from the milk creeper poison in your udder intensified with your pleasure, causing your flesh to grow larger while you were distracted by the climax. A hefty reminder.");
            boobChange(1);
            nipplePlay += 15;
        }
        
        if (level < 50){
            if ((lust + changes) >= 0 && -changes > (level+6+str/3)){ doSexP(Math.floor(-changes - (level+6+str/3))); }
            else if ((lust + changes < 0) && lust > (level+6+str/3)) { doSexP(Math.floor(lust - (level+6+str/3)));  }
        }
        else {
            if ((lust + changes) >= 0 && -changes > (50+6+str/3)){ doSexP(Math.floor(-changes - (50+6+str/3))); }
            else if ((lust + changes < 0) && lust > (50+6+str/3)) { doSexP(Math.floor(lust - (50+6+str/3)));    }
        }
    }
    
    if (changes < 0){ lustDown.visible = true; }
    if (changes > 0){ lustUp.visible = true; }
    
    if ((lust+changes) >= 75 && lust < 75){
        if (cockTotal > 0){
            textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" squirm"+plural(3)+" in your "+clothesBottom()+", throbbing and wanting desperately to come.");
            if (moistCalc(1) > 0 && moistCalc(1) <= 3) {
                textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
            }
            if (moistCalc(1) > 3 && moistCalc(1) <= 7)  {
                textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
            }
            if (moistCalc(1) > 7 && moistCalc(1) <= 11) {
                textLP(" You feel your cock"+plural(1)+" slimed from tip to belly with "+plural(5)+" own pre, a steady dribble down your thigh and your "+clothesBottom()+" looking more like you peed yourself.");
            }
            if (moistCalc(1) > 11)  {
                textLP(" You feel your cock"+plural(1)+" swimming in "+plural(5)+" own pre, as long strands of slime seep through your "+clothesBottom()+" and stretch down to the ground. With each step, you fling the stuff around you like a whip, smacking across whatever is nearby");
            }
        }
        if (vagTotal > 0){
            textLP("\r\rYour "+vulvaDesc()+" lips feel swollen and hot in your "+clothesBottom()+", making your "+legDesc(2)+" feel weak. Your "+clitDesc()+" clit"+plural(2)+" seem"+plural(4)+" on the verge of exploding without any attention soon, stiffly rubbing against your "+clothesBottom()+" with each move.");
            if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
                textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
            }
            if (moistCalc(2) > 3 && moistCalc(2) <= 7) {
                textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
            }
            if (moistCalc(2) > 7 && moistCalc(2) <= 11) {
                textLP(" You swear you can hear yourself squish with each step as your "+clothesBottom()+" is completely soaked through with your honey. Your thighs feel like they've been completely oiled down by the warm, sensuous fluid.");
            }
            if (moistCalc(2) > 11) {
                textLP(" There must be a waterfall in your "+clothesBottom()+" as a steady flow of clear honey drools from "+legWhere(1)+" your "+legDesc(2)+". You have to be extra careful of slipping in your own slime...");
            }
        }
        textLP("\r\rYour "+nipDesc()+"nipples threaten to pierce through your "+clothesTop()+". They feel as hard as diamonds with all your arousal, making you shiver whenever something brushes them.");
    }
    else if ((lust+changes) >= 50 && lust < 50){
        if (cockTotal > 0){
            textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" feel"+plural(3)+" stiff and engorged with blood. Oh how nice it would be to take care of that problem... ");
            if (moistCalc(1) > 0 && moistCalc(1) <= 3)  {
                textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
            }
            if (moistCalc(1) > 3 && moistCalc(1) <= 7)  {
                textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
            }
            if (moistCalc(1) > 7)   {
                textLP(" You feel your cock"+plural(1)+" slimed from tip to belly with its own pre, a steady dribble down your thigh and your "+clothesBottom()+" looking more like you peed yourself.");
            }
        }
        if (vagTotal > 0){
            textLP("\r\rYour "+vulvaDesc()+" vulva feels puffy with engorgement, making you walk a little awkwardly so as to not squeeze them so much. Your "+clitDesc()+" clit"+plural(2)+" stir"+plural(4)+" in your "+clothesBottom()+", throbbing gently in anticipation.");
            if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
                textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
            }
            if (moistCalc(2) > 3 && moistCalc(2) <= 7) {
                textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
            }
            if (moistCalc(2) > 7) {
                textLP(" You swear you can hear yourself squish with each step as your "+clothesBottom()+" is completely soaked through with your honey. Your thighs feel like they've been completely oiled down by the warm, sensuous fluid.");
            }
        }
        if (nipType == 2) { textLP("\r\rYour sunken nipples rise out of your "+boobDesc()+" mounds, standing to attention in your "+clothesTop()+". They tingle slightly with your arousal.");  }
        else { textLP("\r\rYour "+nipDesc()+"nipples stand at attention in your "+clothesTop()+". They tingle slightly with your arousal."); }
    }
    else if ((lust+changes) >= 25 && lust < 25){
        if (cockTotal > 0){

            textLP("\r\rYour "+cockDesc()+" cock"+plural(1)+" wiggle"+plural(3)+" in your "+clothesBottom()+", stirring awake and growing erect. Bulging against the fabric, you silently wonder if anybody else will notice...");
            if (moistCalc(1) > 0 && moistCalc(1) <= 3)  {
                textLP(" A small amount of pre leaks out, making a moist blotch on your "+clothesBottom()+".");
            }
            if (moistCalc(1) > 3)   {
                textLP(" Steady drops of pre leak out, blotching your "+clothesBottom()+" with small patches of slime.");
            }
        }
        if (vagTotal > 0){
            textLP("\r\rYour "+vulvaDesc()+" slit tingles and sparks. You feel a little giggly and warm with the sensation, delighting in the pleasantness of it all. Your "+clitDesc()+" clit"+plural(2)+" tug"+plural(4)+" at the hood"+plural(4)+", pulsing awake in your "+clothesBottom()+".");
            if (moistCalc(2) > 0 && moistCalc(2) <= 3) {
                textLP(" Your pussy lips slip over each other with each step, slightly lubricated with your arousal.");
            }
            if (moistCalc(2) > 3) {
                textLP(" You can feel webs of slime smear across the inside of your "+clothesBottom()+", your honey dribbling lightly within.");
            }
        }
    }

    if ((lust+changes) >= 30 && lustPenalty == 0){
        textLP("\r\rThe distraction weighs on your mind constantly, making it hard to focus on normal tasks.");
        statsMod(0,-4,0,0);
        lustPenalty = 1;
    }
    if ((lust+changes) >= 60 && lustPenalty == 1){
        textLP("\r\rYour muscles are twitchy and feeling weak from the strong tingle of arousal.");
        statsMod(-5,0,0,0);
        lustPenalty = 2;
    }
    if ((lust+changes) >= 90 && lustPenalty == 2){
        textLP("\r\rThe intense lust has overwhelmed your body, leaving your "+skinDesc()+" hypersensitive.");
        statsMod(0,0,0,+10);
        lustPenalty = 3;
    }

    if ((lust+changes) >= 100){
        lust = 100;
        changes = 0;
        if (inBag == false) { doLustForcedMasturbate(); }
    }

    if (lust + changes < minLust + 20 && heat > 0 && heatTime < 0 && !pregCheck(0)) { 
        lust = minLust + 20;    
        changes = 0;
    }
    else if ((lust+changes) < minLust){
        lust = minLust;
        changes = 0;
    }
    
    lust += changes;
    statDisplay();
}

function doLustForcedMasturbate():void {
    if (currentState == 2){ 
        textLP("\r\rAmidst the heat of battle, your "+legDesc(2)+" buckle"+legPlural(1)+" from your intense arousal, preventing you from fighting any further.");
        if (inBag == false) { currentState = 1; }
        doNext();
        doListen = function():void{
            if (ePref == 0 || (ePref == 1 && gender == 2) || (ePref == 2 && gender == 1) || gender == 0) {
                textL("Unfortunately, the "+enemyName()+" has no interest in taking advantage of your state and lands a heavy blow, knocking you out." );
                doHP(-100000);
            }
            else { doGetRaped(); }
        }
    }
}
