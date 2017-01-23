/******
 *Hair*
 ******/


/*

This is where all clothes-related logic sits.

SentenceBuilding:
hairDesc() - Description of hair for sentences.
hairC() - Color of hair for sentences.
hairL() - Length of hair for sentences.


doSalon - The shop for salon.
hairstyleName - The names for each hairstyle, for store.
hairstyleID - The correlation of different town's salons to the id of the hairstyles they have.
hairstyleValue - The value of all the hairstyles.
hairstyleLength - Whether or not a hairstyle can have different lengths.
hairstyleDescription - How the hairstyle is described in the salon.

clothesChange - Equips the clothes to the top or bottom as appropriate.
changeTop - Stat changes for the top piece of clothing.
changeBot - Stat changes for the bottom piece of clothing.
*/


function doSalon():void {
	bc();
	var buy:int = 0;
	viewButtonOutline(1,1,1,1,1,1,1,0,1,1,1,1);
	viewButtonText(1,1,1,1,1,1,1,0,1,1,1,1);
	i = 1
	while(i < 12){
		if(i != 4 && i != 8){ buttonWrite(i, hairstyleName(hairstyleID(i))); }
		i++;
	}
	buttonWrite(4, "Buy");
	buttonWrite(12, "Return");
	textL("Click on a hairstyle to view a description of the hairstyle. If you would like to purchase it, click the Buy button.\r\rNote: Buying hairstyles automatically replaces your current hairstyle. You cannot sell hairstyles.");
	doListen = function():void{
		if (buttonChoice != 4 && buttonChoice != 8 && buttonChoice != 12 && clothesID(buttonChoice) != 0){
			textL(hairstyleDescription(hairstyleID(buttonChoice))+"\r\rCost: "+hairstyleValue(hairstyleID(buttonChoice))+" coins.");
			buy = buttonChoice;
		}
		if (buttonChoice == 4 && buy != 0){
			textLP("\r\rAre you sure you would like to buy "+hairstyleName(hairstyleID(buy))+"?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if (coin < hairstyleValue(hairstyleID(buy))){
						textL("Sorry, but you only have "+coin+" coins. You require at least "+(hairstyleValue(hairstyleID(buy))-coin)+" more coins to purchase "+hairstyleName(hairstyleID(buy))+".");
						doNext();
						doListen = function():void { doTailor(); }
					}
					else{
						hair = hairstyleID(buy);
						doCoin(-hairstyleValue(hairstyleID(buy)));
						if (hairstyleLength(hairstyleID(buy))) {
							viewButtonOutline(1,1,0,0,1,1,1,0,0,0,0,0);
							viewButtonText(1,1,0,0,1,1,1,0,0,0,0,0);
							buttonWrite(1, "Short");
							buttonWrite(2, "Medium");
							buttonWrite(5, "Long");
							buttonWrite(6, "X-Long");
							buttonWrite(7, "XX-Long");
							textLP("What length would you like your hair to be? This does not affect its cost.\r\rShort - Doesn't hang past head.\r\rMedium - Reaches shoulders.\r\rLong - Reaches past shoulderblades.\r\rX-Long - Hangs past your butt.\r\rXX-Long - Reaches the ground.");
							doListen = function():void {
								if (buttonChoice == 1) { hairLength = 2; }
								else if (buttonChoice == 2) { hairLength = 4; }
								else if (buttonChoice == 5) { hairLength = 6; }
								else if (buttonChoice == 6) { hairLength = 8; }
								else if (buttonChoice == 7) { hairLength = 10; }
								doSalon();
							}
						}
						else { doSalon(); }
					}
				}
				else {
					doSalon();
				}
			}
		}
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function hairstyleName(ID:int):String{
	var tempStr:String = "HAIRSTYLE NAME ERROR "+hair;
	if (ID == 0){ tempStr = "None";	}
	if (ID == 1){ tempStr = "Wavy"; }
	if (ID == 2){ tempStr = "Pigtail"; }
	if (ID == 3){ tempStr = "Ponytail"; }
	if (ID == 4){ tempStr = "Straight"; }
	if (ID == 5){ tempStr = "Buzzcut"; }
	if (ID == 6){ tempStr = "Mohawk"; }
	if (ID == 7){ tempStr = "Bun"; }
	if (ID == 8){ tempStr = "Curly"; }
	if (ID == 9){ tempStr = "B Pigtail"; }
	if (ID == 10){ tempStr = "B Ponytail"; }
	if (ID == 11){ tempStr = "Braided"; }
	if (ID == 12){ tempStr = "Spiky"; }
	if (ID == 13){ tempStr = "Emo"; }
	if (ID == 14){ tempStr = "Afro"; }
	return tempStr;
}

