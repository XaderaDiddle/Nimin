/***********
 *Inventory*
 ***********/

function doBag():void {
	inBag = true;
	showMoveItem(true);

	choiceListButtons("Bag");
	choiceListBlanks();
	doListen = function():void{

		choiceListSelect("Bag");

		if (buttonChoice == 12) { 
			if (moveItemID != 0) {
				textL("Closing your bag while moving an item will discard the item.\r\rAre you sure you want to discard "+itemName(moveItemID)+"");
				if (moveItemStack > 1) { textLP(" x"+moveItemStack);	}
				textLP("?");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6) {
						passiveItemRemove(moveItemID);
						moveItemID = 0;
						moveItemStack = 0;
						showMoveItem(false);
						inBag = false;
						doReturn();
					}
					else { doBag(); }
				}
			}
			else {
				inBag = false;
				doReturn(); 
			}
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { doBag();	}
		else { 
			showMoveItem(false);
			useItem(choiceListResult[0]); 
		}
	}
}

function useItem(ID:int):void {
	if (ID == 0){ 
		textL("This slot is empty.");
		doBag();
	}
	else {
		textL(itemDescription(ID));
		if (usableItem(ID) || conItem(ID)) {
			textLP("\r\rAre you sure you want to use this item?");
			if (conItem(ID)){ textLP("\r\rWarning: Using this item will consume it."); }
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					if(conItem(ID)) { 
						if (bagStackArray[choiceListResult[1]] <= 1){
							bagSlotClear(choiceListResult[1]);
						}
						else {
							bagStackArray[choiceListResult[1]] -= 1;
						}
					}
					foodItem(ID);
					doItemUse(ID);
					statDisplay();
				}
				else { doBag(); }
			}
		}
		else { doBag(); }
	}
}

function itemAdd(ID:int):void{
	itemGainArray.push(ID);
}

function gainItem(ID:int):void {
	var tempNum:int = 0;
	var openSlot:int = checkOpenSlot(ID);
	
	if (openSlot >= 0) {
		if (bagArray[openSlot] == 0){
			bagArray[openSlot] = ID;
			bagStackArray[openSlot] = 1;
			passiveItemAdd(ID);
			tempNum++;
			while (bagStackArray[openSlot] < itemStackMax(ID) && itemGainArray.indexOf(ID) != -1) {
				itemGainArray.pop();
				bagStackArray[openSlot] += 1;
				tempNum++;
			}
		}
		else {
			tempNum++;
			bagStackArray[openSlot] += 1;
			while (bagStackArray[openSlot] < itemStackMax(ID) && itemGainArray.indexOf(ID) != -1) {
				itemGainArray.pop();
				bagStackArray[openSlot] += 1;
				tempNum++;
			}
		}
		if (tempNum < 2) { textL("You have obtained a "+itemName(ID)+"!"); }
		else { textL("You have obtained "+(tempNum)+"x "+itemName(ID)+"!"); }
		doEnd();
	}
	else {
		textL("You have obtained a "+itemName(ID)+"!\r\rHowever, you do not have enough room in your bag. Click on an item in your bag to replace it with the new one or click a non-item button to ignore the new item.");
		doDiscard(ID);
	}
}

function loseManyItem(ID:int, amount:int):void{
	for (i = bagArray.length;i >= 0; i--) {
		if (bagArray[i] == ID && amount > 0) {
			if (amount >= bagStackArray[i]) {
				passiveItemRemove(bagArray[i]);
				bagArray[i] = 0;
				amount -= bagStackArray[i];
				bagStackArray[i] = 0;
			}
			else {
				bagStackArray[i] -= amount;
				amount = 0;
			}
		}
	}
}


function checkOpenSlot(ID:int):int {
	var slot:int = -1;
	for (i = bagArray.length;i >= 0 ;i--) {
		if (bagArray[i] == 0) { slot = i; }
	}
	for (i = bagArray.length;i >= 0 ;i--) {
		if (bagStackArray[i] < itemStackMax(ID) && bagArray[i] == ID) { slot = i; }
	}
	
	return slot;
}

function bagSlotAdd(amount:int):void {
	for (i = 1;i <= amount;i++)	{
		bagArray.push(0);
		bagStackArray.push(0);
	}
}

function bagSlotRemove(amount:int):void {
	var tempInt:int = 0;
	var tempInt2:int = 0;
	var tempInt3:int = 0;
	for (i = 1;i <= amount;i++) {
		var tempInt = bagArray.pop();
		var tempInt2 = bagStackArray.pop();
		if (tempInt != 0 && tempInt2 != 0) {
			for (tempInt3 = 1;tempInt3 <= tempInt2 ;tempInt3++) { itemAdd(tempInt); }
		}
	}
}

