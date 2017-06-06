/**************
 *Calculations*
 **************/

 /*
 Calculations explained:

trueCockSize - Total cock length when erect. Measured in .5 inches, so a trueCockSize of 6 would be a 3" long erect cock. 
	A flaccid cock is generally half that length (or hidden, if there's a sheath).
	The diameter of the cock is 1/6 it's length. So, a trueCockSize of 12 would be 6" long and 1" thick.

trueVagSize - The "depth" of a vagina, measured like the size of a cock. 
	Depth is measured in .5 inches when aroused. trueVagSize of 6 would be 3" when aroused.
	Unaroused size is half that.
	Generally matches a cock of the same size.

moistCalc(source) - How much lubrication the body part currently produces.
	moistCalc(1) for penises.
	moistCalc(2) for vaginas.
	Generally a scale of 1-12. 
		1-3 = barely any
		4-7 = some drops, blotching clothes a little
		8-11 = steady dribble, slickening the area
		12 = steady waterfall, makes everything near slimey and leaves a trail
	Scales with lust (higher lust means more lubricant).

vagLimit - Returns the largest cock size the player can handle.
		Calculated by size, elasticity, and lubrication.
		Cannot take anything bigger without pain, which we don't want in Nimin.

eVagLimit(size) - Pass it the penis "size" you think the character can take at most, it passes back a number to compare to the cock size.
	Basically just adds the player's lubricant to fit better.

relativeBellySize - How big the belly is compared to the player.
	Scales with player size. Big baby in small player is much different than big baby in big player.
	See bellyDesc() in Descriptions.as to get an idea of what the numbers relate to.

cumAmount - Used to ejaculate. Will do all the ejaculation calculations and pass back the volume of cum produced from that ejactulation.
	Volume measured in milliliters.
	Increases with time since last ejaculation (blueBalls).

milkAmount(source) - Milks the specified source and passes back the volume of milk produced.
	milkAmount(1) - Breasts
	milkAmount(2) - Udder
	Volume measured in milliliters.
	Increases with time since last milking (engorgement).

breastSize - How big the boobs are. Measured in circumference from chest in .5 inches.
	1 full inch = 1 cup size. So breastSize 5 = 2.5" = BB cups. Never use cup sizes though, only descriptive versions (see boobDesc())
	Extra breast sets change overall sizing, though not considered in most scenes. Should probably fix that at some point.

tallness - Total height in inches.

*/



function trueCockSize():Number { return (cockSize*cockSizeMod); }

function trueVagSize():Number { 
	if (lust > 30) { return (vagSize*vagSizeMod); }
	else { return (vagSize*vagSizeMod/2); }
}

function vagLimit():Number { return (vagSize*(vagSizeMod + vagElastic) + vagSize*vagSizeMod*moistCalc(2)/10); }

function eVagLimit(limit:int):Number { return (limit+limit*moistCalc(1)/10); }

function relativeBellySize():int { return (pregnancyTime/10 + vagBellyMod/3 + bellyMod/5)*60/tallness; }

function moistCalc(which:int):Number {
	var tempNum:Number = 0;

	if (which == 1) { tempNum = cockMoist + cockMoistMod; }
	if (which == 2) { tempNum = vagMoist + vagMoistMod;	}

	if (tempNum < 0) { tempNum = 0;	}

	if (lust >= 75) { tempNum = Math.ceil(tempNum*1.5); }
	else if (lust >= 50) { tempNum = Math.ceil(tempNum*1); }
	else if (lust >= 25) { tempNum = Math.ceil(tempNum*.75); }
	else { tempNum = Math.ceil(tempNum*.25); }

	return tempNum;
}

function breastDimension():float{
	var base_weight:float = 0.0625;  //Pounds
	var r:float = Math.pow((base_weight * breastSize * 6.6),1/3);
	var d:float = 2*Math.pi*r;
	d = d - 0.15*chestSize();
	if (d < 0) { d = 0; }
	return Math.floor(10*(chestSize() + d))/10;
}


function chestSize():float{
	var bodyMultiplier:float = body/200;
	if (bodyMultiplier > .4) { bodyMultiplier = .4;	}
	return Math.floor(10*(tallness * (0.46 + bodyMultiplier)))/10;
}

function bustSize():float {
	var bustMultiplier:float = 1.0;
	if (boobTotal == 8) { bustMultiplier = 0.8; }
	if (boobTotal == 10) { bustMultiplier = 0.7; }

	return Math.floor(10*breastDimension()*bustMultiplier)/10;
}

function totalBust():float{
	return chestSize()+bustSize();
}

function bustRatio():float{
	return totalBust()/chestSize();
}