function hairDesc():String{
	var tempStr:String = "HAIR DESC ERROR "+hair;
	if (hair == 1){ tempStr = "wavy hair"; }
	if (hair == 2){ tempStr = "hair pulled to the sides of your head in pigtails"; }
	if (hair == 3){ tempStr = "hair pulled back into a ponytail"; }
	if (hair == 4){ tempStr = "straight hair"; }
	if (hair == 5){ tempStr = "really short hair"; }
	if (hair == 6){ tempStr = "hair styled up into a mohawk"; }
	if (hair == 7){ tempStr = "hair curled up into a bun"; }
	if (hair == 8){ tempStr = "curly hair"; }
	if (hair == 9){ tempStr = "hair pulled to the sides of your head in braided pigtails"; }
	if (hair == 10){ tempStr = "hair pulled back into a braided ponytail"; }
	if (hair == 11){ tempStr = "braided hair"; }
	if (hair == 12){ tempStr = "spiky hair"; }
	if (hair == 13){ tempStr = "straight, stiff hair covering an eye"; }
	if (hair == 14){ tempStr = "giant poofball of hair"; }
	return tempStr;
}

function hairC():String{
	var tempStr:String = "HAIR COLOR ERROR "+hairColor
	if (hairColor == 0) { tempStr = ""; }
	if (hairColor == 1) { tempStr = "black "; }
	if (hairColor == 2) { tempStr = "blonde "; }
	if (hairColor == 3) { tempStr = "red "; }
	if (hairColor == 4) { tempStr = "blue "; }
	if (hairColor == 5) { tempStr = "coral pink "; }
	if (hairColor == 6) { tempStr = "auburn "; }
	if (hairColor == 7) { tempStr = "brown "; }
	if (hairColor == 8) { tempStr = "grey "; }
	if (hairColor == 9) { tempStr = "white "; }

	return tempStr;
}

function hairL():String{
	var tempStr:String = "HAIR LENGTH ERROR "+hairLength;
	if (hairLength == 2) { tempStr = "that is short enough to not dangle past your head";	}
	if (hairLength == 4) { tempStr = "that reaches down to your shoulders";	}
	if (hairLength == 6) { tempStr = "that reaches down your back";	}
	if (hairLength == 8) { tempStr = "that reaches down to your butt";	}
	if (hairLength == 10) { tempStr = "that reaches down to the ground";	}
	return tempStr;
}


