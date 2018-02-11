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



function penisDimension():Number {
	var baseWeight:Number = 0.05; //Pounds
	var totalCS:Number = cockSize * cockSizeMod;
	var r:Number = Math.pow(totalCS*baseWeight*27.77/(2*Math.PI*cockNarrowMod),1/3);


	return Math.floor(10*(2*Math.PI*r*cockNarrowMod))/10.0;
}

function totalBallSize():Number{
	return Math.floor(10*(blueBalls + ballSize*ballSizeMod))/10.0;
}

function ballDimension():Number {
	var baseWeight:Number = 0.005; //Pounds

	return Math.floor(10*(Math.pow(totalBallSize()*baseWeight*6,1/3)))/10.0;
}

function ballRatio():Number {
	return ballDimension()*120/tallness;
}

function cumAmount():int{
	var tempNum = Math.floor(totalBallSize()*balls*cumMod);

	blueBalls = 0;

	return tempNum;
}

//Max blueBalls from time
function blueBallsCap():int{
	return ballSize*ballSizeMod/2;
}