function ballDimension():float {
	var base_weight:float = 0.005; //Pounds
	return Math.floor(10*(Math.pow(ballSize*baseWeight*6,1/3)))/10;
}


function cumAmount():int{
	var tempNum:int = 0;
	if (blueBalls <= 12){
		tempNum = (ballSize*(ballSize/2)*balls*cumMod*.5);
		//1/4x cum amount
	}
	if (blueBalls > 12 && blueBalls <= 36){
		tempNum = (ballSize*(ballSize/2)*balls*cumMod*1);
		//1/2x cum amount
	}
	if (blueBalls > 36 && blueBalls <= 84){
		tempNum = (ballSize*(ballSize/2)*balls*cumMod*2);
		//1x cum amount
	}
	if (blueBalls > 84){
		tempNum = (ballSize*(ballSize/2)*balls*cumMod*2.5);
		//1.25x cum amount
	}
	blueBalls = 0;
	tempNum = Math.floor(tempNum);
	return tempNum;
}

function milkAmount(origin:int):int{ 
	var tempNum:int = 0;
	if (origin == 1){
		if (milkEngorgement > (breastSize*(breastSize+1) + tallness/4 +milkCap)*2) {	milkEngorgement = (breastSize*(breastSize+1) + tallness/4 +milkCap)*2; }
		if (milkEngorgementLevel == 0) { 
			if (boobTotal == 2)	{ tempNum = milkEngorgement*.5*2; }
			if (boobTotal == 4)	{ tempNum = milkEngorgement*.5*4; }
			if (boobTotal == 6)	{ tempNum = milkEngorgement*.5*3.5; }
			if (boobTotal == 8)	{ tempNum = milkEngorgement*.5*6; }
			if (boobTotal == 10) { tempNum = milkEngorgement*.5*8; }
		}
		if (milkEngorgementLevel == 1) { 
			if (boobTotal == 2)	{ tempNum = milkEngorgement*1*2; }
			if (boobTotal == 4)	{ tempNum = milkEngorgement*1*4; }
			if (boobTotal == 6)	{ tempNum = milkEngorgement*1*3.5; }
			if (boobTotal == 8)	{ tempNum = milkEngorgement*1*6; }
			if (boobTotal == 10) { tempNum = milkEngorgement*1*8; }
		}
		if (milkEngorgementLevel == 2) { 
			if (boobTotal == 2)	{ tempNum = milkEngorgement*1.2*2; }
			if (boobTotal == 4)	{ tempNum = milkEngorgement*1.2*4; }
			if (boobTotal == 6)	{ tempNum = milkEngorgement*1.2*3.5; }
			if (boobTotal == 8)	{ tempNum = milkEngorgement*1.2*6; }
			if (boobTotal == 10) { tempNum = milkEngorgement*1.2*8; }
		}
		if (milkEngorgementLevel == 3) { 
			if (boobTotal == 2)	{ tempNum = milkEngorgement*1.5*2; }
			if (boobTotal == 4)	{ tempNum = milkEngorgement*1.5*4; }
			if (boobTotal == 6)	{ tempNum = milkEngorgement*1.5*3.5; }
			if (boobTotal == 8)	{ tempNum = milkEngorgement*1.5*6; }
			if (boobTotal == 10) { tempNum = milkEngorgement*1.5*8; }
		}
		
		if (milkEngorgementLevel == 1){
			milkEngorgementLevel = 0;
			boobChange(-1);
		}
		if (milkEngorgementLevel == 2){
			milkEngorgementLevel = 0;
			boobChange(-2);
		}
		if (milkEngorgementLevel > 2){
			milkEngorgementLevel = 0;
			boobChange(-3);
		}
		milkEngorgement = 0;
	}

	if (origin == 2){
		if (udderEngorgement > (udderSize*(udderSize+1) + tallness/4 +milkCap)*2) {	udderEngorgement = (udderSize*(udderSize+1) + tallness/4 +milkCap)*2; }
		if (udderEngorgementLevel == 0) { tempNum = udderEngorgement*1; }
		if (udderEngorgementLevel == 1) { tempNum = udderEngorgement*2.1;; }
		if (udderEngorgementLevel == 2) { tempNum =	udderEngorgement*2.7;; }
		if (udderEngorgementLevel == 3) { tempNum = udderEngorgement*3.5;; }
		if (udderEngorgementLevel == 1){
			udderEngorgementLevel = 0;
			udderChange(-2);
		}
		if (udderEngorgementLevel == 2){
			udderEngorgementLevel = 0;
			udderChange(-5);
		}
		if (udderEngorgementLevel > 2){
			udderEngorgementLevel = 0;
			udderChange(-8);
		}
		udderEngorgement = 0;

	}

	tempNum = Math.floor(tempNum);
	return tempNum;
}