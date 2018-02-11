/*

This is for all things mammary-related.

Breast and udder size, lactation rates, milk-methods, etc.
*/


function breastDimension():Number{
	var base_weight:Number = 0.0625;  //Pounds
	var totalBS:Number = breastSize * breastSizeMod + milkEngorgement/30 //30 mL of milk = 1 breastSize
	var r:Number = Math.pow((base_weight * breastSize * 6.6),1/3);
	var d:Number = 2*Math.PI*r;
	d = d - 0.15*chestSize();
	if (d < 0) { d = 0; }
	return Math.floor(10*(chestSize() + d))/10.0;
}


function chestSize():Number{
	var bodyMultiplier:Number = body/200;
	if (bodyMultiplier > .4) { bodyMultiplier = .4;	}
	return Math.floor(10*(tallness * (0.46 + bodyMultiplier)))/10.0;
}

function bustSize():Number {
	var bustMultiplier:Number = 1.0;
	if (boobTotal == 8) { bustMultiplier = 0.8; }
	if (boobTotal == 10) { bustMultiplier = 0.7; }

	return Math.floor(10*breastDimension()*bustMultiplier)/10.0;
}

function totalBust():Number{
	return chestSize()+bustSize();
}

function bustRatio():Number{
	return totalBust()/chestSize();
}

function totalNipSize():Number {
	return Math.floor(10*(nippleSize * nippleSizeMod))/10.0;
}

function nipDimension():Number {
	var baseWeight:Number = 0.005; //Pounds
	var r:Number = Math.pow(totalNipSize()*baseWeight*27.77/(2*Math.PI*nipNarrowMod),1/3);


	return Math.floor(10*(2*Math.PI*r*nipNarrowMod))/10.0;
}

function nipTallRatio():Number {
	return nipDimension()/tallness;
}

function nipBreastRatio():Number {
	var tempFloat:Number = 0.0
	if (bustSize() > 0) { tempFloat = nipDimension()/bustSize()	}
	return tempFloat;
}

function nipMilkLimit():int{
	return totalNipSize() * nipNarrowMod * 100; //100mL of milk per hour per nip size
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