function bagSlotClear(slot:int):void {
	passiveItemRemove(bagArray[slot]);
	bagArray[slot] = 0;
	bagStackArray[slot] = 0;
}

function doDiscard (ID:int):void{
	choiceListButtons("Bag");
	doListen = function():void{
		choiceListSelect("Bag");

		if (buttonChoice == 12){
			while (itemGainArray.indexOf(ID) != -1) { itemGainArray.pop(); }
			doProcess();
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Bag"); }
		else if (canLose(choiceListResult[0])) {
			textL(itemDescription(choiceListResult[0])+"\r\r"+itemDescription(ID)+"\r\rDo you want to replace "+itemName(choiceListResult[0])+" with "+itemName(ID)+"?");
			if (bagStackArray[choiceListResult[1]] > 1) { textLP("\r\rYou will lose all "+bagStackArray[choiceListResult[1]]+" of "+itemName(choiceListResult[0])+" if you do."); }
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					bagSlotClear(choiceListResult[1]);
					gainItem(ID);
				}
				if (buttonChoice == 7){
					doDiscard(ID);
				}
			}
		}
		
		else if (!canLose(choiceListResult[0])) {
			textL("Something is preventing you from removing the "+itemName(choiceListResult[0])+". You may have to unequip it first or it could be cursed!\r\rPlease choose something else.");
			doDiscard(ID);
		}

		
	}
}

function itemMove(slot:int):void{
	var tempInt:int = moveItemID;
	var tempInt2:int = moveItemStack;
	var tempI:int = slot + choicePage*9-9;
	if (slot < 4) { tempI -= 1; }
	else if (slot < 8) { tempI -= 2; }
	else if (slot < 12) { tempI -= 3; }
	if (moveItemID == bagArray[tempI] && bagStackArray[tempI] < itemStackMax(bagArray[tempI])) {
		if (moveItemStack + bagStackArray[tempI] <= itemStackMax(bagArray[tempI])) {
			bagStackArray[tempI] += moveItemStack;
			moveItemID = 0;
			moveItemStack = 0;
		}
		else {
			moveItemStack -= (itemStackMax(bagArray[tempI]) - bagStackArray[tempI]);
			bagStackArray[tempI] = itemStackMax(bagArray[tempI]);
		}
	}
	else {
		moveItemID = bagArray[tempI];
		moveItemStack = bagStackArray[tempI];
		bagArray[tempI] = tempInt;
		bagStackArray[tempI] = tempInt2;
		trace(tempI);
		trace(bagArray);
		trace(bagStackArray);
	}

	if (moveItemID == 0) {
		moveItem.visible = false;
		moveItemAmount.visible = false;
		MoveOutline.visible = false;
		MoveAmountOutline.visible = false;
	}
	else {
		moveItem.visible = true;
		MoveOutline.visible = true;
		moveItem.htmlText = itemName(moveItemID);
		if (moveItemStack > 1) {
			moveItemAmount.visible = true;
			moveItemAmount.htmlText = ""+moveItemStack+"";
			MoveAmountOutline.visible = true;
		}
	}
	
	hideAmount();
	doBag();
}

function showMoveItem(which:Boolean):void {
	if (which == true) {
		if (moveItemID != 0) {
			moveItem.visible = true;
			MoveOutline.visible = true;
			if (moveItemStack > 1) {
				moveItemAmount.visible = true;
				MoveAmountOutline.visible = true;
			}
		}
	}
	else {
		moveItem.visible = false;
		moveItemAmount.visible = false;
		MoveOutline.visible = false;
		MoveAmountOutline.visible = false;
	}
}

/************
 *Item Stash*
 ************/

function doStash():void{
	hideAmount();
	viewButtonOutline(0,0,0,1,0,0,0,1,0,0,0,1);
	viewButtonText(0,0,0,1,0,0,0,1,0,0,0,1);
	buttonWrite(4, "Store");
	buttonWrite(8, "Remove");
	buttonWrite(12, "Return");
	textL("Click 'Store' to store an item from your bag in the stash.\r\rClick 'Remove' to remove an item from your stash and put it into your bag.\r\rClick 'Return' to leave your stash.");
	doListen = function():void{
		if (buttonChoice == 4){	doStoreStash();	}
		if (buttonChoice == 8){	doRemoveStash(); }
		if (buttonChoice == 12){
			doReturn();
		}
	}
}

