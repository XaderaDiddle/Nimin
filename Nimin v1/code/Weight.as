/*
These are all the calculations for encumbrance
*/

function doWeight():Boolean{
    var tempBool:Boolean = false;
    //Based on average of body 15, str 30, carrymod 0, and tallness 60
    if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)) {
        textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is too much to carry, making it impossible to walk. You're stuck in this town until either you get stronger or the bulge in your "+clothesBottom()+" gets smaller...");
        tempBool = true;
    }
    else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*5/6) {
        textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is almost constantly on your mind... Your walk has a noticeable sway in its step just trying to hold it off the ground while you move. You're cautious when moving, or else you will lose control and slam it into something or someone.");
    }
    else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*2/3) {
        textLP("\r\rThe weight of your "+cockDesc()+" cock"+plural(1)+" is becoming a bit of a nuisance. Whenever you move around, you're subconsciously afraid your bulge will accidentally gain more momentum than intended and potentially hurt someone or break something.");
    }
    else if (cockSize*cockSizeMod > (body*2 + str + carryMod)*(tallness/60)*1/2) {
        textLP("\r\rYou are rather aware of the weight of your "+cockDesc()+" cock"+plural(1)+". You often find yourself slipping a hand into your "+clothesBottom()+" to readjust your bulge in an attempt to be a little less mindful about it.");
    }
    
    if (breastSize > (body*2 + str + carryMod)*(tallness/60) || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60))) {
        textLP("\r\rThe weight of your "+boobDesc()+" tits is too much to really carry, making even standing a chore. You're stuck in this town until either you get stronger or they get smaller...");
        tempBool = true;
    }
    else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*5/6 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*5/6) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*5/6)) {
        textLP("\r\rThe weight of your "+boobDesc()+" tits is rather troubling. Not only does your back ache from trying to keep them aloft, but you're also afraid you won't be able to get back up when you lay down.");
    }
    else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*2/3 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*2/3) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*2/3)) {
        textLP("\r\rThe weight of your "+boobDesc()+" tits is becoming worrisome. Your back aches a little from holding them up and you often find yourself resting them on tables whenever you sit down, to keep the load off yourself.");
    }
    else if (breastSize > (body*2 + str + carryMod)*(tallness/60)*1/2 || (boobTotal == 4 && breastSize > .5*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 6 && breastSize > .66*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 8 && breastSize > .33*(body*2 + str + carryMod)*(tallness/60)*1/2) || (boobTotal == 10 && breastSize > .25*(body*2 + str + carryMod)*(tallness/60)*1/2)) {
        textLP("\r\rYou are rather aware of the weight of your "+boobDesc()+" tits. Your hands are frequently beneath your "+clothesTop()+", trying to readjust the things. They're so heavy, you're subconsciouly drawing more attention to them with the way you keep swinging them around and absent-mindedly handling them.");
    }

    if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60) && showBalls == true) {
        textLP("\r\rThe weight of your "+ballDesc()+" nuts is too much to carry, anchoring you to the ground. You're stuck here until you get strong or your balls get smaller...");
        tempBool = true;
    }
    else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*5/6 && showBalls == true) {
        textLP("\r\rThe weight of your "+ballDesc()+" nuts is troublesome. Your "+legDesc(6)+" bend"+legPlural(1)+" with the heaviness and you have difficulty standing up whenever you sit down. And you're afraid of running because once those things start swaying, they're quite difficult to stop.");
    }
    else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*2/3 && showBalls == true) {
        textLP("\r\rThe weight of your "+ballDesc()+" nuts is becoming annoying. You're walking with your crotch sagging quite often and frequently consider buying a bra for them...");
    }
    else if (ballSize*balls/2 > (body*2 + str + carryMod)*(tallness/60)*1/2 && showBalls == true) {
        textLP("\r\rYou are rather aware of the weight of your "+ballDesc()+" nuts. Even in public, a hand is dipping into your "+clothesBottom()+" to readjust them and massaging your stretched scrotum is quickly becoming a hobby of yours.");
    }

    if (udderSize > (body*2 + str + carryMod)*(tallness/60) && udders == true){
        textLP("\r\rThe weight of your "+udderDesc()+" udder is too much to carry, sitting heavily in front of you. You're stuck in this town until either you get stronger or it gets smaller...");
        tempBool = true;
    }
    else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*5/6 && udders == true) {
        textLP("\r\rThe weight of your "+udderDesc()+" udder makes you uneasy. The momentum it gains when you walk makes you fear falling on your face and every now and then your "+legDesc(2)+" go numb while you're sitting or laying down.");
    }
    else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*2/3 && udders == true) {
        textLP("\r\rThe weight of your "+udderDesc()+" udder is becoming an inconvenience. Whenever you turn from side to side, it lifts off slightly and acts like a fleshy wrecking ball that you're unable to stop.");
    }
    else if (udderSize > (body*2 + str + carryMod)*(tallness/60)*1/2 && udders == true) {
        textLP("\r\rYou are rather aware of the weight of your "+udderDesc()+" udder. You often find yourself fondling it in an attempt to make it settle more appropriately, wondering if they make bras for this sort of thing...");
    }

    if ((pregnancyTime + bellyMod*2)/5 > (body*2+str+carryMod)*(tallness/60)){
        textLP("\r\rThe weight of your "+bellyDesc()+" belly is too much carry, putting your weight more on it than you can yourself. You're stuck in this town until either you get stronger or you lose some of the girth...");
        tempBool = true;
    }
    else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*5/6) {
        textLP("\r\rThe weight of your "+bellyDesc()+" belly is rather alarming... You're almost constantly trying to cradle it, subconsciously fearing it will drag you down to the ground if you don't. Whenever you sit down, you always prop it up against a table simply so you don't roll forward.");
    }
    else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*2/3) {
        textLP("\r\rThe weight of your "+bellyDesc()+" belly is becoming irksome. You take a bit more time to come to a halt whenever you move as it retains much of your momentum. And whenever you bend over, it's difficult to rise back up.");
    }
    else if ((pregnancyTime + bellyMod*2)/5 > (body*2 + str + carryMod)*(tallness/60)*1/2) {
        textLP("\r\rYou are rather aware of the weight of your "+bellyDesc()+" belly. You often subconsciously center your weight more by resting your hands on top of it rather than let them hang at your sides.");
    }

    return tempBool;
}