function hairstyleID(choice:int):int{
	var tempNum:int = 0;
	if (currentZone == 1){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 2;}
		if (choice == 6) { tempNum = 3;}
		if (choice == 7) { tempNum = 12;}
		if (choice == 9) { tempNum = 14;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 2){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 3;}
		if (choice == 6) { tempNum = 10;}
		if (choice == 7) { tempNum = 5;}
		if (choice == 9) { tempNum = 6;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 3){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 6;}
		if (choice == 6) { tempNum = 11;}
		if (choice == 7) { tempNum = 12;}
		if (choice == 9) { tempNum = 13;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 4){
		if (choice == 1) { tempNum = 1;}
		if (choice == 2) { tempNum = 4;}
		if (choice == 3) { tempNum = 8;}
		if (choice == 5) { tempNum = 2;}
		if (choice == 6) { tempNum = 9;}
		if (choice == 7) { tempNum = 7;}
		if (choice == 9) { tempNum = 13;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 6){
		if (choice == 1) { tempNum = 2;}
		if (choice == 2) { tempNum = 3;}
		if (choice == 3) { tempNum = 4;}
		if (choice == 5) { tempNum = 9;}
		if (choice == 6) { tempNum = 10;}
		if (choice == 7) { tempNum = 11;}
		if (choice == 9) { tempNum = 12;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}
	if (currentZone == 12){
		if (choice == 1) { tempNum = 2;}
		if (choice == 2) { tempNum = 9;}
		if (choice == 3) { tempNum = 6;}
		if (choice == 5) { tempNum = 12;}
		if (choice == 6) { tempNum = 13;}
		if (choice == 7) { tempNum = 1;}
		if (choice == 9) { tempNum = 4;}
		if (choice == 10) { Choice10.visible = false; }
		if (choice == 11) { tempNum = 0;}
	}

	return tempNum;
}

function hairstyleValue(ID:int):int{
	var tempNum:int = 0;
	if (ID == 0){ tempNum = 0; }
	if (ID == 1){ tempNum = 5; }
	if (ID == 2){ tempNum = 8; }
	if (ID == 3){ tempNum = 8; }
	if (ID == 4){ tempNum = 5; }
	if (ID == 5){ tempNum = 7; }
	if (ID == 6){ tempNum = 20; }
	if (ID == 7){ tempNum = 10; }
	if (ID == 8){ tempNum = 5; }
	if (ID == 9){ tempNum = 15; }
	if (ID == 10){ tempNum = 15; }
	if (ID == 11){ tempNum = 23; }
	if (ID == 12){ tempNum = 18; }
	if (ID == 13){ tempNum = 18; }
	if (ID == 14){ tempNum = 20; }
	return tempNum;
}

function hairstyleLength(ID:int):Boolean{
	var tempBool:Boolean = false;
	if (ID == 1) { tempBool = true; }
	if (ID == 2) { tempBool = true; }
	if (ID == 3) { tempBool = true; }
	if (ID == 4) { tempBool = true; }
	if (ID == 8) { tempBool = true; }
	if (ID == 9) { tempBool = true; }
	if (ID == 10) { tempBool = true; }
	if (ID == 11) { tempBool = true; }
	if (ID == 13) { tempBool = true; }
	return tempBool;
}

function hairstyleDescription(ID:int):String{
	var tempStr:String = "CLOTHES NAME ERROR "+ID;
	if (ID == 0) { tempStr = "No hairstyle whatsoever. Choosing this option removes any mention of hair from your appearance description."; }
	if (ID == 1) { tempStr = "Wavy hair has subtle curves that make it seem more flowing.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 2) { tempStr = "Pigtails are straight/wavy/curvy hair pulled away from the face and gathered towards the sides of your head, where it is bundled and tied at the base, allowing it to hang freely over your shoulders.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 3) { tempStr = "A Ponytail is straight/wavy/curvy hair pulled away from the face and gathered at the back of your head, where it is bundled and tied at the base, allowing it to hang freely over your back.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 4) { tempStr = "Straight hair has been combed out to be nice and straight.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 5) { tempStr = "A Buzzcut is hair cut quite short, less than a quarter inch from your head."; }
	if (ID == 6) { tempStr = "A Mohawk leaves only the hair along the center, from front to back, left, shaving the rest. It's usually a couple inches long."; }
	if (ID == 7) { tempStr = "A Bun is straight or wavy hair pulled up into a bun-like shape on top of the back of your head."; }
	if (ID == 8) { tempStr = "Curly hair has been treated to make it nice and curly with a bit of spring.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 9) { tempStr = "Braided Pigtails are pigtails that have been braided, keeping the dangling hair in a nice tight formation.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 10) { tempStr = "A Braided Ponytail is a ponytail that has been braided, keeping the dangling hair in a nice tight formation.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 11) { tempStr = "Braided hair involves tying all your hair into many braids, keeping it all in multiple tight formations.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 12) { tempStr = "Spiky hair is hair that has been treated to stand away from your head, defying gravity. Due to limitations, it can only reach a few inches in length."; }
	if (ID == 13) { tempStr = "Emo hair is hair that has been treated to sit straight at all times, with bangs often hanging over one eye.\r\rThis hairstyle has additional length options available after purchasing."; }
	if (ID == 14) { tempStr = "An Afro is a giant poofball of curly hair. Due to limitations, it only reaches about half a foot from your head."; }
	return tempStr;
}