function doStoreStash():void{
	choiceListButtons("Bag");
	
	textL("Click on an item you would like to stash.\r\rClick 'Return' to return to the main stash options.");
	doListen = function():void{
		choiceListSelect("Bag");
		if (buttonChoice == 12) {
			doStash(); 
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Bag"); }
		else {
			trace(bagArray[choiceListResult[1]]);
			if (canLose(bagArray[choiceListResult[1]])) { stashStore(choiceListResult[1]); }
			else {
				doStoreStash();
				textL("You cannot remove the selected item from your bag for some reason. It may be cursed or need to be unequipped first.\r\rPlease select another item.");
			}
		}
	}
}

function doRemoveStash():void{
	choiceListButtons("Stash");
	textL("Click on an item you would like to remove from stash.\r\rClick 'Return' to return to the main stash options.");
	doListen = function():void{
		choiceListSelect("Stash");
		if (buttonChoice == 12) {
			doStash(); 
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Stash"); }
		else { 
			stashRemove(choiceListResult[1]);
		}
	}
}

function stashStore(storeItem:int):void{
	choiceListButtons("Stash");
	choiceListBlanks();
	textL("Click on the stash slot you would like to place "+itemName(bagArray[storeItem])+" in. If you click on a slot that is already used, you will swap the items.\r\rClick 'Return' to return to the main stash options.");
	doListen = function():void{
		choiceListSelect("Stash");
		if (buttonChoice == 12) {
			doStash(); 
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { 
			choiceListButtons("Stash"); 
			choiceListBlanks();
		}
		else {
			var tempNum:int = bagArray[storeItem];
			var tempNum2:int = bagStackArray[storeItem];
			
			if (tempNum == stashArray[choiceListResult[1]] && stashStackArray[choiceListResult[1]] < itemStackMax(tempNum)){
				if ((stashStackArray[choiceListResult[1]] + tempNum2) > itemStackMax(tempNum)){
					bagStackArray[storeItem] -= itemStackMax(tempNum) - stashStackArray[choiceListResult[1]];
					stashStackArray[choiceListResult[1]] = itemStackMax(tempNum);
				}
				else {
					stashStackArray[choiceListResult[1]] += tempNum2;
					bagSlotClear(storeItem);
				}
			}
			else {
				bagSlotClear(storeItem);
				bagArray[storeItem] = choiceListResult[0];
				bagStackArray[storeItem] = stashStackArray[choiceListResult[1]];
	
				stashArray[choiceListResult[1]] = tempNum;
				stashStackArray[choiceListResult[1]] = tempNum2;
			}
			
			doStoreStash();
		}
	}
}

function stashRemove(storeItem:int):void{
	choiceListButtons("Bag");
	choiceListBlanks();
	textL("Click on the bag slot you would like to place "+itemName(stashArray[storeItem])+" in. If you click on a slot that is already used, you will swap the items.\r\rClick 'Return' to return to the main stash options.");
	doListen = function():void{
		choiceListSelect("Bag");
		if (buttonChoice == 12) {
			doStash(); 
		}
		else if (buttonChoice == 4 || buttonChoice == 8) { 
			choiceListButtons("Bag"); 
			choiceListBlanks();
		}
		else {
			if (canLose(choiceListResult[0])) {
				var tempNum:int = stashArray[storeItem];
				var tempNum2:int = stashStackArray[storeItem];
				
				if (tempNum == bagArray[choiceListResult[1]] && bagStackArray[choiceListResult[1]] < itemStackMax(tempNum)){
					if ((bagStackArray[choiceListResult[1]] + tempNum2) > itemStackMax(tempNum)){
						stashStackArray[storeItem] -= itemStackMax(tempNum) - bagStackArray[choiceListResult[1]];
						bagStackArray[choiceListResult[1]] = itemStackMax(tempNum);
					}
					else {
						bagStackArray[choiceListResult[1]] += tempNum2;
						stashArray[storeItem] = 0;
						stashStackArray[storeItem] = 0;						
					}
				}
				else {
					stashArray[storeItem] = choiceListResult[0];
					stashStackArray[storeItem] = bagStackArray[choiceListResult[1]];
	
					bagSlotClear(choiceListResult[1]);
					bagArray[choiceListResult[1]] = tempNum;
					bagStackArray[choiceListResult[1]] = tempNum2;
					passiveItemAdd(tempNum);
				}				
				doRemoveStash();
			}
			else {
				stashRemove(storeItem);
				textL("You cannot remove that item from your bag. It may be cursed or needs to be unequipped first.\r\rPlease select another slot to move your stashed item into.");
			}
		}
	}
}

function stashSlotAdd(amount:int):void {
	for (i = 1;i <= amount;i++)	{
		stashArray.push(0);
		stashStackArray.push(0);
	}
}

function stashSlotRemove(amount:int):void {
	var tempInt:int = 0;
	var tempInt2:int = 0;
	var tempInt3:int = 0;
	for (i = 1;i <= amount;i++) {
		var tempInt = stashArray.pop();
		var tempInt2 = stashStackArray.pop();
		if (tempInt != 0 && tempInt2 != 0) {
			for (tempInt3 = 1;tempInt3 <= tempInt2 ;tempInt3++) { itemAdd(tempInt); }
		}
	}
}