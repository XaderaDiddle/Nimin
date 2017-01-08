/*******
 *Items*
 *******/

function itemName(ID:int):String {
	var tempStr:String = "ITEM NAME ERROR "+ID;
	if (ID == 0) { tempStr = " "; }
	if (ID == 1) { tempStr = "Test"; }
	if (ID == 101) { tempStr = "Anc Claws";}
	if (ID == 102) { tempStr = "Imb Shoes";	}
	if (ID == 103) { tempStr = "Dry Sand";	}
	if (ID == 104) { tempStr = "Milker";	}
	if (ID == 105) { tempStr = "Cat's Meow"; }
	if (ID == 106) { tempStr = "Penis Pump"; }
	//if (ID == 107) { tempStr = "Wheelbarr"; }
	if (ID == 108) { tempStr = "Blood Gge"; }
	if (ID == 109) { tempStr = "Edu Egg";	}
	if (ID == 110) { tempStr = "Reduction"; }
	if (ID == 111) { tempStr = "Skin Balm"; }
	if (ID == 112) { tempStr = "Bol Juice"; }
	if (ID == 113) { tempStr = "Taint Leaf"; }
	if (ID == 114) { tempStr = "Sweet Sap"; }
	if (ID == 115) { tempStr = "Poultice"; }
	if (ID == 116) { tempStr = "Dagger"; }
	if (ID == 117) { tempStr = "Hammer"; }
	if (ID == 118) { tempStr = "Saber"; }
	if (ID == 119) { tempStr = "Whip"; }
	if (ID == 120) { tempStr = "Neuter"; }
	if (ID == 121) { tempStr = "TS Soft"; }
	if (ID == 122) { tempStr = "TS Firm"; }
	if (ID == 123) { tempStr = "TS Tied"; }
	if (ID == 124) { tempStr = "TS Siz"; }
	if (ID == 125) { tempStr = "TS Ovi"; }
	if (ID == 126) { tempStr = "Oas Water"; }
	if (ID == 127) { tempStr = "Tail Spike"; }
	if (ID == 128) { tempStr = "TS Sanct"; }

	if (ID == 200) { tempStr = "Lila's Gift"; }
	if (ID == 201) { tempStr = "Milk C Pois"; }
	if (ID == 202) { tempStr = "Co-Snak Ven"; }
	if (ID == 203) { tempStr = "Wolf Fur"; }
	if (ID == 204) { tempStr = "Sm Pouch"; }
	if (ID == 205) { tempStr = "Sm Pouch"; }
	if (ID == 206) { tempStr = "Trinket"; }
	if (ID == 207) { tempStr = "Cock Carv"; }
	if (ID == 208) { tempStr = "Blo Berry"; }
	if (ID == 209) { tempStr = "Grain"; }
	if (ID == 210) { tempStr = "Puss Fruit"; }
	if (ID == 211) { tempStr = "DairE Pill"; }
	if (ID == 212) { tempStr = "Red Mush"; }
	if (ID == 213) { tempStr = "Wet Cloth"; }
	if (ID == 214) { tempStr = "Lon Milk"; }
	if (ID == 215) { tempStr = "Lon Pendant"; }
	if (ID == 216) { tempStr = "Pink Ink"; }
	if (ID == 217) { tempStr = "Egg Jelly"; }
	if (ID == 218) { tempStr = "Bul Berry"; }
	if (ID == 219) { tempStr = "Fresh Egg"; }	
	if (ID == 220) { tempStr = "Blondie"; }
	if (ID == 221) { tempStr = "Puss Juice"; }
	if (ID == 222) { tempStr = "Kinky Carr"; }
	if (ID == 223) { tempStr = "Eq Snack"; }
	if (ID == 224) { tempStr = "Lila's Milk"; }
	if (ID == 225) { tempStr = "Body Wash"; }
	if (ID == 226) { tempStr = "Felin Tea"; }
	if (ID == 227) { tempStr = "Oral Wash"; }
	if (ID == 228) { tempStr = "Body Oil"; }
	if (ID == 229) { tempStr = "Leath Strap"; }
	if (ID == 230) { tempStr = "Eggcelerator";	}
	if (ID == 231) { tempStr = "Desi Sand";	}
	if (ID == 232) { tempStr = "Flying Carp"; }
	if (ID == 233) { tempStr = "A-Grav Rock"; }
	if (ID == 234) { tempStr = "Rein Charm"; }
	if (ID == 235) { tempStr = "Fell Rod"; }
	if (ID == 236) { tempStr = "Recept Bell"; }
	if (ID == 237) { tempStr = "Dewy Gift"; }
	if (ID == 238) { tempStr = "Squ Cheese"; }
	if (ID == 239) { tempStr = "Shiny Rock"; }
	if (ID == 240) { tempStr = "Auburn Dye"; }
	if (ID == 241) { tempStr = "Brown Dye"; }
	if (ID == 242) { tempStr = "Grey Dye"; }
	if (ID == 243) { tempStr = "White Dye"; }
	if (ID == 244) { tempStr = "Snuggle Ball"; }
	if (ID == 245) { tempStr = "Facial Mud"; }
	if (ID == 246) { tempStr = "Fertile Gel"; }
	if (ID == 247) { tempStr = "Supp Harness"; }
	if (ID == 248) { tempStr = "Breeder Pot"; }
	if (ID == 249) { tempStr = "Treant's Tear"; }
	if (ID == 250) { tempStr = "Foomp Bomb"; }
	if (ID == 251) { tempStr = "Plump Quat"; }
	if (ID == 252) { tempStr = "Milky Pend"; }
	if (ID == 253) { tempStr = "Bug Egg"; }
	if (ID == 254) { tempStr = "Lantern"; }
	if (ID == 255) { tempStr = "Frag Flower"; }
	if (ID == 256) { tempStr = "Nectar Candy"; }
	if (ID == 257) { tempStr = "Too Human"; }
	if (ID == 258) { tempStr = "Tainted Pot"; }
	if (ID == 259) { tempStr = "Sweet&Sour"; }
	if (ID == 260) { tempStr = "Succ Draft"; }

	if (ID == 500) { tempStr = "Milk Bottle"; }
	if (ID == 501) { tempStr = "Milk Jug"; }
	if (ID == 502) { tempStr = "Milk Barrel"; }
	if (ID == 503) { tempStr = "Lust Draft"; }
	if (ID == 504) { tempStr = "Rejuv Pot"; }
	if (ID == 505) { tempStr = "Bad Exper"; }
	if (ID == 506) { tempStr = "Exp Preg"; }
	if (ID == 507) { tempStr = "Ball Sweller"; }
	if (ID == 508) { tempStr = "S Lust Draft"; }
	if (ID == 509) { tempStr = "S Rejuv Pot"; }
	if (ID == 510) { tempStr = "S Bad Exper"; }
	if (ID == 511) { tempStr = "S Exp Preg"; }
	if (ID == 512) { tempStr = "S Ball Sweller"; }
	if (ID == 513) { tempStr = "Gen Swap"; }
	if (ID == 514) { tempStr = "Maso Pot"; }
	if (ID == 515) { tempStr = "Black Dye"; }
	if (ID == 516) { tempStr = "Baby Free"; }
	if (ID == 517) { tempStr = "Pot Pot"; }
	if (ID == 518) { tempStr = "S Gen Swap"; }
	if (ID == 519) { tempStr = "S Maso Pot"; }
	if (ID == 520) { tempStr = "Red Dye"; }
	if (ID == 521) { tempStr = "S Baby Free"; }
	if (ID == 522) { tempStr = "S Pot Pot"; }
	if (ID == 523) { tempStr = "Cum Vial"; }
	if (ID == 524) { tempStr = "Cum Bottle"; }
	if (ID == 525) { tempStr = "Cum Jug"; }
	if (ID == 526) { tempStr = "Cum Barrel"; }
	if (ID == 527) { tempStr = "Good Egg"; }
	if (ID == 528) { tempStr = "Bad Egg"; }
	if (ID == 529) { tempStr = "Strange Egg"; }
	if (ID == 530) { tempStr = "Charmed Egg"; }
	if (ID == 531) { tempStr = "Divine Egg"; }
	if (ID == 532) { tempStr = "Pheromone"; }
	if (ID == 533) { tempStr = "Reduc Reduc"; }
	if (ID == 534) { tempStr = "Male Enhance"; }
	if (ID == 535) { tempStr = "Milk Suppress"; }
	if (ID == 536) { tempStr = "Bazoomba!"; }
	if (ID == 537) { tempStr = "Queen Egg"; }
	if (ID == 538) { tempStr = "Soldier Egg"; }
	if (ID == 539) { tempStr = "Drone Egg"; }
	if (ID == 540) { tempStr = "Worker Egg"; }
	return tempStr;
}

//Descriptions of items
function itemDescription(ID:int):String {
	var tempStr:String = "ITEM DESCRIPTION ERROR "+ID;
	if (ID == 101) { tempStr = "Claws of the Lupine Ancestors\r\rHarkening back to supposed Lupan ancestry, as long as this item remains in your bag, your hands will change into clawed paws that will help hold down your foes, just like the wolves of the forest.\r\rAlthough, in your case, it just gives you a bonus to Rape attempts..."; }
	if (ID == 102) { tempStr = "Imbued Horseshoes\r\rCrafted by the Equans of Firmshaft, these horseshoes help improve your running capabilities as long as they're in your bag. And they'll turn your feet into hooves."; }
	if (ID == 103) { tempStr = "Magical Sands of the Dry Dunes\r\rApplying this special sand to your genitalia will permanently make it a bit less moist than usual. Often used by the women of Siz'Calit when their heat makes them a little too moist. Or when they're producing a bit too much milk (though that's rarely the case in Siz'Calit)."; }
	if (ID == 104) { tempStr = "Milking Machine\r\rA compact device that produces enough suction to pump any breasts/udder you wish to collect the lactation of. Doing so will allow you to store the milk to be used or sold later, if you can produce enough. Comes with 2 hoses and multiple cups to work on almost any nipple/teat.\r\rWarning: Excessive use may result in permanent nipple/teat growth.\r\rCan only be used during Masturbation."; }
	if (ID == 105) { tempStr = "'Cat's Meow' Potion\r\rFavored by the Felins of Siz'Calit, this potion helps increase the production of breastmilk. Just try not to show off in Siz'Calit, or you may draw a crowd."; }
	if (ID == 106) { tempStr = "Penis Pump\r\rA simple device with an elastic cylinder that's intended to slip over a penis and pump it until it climaxes. Doing so will allow you to store the semen to be used or sold later, if you can produce enough.\r\rCan only be used during Masturbation."; }
	//if (ID == 107) { tempStr = "Wheelbarrow\r\rA wheelbarrow helps you carry around your... 'excess' anatomy. Every time you purchase a wheelbarrow beyond the first, you're simply trading in your current wheelbarrow for a larger one; one that takes up more bag slots.\r\rYour current wheelbarrow increases your carrying capacity by "+(5*countItem(107) + 2*(countItem(107) - 1));+".\r\rWarning!: 
	if (ID == 108) { tempStr = "Blood Gauge\r\rDue to their propensity to be swayed by outside blood, humans developed this nifty little gadget. Pressing it against your pulse, the magic of the device can detect the levels of racial influence in your body."; }
	if (ID == 109) { tempStr = "Educated Eggdicator\r\rWith so many unfertilized eggs around the oasis, Lizan developed this to be able to tell a good egg from a bad egg. Even though an egg is just an egg beforehand, once put through this eggdicator its wave function collapses into a more determinable state.\r\rWarning: Using this item requires 1 Fresh Egg to operate."; }
	if (ID == 110) { tempStr = "A Reduction of Reducer Agents\r\rThis is a powerful - yet often necessary in Nimin - elixer that, when rubbed on a part of your body, will permanently shrink that part to half its original size. Be careful!\r\rWarning: This item is not useful against your enemies."; }
	if (ID == 111) { tempStr = "Skin Balm\r\rUsed and created by the Humans of Softlik, this balm helps increase their skin's supplesness and other human attributes, as well as decrease those of other races."; }
	if (ID == 112) { tempStr = "Bolstering Juice\r\rThis white 'juice' is often used and created by the Equans of Firmshaft. It helps strengthen their equan attributes and  decrease those of other races."; }
	if (ID == 113) { tempStr = "Tainted Leaf\r\rThis paw-shaped leaf is farmed and used by the Lupans of Tieden to fend off the attributes of other races, usually the more violent ones, and increase their lupan strengths."; }
	if (ID == 114) { tempStr = "Sweet Sap\r\rUsed and created by the Felins of Siz'Calit, this vial of clear liquid helps increase their felin sensitivities as well as ward off outside influences.";}
	if (ID == 115) { tempStr = "Poultice\r\rA generic swathe of cloth soaked in soothing balms, this poultice will heal 20 HP. It'll also make you a little aroused from rubbing it all over yourself...";}
	if (ID == 116) { tempStr = "Dagger\r\rA relatively cheap weapon, the dagger is a nice way to defend oneself in Nimin.\r\rBase damage: 5-12"; }
	if (ID == 117) { tempStr = "Warhammer\r\rA rather blunt weapon, it's a bit unwieldy but gets the job done.\r\rBase damage: 2-20"; }
	if (ID == 118) { tempStr = "Saber\r\rA well-designed blade, the saber can deal significant damage to foes.\r\rBase damage: 10-25"; }
	if (ID == 119) { tempStr = "Whip\r\rA somewhat kinky weapon, the whip can leave some rather nasty welts.\r\rBase damage: 12-18"; }
	if (ID == 120) { tempStr = "Neuterizer\r\rDeveloped by the Lupans of Tieden, this isn't actually intended to be used on most of their inhabitants. Instead, it was created as a post-defensive measure against the... oddities of Nimin."; }
	if (ID == 121) { tempStr = "Teleport Scroll: Softlik\r\rCreated to make sure explorers can find their way back home, this scroll of teleportation will instantly return the user to the city of Softlik.\r\rCan be used at any time, even in the midst of battle."; }
	if (ID == 122) { tempStr = "Teleport Scroll: Firmshaft\r\rCreated to make sure explorers can find their way back home, this scroll of teleportation will instantly return the user to the city of Firmshaft.\r\rCan be used at any time, even in the midst of battle."; }
	if (ID == 123) { tempStr = "Teleport Scroll: Tieden\r\rCreated to make sure explorers can find their way back home, this scroll of teleportation will instantly return the user to the city of Tieden.\r\rCan be used at any time, even in the midst of battle."; }
	if (ID == 124) { tempStr = "Teleport Scroll: Siz'Calit\r\rCreated to make sure explorers can find their way back home, this scroll of teleportation will instantly return the user to the city of Siz'Calit.\r\rCan be used at any time, even in the midst of battle."; }
	if (ID == 125) { tempStr = "Teleport Scroll: Oviasis\r\rCreated to make sure explorers can find their way back home, this scroll of teleportation will instantly return the user to the city of Oviasis.\r\rCan be used at any time, even in the midst of battle."; }
	if (ID == 126) { tempStr = "Oasis Water\r\rA vial of the fresh water from the oasis in the lizan city of Oviasis, it helps the residents cool off and moisten their scales so they can hunt and sunbathe more, as well as ward off the influences of other races."; }
	if (ID == 127) { tempStr = "Tail Spike\r\rThis large spike is held firm upon leather straps. When attached to a tail, it can be used as a rather effective weapon.\r\rBase damage: 10-20\r\rRequirement: Must have a muscular/skeletal tail to equip (tails of hair or excessively fluffy tails will not work)."; }
	if (ID == 128) { tempStr = "Teleport Scroll: Sanctuary\r\rCreated for an easy return, this scroll of teleportation will instantly return the user to the city of Sanctuary.\r\rCan be used at any time, even in the midst of battle."; }

	if (ID == 200) { tempStr = "Lila's Gift\r\rA small charm given to you by the young felin girl in Siz'Calit, it seems to be pretty decoration made from flowers and leaves and some other cute little things. However, as you hold it, you notice it makes you wetter down under... This might have been the reason the girl was so wet to begin with, or maybe her extreme wetness for such a young age rubbed off onto her charm? Either way, as long as you carry it, you'll be wetter than usual. And you seem much more sensitive than usual...\r\rWarning: You cannot regain this item should you lose it."; } 
	if (ID == 201) { tempStr = "Milk Creeper Poison\r\rObtained from a passed out Milk Creeper, this poison is a bit diluted from her ingestion from so much of your milk. It is unlikely that it will affect your lactation rate directly like the pure poison does, but rubbing it into your mammary glands will cause them to swell slightly larger."; }
	if (ID == 202) { tempStr = "Cock-Snake Venom\r\rObtained from the fangs of a passed out cock-snake, this venom is a potent male enhancement. And if you aren't male when you use it, you will be, if at least partially..."; }
	if (ID == 203) { tempStr = "Tuft of Wolf Fur\r\rObtained from an encounter with a feral wolf, a tuft of their fur has been known to decrease sensitivity, and thus increase your toughness against attacks, when rubbed onto your "+skinDesc()+"."; }
	if (ID == 204) { tempStr = "Small Pouch\r\rThis is a small pouch you have obtained somewhere. Use it to see what it contains!"; }
	if (ID == 205) { tempStr = "Small Pouch\r\rThis is a small pouch you have obtained somewhere. Use it to see what it contains!"; }
	if (ID == 206) { tempStr = "Shiny Trinket\r\rOther than being a pretty decoration, this thing isn't much use to you. However, it probably sells fairly well."; }
	if (ID == 207) { tempStr = "Wooden Cock Carving\r\rThis thing looks like a dildo made of wood, with decorated carvings all around. It sounds hollow, so maybe you could break it open and see if anything is inside?"; }
	if (ID == 208) { tempStr = "Bloated Berry\r\rA berry from across the ocean, it looks oddly bloated, nearly two berries in one. It seems edible though."; }
	if (ID == 209) { tempStr = "Handful of Grain\r\rA handful of fresh grain, it smells slightly sweet in your hands. Eating it will provide you some energy from the carbs!"; }
	if (ID == 210) { tempStr = "Pussy Fruit\r\rIt is unknown whether the name derives from the cat-like felin people that enjoy this fruit or from the fruit's rather... lewd shape. Either way, it is a very sweet and juicy fruit that felin females love."; }
	if (ID == 211) { tempStr = "DairE Pill\r\rProduced by the farmers of the Dairy Farm outside of Softlik, this pill supposedly helps increase the lactation rate of dairy cows. It is not suggested to be ingested by anything other than cows, though that's just a suggestion."; }
	if (ID == 212) { tempStr = "Red Mushroom\r\rAn odd looking mushroom with a red cap with a few white dots found on the walls of the Old Cave. You're not really sure what it does, but you think you'll get bigger so you can smash some blocks... or something."; }
	if (ID == 213) { tempStr = "Wet, Slimy Cloth\r\rThis piece of white cloth seems to be perpetually wet and slimy, no matter how long you keep it in your bag. You have no idea what it can do, however."; }
	if (ID == 214) { tempStr = "Malon's Milk\r\rUnlike the other bottles of milk that come from the Dairy Farm, this wasn't from a cow. From Malon's own supply, you're unsure exactly how it's different from the rest, though it does taste better."; }
	if (ID == 215) { tempStr = "Malon's Pendant\r\rGiven to you by Malon from the Dairy Farm, this gift of admiration seems to have been a keepsake of hers since she was a child and has imbued by her long-time love of animals and rather bovine qualities. As long as you hold onto it, everything is a bit more consensual towards being 'raped', be a bit more lenient to you running away, and all milk products heal you slightly more than usual.\r\rWarning: You cannot regain this item should you lose it."; }
	if (ID == 216) { tempStr = "Pink Ink\r\rOctopus ink gained from a rather pink octopus girl, this ink serves as a very rare and valuable hair dye. Should you use it, your hair will turn a coral pink color, if you have hair."; }
	if (ID == 217) { tempStr = "Octopus Egg Jelly\r\rThe jelly from the eggs of the octopus girls you gave birth to, it seems like it'd make you very aroused if you rubbed it on your genitals. Although, you're not quite sure what it would do beyond that..."; }
	if (ID == 218) { tempStr = "Bulging Berry\r\rA cousin of the bloated berry, this fruit splits into multiple spheres from the same stem, somewhat like cherries but can often have three of four from the same stem. It is quite edible, though it is highly suggested to not eat many."; }
	if (ID == 219) { tempStr = "Fresh Egg\r\rAn unfertilized egg from a lizan female (or herm), eggs like this are common in the lizan diet. High in protein, they're good for your health."; }
	if (ID == 220) { tempStr = "Blonde Dye\r\rA dye made from mashed grain, this will turn your hair blonde in color when used, if you have hair, or it can be sold for a decent sum."; }
	if (ID == 221) { tempStr = "Concentrated Pussy Fruit Juice\r\rCreated by a notable mistress in Siz'calit, this vial contains some rather concentrated juice from the Pussy Fruit. It is likely to have a notable effect on a woman's loins, more potent than its source."; }
	if (ID == 222) { tempStr = "Kinky Carrot\r\rUsed in lewd fashions by a small rabbit-like people, you're sure to clean this off as soon as you got it. Although you're not entirely certain what would happen if you ate it, besides being in better health for keeping veggies in your diet."; }
	if (ID == 223) { tempStr = "Equan Snack\r\rA common snack amongst the equan people, this sweet little thing has the kind of carbs that will help you get through the day, no matter what life may put on your shoulders. And it seems to be the cause of some bellies of some equan women..."; }
	if (ID == 224) { tempStr = "Lila's Milk\r\rFrom the ample supply of a certain little felin girl, this milk seems to be a tad sweeter than normal milk and also slightly tainted by the poor girl's constant heat."; }
	if (ID == 225) { tempStr = "Body Wash\r\rThis nice body wash is scented like a meadow of flowers. It can help clean up some dirty thoughts and make your body feel much fresher."; }
	if (ID == 226) { tempStr = "Felin Tea Mix\r\rA common brew amongst felins, this tea helps calm the body and mind. Especially the body, which is often necessary for Felins..."; }
	if (ID == 227) { tempStr = "Felin Oral Wash\r\rWith bath by licking being commonplace amongst felins, this wash is to aid in such endeavors. Delightfully tingly, this stuff will leave both your breath and your fur feeling fresh."; }
	if (ID == 228) { tempStr = "Body Oil\r\rNice and slick, this stuff is great for your skin or scales and makes you look quite shiny and alluring for the next 5 hours."; }
	if (ID == 229) { tempStr = "Leather Strap\r\rFound somewhere in Silandrias' den, this leather strap seems to be fitted to tie tightly around the base of her tail. Otherwise, you have no idea what it could be for."; }
	if (ID == 230) { tempStr = "Eggcelerator\r\rMeant to temporarily increase the rate of egg production in Lizan females, this pill looks to be a little egg-shaped itself, with more of a torpedo-like tip. This pill also seems to be too large to be ingested orally by the average person, which you deduct means it's meant as a suppository... Though, considering its nature, it's safe to say it's not meant to be administered anally, at least.\r\rIts effect stacks."; }
	if (ID == 231) { tempStr = "Desiccating Sand\r\rObtained from a sentient dust devil, this sand is specially imbued with the ability to suck moisture from a body. Though the Dust Devil only uses it to feed, in this quantity it can be rather damaging if thrown at an enemy all at once. Be wary of blow-back, though.\r\rThis item can only be used during battle."; }
	if (ID == 232) { tempStr = "Flying Carpet\r\rBorrowed from Silandrias, this flying carpet can take you on a magical ride to see a whole new world. However, it can only take you to towns you have already found, since you wouldn't know how to guide it someplace you haven't been, so the whole 'new' aspect is rather moot. But it is still quite convenient!\r\rYou cannot activate the flying carpet in amidst the heat of battle or amidst the heat of masturbation."; }
	if (ID == 233) { tempStr = "Anti-Gravity Rock\r\rBorrowed from Silandrias, this small rock, more of a pebble really, just kind of floats there and defies gravity. Yet, as you carry it, even you seem to defy gravity to a degree. You feel much lighter on your "+legDesc(10)+" and your carry capacity increases by a whole 75! '75 what', you have no idea, but it's a big number so it's got to be good, right?"; } 
	if (ID == 234) { tempStr = "Reindeer Charm\r\rBorrowed from Silandrias, this sapphire charm is carved into the shape of a reindeer's head, with large antlers. Carrying it imbues you with the essence of a reindeer mother, providing you with a nice set of antlers and a matching deer-butt, as well as speeding up your pregnancies and increasing your minimum lust, urging you to give birth to plenty of children."; }
	if (ID == 235) { tempStr = "Fellatio Rod\r\rBorrowed from Silandrias, this rather phallic rod is actually a weapon. When the base is pointed at the target, you can siphon out some of their life force by placing your lips around the bulbous end of the rod and gently sucking. If you're very skilled, you can make the weapon perform even stronger. It even ignores their natural resistance to physical attacks."; }
	if (ID == 236) { tempStr = "Reception Bell\r\rBorrowed from Silandrias, this small cowbell is worn around the neck and makes one more receptive to outside influences. In other words, the wearer gains 50% more SexP than usual *ding*. They also tend to be 30% more susceptible to blood-changes though... *dong*"; }
	if (ID == 237) { tempStr = "Lila's Dewy Gift\r\rOriginally given to you by Lila, dew drops have started forming on and falling from the leaves and flowers constantly, ever since it became more 'infused' with your relationship with Lila. As long as you hold it, you're sexual lubrication flows much more and makes you quite sensitive. It even feels warm to the touch, a warmth that sometimes may spread to you...\r\rWarning: You cannot regain this item should you lose it."; }
	if (ID == 238) { tempStr = "Squeaky Cheese\r\rSome cheese found in an alley that kinda squeaks when you rub it, it smells quite delicious and would help restore your energy if you're hurt. Other than that, though, well... you did find it in an alley, after all."; }
	if (ID == 239) { tempStr = "Shiny Rock\r\rA rather shiny rock you found, you're almost intent at staring at it. If anything, it at least improves your focus."; }
	if (ID == 240) { tempStr = "Auburn Dye\r\rA dark reddish color, this dye will turn your hair auburn when used, if you have hair"; } 	
	if (ID == 241) { tempStr = "Brown Dye\r\rA simple brownish, this dye will turn your hair brown when used, if you have hair"; } 	
	if (ID == 242) { tempStr = "Grey Dye\r\rA shade, this dye will turn your hair grey when used, if you have hair"; } 	
	if (ID == 243) { tempStr = "White Dye\r\rLacking any color, this dye will turn your hair pure white when used, if you have hair"; } 	
	if (ID == 244 && p.snuggleBall == false) { tempStr = "Snuggle Ball\r\rSquishy and plush, this odd ball is made out of seemingly unnatural materials. Almost like a living liquid, it wobbles around in your hand and is slightly pliable. It feels so pleasant, you kinda want to snuggle with it."; }
	else if (ID == 244) { tempStr = "Snuggle Ball\r\rNot really a 'ball' at the moment, this squishy thing is currently coating your body with a thick plush layer of shiny snuggliness. You can attempt to take it off, though it does make you look kinda cute, like a cuddly toy."; }
	if (ID == 245) { tempStr = "Facial Mud\r\rSome mud you found at a secluded mudhole in the savanna, this particular mud is quite clean and rich in minerals and would really help your complexion."; } 
	if (ID == 246) { tempStr = "Fertile Gel\r\rA soft gel that gives off a pleasant warmth, it helps increase the fertility of women who want to be mothers or want a nice big swollen belly.\r\rExtra doses extend the duration of the gel."; }
	if (ID == 247) { tempStr = "Support Harness\r\rThis contraption of straps and slings can be equipped to help support all those sizable appendages. Like a bra, except for the whole body!"; }
	if (ID == 247 && p.suppHarness == true) { tempStr += "\r\rYou currently have a harness equipped. Using it will unequip the harness."; }
	if (ID == 248) { tempStr = "Breeder Potion\r\rThis potion is normally used by animal breeders to increase the litter sizes of their animals and make their animals more frequently fertily receptive."; }
	if (ID == 249) { tempStr = "Treant's Tear\r\rThis small tear-shaped piece of wood looks almost like a seed. However, across its surface are etched images of tree-like beings losing their limbs as they dance around the tear, progressively larger and larger with the more limbs they have lost. It's like some sort of ancient ritual, one you have never heard of..."; }
	if (ID == 250) { tempStr = "Foomp Bomb\r\rMuch like a smoke bomb, this small ball can be tossed at an enemy to provide you an immediate escape from battle.\r\rThis item can only be used during battle. This item will automatically successfully run from battle."; }
	if (ID == 251) { tempStr = "Plump Quat\r\rThe quats is a very delicious fruit, so plump and ripe and full of mmm-mmm-goodness."; }
	if (ID == 252) { tempStr = "Malon's Milky Pendant\r\rThis is the pendant Malon had given you, except now infused with a sort of milky complexion that ensures you'll always share her milky tendancies as long as you hold it, supporting your relationship as a couple of drippy cows~ It still seems to retain all the properties it had before as well."; }
	if (ID == 253) { tempStr = "Bug Egg\r\rRelatively small, this squishy unfertilized egg seems rather gooey. You could eat it, but the thought of doing so is somewhat nasty."; }
	if (ID == 253 && p.tail == 12) { tempStr += "\r\rHowever, you do notice that the egg is just about the right size for the ovipositor hanging off your backside."; }
	if (ID == 254) { tempStr = "Lantern\r\rThis is a fairly basic lantern that you found at the hidden entrance below the ground in the valley. And though it might be basic and have no other function, the light it gives off can help you access areas that are otherwise too dark."; }
	if (ID == 255) { tempStr = "Fragrant Flower\r\rA very pleasant smelling flower whose petals are black with white stripes. If you took a good whiff, it would likely help hone your senses a bit."; }
	if (ID == 256) { tempStr = "Nectar Candy\r\rA sweet treat that bugs seem to swarm if not stored properly. It bolsters your muscles and helps egg laying."; }
	if (ID == 257) { tempStr = "Too Human Potion\r\rThis potion was made to help the humans of Softlik regain some of their human attributes. However, this batch was apparently a failure for being too effective, somehow?"; }
	if (ID == 258) { tempStr = "Tainted Potion\r\rThis potion was tainted by your DairE Pill, so you don't really know what it will do until you ingest it."; }
	if (ID == 259) { tempStr = "Sweet & Sour Candy\r\rThis rare little treat is a favorite among many, if you can find it. It's that the sweetness is so sweet that you'll drop from the bliss and that the sourness is so sour that you'll suck yourself in."; }
	if (ID == 260) { tempStr = "Succubus Draft\r\rOne of the glowing vials from the succubus, this is some concentrated masculinity that has been drained from various people, quite possibly even yourself. For her, it's a source of food and power, for you... the effects are probably different."; }

	if (ID == 500) { tempStr = "Bottle of Milk\r\rA bottle of delicious milk that, when drunk, will heal 10 HP and help you stay awake a little longer."; }
	if (ID == 501) { tempStr = "Jug of Milk\r\rA large jug of delicious milk that, when drunk, will heal 40 HP and help you stay awake a while longer. When you're done peeing, of course."; }
	if (ID == 502) { tempStr = "Barrel of Milk\r\rA barrel full of delicious milk, this is mostly meant to be used for easy handling by merchants. However, if you use it, you will gain 4 Jugs of Milk instantly."; }
	if (ID == 503) { tempStr = "Lust Draft\r\rA potion that will increase your lust by 20 instantly when used."; }
	if (ID == 504) { tempStr = "Rejuvenating Potion\r\rA potion that will heal 30 HP and reduce your lust by 15 instantly when used."; }
	if (ID == 505) { tempStr = "Bad Experiment\r\rThis combustable concoction will deal 10-20 damage to your enemy before they can react!\r\rThis item can only be used during battle."; }
	if (ID == 506) { tempStr = "Express Pregnancy Potion\r\rWhen that baby is taking a while to gestate, this potion up the pregnancy as though 50 hours had passed."; }
	if (ID == 507) { tempStr = "Ball Sweller\r\rImbibing this will make your balls feel as though you hadn't ejaculated in 30 hours."; }
	if (ID == 508) { tempStr = "Superior Lust Draft\r\rA potion that will increase your lust by 50 instantly when used."; }
	if (ID == 509) { tempStr = "Superior Rejuvenating Potion\r\rA potion that will heal 70 HP and reduce your lust by 40 instantly when used."; }
	if (ID == 510) { tempStr = "Super Bad Experiment\r\rThis extremely combustable concoction will deal 20-40 damage to your enemy before they can react!\r\rThis item can only be used during battle."; }
	if (ID == 511) { tempStr = "Superior Express Pregnancy Potion\r\rWhen that baby is taking a while to gestate, this potion up the pregnancy as though 120 hours had passed."; }
	if (ID == 512) { tempStr = "Superior Ball Sweller\r\rImbibing this will make your balls feel as though you hadn't ejaculated in 70 hours."; }
	if (ID == 513) { tempStr = "Gender Swap Potion\r\rIf you want to try out the opposite sex, this potion will revert your genitals back to infancy, allowing them to reform as their opposite counterparts. If a hermaphrodite takes this, it reverts all genitals to their smallest value. If a genderless person takes this, the resulting gender is random."; }
	if (ID == 514) { tempStr = "Masochism Potion\r\rAfter this potion is imbibed, your nervous system confuses half of all damage as pleasure for a whole day."; }
	if (ID == 515) { tempStr = "Black Dye\r\rThis will turn your hair black in color when used, if you have hair."; }
	if (ID == 516) { tempStr = "Baby Free Potion\r\rSipping this potion will reduce your chance of becoming pregnancy by 50% for the next 3 days. This contraceptive is not gauranteed to prevent pregnancy, especially if you're especially fertile. It will work whether you have the appropriate plumbing or not. Multiple instances of Baby Free Potion will only extend the time of its duration, not increase the reduction in chance."; }
	if (ID == 517) { tempStr = "Potency Potion\r\rKicking your balls into gear, they will permanently produce 20% more cum, despite their size."; }
	if (ID == 518) { tempStr = "Superior Gender Swap Potion\r\rIf you want to try out the opposite sex, this potion will transform your genitals into their opposite counterparts, retaining the relative size. If a hermaphrodite takes this, the genitals swap sizes. If a genderless person takes this, the resulting gender is random, along with the sizes of their genitals (up to a certain amount)."; }
	if (ID == 519) { tempStr = "Superior Masochism Potion\r\rAfter this potion is imbibed, your nervous system confuses all damage as pleasure for a whole day."; }
	if (ID == 520) { tempStr = "Red Dye\r\rThis will turn your hair red in color when used, if you have hair."; }
	if (ID == 521) { tempStr = "Superior Baby Free Potion\r\rSipping this potion will reduce your chance of becoming pregnancy by 50% for the next 9 days. This contraceptive is not gauranteed to prevent pregnancy, especially if you're especially fertile. It will work whether you have the appropriate plumbing or not. Multiple instances of Superior Baby Free Potion will only extend the time of its duration, not increase the reduction in chance."; }
	if (ID == 522) { tempStr = "Superior Potency Potion\r\rDrop-kicking your balls into gear, they will permanently produce 50% more cum, despite their size."; }
	if (ID == 523) { tempStr = "Vial of Cum\r\rStill kinda warm, this vial of goop will arouse you slightly when imbibed, plus heal a bit."; }
	if (ID == 524) { tempStr = "Bottle of Cum\r\rA bottle of warm cum that will arouse you and heal you slightly when imbibed. If you can get it all down."; }
	if (ID == 525) { tempStr = "Jug of Cum\r\rA jug full of hot cum, this is mostly meant to be used for easy handling by the merchants that might be able to find a use for it. However, if you use it, you will gain 3 Bottles of Cum instantly."; }
	if (ID == 526) { tempStr = "Barrel of Cum\r\rThere's... not really much you can do with a barrel full of hot cum. The merchants will still buy it, but at a very low price, since there's not much they can do with it either..."; }
	if (ID == 527) { tempStr = "Good Egg\r\rAn unfertilized fresh egg that is especially good for your health and body."; }
	if (ID == 528) { tempStr = "Bad Egg\r\rAn unfertilized fresh egg that should never be eaten... Instead it can be thrown at your enemy for a quick 10-20 damage.\r\rThis item can only be used during battle."; }
	if (ID == 529) { tempStr = "Strange Egg\r\rAn unfertilized fresh egg that can do... odd things to your body."; }
	if (ID == 530) { tempStr = "Charmed Egg\r\rAn unfertilized fresh egg that will make you quite alluring for 20 hours."; }
	if (ID == 531) { tempStr = "Divine Egg\r\rA very rare unfertilized fresh egg, eating it will make you closer to a diety of fertility."; }
	if (ID == 532) { tempStr = "Strong Pheromone\r\rOriginally meant to be fishing bait, this concoction is much more potent than originally intended and attracts far more than fish for 30 hours..."; }
	if (ID == 533) { tempStr = "Reduced Reduction\r\rA weaker form of a Reduction, this will shrink the desired body part by a regular amount instead of halving its size."; }
	if (ID == 534) { tempStr = "Male Enhancement Drug\r\rA simple pill that, when ingested, will increase the size of you male genitals.\r\rCaution: females taking this pill may have similar side-effects."; }
	if (ID == 535) { tempStr = "Milk Suppressant\r\rThis drug will prevent any milk from leaking from your body. It does not prevent your mammary glands from producing milk, but it does prevent the milk from escaping for its duration, avoiding most unsightly leaks."; }
	if (ID == 536) { tempStr = "Bazoomba!\r\rThis glowing squishy orb is a secret recipe that creates more of one of the best things in life when ingested...!\r\rWarning - Be wary of overload."; }
	if (ID == 537) { tempStr = "Queen Egg\r\rNot the egg of a queen, but rather an unfertilized egg fit for a queen! This wonderful egg would make any queen's abdomen larger and sexier. Though, if you're not an insect, this mostly translates to things below the waist. It will also help shorten the gestation period for quicker offspring and help your breasts hold more milk for all those births."; }
	if (ID == 538) { tempStr = "Soldier Egg\r\rNot the egg of a soldier, but rather an unfertilized egg suitable for a soldier. This powerful egg will make you taller, stronger, and more physically fit just by eating it!"; }
	if (ID == 539) { tempStr = "Drone Egg\r\rNot the egg of a drone, but rather an unfertilized egg better fed to the sex-craving drones, those mindless males that are only useful for impregnating a queen. This will make them even better at that singular duty."; }
	if (ID == 540) { tempStr = "Worker Egg\r\rNot the egg of a worker, but rather an unfertilized egg that would help any worker. Munching down this little thing will help anybody feel less exhausted and thus allow them to work even more!"; }

	return tempStr;
}

//Is an Item Usable?
function usableItem (ID:int):Boolean {
	var tempBool:Boolean = false;
	if (ID == 104) { return true; }
	if (ID == 106) { return true; }
	if (ID == 108) { return true; }
	if (ID == 109) { return true; }
	if (ID == 116) { return true; }
	if (ID == 117) { return true; }
	if (ID == 118) { return true; }
	if (ID == 119) { return true; }
	if (ID == 127) { return true; }
	if (ID == 232) { return true; }
	if (ID == 235) { return true; }
	if (ID == 244) { return true; }
	if (ID == 247) { return true; }
	return tempBool;
}

//Can something prevent the item from being removed?
function canLose(ID:int):Boolean {
	var tempBool:Boolean = true;
	if (ID == 244 && countItem(244) == 1 && p.snuggleBall == true) { tempBool = false; }
	if (ID == 247 && countItem(247) == 1 && p.suppHarness == true) { tempBool = false; }
	return tempBool;
}


//Is an Item Consumable?
function conItem (ID:int):Boolean {
	var tempBool:Boolean = false;
	if (ID == 103) { return true; }
	if (ID == 105) { return true; }
	if (ID == 110) { return true; }
	if (ID == 111) { return true; }
	if (ID == 112) { return true; }
	if (ID == 113) { return true; }
	if (ID == 114) { return true; }
	if (ID == 115) { return true; }
	if (ID == 120) { return true; }
	if (ID == 121) { return true; }
	if (ID == 122) { return true; }
	if (ID == 123) { return true; }
	if (ID == 124) { return true; }
	if (ID == 125) { return true; }
	if (ID == 126) { return true; }
	if (ID == 128) { return true; }

	if (ID == 201) { return true; }
	if (ID == 202) { return true; }
	if (ID == 203) { return true; }
	if (ID == 204) { return true; }
	if (ID == 205) { return true; }
	if (ID == 207) { return true; }
	if (ID == 208) { return true; }
	if (ID == 209) { return true; }
	if (ID == 210) { return true; }
	if (ID == 211) { return true; }
	if (ID == 212) { return true; }
	if (ID == 213) { return true; }
	if (ID == 214) { return true; }
	if (ID == 216) { return true; }
	if (ID == 217) { return true; }
	if (ID == 218) { return true; }
	if (ID == 219) { return true; }
	if (ID == 220) { return true; }
	if (ID == 221) { return true; }
	if (ID == 222) { return true; }
	if (ID == 223) { return true; }
	if (ID == 224) { return true; }
	if (ID == 225) { return true; }
	if (ID == 226) { return true; }
	if (ID == 227) { return true; }
	if (ID == 228) { return true; }
	if (ID == 230) { return true; }
	if (ID == 231) { return true; }
	if (ID == 238) { return true; }
	if (ID == 239) { return true; }
	if (ID == 240) { return true; }
	if (ID == 241) { return true; }
	if (ID == 242) { return true; }
	if (ID == 243) { return true; }
	if (ID == 245) { return true; }
	if (ID == 246) { return true; }
	if (ID == 248) { return true; }
	if (ID == 249) { return true; }
	if (ID == 250) { return true; }
	if (ID == 251) { return true; }
	if (ID == 253) { return true; }
	if (ID == 255) { return true; }
	if (ID == 256) { return true; }
	if (ID == 257) { return true; }
	if (ID == 258) { return true; }
	if (ID == 259) { return true; }
	if (ID == 260) { return true; }

	if (ID == 500) { return true; }
	if (ID == 501) { return true; }
	if (ID == 502) { return true; }
	if (ID == 503) { return true; }
	if (ID == 504) { return true; }
	if (ID == 505) { return true; }
	if (ID == 506) { return true; }
	if (ID == 507) { return true; }
	if (ID == 508) { return true; }
	if (ID == 509) { return true; }
	if (ID == 510) { return true; }
	if (ID == 511) { return true; }
	if (ID == 512) { return true; }
	if (ID == 513) { return true; }
	if (ID == 514) { return true; }
	if (ID == 515) { return true; }
	if (ID == 516) { return true; }
	if (ID == 517) { return true; }
	if (ID == 518) { return true; }
	if (ID == 519) { return true; }
	if (ID == 520) { return true; }
	if (ID == 521) { return true; }
	if (ID == 522) { return true; }
	if (ID == 523) { return true; }
	if (ID == 524) { return true; }
	if (ID == 525) { return true; }
	if (ID == 526) { return true; }
	if (ID == 527) { return true; }
	if (ID == 528) { return true; }
	if (ID == 529) { return true; }
	if (ID == 530) { return true; }
	if (ID == 531) { return true; }
	if (ID == 532) { return true; }
	if (ID == 533) { return true; }
	if (ID == 534) { return true; }
	if (ID == 535) { return true; }
	if (ID == 536) { return true; }
	if (ID == 537) { return true; }
	if (ID == 538) { return true; }
	if (ID == 539) { return true; }
	if (ID == 540) { return true; }
	return tempBool;
}





//Item Value returns sell value. Buying costs 3x as much.
function itemValue(ID:int):int{
	var tempNum:int = 0;
	if (ID == 1){ tempNum = 13; }
	if (ID == 101) { tempNum = 50; }
	if (ID == 102) { tempNum = 50; } 
	if (ID == 103) { tempNum = 20; }
	if (ID == 104) { tempNum = 100; }
	if (ID == 105) { tempNum = 30; }
	if (ID == 106) { tempNum = 75; }
	//if (ID == 107) { tempNum = (5+5*countItem(107)); }
	if (ID == 108) { tempNum = 50; }
	if (ID == 109) { tempNum = 125; }
	if (ID == 110) { tempNum = 20; }
	if (ID == 111) { tempNum = 15; }
	if (ID == 112) { tempNum = 15; }
	if (ID == 113) { tempNum = 15; }
	if (ID == 114) { tempNum = 15; }
	if (ID == 115) { tempNum = 5; }
	if (ID == 116) { tempNum = 20; }
	if (ID == 117) { tempNum = 30; }
	if (ID == 118) { tempNum = 55; }
	if (ID == 119) { tempNum = 40; }
	if (ID == 120) { tempNum = 30; }
	if (ID == 121) { tempNum = 15; }
	if (ID == 122) { tempNum = 15; }
	if (ID == 123) { tempNum = 15; }
	if (ID == 124) { tempNum = 15; }
	if (ID == 125) { tempNum = 15; }
	if (ID == 126) { tempNum = 15; }
	if (ID == 127) { tempNum = 35; }
	if (ID == 128) { tempNum = 25; }

	if (ID == 200) { tempNum = 0; }
	if (ID == 201) { tempNum = 15; }
	if (ID == 202) { tempNum = 15; }
	if (ID == 203) { tempNum = 5; }
	if (ID == 204) { tempNum = 1; }
	if (ID == 205) { tempNum = 1; }
	if (ID == 206) { tempNum = 30; }
	if (ID == 207) { tempNum = 20; }
	if (ID == 208) { tempNum = 15; }
	if (ID == 209) { tempNum = 3; }
	if (ID == 210) { tempNum = 17; }
	if (ID == 211) { tempNum = 10; }
	if (ID == 212) { tempNum = 14; }
	if (ID == 213) { tempNum = 5; }
	if (ID == 214) { tempNum = 5; }
	if (ID == 215) { tempNum = 0; }
	if (ID == 216) { tempNum = 150; }
	if (ID == 217) { tempNum = 40; }
	if (ID == 218) { tempNum = 20; }
	if (ID == 219) { tempNum = 5; }
	if (ID == 220) { tempNum = 50; }
	if (ID == 221) { tempNum = 30; }
	if (ID == 222) { tempNum = 15; }
	if (ID == 223) { tempNum = 15; }
	if (ID == 224) { tempNum = 10; }
	if (ID == 225) { tempNum = 10; }
	if (ID == 226) { tempNum = 5; }
	if (ID == 227) { tempNum = 10; }
	if (ID == 228) { tempNum = 10; }
	if (ID == 229) { tempNum = 0; }
	if (ID == 230) { tempNum = 25; }
	if (ID == 231) { tempNum = 15; }
	if (ID == 232) { tempNum = 0; }
	if (ID == 233) { tempNum = 0; }
	if (ID == 234) { tempNum = 0; }
	if (ID == 235) { tempNum = 0; }
	if (ID == 236) { tempNum = 0; }
	if (ID == 237) { tempNum = 0; }
	if (ID == 238) { tempNum = 10; }
	if (ID == 239) { tempNum = 3; }
	if (ID == 240) { tempNum = 75; }
	if (ID == 241) { tempNum = 30; }
	if (ID == 242) { tempNum = 45; }
	if (ID == 243) { tempNum = 100; }
	if (ID == 244) { tempNum = 35; }
	if (ID == 245) { tempNum = 15; }
	if (ID == 246) { tempNum = 20; }
	if (ID == 247) { tempNum = 80; }
	if (ID == 248) { tempNum = 25; }
	if (ID == 249) { tempNum = 45; }
	if (ID == 250) { tempNum = 45; }
	if (ID == 251) { tempNum = 10; }
	if (ID == 252) { tempNum = 0; }
	if (ID == 253) { tempNum = 3; }
	if (ID == 254) { tempNum = 0; }
	if (ID == 255) { tempNum = 15; }
	if (ID == 256) { tempNum = 20; }
	if (ID == 257) { tempNum = 30; }
	if (ID == 258) { tempNum = 30; }
	if (ID == 259) { tempNum = 50; }
	if (ID == 260) { tempNum = 45; }


	if (ID == 500) { tempNum = 5; }
	if (ID == 501) { tempNum = 15; }
	if (ID == 502) { tempNum = 70; }
	if (ID == 503) { tempNum = 10; }
	if (ID == 504) { tempNum = 10; }
	if (ID == 505) { tempNum = 10; }
	if (ID == 506) { tempNum = 10; }
	if (ID == 507) { tempNum = 10; }
	if (ID == 508) { tempNum = 25; }
	if (ID == 509) { tempNum = 25; }
	if (ID == 510) { tempNum = 25; }
	if (ID == 511) { tempNum = 25; }
	if (ID == 512) { tempNum = 25; }
	if (ID == 513) { tempNum = 20; }
	if (ID == 514) { tempNum = 20; }
	if (ID == 515) { tempNum = 20; }
	if (ID == 516) { tempNum = 20; }
	if (ID == 517) { tempNum = 20; }
	if (ID == 518) { tempNum = 50; }
	if (ID == 519) { tempNum = 50; }
	if (ID == 520) { tempNum = 150; }
	if (ID == 521) { tempNum = 50; }
	if (ID == 522) { tempNum = 50; }
	if (ID == 523) { tempNum = 2; }
	if (ID == 524) { tempNum = 7; }
	if (ID == 525) { tempNum = 25; }
	if (ID == 526) { tempNum = 5; }
	if (ID == 527) { tempNum = 10; }
	if (ID == 528) { tempNum = 2; }
	if (ID == 529) { tempNum = 30; }
	if (ID == 530) { tempNum = 40; }
	if (ID == 531) { tempNum = 69; }
	if (ID == 532) { tempNum = 75; }
	if (ID == 533) { tempNum = 5; }
	if (ID == 534) { tempNum = 10; }
	if (ID == 535) { tempNum = 20; }
	if (ID == 536) { tempNum = 20; }
	if (ID == 537) { tempNum = 30; }
	if (ID == 538) { tempNum = 20; }
	if (ID == 539) { tempNum = 10; }
	if (ID == 540) { tempNum = 5; }

	return tempNum;
}

function itemStackMax(ID:int):int {
	var tempNum:int = 0;
	if (ID == 1){ tempNum = 1; }
	if (ID == 101) { tempNum = 1; }
	if (ID == 102) { tempNum = 1; } 
	if (ID == 103) { tempNum = 15; }
	if (ID == 104) { tempNum = 1; }
	if (ID == 105) { tempNum = 5; }
	if (ID == 106) { tempNum = 1; }
	//if (ID == 107) { tempNum = (5+5*countItem(107)); }
	if (ID == 108) { tempNum = 1; }
	if (ID == 109) { tempNum = 1; }
	if (ID == 110) { tempNum = 5; }
	if (ID == 111) { tempNum = 5; }
	if (ID == 112) { tempNum = 5; }
	if (ID == 113) { tempNum = 5; }
	if (ID == 114) { tempNum = 5; }
	if (ID == 115) { tempNum = 10; }
	if (ID == 116) { tempNum = 1; }
	if (ID == 117) { tempNum = 1; }
	if (ID == 118) { tempNum = 1; }
	if (ID == 119) { tempNum = 1; }
	if (ID == 120) { tempNum = 5; }
	if (ID == 121) { tempNum = 10; }
	if (ID == 122) { tempNum = 10; }
	if (ID == 123) { tempNum = 10; }
	if (ID == 124) { tempNum = 10; }
	if (ID == 125) { tempNum = 10; }
	if (ID == 126) { tempNum = 5; }
	if (ID == 127) { tempNum = 1; }
	if (ID == 128) { tempNum = 10; }

	if (ID == 200) { tempNum = 1; }
	if (ID == 201) { tempNum = 5; }
	if (ID == 202) { tempNum = 5; }
	if (ID == 203) { tempNum = 15; }

	if (ID == 204) { tempNum = 5; }
	if (ID == 205) { tempNum = 5; }
	if (ID == 206) { tempNum = 10; }
	if (ID == 207) { tempNum = 5; }
	if (ID == 208) { tempNum = 10; }
	if (ID == 209) { tempNum = 15; }
	if (ID == 210) { tempNum = 5; }
	if (ID == 211) { tempNum = 15; }
	if (ID == 212) { tempNum = 10; }
	if (ID == 213) { tempNum = 10; }
	if (ID == 214) { tempNum = 10; }
	if (ID == 215) { tempNum = 1; }
	if (ID == 216) { tempNum = 5; }
	if (ID == 217) { tempNum = 5; }
	if (ID == 218) { tempNum = 10; }
	if (ID == 219) { tempNum = 5; }
	if (ID == 220) { tempNum = 5; }
	if (ID == 221) { tempNum = 10; }
	if (ID == 222) { tempNum = 5; }
	if (ID == 223) { tempNum = 10; }
	if (ID == 224) { tempNum = 10; }
	if (ID == 225) { tempNum = 10; }
	if (ID == 226) { tempNum = 15; }
	if (ID == 227) { tempNum = 10; }
	if (ID == 228) { tempNum = 10; }
	if (ID == 229) { tempNum = 1; }
	if (ID == 230) { tempNum = 5; }
	if (ID == 231) { tempNum = 10; }
	if (ID == 232) { tempNum = 1; }
	if (ID == 233) { tempNum = 1; }
	if (ID == 234) { tempNum = 1; }
	if (ID == 235) { tempNum = 1; }
	if (ID == 236) { tempNum = 1; }
	if (ID == 237) { tempNum = 1; }
	if (ID == 238) { tempNum = 15; }
	if (ID == 239) { tempNum = 15; }
	if (ID == 240) { tempNum = 5; }
	if (ID == 241) { tempNum = 5; }
	if (ID == 242) { tempNum = 5; }
	if (ID == 243) { tempNum = 5; }
	if (ID == 244) { tempNum = 1; }
	if (ID == 245) { tempNum = 15; }
	if (ID == 246) { tempNum = 10; }
	if (ID == 247) { tempNum = 1; }
	if (ID == 248) { tempNum = 10; }
	if (ID == 249) { tempNum = 5; }
	if (ID == 250) { tempNum = 5; }
	if (ID == 251) { tempNum = 15; }
	if (ID == 252) { tempNum = 1; }
	if (ID == 253) { tempNum = 15; }
	if (ID == 254) { tempNum = 1; }
	if (ID == 255) { tempNum = 15; }
	if (ID == 256) { tempNum = 15; }
	if (ID == 257) { tempNum = 5; }
	if (ID == 258) { tempNum = 5; }
	if (ID == 259) { tempNum = 10; }
	if (ID == 260) { tempNum = 10; }

	if (ID == 500) { tempNum = 10; }
	if (ID == 501) { tempNum = 5; }
	if (ID == 502) { tempNum = 1; }
	if (ID == 503) { tempNum = 10; }
	if (ID == 504) { tempNum = 10; }
	if (ID == 505) { tempNum = 5; }
	if (ID == 506) { tempNum = 10; }
	if (ID == 507) { tempNum = 10; }
	if (ID == 508) { tempNum = 10; }
	if (ID == 509) { tempNum = 10; }
	if (ID == 510) { tempNum = 10; }
	if (ID == 511) { tempNum = 10; }
	if (ID == 512) { tempNum = 10; }
	if (ID == 513) { tempNum = 5; }
	if (ID == 514) { tempNum = 5; }
	if (ID == 515) { tempNum = 5; }
	if (ID == 516) { tempNum = 5; }
	if (ID == 517) { tempNum = 5; }
	if (ID == 518) { tempNum = 5; }
	if (ID == 519) { tempNum = 5; }
	if (ID == 520) { tempNum = 5; }
	if (ID == 521) { tempNum = 5; }
	if (ID == 522) { tempNum = 5; }
	if (ID == 523) { tempNum = 15; }
	if (ID == 524) { tempNum = 10; }
	if (ID == 525) { tempNum = 5; }
	if (ID == 526) { tempNum = 1; }
	if (ID == 527) { tempNum = 10; }
	if (ID == 528) { tempNum = 10; }
	if (ID == 529) { tempNum = 5; }
	if (ID == 530) { tempNum = 5; }
	if (ID == 531) { tempNum = 1; }
	if (ID == 532) { tempNum = 5; }
	if (ID == 533) { tempNum = 15; }
	if (ID == 534) { tempNum = 10; }
	if (ID == 535) { tempNum = 10; }
	if (ID == 536) { tempNum = 5; }
	if (ID == 537) { tempNum = 5; }
	if (ID == 538) { tempNum = 10; }
	if (ID == 539) { tempNum = 10; }
	if (ID == 540) { tempNum = 15; }
	
	return tempNum;
}

function foodItem(ID:int):void {
	var tempNum:int = 0;

	if (ID == 114) { tempNum = 5; }
	if (ID == 208) { tempNum = 8; }
	if (ID == 209) { tempNum = 10; }
	if (ID == 210) { tempNum = 20; }
	if (ID == 211) { tempNum = 5; }
	if (ID == 212) { tempNum = 15; }
	if (ID == 214) { tempNum = 30; }
	if (ID == 218) { tempNum = 10; }
	if (ID == 219) { tempNum = 15; }
	if (ID == 221) { tempNum = 15; }
	if (ID == 222) { tempNum = 10; }
	if (ID == 223) { tempNum = 25; }
	if (ID == 224) { tempNum = 20; }
	if (ID == 226) { tempNum = 10; }
	if (ID == 238) { tempNum = 20; }
	if (ID == 251) { tempNum = 40; }
	if (ID == 253) { tempNum = 4; }
	if (ID == 256) { tempNum = 15; }
	if (ID == 259) { tempNum = 25; }
	if (ID == 500) { tempNum = 30; }
	if (ID == 501) { tempNum = 70; }
	if (ID == 503) { tempNum = 3; }
	if (ID == 504) { tempNum = 5; }
	if (ID == 506) { tempNum = 5; }
	if (ID == 507) { tempNum = 7; }
	if (ID == 508) { tempNum = 7; }
	if (ID == 509) { tempNum = 8; }
	if (ID == 511) { tempNum = 10; }
	if (ID == 512) { tempNum = 10; }
	if (ID == 513) { tempNum = 4; }
	if (ID == 514) { tempNum = 4; }
	if (ID == 516) { tempNum = 15; }
	if (ID == 517) { tempNum = 15; }
	if (ID == 518) { tempNum = 8; }
	if (ID == 519) { tempNum = 8; }
	if (ID == 521) { tempNum = 20; }
	if (ID == 522) { tempNum = 20; }
	if (ID == 523) { tempNum = 10; }
	if (ID == 524) { tempNum = 30; }
	if (ID == 527) { tempNum = 15; }
	if (ID == 529) { tempNum = 1; }
	if (ID == 530) { tempNum = 20; }
	if (ID == 531) { tempNum = 50; }
	if (ID == 534) { tempNum = 5; }
	if (ID == 535) { tempNum = 10; }
	if (ID == 536) { tempNum = 15; }
	if (ID == 537) { tempNum = 25; }
	if (ID == 538) { tempNum = 20; }
	if (ID == 539) { tempNum = 15; }
	if (ID == 540) { tempNum = 10; }

	hunger += 2*tempNum;
}

//Adds passive effects of items that have them when bought or found
function passiveItemAdd(ID:int):void{
	if (ID == 101) { rapeMod += 10; }
	if (ID == 102) { runMod += 20; }
	
	//Lila's Gift
	if (ID == 200) {
		vagMoistMod += 4;
		cockMoistMod += 4;
		statsMod(0,0,0,10);
	}

	//Malon's Pendant
	if (ID == 215) {
		rapeMod += 5;
		runMod += 5;
		milkHPMod += 5;
	}

	//Anti-Gravity Rock
	if (ID == 233) { carryMod += 75; }

	//Reindeer Charm
	if (ID == 234) { 
		pregRate += .5;
		minLust += 10;
		hips += 10;
		doLust(0, 0);
	}

	//Reception Bell
	if (ID == 236) { 
		SexPMod += .5;
		changeMod += .3;
	}

	//Lila's Dewy Gift
	if (ID == 237) {
		vagMoistMod += 8;
		cockMoistMod += 8;
		statsMod(0,0,0,10);
		if (heat < 1) { 
			heatMaxTime = 96;
			heatTime = 96;
			heat++;
		}
		else if (heat >= 1) { 
			heatMaxTime -= 12; 
			heat++;
		} 
	}

	//Malon's Milky Pendant
	if (ID == 252) {
		rapeMod += 5;
		runMod += 5;
		milkHPMod += 5;
		carryMod += 10;
		milkCap += 3000;
	}
}

//Removes the passive effects of items that have them when sold or dropped.
function passiveItemRemove(ID:int):void{
	
	if (ID == 101) { rapeMod -= 10; }
	if (ID == 102) { runMod -= 20; }
	/*if (ID == 107) {
		if (countItem(107) > 1)	{
			carryMod -= (5*countItem(107) + 2*(countItem(107) - 1)) - (5*(countItem(107)-1) + 2*(countItem(107) - 2));
			itemSlotWrite(slot, 0);
			loseItem(107);
		}
		else { carryMod += (5*countItem(107) + 2*(countItem(107) - 1)); }
	}*/
	if (ID == 200) {
		vagMoistMod -= 4;
		cockMoistMod -= 4;
		statsMod(0,0,0,-10);
	}
	if (ID == 215) {
		rapeMod -= 5;
		runMod -= 5;
		milkHPMod -= 5;
	}
	if (ID == 233) { carryMod -= 75; }
	if (ID == 234) {
		pregRate -= .5;
		minLust -= 10;
		hips -= 10;
	}
	if (ID == 236) {
		SexPMod -= .5;
		changeMod -= .3;
	}
	if (ID == 237) {
		vagMoistMod -= 8;
		cockMoistMod -= 8;
		statsMod(0,0,0,-10);
		if (heat >= 2) { heatMaxTime += 12; }
		heat--;
	}
	if (ID == 252) {
		rapeMod -= 5;
		runMod -= 5;
		milkHPMod -= 5;
		carryMod -= 10;
		milkCap -= 3000;
	}


	//Weapon removal
	if (ID == 116 && weapon == 116){ weapon = 10;	}
	if (ID == 117 && weapon == 117){ weapon = 10;	}
	if (ID == 118 && weapon == 118){ weapon = 10;	}
	if (ID == 119 && weapon == 119){ weapon = 10;	}
	if (ID == 127 && weapon == 127){ weapon = 10;	}
	if (ID == 235 && weapon == 235){ weapon = 10;	}
}

//What items do when used
function doItemUse(ID:int):void {

	//Dry Sand
	if (ID == 103) {
		bc();
		viewButtonText(0,0,0,0,1,0,1,0,1,0,0,1);
		viewButtonOutline(0,0,0,0,1,0,1,0,1,0,1,1);
		buttonWrite(5, "Penis");
		if (cockTotal < 1) { Choice5.visible = false; }
		buttonWrite(7, "Pussy");
		if (vagTotal < 1) { Choice7.visible = false; }
		buttonWrite(9, "Breasts");
		buttonWrite(11, "Udder");
		buttonWrite(12, "Cancel");
		if (udders == true) { Choice11.visible = true;	}
		textL("Which genitalia would you like to make a bit dryer?");
		doListen = function():void{
			if (buttonChoice == 5) { 
				textL("You dab the sand onto your cock-head"+plural(1)+". It feels odd at first, but as you rub yourself to arousal a bit, you notice a decrease in pre.");
				cockMoist -= 4;
				doEnd();
			}
			if (buttonChoice == 7) { 
				textL("You dab the sand onto your cunt"+plural(2)+". It feels odd at first, but as you rub yourself to arousal a bit, you notice a decrease in lubrications.");
				vagMoist -= 4;
				doEnd();
			}
			if (buttonChoice == 9) {
				textL("You dab the sand onto your nipples. It feels odd at first, but as you rub them until they are stiff, you notice a decrease in lactation.");
				if (lactation - 75 < 0) { milkMod += (lactation - 75); }
				lactChange(1, -75);
				doEnd();
			}
			if (buttonChoice == 11) {
				textL("You dab the sand onto your teats. It feels odd at first, but as you rub them until they are stiff, you notice a decrease in lactation.");
				lactChange(2, -75);
				doEnd();
			}
			if (buttonChoice == 12) { 
				itemAdd(103);
				doProcess();
			}
		}
	}

	//Milking Machine
	if (ID == 104){
		if (currentState != 3) { 
			textL("You can only use a milker while masturbating."); 
			doEnd();
		}
		else {
			var tempNum:int = 0;
			bc();
			viewButtonText(0,0,0,0,1,0,0,0,0,0,0,0);
			viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
			buttonWrite(5, "Breasts");
			buttonWrite(7, "Udder");
			if (udders == true) { Choice7.visible = true; }
			textL("What would you like to pump?");
			doListen = function():void{
				if (buttonChoice == 5){	tempNum = 1; }
				if (buttonChoice == 7) { tempNum = 2; }
				var getMilk:int = 0;
				textL("You uncoil the tubes of your milker, stretching them out and starting up the pump. Attaching the appropriate cups, you slip them onto your ");
				if (tempNum == 1){ textLP(nipDesc()+" nipples, until the rims press up and seal onto your "+boobDesc()+" breasts with the gentle suction.");	}
				if (tempNum == 2){ textLP(teatDesc()+" teats, until the rims press up and seal onto your "+udderDesc()+" udder with the gentle suction."); }
				textLP("\r\rYou shudder a little as the stuttered pumping vibrates through your body. Warmth begins to envelop your ");
				if (tempNum == 1){ textLP("chest"); }
				if (tempNum == 2){ textLP("belly"); }
				textLP(" feeling all tingly.");
				if ((tempNum == 1 && lactation > 0) || (tempNum == 2 && udderLactation > 0)) {
					hrs++;
					getMilk = milkAmount(tempNum);
					textLP(" Droplets of milk begin to trickle around your ");
					if (tempNum == 1){ textLP("nipples"); }
					if (tempNum == 2){ textLP("teats"); }
					textLP(" and slurps through the tubes. Within moments, your ");
					if (tempNum == 1){ textLP("nipples"); }
					if (tempNum == 2){ textLP("teats"); }
					textLP(" throb along with the pulse, ");
					if (getMilk <= 500) { textLP("small dribbles"); }

					if (getMilk > 500 && getMilk <= 1000) { textLP("spurts"); }
					if (getMilk > 1000 && getMilk <= 2000) { textLP("sprays"); }
					if (getMilk > 2000 && getMilk <= 8000) { textLP("jets"); }
					if (getMilk > 8000 && getMilk <= 19000) { textLP("steady streams"); }
					if (getMilk > 19000) { textLP("small floods"); }
					textLP(" of milk swishing through the tubes and collecting at the machine.");
				}
				textLP(" The pleasurable sensation lingers constantly, bringing you to a small orgasm");
				if (getMilk > 0){ textLP(" while your flow of milk slows to a stop"); }
				textLP(".\r\rYou flip the machine off, the cups making a loud kissing sound as the vacuum is released. As they fall to the floor, you rub your aroused ");
				if (tempNum == 1){ textLP(nipDesc()+" nipples"); }
				if (tempNum == 2){ textLP(teatDesc()+" teats"); }
				textLP(", shivering from their shortly increased sensitivity, slightly engorged and inflated.");
				if (boobTotal >2 || tempNum == 2)	{ textLP(" Then you move onto the next pair..."); }
				textLP(" Eventually you clean yourself up and put the machine away.");

				if (tempNum == 1){
					nipPump += 10;
					if (nipPump > 40){
						nipPump = 0;
						nippleSize++;
						textLP("\r\rHowever, this time your nipples don't seem to relax back to their original state, permanently swollen larger...");
					}
				}
				if (tempNum == 2){
					teatPump += 10;
					if (teatPump > 40){
						teatPump = 0;
						teatSize++;
						textLP("\r\rHowever, this time your teats don't seem to relax back to their original state, permanently swollen larger...");
					}
				}
				doNext();
				doListen = function():void {
					if (getMilk < 1000)	{ textL("You have produced "+getMilk+" ml of milk!"); }
					else if (getMilk >= 1000) { textL("You have produced "+decGet(getMilk/1000, 1)+" liters of milk!"); }
					if (breastSize > 14 && tempNum == 1) {	doLust(-Math.floor(sen/4), 2, 3);	}
					if (breastSize < 4 && tempNum == 1)	{ doLust(-Math.floor(sen/4), 2, 3); }
					if (tempNum == 2) { doLust(-Math.floor(sen/4), 2, 4);	}
					if (tempNum == 1){	nipplePlay += 10; }
					if (tempNum == 2){	udderPlay += 10; }
					
					if (getMilk < 1000) { textLP("\r\rUnfortunately, you haven't produced enough milk to fill a full bottle yet."); }
					if (getMilk >= 1000 && getMilk < 3000)	{ itemAdd(500); }
					if (getMilk >= 3000 && getMilk < 6000) { itemAdd(501); }
					if (getMilk >= 6000 && getMilk < 17000) { 
						itemAdd(501);
						itemAdd(501);
					}
					if (getMilk >= 17000 && getMilk < 25000) { itemAdd(502); }
					if (getMilk >= 25000) { 
						itemAdd(502);
						textLP("\r\rHowever, you produced so much milk that the container in the milker couldn't hold it all and everything beyond a barrel-full splashed out around the edges, making a mess everywhere!");
					}
					hrs++;
					doEnd();
				}
			}
		}
	}

	//Penis Pump
	if (ID == 106){
		if (currentState != 3) { 
			textL("You can only use the a penis pump while masturbating."); 
			doEnd();
		}
		else {
			var tempNum:int = 0;
			bc();
			viewButtonText(0,0,0,0,0,0,0,0,0,1,0,0);
			viewButtonOutline(0,0,0,0,1,0,1,0,0,1,0,0);
			buttonWrite(5, "Penis");
			if (cockTotal > 0) { Choice5.visible = true; }
			buttonWrite(7, "Clit");
			if (vagTotal > 0) { Choice7.visible = true; }
			buttonWrite(10, "None");
			textL("What would you like to pump?");
			doListen = function():void{
				if (buttonChoice == 5) {
					rndArray = [];
					if (humanCocks > 0) { rndArray.push(1) }
					if (horseCocks > 0) { rndArray.push(2) }
					if (wolfCocks > 0) { rndArray.push(3) }
					if (catCocks > 0) { rndArray.push(4) }
					if (lizardCocks > 0) { rndArray.push(6) }
					if (rabbitCocks > 0) { rndArray.push(7) }
					if (bugCocks > 0) { rndArray.push(12) }
					
					var tempInt:int = chooseFrom();
					var whichCock:String = "WHICH COCK ERROR";
					
					if (tempInt == 1) { whichCock = "hard human rod"; }
					if (tempInt == 2) { whichCock = "long equine flesh"; }
					if (tempInt == 3) { whichCock = "pointy wolf meat"; }
					if (tempInt == 4) { whichCock = "pink thorny cat prick"; }
					if (tempInt == 6) { whichCock = "purple ribbed reptile rod"; }
					if (tempInt == 7) { whichCock = "throbbing bunny carrot"; }
					if (tempInt == 12) { whichCock = "bumpy-ridged spiked bug wang"; }
					
					textL("You pick out the appropriate cylinder size for "+oneYour(1)+" cock"+plural(1)+". You slip it over your "+whichCock+" and attach the tube at the other end. Whether you were hard or not already, as soon as you flip on the pump's switch, your "+hipDesc()+" hips jerk as blood flushes through the "+cockDesc()+" member. The vacuum pressure makes it swell, growing stiffer and larger than before!\r\rThe pump then gently relaxes before giving you another nice suck, followed by another release, eventually building into a slow rhythm.");
					if (lust < 20) {
						textLP(" Yet, despite the pleasurable sensation, you're not really horny enough to climax, the pump merely sucking away at your engorgement for a while before you finally give up and put it away.");
						cockPump += 10;
						if (cockPump > 40){
							cockPump = 0;
							cockSize++;
							textLP("\r\rAlthough, the swelling from the suction doesn't seem to go down all the way, your cock"+plural(1)+" permanently slightly larger.");
						}
						hrs = 1;
						doEnd();
					}
					else {
						var getCum:int = cumAmount();
						if (moistCalc(1) <= 3) { textLP(" The bottle within the machine fills a little with your pre as it seeps out, but it's hardly much.\r\r"); }
						if (moistCalc(1) > 3 && moistCalc(1) <= 7) { textLP(" The bottle within the machine fills nearly halfway with your pre as it dribbles out, so you quickly spill it out before you climax.\r\r"); }
						if (moistCalc(1) > 7 && moistCalc(1) <= 11) { textLP(" The bottle within the machine fills to the brim with your pre as it spurts from your cock, forcing you to quickly replace it with a fresh bottle before you climax.\r\r"); }
						if (moistCalc(1) > 11) { textLP(" The bottle within the machine fills to the brim with your pre as it gushes from your cock, spilling over the rim. You pull the bottle out and let your slime spew across the floor until you're about to climax and replace it with a fresh one.\r\r"); }
					
						if (showBalls == true) { textLP("Eventually, your "+ballDesc()+" balls groan as the sensation gets the best of them. ");	}
						textLP("You begin to buck as the machine does its job, your cum spurting from the tip of your "+whichCock+" and flowing through the tubes, despositing into the bottle. Spurt after spurt gets sucked out, milking your cock until it's dry.");
						
						if (getCum < 1000)	{ textLP("\r\rYou have produced "+getCum+" ml of spooge!"); }
						else if (getCum >= 1000) { textLP("\r\rYou have produced "+decGet(getCum/1000, 1)+" liters of spooge!"); }

						if (getCum <= 400) { textLP(" Although, the resulting amount is so small that you can't really do anything with it..."); }
						if (getCum > 400 && getCum <= 600) { 
							textLP(" The resulting amount of spunk is just enough to fill a vial!"); 
							itemAdd(523);
						}
						if (getCum > 600 && getCum <= 1200) { 
							textLP(" The resulting amount of spunk is more than enough to fill a vial, with a quite a bit left to spill over the edge.");
							itemAdd(523);
						}
						if (getCum > 1200 && getCum <= 2000) { 
							textLP(" You come so much that you fill the whole bottle, great for resale!");
							itemAdd(524);
						}
						if (getCum > 2000 && getCum <= 4500) { 
							textLP(" You come so much that you fill the whole bottle, and more continues to gush out over the edge, making quite the mess."); 
							itemAdd(524);
						}
						if (getCum > 4500 && getCum <= 5500) { 
							textLP(" Well prepared, you quickly swap out the bottle with a jug. Your cum floods inside, filling it up to the brim!");
							itemAdd(525);
						}
						if (getCum > 5500 && getCum <= 21000) { 
							textLP(" Prepared, you quickly swap out the bottle with a jug. Your cum floods inside, filling it up to the brim. However, you continue to gush, overfilling it until cum spills over the edge and floods around you, making quite the mess..."); 
							itemAdd(525);
						}
						if (getCum > 21000) { 
							textLP(" Worried about drowing in your own cum, you quickly pull the bottle out and attach a hose to the item you came prepared with... a barrel. Though you still manage to overfill it, you haven't created quite the natural disaster. And since you can't quite get much for a whole barrel of cum, you top off a jug as well..."); 
							itemAdd(525);
							itemAdd(526);
						}
						

						cockPump += 10;
						if (cockPump > 40){
							cockPump = 0;
							cockSize++;
							textLP("\r\rAlthough, after cleaning up, the swelling from the suction doesn't seem to go down, your cock"+plural(1)+" permanently slightly larger...");
						}

						if (cockSize*cockSizeMod*4 > tallness && gender == 3) { doLust(-Math.floor(sen/4), 2, 58, 3, 57, 4); }
						else if (cockSize*cockSizeMod*4 > tallness) { doLust(-Math.floor(sen/4), 2, 58, 1, 57, 4); }
						else if (gender == 3) { doLust(-Math.floor(sen/4), 2, 3, 57, 4); }
						else { doLust(-Math.floor(sen/4), 2, 1, 57, 4); }

						hrs = 2;
						doEnd();
					}
				}
				if (buttonChoice == 7) {
					if (lust < 20)	{
						textL("You're not really in the mood to do it at the moment, opting to put the pump back in your bag for now...");
						doEnd();
					}
					else {
						if (clitSize <= 20)	{ textL("Feeling a little kinky, you take the smallest available cylinder and push it over "+oneYour(2)+" clit"+plural(2)+". Turning on the machine, you quickly notice you're still too small, having to manually seal the cylinder against your skin with your fingers. However, that isn't a problem, as you soon begin to enjoy the sucking on your clit, the button swelling from the vacuum while your fingers sliding through your "+vulvaDesc()+" lips and dipping into your hole"+plural(2)+", moving in rhythm to the pumping.");	}
						if (clitSize > 20)	{ textL("Feeling a little kinky, you take some cylinders to slide over "+oneYour(2)+" clit"+plural(2)+". Its so big that it easily fits into one of them, just like it were a cock. Turning on the machine, your "+hipDesc()+" hips squirm as the suction forces your button to swell, becoming even larger. Your fingers slide through your "+vulvaDesc()+" lips and dip into your hole"+plural(2)+", moving in rhythm to the pumping.");	}
						if (moistCalc(2) > 0 && moistCalc(2) <= 3) { textLP(" The pump manages to suck up a few drops of your feminine honey as you masturbate, misting the tubes slightly."); }
						if (moistCalc(2) > 3 && moistCalc(2) <= 7) { textLP(" The pump manages to suck up some of your dribbling feminine honey, letting it drip lazily from into a bottle that was meant for spunk."); }
						if (moistCalc(2) > 7 && moistCalc(2) <= 11) { textLP(" The pump manages to suck up a bit of your flowing feminine honey, spurting it into a bottle meant for spunk instead."); }
						if (moistCalc(2) > 11) { textLP(" The pump manages to suck up a good deal of your gushing feminine honey, filling a bottle in the machine that was meant for spunk instead. It's not something you can sell, but it amuses you nonetheless."); }


						textLP(" You soon quiver and moan as you come to climax, sighing gently as you turn the pump off to enjoy your swollen clit by hand for a while.");

						clitPump += 10;
						if (clitPump > 40){
							clitPump = 0;
							clitSize++;
							textLP("\r\rAlthough, after cleaning up, the swelling from the suction doesn't seem to go down, your clit"+plural(1)+" permanently slightly larger...");
						}

						if (clitSize*24 > tallness && gender == 3) { doLust(-Math.floor(sen/4), 2, 1); }
						else if (clitSize*24 > tallness) { doLust(-Math.floor(sen/4), 2, 1); }
						else if (gender == 3) { doLust(-Math.floor(sen/4), 2, 1); }
						else { doLust(-Math.floor(sen/4), 2, 1); }
						hrs = 2;
						doEnd();
					}
				}
				if (buttonChoice == 10) {
					textL("You realize you didn't actually want to use the pump and put it back in your bag. You fickle bastard.");
					doEnd();
				}
			}
		}
	}

	//Cat's Meow
	if (ID == 105) { 
		textL("Bringing the vial filled with white liquid to your lips, you soon taste the sweet, milky stuff within. Downing it, your "+boobDesc()+" breasts feel warm. Small blotches of milk form through your "+clothesTop()+", around your nipples. The tingling heat then permeates your body, making you feel slightly more aroused as well.");
		stats(0,0,1,0);
		doLust(5, 0);
		if (udders == true) {
			textLP(" Even your udder begins to dribble a little, feeling slightly fuller.");
			lactChange(2, 20);
		}
		lactChange(1, 15);
		
		doEnd();
	}

	//Blood Gauge
	if (ID == 108) { 
		textL("You push the gauge against your pulse. It grows warm for a moment before a vague display shows up on the other side.");
		if (humanAffinity > 0) {
			textLP("\r\rHuman:\r");
			for (i=1; i <= humanAffinity; i++) { textLP("|"); }
		}
		if (horseAffinity > 0) {
			textLP("\r\rHorse:\r");
			for (i=1; i <= horseAffinity; i++) { textLP("|"); }
		}		
		if (wolfAffinity > 0) {
			textLP("\r\rWolf:\r");
			for (i=1; i <= wolfAffinity; i++) { textLP("|"); }
		}
		if (catAffinity > 0) {
			textLP("\r\rCat:\r");
			for (i=1; i <= catAffinity; i++) { textLP("|"); }
		}
		if (cowAffinity > 0) {
			textLP("\r\rCow:\r");
			for (i=1; i <= cowAffinity; i++) { textLP("|"); }
		}
		if (lizardAffinity > 0) {
			textLP("\r\rLizard:\r");
			for (i=1; i <= lizardAffinity; i++) { textLP("|"); }
		}
		if (rabbitAffinity > 0) {
			textLP("\r\rRabbit:\r");
			for (i=1; i <= rabbitAffinity; i++) { textLP("|"); }
		}
		if (mouseAffinity > 0) {
			textLP("\r\rMouse:\r");
			for (i=1; i <= mouseAffinity; i++) { textLP("|"); }
		}
		if (birdAffinity > 0) {
			textLP("\r\rBird:\r");
			for (i=1; i <= birdAffinity; i++) { textLP("|"); }
		}
		if (pigAffinity > 0) {
			textLP("\r\rPig:\r");
			for (i=1; i <= pigAffinity; i++) { textLP("|"); }
		}
		if (skunkAffinity > 0) {
			textLP("\r\rSkunk:\r");
			for (i=1; i <= skunkAffinity; i++) { textLP("|"); }
		}
		if (bugAffinity > 0) {
			textLP("\r\rBug:\r");
			for (i=1; i <= bugAffinity; i++) { textLP("|"); }
		}
		doEnd();
	}

	//Educated Eggdicator
	if (ID == 109) { 
		if (checkItem(219))	{
			if (knowPheromone == true && silRep < 1 && !checkItem(530) && !checkStash(530) && !checkItem(532) && !checkStash(532) && pheromone < 1)	{
				textL("You slip a Fresh Egg into the eggdicator and listen to it whir as it studies the egg. Within moments, you hear a *DING*.\r\r");
				loseManyItem(219,1);
				textLP("Into the reception bin rolls a white-shelled egg with pretty red hearts all over.");
				itemAdd(530);
				doEnd();
			}
			else {
				var chance:int = percent();
				textL("You slip a Fresh Egg into the eggdicator and listen to it whir as it studies the egg. Within moments, you hear a *DING*.\r\r");
				loseManyItem(219,1);
				if (chance <= 45){
					textLP("Into the reception bin rolls a blue-shelled egg.");
					itemAdd(527);
				}
				else if (chance <= 85){
					textLP("Into the reception bin rolls a red-shelled egg.");
					itemAdd(528);
				}
				else if (chance <= 92){
					textLP("Into the reception bin rolls a pink-shelled egg with teal polka-dots.");
					itemAdd(529);
				}
				else if (chance <= 97){
					textLP("Into the reception bin rolls a white-shelled egg with pretty red hearts all over.");
					itemAdd(530);
				}
				else if (chance <= 100){
					textLP("Into the reception bin rolls a golden-shelled glowing egg.");
					itemAdd(531);
				}
				doEnd();
			}
		}
		else {
			textL("The well-educated eggdicator indicates a deficiency in your ovoid protein supply and thus cannot adequately correspond to your commands.\r\rI.e. - You need a Fresh Egg to use this.");
			doEnd();
		}
	}

	//Reduction
	if (ID == 110) {

		choiceListArray = [];
								
		if (breastSize > 0) { choiceListArray.push("Breasts"); }
		if (nippleSize > 1) { choiceListArray.push("Nipples"); }
		if (butt > 1) { choiceListArray.push("Butt"); }
		if (hips > 1) { choiceListArray.push("Hips"); }
		if (vagTotal > 0) {
			choiceListArray.push("Pussy");
			if (vulvaSize > 0) { choiceListArray.push("Vulva"); }
			if (clitSize > 1) { choiceListArray.push("Clit"); }
		}
		if (cockTotal > 0) {
			choiceListArray.push("Cock");
			if (showBalls == true && ballSize > 1) { choiceListArray.push("Balls"); }
		}
		if (udders == true) {
			if (udderSize > 1) { choiceListArray.push("Udder"); }
			if (teatSize > 2) { choiceListArray.push("Teats"); }
		}
		if (bellyMod > 0) { choiceListArray.push("Belly");	}

		choiceListButtons("Reduction");

		textL("Select which body part you would like to halve in size. If you don't have that part, this elixer will do nothing but will still be consumed.");
		doListen = function():void{
			choiceListSelect("Reduction");
			textL("You splash the elixir out onto your ");
			if (choiceListResult[0] == "Cock") { 
				textLP(cockDesc()+" cock"+plural(1));
				textLP(" and watch with a shiver as the flesh receeds.");
				cockChange(-Math.ceil(cockSize/2),0);
			}
			if (choiceListResult[0] == "Balls") { 
				textLP(ballDesc()+" balls");
				ballSize -= Math.floor(ballSize/2); 
				textLP(" and watch with a shiver as the orbs shrink, becoming "+ballDesc()+".");
			}
			if (choiceListResult[0] == "Pussy") { 
				textLP("vagina"+plural(2));
				textLP(" and quiver as the fleshy walls within your body shrink.");
				vagChange(Math.floor(-vagSize/2),0); 

				
			}
			if (choiceListResult[0] == "Vulva") { 
				textLP(vulvaDesc()+" vulva");
				vulvaSize -= Math.floor(vulvaSize/2);
				textLP(" and watch with a quiver as nether-lips shrink, becoming "+vulvaDesc()+".");
			}
			if (choiceListResult[0] == "Clit") { 
				textLP(clitDesc()+" clit"+plural(2));
				clitSize -= Math.floor(clitSize/2);
				textLP(" and watch with a quiver as the button"+plural(2)+" shrink"+plural(4)+", becoming "+clitDesc()+".");
			}
			if (choiceListResult[0] == "Breasts") { 
				textLP(boobDesc()+" breasts");
				breastSize -= Math.floor(breastSize/2);
				textLP(" and shudder as they shrink.");
			}
			if (choiceListResult[0] == "Nipples") { 
				textLP(nipDesc()+" nipples");
				nippleSize -= Math.floor(nippleSize/2);
				textLP(" and shudder as they receed into your breasts.");
			}
			if (choiceListResult[0] == "Udder") { 
				textLP(udderDesc()+" udder");
				udderSize -= Math.floor(udderSize/2); 
				textLP(" and watch as it shrivels, becoming "+udderDesc()+".");
			}
			if (choiceListResult[0] == "Teats") { 
				textLP(teatDesc()+" teats");
				teatSize -= Math.floor(teatSize/2); 
				textLP(" and watch as they recede, becoming "+teatDesc()+".");
			}
			if (choiceListResult[0] == "Butt") { 
				textLP(buttDesc()+" butt");
				butt -= Math.floor(butt/2); 
				textLP(" and squirm as it shrinks, becoming "+buttDesc()+".");
			}	
			if (choiceListResult[0] == "Hips") { 
				textLP(hipDesc()+" hips");
				hips -= Math.floor(hips/2);
				textLP(" and squirm as they narrow, becoming "+hipDesc()+".");
			}
			if (choiceListResult[0] == "Belly") { 
				textLP(bellyDesc()+" belly");
				bellyMod -= Math.floor(bellyMod/2);
				textLP(" and feel lighter as the chubbiness burns off, becoming "+bellyDesc()+".");
			}
			if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Reduction");	}
			else if (buttonChoice == 12) { 
				itemAdd(110);
				doProcess();
			}
			else { doEnd(); }
		}
	}

	//Skin Balm
	if (ID == 111) { 
		textL("Smearing the balm around your body, you feel slightly more sensitive and your curiousity is slightly piquied.");
		stats(0,1,0,1);
		aff(1, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Bolstering Juice
	if (ID == 112) { 
		textL("Downing the 'juice', you realize it's a lot thicker and stickier than you expected, and quite heady. Your heart beats a bit stronger and you shudder a bit.");
		stats(1,0,1,0);
		aff(2, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Tainted Leaf
	if (ID == 113) { 
		textL("Biting into the leaf, it feels oddly sour. However, afterward your mind feels a bit clearer and your body more prepared for whatever may come.");
		stats(1,1,0,0);
		aff(3, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Sweet Sap
	if (ID == 114) { 
		textL("Drinking the slick, slimey, slightly sweet sap, you realize it probably isn't sap... The thought makes you tingle with arousal, your whole body slightly more sensitive.");
		stats(0,0,1,1);
		aff(4, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Poultice
	if (ID == 115) {
		textL("You rub the soothing poultice all over your body, feeling reinvigorated. Rubbing yourself down with the wet rag, you rub a little too much in some areas and become slightly more aroused.");
		doHP(20);
		doLust(5, 0);
		doEnd();
	}

	//Dagger
	if (ID == 116) {
		textL("You have equipped the dagger.");
		weapon = 116; 
		doEnd();
	}

	//Warhammer
	if (ID == 117) {
		textL("You have equipped the warhammer.");
		weapon = 117; 
		doEnd();
	}

	//Saber
	if (ID == 118) {
		textL("You have equipped the saber.");
		weapon = 118; 
		doEnd();
	}

	//Whip
	if (ID == 119) {
		textL("You have equipped the whip.");
		weapon = 119; 
		doEnd();
	}	
	
	//Neuterizer
	if (ID == 120){
		bc();
		viewButtonText(0,1,0,0,1,0,1,0,0,0,0,1);
		viewButtonOutline(0,1,0,0,1,0,1,0,0,1,0,1);
		buttonWrite(2, "None");
		buttonWrite(5, "Cock");
		if (cockTotal < 1) {
			Choice5.visible = false; 
			Choice10.visible = false;
		}
		buttonWrite(7, "Cunt");
		if (vagTotal < 1) { Choice7.visible = false; }
		buttonWrite(10, "Balls");
		buttonWrite(12, "Cancel");
		if (showBalls == true && balls > 0) { Choice10.visible = true; }
		textL("What would you like to remove?\r\rNote that removing balls removes one at a time. If try to remove them when you only have two left, neuterizer simply hides them, as it would severely damage your plumbing without them.");
		doListen = function():void{
			if (buttonChoice == 2){
				textL("You decide you'd rather keep what you got, for the moment, and put the neuterizer back in your bag.");
				itemAdd(120);
				doEnd();
			}
			if (buttonChoice == 5){
				textL("You rub the neuterizer into "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+"...");
				cockChange(0,-1);
				doEnd();			
			}
			if (buttonChoice == 7){
				textL("You rub the neuterizer into "+oneYour(2)+" "+vulvaDesc()+" cunt"+plural(1)+"...");
				vagChange(0,-1);
				doEnd();
			}
			if (buttonChoice == 10){
				if (balls > 2) {
					textL("You rub the neuterizer into your scrotum. You squirm a bit as one of your testicles wrenches a bit, shrinking down. Once it disappears into nothing, you feel perfectly fine again.");
					balls--;
					doEnd();
				}
				else {
					textL("Unfortunately, the neuterizer cannot simply make your testicles disappear while you still have any cocks. It would be... too dangerous. But, rubbing it onto your scrotum, your balls disappear up into your body, hidden from view.");
					showBalls = false;
					doEnd();
				}
			}
			if (buttonChoice == 12) { 
				itemAdd(120);
				doProcess();
			}
		}
	}

	//Teleport Scroll: Softlik
	if (ID == 121) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a whoosh, they quickly disappear and you find yourself back in the human city of Softlik!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(1);
		doEnd();
	}

	//Teleport Scroll: Firmshaft
	if (ID == 122) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a whistle, they quickly disappear and you find yourself back in the equan city of Firmshaft!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(2);
		doEnd();
	}

	//Teleport Scroll: Tieden
	if (ID == 123) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a howl, they quickly disappear and you find yourself back in the lupan city of Tieden!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(3);
		doEnd();
	}

	//Teleport Scroll: Siz'Calit
	if (ID == 124) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a swish, they quickly disappear and you find yourself back in the felin city of Siz'Calit!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(4);
		doEnd();
	}

	//Teleport Scroll: Oviasis
	if (ID == 125) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a splash, they quickly disappear and you find yourself back in the lizan city of Oviasis!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(6);
		doEnd();
	}

	//Oasis Water
	if (ID == 126) { 
		textL("Sipping the refreshing water, you notice a slight aftertaste of something funny, like people have been bathing and doing... things in the water. It's kinda kinky when you think about it, but also feels nice inside of you.");
		if (percent() <= 50) { stats(1,0,1,0);	}
		else { stats(0,0,1,1); }
		aff(6, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Tail Spike
	if (ID == 127) {
		if (tail == 4 || tail == 5 || tail == 6 || tail == 8) {
			textL("You strap the tail spike to your tail, equipping it as your weapon.");
			weapon = 127; 
		}
		else { textL("You do not have an appropriate tail to strap this onto and thus cannot equip it."); }		
		doEnd();
	}

	//Teleport Scroll: Sanctuary
	if (ID == 128) {
		textL("You read the scroll and soft, sparkling lights between to shine and fly around you, faster and faster until you can't see beyond them.\r\rWith a thump, they quickly disappear and you find yourself back in the city of Sanctuary!");
		currentState = 1;
		inBag = false;
		inDungeon = false;
		regionChange(12);
		doEnd();
	}
	 
	//Milk Creeper Poison
	if (ID == 201){
		bc();
		viewButtonText(0,0,0,0,1,0,0,0,0,0,0,1);
		viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,1);
		buttonWrite(5, "Breasts")
		if (udders == true) {
			buttonWrite(7, "Udder");
			Choice7.visible = true;
		}
		buttonWrite(12, "Cancel");
		textL("What would you like to rub the Milk Creeper Poison into?");
		doListen = function():void{
			if (buttonChoice == 5){
				textL("You pour out the vial of poison and rub the pearlescant fluid all over your "+boobDesc()+" breasts. You shiver a little as they tingle, a subtle warmth permeating your bosom as the poison sets in and remains.");
				milkCPoisonNip += 5;
				doLust(percent()/10, 0);
				doEnd();			
			}
			if (buttonChoice == 7){
				textL("You pour out the vial of poison and rub the pearlescant fluid all over your "+udderDesc()+" udder. Your hips twitch a little as the fleshy bag tingles, a subtle warmth permeating your udder as the poison sets in and remains.");
				milkCPoisonUdd += 5;
				doLust(percent()/10, 0);
				doEnd();
			}
		}
		if (buttonChoice == 12) { 
			itemAdd(201);
			doProcess();
		}
	}

	//Cock-Snake venom
	if (ID == 202) {
		if (cockTotal > 0){
			textL("You pull your "+clothesBottom()+" "+pullUD(2)+" and rub the venom into your cock"+plural(1)+". Within seconds, you begin to shudder erotically as warmth fills your cock"+plural(1)+", becoming erect. After waiting a few moments, the erection settles somewhat, but the warmth of the venom within persists, as though lying in wait...");
			doLust(4*cockTotal, 0);
			cockSnakeVenom += 5;
			doEnd();
		}
		else if (cockTotal < 1 && vagTotal > 0){
			textL("You pull your "+clothesBottom()+" "+pullUD(2)+" and rub the venom into your groin. Within seconds, you begin to shudder...");
			if (clitSize > 20 && percent() <= 5) {
				textLP(" You feel "+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+" swell and shift within your "+clothesBottom()+", your lips starting to grow quite oddly as well...");
				vagChange(0,-1);
				cockChange(Math.ceil(clitSize*5/2),1);
				doLust(4, 0);
			}
			else{
				textLP(" You feel your "+clitDesc()+" clit"+plural(2)+" grow warm. Within seconds, you begin to shudder erotically as you clit"+plural(2)+" grow hot and erect. After waiting a few moments, the initial intensity passes, but the warmth of the venom within persists, as though lying in wait...");
				cockSnakeVenom += 5;
				doLust(4*vagTotal, 0);
			}
			doEnd();
		}
		else {
			textL("You pull your "+clothesBottom()+" "+pullUD(2)+" and rub the venom into your groin. You wait for several seconds and... nothing seems to happen. What a waste.");
			doEnd();
		}
	}

	//Wolf Fur
	if (ID == 203) {
		textL("You rub the tuft of coarse wolf fur into your "+skinDesc()+". The roughness desensitizes you a bit.");
		stats(0,0,0,-3);
		doEnd(); 
	}
	
	//Small Pouch for felins
	if (ID == 204) {
		var chance:int = percent();
		if (chance <= 30) {
			textL("You find some coins inside!");
			doCoin(Math.floor(percent()/5));
		}
		else if (chance <= 40) { itemAdd(246);	}
		else if (chance > 40 && chance <= 55) { itemAdd(105); }
		else if (chance > 55 && chance <= 75) { itemAdd(103); }
		else if (chance > 75 && chance <= 90) { itemAdd(114); }
		else { textL("Daww, turns out the pouch was empty...");	}
		doEnd();
	}

	//Small Pouch for equans
	if (ID == 205) {
		var chance:int = percent();
		if (chance <= 50) {
			textL("You find some coins inside!");
			doCoin(Math.floor(percent()/5 + 5));
		}
		else if (chance > 50 && chance <= 65) { itemAdd(112); }
		else if (chance > 65 && chance <= 85) { itemAdd(115); }
		else if (chance > 85) {	textL("Daww, turns out the pouch was empty...");	}
		doEnd();
	}

	//Wooden Cock Carving
	if (ID == 207) {
		var chance:int = percent();
		textL("You crack open the wooden cock. ");
		if (chance <= 15){
			textLP(" Sparkling lights erupt from the crack, swirling around in the air until they come together to form the outline of a disembodied glowing cock, looking much like the carving. Before you react, it flips around and dives down, before driving back up "+legWhere(1)+" your "+legDesc(2)+" and disappearing into the crotch of your "+clothesBottom()+".");
			vagChange(0,1);
			doLust(percent()/5, 0);
		}
		else if (chance <= 30){
			textLP(" Sparkling lights erupt from the crack, swirling around in the air until they come together to form the outline of a disembodied glowing cock, looking much like the carving. Before you react, it flips around and charges at your groin, ramming right above your crotch and disappearing into the front of your "+clothesBottom()+".");
			cockChange(0,1);
			doLust(percent()/5, 0);
		}
		else {
			textLP(" There's nothing inside... Either this thing was just some kinky woman's play-toy, or it was a dud.");
		}
		doEnd();
	}

	//Bloated Berry
	if (ID == 208) {
		textL("You pop the berry into your mouth. As it pops and gushes with juice within your mouth, your face cringes at how un-sweet it is. Tasting more salty with a thick texture, you swallow it as fast as possible.");
		if (balls > 0 && ballSize > 0 && showBalls == true && hunger >= 60)	{
			textLP(" Moments later, you feel a warmth in your groin as the food digests. You squirm as you feel your testicles swell within their scrotum, growing hot with seed... Seems as though this berry has increased the size of your balls, somehow, and now you feel a little hungry again.");
			ballSize += Math.floor(percent()/33);
			hunger -= 20;
		}
		else if (balls > 0 && ballSize > 0 && showBalls == false && hunger >= 60)	{
			textLP(" Moments later, you feel a warmth in your groin as the food digests. You squirm as you feel your cum churning within your body, something swelling within... Seems as though this berry has increased the size of your non-visible balls, somehow, and now you feel a little hungry again.");
			ballSize += Math.floor(percent()/33);
			doLust(percent()/10, 0);
			hunger -= 20;
		}
		else { textLP(" Moments later, you feel a bit of warmth in your groin, but it quickly passes. Now all you're left with is the aftertaste..."); }
		doEnd();
	}

	//Grain
	if (ID == 209) {
		/*if (countItem(209) >=10) {
			textL("Hmm... You've got enough grain that you could probably make some blonde-colored dye for your hair. It will take about 10 handfuls of grain to make one dye.\r\rWould you like to make the dye or just eat it?");
			viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
			viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
			buttonWrite(5, "Dye");
			buttonWrite(7, "Eat");
			doListen = function():void{
				if (buttonChoice == 5) {
					textL("You grind the grain into a pulp, mix in some water, and further pulverize it until you have a nice smooth dye that you can easily apply to your hair or be sold for more.");
					itemAdd(220);
					loseManyItem(209, 10);
					doEnd();
				}
				else {
					textL("You pop the handful into your mouth and munch on them. Doesn't taste too bad. Although, the thought of mixing them in a bowl with some milk for breakfast does cross your mind, but passes shortly as you feel like you can get through the day better anyways.");
					exhaustion -= 4;
					if (percent() <= 25){
						textLP("\r\rUnfortunately, it seems the carbs have gone straight to your "+buttDesc()+" ass, making your "+clothesBottom()+" feel slightly tight around it as it grows larger.");
						butt += Math.floor(percent()/33);
					}
					doEnd();
				}
			}
		}
		else {*/

			textL("You pop the handful into your mouth and munch on them. Doesn't taste too bad. Although, the thought of mixing them in a bowl with some milk for breakfast does cross your mind, but passes shortly as you feel like you can get through the day better anyways.");
			exhaustion -= 4;
			if (hunger >= 80){
				textLP("\r\rUnfortunately, it seems the food you have been eating has gone straight to your "+buttDesc()+" ass, making your "+clothesBottom()+" feel slightly tight around it as it swells.");
				butt += Math.floor(percent()/33);
				hunger -= 20;
			}
			doEnd();
		/*}*/
	}

	//Pussy Fruit
	if (ID == 210) {
		var chance:int = percent();
		textL("You bite into the fold-like cleft of the pussy fruit, sweet juices spilling out around your face and drooling from your chin in long, slimy strands. You devour it shortly and feel great!");
		doHP(15);
		if (hunger >= 70 && vagTotal > 0 && chance <= 50){
			textLP("\r\rHowever, it feels as though the food energy has run straight to your crotch as a warmth spreads around your cunt"+plural(2)+". You squeeze your "+vulvaDesc()+" groin through your "+clothesBottom()+", feeling it swell larger...\r\rYou walk a bit awkwardly afterward, getting used to your now extra-swollen lips and feeling slightly hungry again...");
			vulvaSize += Math.floor(percent()/20);
			doLust(percent()/10, 0);
			hunger -= 20;
		}
		else if (hunger >= 70 && vagTotal > 0){
			textLP("\r\rHowever, it feels as though the juices have run straight to your crotch as a warmth spreads around your cunt"+plural(2)+". You double over as your stomach cramps a little. It feels like your insides are being compressed, your cunt"+plural(2)+" feeling larger within...\r\rThe cramping shortly passes, but the increased size is real and you feel slightly hungry again...");
			vagChange(Math.floor(percent()/20),0);
			doLust(percent()/10, 0);
			hunger -= 20;
		}
		else if (hunger >= 90 && vagTotal > 0){
			textLP("\r\rHowever, it feels as though the juices have run straight to your crotch as a warmth spreads around your cunt"+plural(2)+". You double over as your stomach cramps a little. It feels like your insides are being compressed, your cunt"+plural(2)+" feeling larger within. You squeeze your "+vulvaDesc()+" groin through your "+clothesBottom()+", feeling it swell larger...\r\rThe cramping shortly passes, but you walk awkwardly afterward, getting used to your now extra-swollen lips and feeling slightly hungry again...");
			vulvaSize += Math.floor(percent()/20);
			vagChange(Math.floor(percent()/20),0);
			doLust(percent()/5, 0);
			hunger -= 30;
		}
		doLust(percent()/10, 0);
		doEnd();
	}

	//DairE Pill
	if (ID == 211) {
		textL("Considering you don't have any cows to give it to, you pop the pill into your mouth and gulp it down. Within some moments your "+boobDesc()+" chest feels rather warm...");
		if (udders == true){
			textLP(" And so does your udder.");
			if (udderPlay >= 60) { lactChange(2, 35); }
			else { udderPlay += 20; }
		}
		if (nipplePlay >= 60) {lactChange(1, 25); }
		else { nipplePlay += 20; }
		doLust(percent()/10, 0);
		aff(5, Math.floor((percent()/20)+2), -1);
		doEnd();
	}
	
	//Red Mushroom
	if (ID == 212) {
		textL("You munch on the red mushroom. It doesn't taste terribly good or bad, but a blush quickly heats up your face as your chest turns intensely warm.");
		if (hunger >= 80) {
			textLP(" Your "+clothesTop()+" feels unexpectedly tight, thanks to all the food you've been eating.\r\rAs you look down, you let out a gasp as your "+boobDesc()+" chest swells beneath your "+clothesTop()+", your "+nipDesc()+"nipples pushing against the fabric. You grab the mounds and feel them grow larger, heavier, and more wobbly...\r\rThe warmth soon passes, leaving you bent over slightly as you adjust to the increased weight. You don't feel quite as full anymore though, much of your excess energy used up by this sudden growth.");
			boobChange(Math.ceil(percent()/33));
			hunger -= 20;
		}
		else { textLP(" Then the warmth subsides and your stomach grumbles from the strange food. You do feel less hungry though."); }
		doEnd();
	}
	
	//Wet Cloth
	if (ID == 213){
		bc();
		viewButtonText(0,0,0,0,0,0,0,0,0,1,0,0);
		viewButtonOutline(0,0,0,0,1,0,1,0,0,1,0,0);
		buttonWrite(5, "Cock"+plural(1))
		buttonWrite(7, "Cunt"+plural(2));
		buttonWrite(10, "Breasts");
		buttonWrite(12, "Cancel");
		if (cockTotal > 0) { Choice5.visible = true; }
		if (vagTotal > 0) { Choice7.visible = true; }
		textL("What would you like to rub the wet, slimy cloth on?");
		doListen = function():void{
			if (buttonChoice == 5){
				textL("You rub the slimy cloth around the head"+plural(1)+" of your "+cockDesc()+" cock"+plural(1)+", polishing until there's a nice sheen. You feel a bit aroused from doing so, yet the cloth seems to have finally dried off.\r\rHowever, your cock"+plural(1)+" begin"+plural(3)+" dripping with the slime of the cloth instead...");
				cockMoist++;
				if (cockMoist > 12){ textLP("\r\rHowever, that's not really any different than normal, leaving you fairly unaffected."); }
				doLust(percent()/10, 0);
				doEnd();		
			}
			if (buttonChoice == 7){
				textL("You rub the slimy cloth through the lips of your "+vulvaDesc()+" cunt"+plural(2)+" until your thighs are completely wet. You feel a bit aroused from doing so, yet the cloth seems to have finally dried off.\r\rHowever, your cunt"+plural(2)+" begin"+plural(4)+" dripping with the slime of the cloth instead...");
				vagMoist++;
				if (vagMoist > 12){ textLP("\r\rHowever, that's not really any different than normal, leaving you fairly unaffected."); }
				doLust(percent()/10, 0);
				doEnd();
			}
			if (buttonChoice == 10){
				textL("You rub the slimy cloth over your "+boobDesc()+" breasts and "+nipDesc()+"nipples until they're all completely wet. You feel a bit aroused from doing so, yet the cloth seems to have finally dried off.\r\rHowever, other than make your chest shine erotically, it doesn't really do much.");
				doLust(percent()/10, 0);
				doEnd();
			}
			if (buttonChoice == 12) { 
				itemAdd(213);
				doProcess();
			}
		}
	}

	//Malon's Milk
	if (ID == 214) {
		textL("You down the bottle of milk and feel refreshed!");
		doHP(15 + milkHPMod);
		aff(5, Math.floor(percent()/10), 0);
		exhaustion -= 3;
		doEnd();
	}

	//Pink Ink
	if (ID == 216) {
		dyeThing(ID, 5);
	}

	//Octopus Egg Jelly
	if (ID == 217) {
		textL("You smear the jelly around your genitals. It's so slick and hot, you can't help but feel immensely aroused.");
		if (vagTotal > 0) { 
			textLP(" And as you rub it into your nether-lips, you feel it absorb into the walls of your vagina"+plural(2)+". Slipping a finger in, it doesn't feel much different, until you actually prod a wall. It bends much more easily, as though it were more elastic than before. You could probably shove even larger things in there without feeling pain...");
			vagElastic += .1
		}
		doLust(50, 0);
		doEnd();
	}

	//Bulging Berry
	if (ID == 218) {
		textL("You pop the berry into your mouth. As it pops and gushes with juice within your mouth, your face cringes at how un-sweet it is. Tasting more salty with a thick texture, you swallow it as fast as possible.");
		if (balls > 0 && ballSize > 0 && showBalls == true)	{
			textLP(" Moments later, you feel a warmth in your groin. You squirm as your testicles feel crowded, your scrotum growing tight. You look to see and find an extra testicle in your sack!");
			balls++;
			doLust(percent()/10, 0);
		}
		else if (balls > 0 && ballSize > 0 && showBalls == false)	{
			textLP(" Moments later, you feel a warmth in your groin. You squirm as you feel your cum churning within your body, something extra growing within... Seems as though this berry caused you to grow an extra internal testicle, somehow.");
			balls++;
			doLust(percent()/10, 0);
		}
		else { textLP(" Moments later, you feel a bit of warmth in your groin, but it quickly passes. Now all you're left with is the aftertaste..."); }
		doEnd();
	}

	//Fresh Egg
	if (ID == 219) {
		textL("You crack the egg open and swallow its contents, your belly thanking you for the food.");
		doHP(5);
		if (hunger >= 70)	{ 
			textLP("\r\rHowever, the fertile nature of the egg (and lots of protein) seem to go straight to your hips, making them grow wider.");	
			hips += Math.floor(percent()/50);
			hunger -= 25;
		}
		doEnd();
	}

	//Blonde Dye
	if (ID == 220) {
		dyeThing(ID, 2);
	}

	//Concentrated Pussy Fruit Juice
	if (ID == 221) {
		textL("You down the vial. It's so sweet that your face puckers a bit, the concentrated syrup slowly dripping down your throat.");
		if (vagTotal < 1) { textLP("\r\rYour loins feel quite warm for a moment, but the sensation quickly passes. It does nothing for you other than overwhelm your sweet-tooth.");	}
		if (vagTotal > 0) {
			textLP("\r\rYour loins begin to grow hot. Your hand jerks down to your crotch, rubbing yourself feverishly through your "+clothesBottom()+". The garment quickly grows moist, your arousal spreading "+legWhere(1)+" your "+legDesc(2)+". You can feel your labia swell beneath your grip, your lips bulging out of your grasp, while your belly aches slightly with a bloating sensation. Your clit"+plural(2)+" squeeze"+plural(4)+" between your fingers.\r\rThe change soon passes, but the changing in the size of your nethers is easily noticeable, making you walk awkwardly at first as you become accustomed.");
			vagChange(Math.floor(percent()/20)+2,0);
			vulvaSize += Math.floor(percent()/20)+2;
			clitSize += Math.floor(percent()/20)+2;
			vagMoist++;
		}
		doEnd();
	}

	//Kinky Carrot
	if (ID == 222) {
		textL("Happy with how clean you've gotten it, you munch on the tasty vegetable. It makes you feel healthier to the point where you're nearly hopping with energy.");
		aff(7, Math.floor((percent()/15)+2), -2);
		doHP(4);
		doEnd();
	}

	//Eq Snack
	if (ID == 223) {
		textL("The tasty morsel crumbles delightfully in your mouth.");
		doHP(5);
		if (vagTotal > 0 && hunger >= 90) {
			textLP(" Though it settles in your stomach rather oddly, as you feel some squirming slightly below that, the snack quickly digesting into something else...");
			vagChange(1, 0);
			hunger -= 25;
		}
		if (percent() <= 25) {
			textLP("\r\rAnd you don't quite feel stronger, you feel as though you could hold up more weight.");
			carryMod++;
		}
		doEnd();
	}

	//Lila's Milk
	if (ID == 224) {
		textL("Lila's breastmilk tastes quite sweet, with a slight aftertaste of her other fluids. It makes you feel a bit... tender, so to speak.");
		if (percent() <= 25 && vagMoist < 12 && vagTotal > 0)	{
			textLP(" You feel some extra moistness in your loins as well, the liquid seeming to imprint some of the girl's wetness upon you.");
			vagMoist++;
		}
		if (heat > 0){
			if (heatTime > 0){
				textLP(" There's also a slight sensation of coming closer to your fertile period...");
				if (heatTime > 5) {
					heatTime -= 5;
				}
				if (heatTime < 6){
					heatTime = 1;
				}
			}
			if (heatTime < 0){
				textLP(" There's also a slight tinge of heat that flows through your body, strengthening your estrus for a little longer...");
				heatTime -= 5;
			}
		}
		doEnd();
	}

	//Body Wash
	if (ID == 225) {
		textL("You quickly scrub yourself down with the body wash, feeling so fresh and so clean. Which is kinda odd, considering that you're currently playing a porn game.");
		exhaustion -= 8;
		stats(0,1,0,2);
		doLust(-10, 0);
		doEnd();
	}

	//Felin Tea Mix
	if (ID == 226) {
		textL("You mix the tea with a nice cup of hot water, producing a nice calming aroma. You sip it down and quite quickly feel much more relaxed.");
		exhaustion -= 6;
		doLust(-10, 0);
		if (heat > 0){
			if (heatTime > 0){
				heatTime += 3;
			}
			if (heatTime < 0){
				if (heatTime < -3) {
					heatTime += 3;
				}
				if (heatTime > -4){
					heatTime = -1;
				}
			}
		}
		doEnd();
	}

	//Oral Wash
	if (ID == 227) {
		textL("Taking a swig of the sweet-smelling stuff, you feel it tingle all the way down your throat and spread throughout your body from the inside."); 
		doLust(10, 0);
		stats(0,0,1,0);
		if (skinType == 2){
			textLP(" You then proceed to lick as much of your fur as possible, making it look sleek and shiny");
			stats(0,0,0,1);
		}
		doEnd();
	}

	//Body Oil
	if (ID == 228) {
		textL("You rub the oil all over your "+skinDesc()+", making yourself look shiny and attractive, bringing attention to all the contours of your body."); 
		if (bodyOil > 0) { bodyOil = 5;	}
		else {
			enticeMod += 5;
			bodyOil = 5;
		}
		if (skinType == 1 || skinType == 3){
			textLP(" It also makes your "+skinDesc()+" feel so good to the touch~");
			stats(0,0,0,1);
		}
		doEnd();
	}

	//Eggcelerator
	if (ID == 230) {
		if (vagTotal < 1 /*&& cockSize*cockSizeMod < 72*/) {
			textL("You take out the eggcelerator, realize you don't have an appropriate orifice, and put it back away...");
			itemAdd(230);
			doEnd();
		}
		else /*if (cockSize*cockSizeMod < 72)*/{
			textL("You pull "+pullUD(2)+" your "+clothesBottom()+" and squat down to help spread your "+vulvaDesc()+" lips. Grabbing the eggcelerator with your fingertips, you slip it into "+oneYour(2)+" slit"+plural(2)+", pointy end first. It doesn't take much before physics takes over and the suppository slips up into your deeper spaces where you can feel a slight tingle as it dissolves.");
			if (eggLaying > 0) { 
				if (eggceleratorDose >  (6 + Math.ceil(percent()/20))) {
					textLP("\r\rYou can feel your next egg starting to come along more quickly than before... but it continues to build. Your "+bellyDesc()+" belly lets out a groan as you feel the fresh egg already press against your lips, demanding its way out. You fall back onto your hands, your "+legDesc(6)+" in the air as you lay it with such expediency that your thighs quiver and your pussy gasps in surprise. Yet, the sensation doesn't end, as more eggs begin to develop almost instantly inside your womb, one by one forcing their way through your passageway. Your "+hipDesc()+" hips jerk and your "+clitDesc()+" clit"+plural(2)+" stand"+plural(4)+" tall with a strange arousal as you thrust into the air again and again to plop out egg after egg. Part of you wants to furiously rub yourself as the eggs nearly launch from your spread cunt, but the rapid pace of the laying makes your body a twitching, seizing mess as you cry out in desparation. So many eggs fly out of you into a pile that you can hardly save them all; quite a few crack and ooze over the others. The round, smooth, slick object having their way with your sensitive flesh eventually makes you quake with an odd orgasm, somewhat powerful but not quite fulfilling, making you collapse back onto the ground as your womb pops out the rest...\r\rOver half an hour passes after your egg-laying extravaganza before you can collect yourself. You sit up to wipe the slime from your pussy, gazing upon the pile of eggs you have laid until you finally go through and pull out the good ones. You also notice that your womb seems to have completely calmed down afterwards, the eggcelerator having been purged from your system. It seems you had taken so many doses that your body could no longer handle it...");
					i = 0;
					while (i < eggceleratorDose){
						itemAdd(219);
						i++;
					}
					doLust(Math.floor(-sen/3), 2, 2);
					eggceleratorTime = 0;
					eggRate -= eggceleratorDose;
					eggceleratorDose = 0;	
					hrs = 1;
				}
				else {
					textLP("\r\rAlready you can somewhat feel that the next egg will be coming along more quickly than before and hope you'll be prepared for it."); 
					eggRate++;
					eggceleratorTime = 30;
					eggceleratorDose++;
				}
			}
			else { textLP("\r\rOther than the tingling, it doesn't seem to do much... It would probably be more useful if you could actually lay eggs."); }
			doEnd();
		}
		/*else {
			textL("What would you like to insert the eggcelerator into?");
			viewButtonText(0,0,0,0,0,0,0,0,0,0,0,0);
			viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
			buttonWrite(5, "Pussy");
			buttonWrite(7, "Cock");
			if (vagTotal > 0) { Choice5.visible = true;	}
			if (cockTotal > 0 && cockSize*cockSizeMod >= 72) { Choice7.visible = true;	}
			doListen = function():void{
				if (buttonChoice == 5) {
					textL("You pull "+pullUD(2)+" your "+clothesBottom()+" and squat down to help spread your "+vulvaDesc()+" lips. Grabbing the eggcelerator with your fingertips, you slip it into "+oneYour(2)+" slit"+plural(2)+", pointy end first. It doesn't take much before physics takes over and the suppository slips up into your deeper spaces where you can feel a slight tingle as it dissolves.");
					if (eggLaying > 0) { 
						if (eggceleratorDose >  (6 + Math.ceil(percent()/20))) {
							textLP("\r\rYou can feel your next egg starting to come along more quickly than before... but it continues to build. Your "+bellyDesc()+" belly lets out a groan as you feel the fresh egg already press against your lips, demanding its way out. You fall back onto your hands, your knees in the air as you lay it with such expediency that your thighs quiver and your pussy gasps in surprise. Yet, the sensation doesn't end, as more eggs begin to develop almost instantly inside your womb, one by one forcing their way through your passageway. Your "+hipDesc()+" hips jerk and your "+clitDesc()+" clit"+plural(2)+" stand"+plural(4)+" tall with a strange arousal as you thrust into the air again and again to plop out egg after egg. Part of you wants to furiously rub yourself as the eggs nearly launch from your spread cunt, but the rapid pace of the laying makes your body a twitching, seizing mess as you cry out in desparation. So many eggs fly out of you into a pile that you can hardly save them all; quite a few crack and ooze over the others. The round, smooth, slick object having their way with your sensitive flesh eventually makes you quake with an odd orgasm, somewhat powerful but not quite fulfilling, making you collapse back onto the ground as your womb pops out the rest...\r\rOver half an hour passes after your egg-laying extravaganza before you can collect yourself. You sit up to wipe the slime from your pussy, gazing upon the pile of eggs you have laid until you finally go through and pull out the good ones. You also notice that your womb seems to have completely calmed down afterwards, the eggcelerator having been purged from your system. It seems you had taken so many doses that your body could no longer handle it...");
							i = 0;
							while (i < eggceleratorDose){
								itemAdd(219);
								i++;
							}
							eggceleratorTime = 0;
							eggRate -= eggceleratorDose;
							eggceleratorDose = 0;			
							hrs = 1;
						}
						else {
							textLP("\r\rAlready you can somewhat feel that the next egg will be coming along more quickly than before and hope you'll be prepared for it."); 
							eggRate++;
							eggceleratorTime = 30;
							eggceleratorDose++;
						}
					}
					else { textLP("\r\rOther than the tingling, it doesn't seem to do much... It would probably be more useful if you could actually lay eggs."); }
					doEnd();
				}
				if (buttonChoice == 7) {
					outputMainText("For some reason, you decided it was a good idea to use this VAGINAL suppository on you massive urethra in "+oneYour(1)+" cock"+plural(1)+". //HERE
				}
			}
		}*/
	}

	//Desiccating Sand
	if (ID == 231) {
		if (currentState != 2) { 
			textL("You can only use this dangerous sand in battle. You put the sand back into your bag."); 
			itemAdd(231);
			doEnd();
		}
		else {
			dmg = Math.floor(Math.random()*(1+40-20))+20;
			textL("You throw the pile of sand at the "+enemyName()+". It cringes and winces as the sand sucks the moisture from its body, dealing "+dmg+" damage!");
			doeHP(-dmg);
			if (percent() <= 25) {
				textLP("\r\rHowever, the wind catches some of the sand and it blow back at you! ");
				rndArray =["Desi Sand"];
				if (cockSizeMod > .5 && cockTotal > 0) { rndArray.push(1); }
				if (vagSizeMod > .5 && vagTotal > 0) { rndArray.push(2); }
				if (cumMod > .5 && showBalls == true && cockTotal > 0) { rndArray.push(3); }
				if (milkMod > 0) { rndArray.push(4); }
				if (pregnancyTime > 200) { rndArray.push(5); }
				rndArray.push(6);
				chooseFrom();
				if (rndResult == 1)	{
					textLP("The stuff rushes across your "+cockDesc()+" cock"+plural(1)+", seeping in deep and causing some permanent shrinkage.");
					cockSizeMod -= .05;
				}
				else if (rndResult == 2)	{
					textLP("The stuff rushes between your legs and you can feel some slip up into your passage"+plural(2)+", seeping in deep and resulting in some permanent shriveling.");
					vagSizeMod -= .05;
				}
				else if (rndResult == 3)	{
					textLP("The stuff rushes across your "+ballDesc()+" balls, sinking through the scrotum and causing them to lose some of their efficiency.");
					cumMod -= .1;
				}
				else if (rndResult == 4)	{
					textLP("The stuff rushes across your "+boobDesc()+" breasts, sinking into your mammary glands and reducing their power.");
					milkMod -= 5;
				}
				else if (rndResult == 5)	{
					textLP("The stuff rushes across your "+bellyDesc()+" belly. It doesn't affect the life within, but you can feel your womb wane as it loses some of its future fertility.");
					pregRate -= .05;
					pregChanceMod -= 1;
					extraPregChance -= 1;
				}
				else {
					textLP("Thankfully, it barely touches you and you're left unaffected.");
				}
			}
			if (currentState == 2) { doEnd(); }
		}
	}

	//Flying Carpet
	if (ID == 232){
		if (currentState != 1) { 
			textL("You cannot activate the flying carpet during battle or while attempting to masturbate. It takes too long to set up during battle and it is not the kind of 'carpet-munching' you should be doing while masturbating."); 
			doEnd();
		}
		else {
			viewButtonText(0,0,0,0,0,1,0,0,0,0,0,0);
			viewButtonOutline(0,0,0,0,0,1,0,0,0,0,0,0);
			buttonWrite(6, "Stay Here");
			textL("Where would you like to go?");
			if (currentZone == 1) {				
				if (foundTieden == true) {
					Choice1.visible = true;
					Choice1Outline.visible = true;
					buttonWrite(1, "Tieden");
				}
				if (foundFirmshaft == true) {
					Choice10.visible = true;
					Choice10Outline.visible = true;
					buttonWrite(10, "Firmshaft");
				}
			}
			if (currentZone == 2) {				
				if (foundSoftlik == true) {
					Choice3.visible = true;
					Choice3Outline.visible = true;
					buttonWrite(3, "Softlik");
				}
				if (foundSizCalit == true) {
					Choice5.visible = true;
					Choice5Outline.visible = true;
					buttonWrite(5, "Siz'Calit");
				}
				if (foundOviasis == true) {
					Choice10.visible = true;
					Choice10Outline.visible = true;
					buttonWrite(10, "Oviasis");
				}
				if (foundSanctuary == true) {
					Choice11.visible = true;
					Choice11Outline.visible = true;
					buttonWrite(11, "Sanctuary");
				}
			}
			if (currentZone == 3) {				
				if (foundSoftlik == true) {
					Choice7.visible = true;
					Choice7Outline.visible = true;
					buttonWrite(7, "Softlik");
				}
				if (foundSizCalit == true) {
					Choice9.visible = true;
					Choice9Outline.visible = true;
					buttonWrite(9, "Siz'Calit");
				}
			}
			if (currentZone == 4) {				
				if (foundTieden == true) {
					Choice2.visible = true;
					Choice2Outline.visible = true;
					buttonWrite(2, "Tieden");
				}
				if (foundFirmshaft == true) {
					Choice7.visible = true;
					Choice7Outline.visible = true;
					buttonWrite(7, "Firmshaft");
				}
				if (foundOviasis == true) {
					Choice11.visible = true;
					Choice11Outline.visible = true;
					buttonWrite(11, "Oviasis");
				}
			}
			if (currentZone == 6) {				
				if (foundSizCalit == true) {
					Choice1.visible = true;
					Choice1Outline.visible = true;
					buttonWrite(1, "Siz'Calit");
				}
				if (foundFirmshaft == true) {
					Choice2.visible = true;
					Choice2Outline.visible = true;
					buttonWrite(2, "Firmshaft");
				}
			}
			doListen = function():void{
				inDungeon = false;
				if (currentZone == 1) {
					if (buttonChoice == 1) { regionChange(3); }
					if (buttonChoice == 10) { regionChange(2); }
				}

				else if (currentZone == 2) {
					if (buttonChoice == 3) { regionChange(1); }
					if (buttonChoice == 5) { regionChange(4); }
					if (buttonChoice == 10) { regionChange(6); }
					if (buttonChoice == 11) { regionChange(12); }
				}
				else if (currentZone == 3) {
					if (buttonChoice == 7) { regionChange(1); }
					if (buttonChoice == 9) { regionChange(4); }
				}
				else if (currentZone == 4) {
					if (buttonChoice == 2) { regionChange(3); }
					if (buttonChoice == 7) { regionChange(2); }
					if (buttonChoice == 11) { regionChange(6); }
				}
				else if (currentZone == 6) {
					if (buttonChoice == 1) { regionChange(4); }
					if (buttonChoice == 2) { regionChange(2); }
				}
				if (buttonChoice == 6) { 
					doProcess();
				}
				else {
					textL("You step onto the carpet and with a gentle woosh, it lifts into the air and darts off in the direction of your desired location. Within just a couple of hours, you land in "+regionName(currentZone)+", just like you wanted.");
					hrs = 2;
					doEnd();
				}				
			}
		}
	}

	//Fellatio Rod
	if (ID == 235) {
		textL("You have equipped the fellatio rod.");
		weapon = 235; 
		doEnd();
	}

	//Squeaky Cheese
	if (ID == 238) { 
		textL("Nibbling the cheese, the delicious flavor melts in your mouth and feels so good going down. It feels good just eating it, like you could go hunting for lots more. Though... Hey, did your clothes get looser, or is it just your imagination?");
		tallness -= 1;
		aff(8, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Shiny Rock
	if (ID == 239) { 
		textL("You take out the rock and stare at it, intently focused on how shiny it is. Your mind grows sharper, allowing you to focus even harder and... Wait, what? One last glint of shininess and the rock suddenly became dull. Maybe you stared too hard? Either way, you toss the now dull rock, no longer interested in it.");
		stats(0,1,0,0);
		aff(9, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Auburn Dye
	if (ID == 240) {
		dyeThing(ID, 6);
	}

	//Brown Dye
	if (ID == 241) {
		dyeThing(ID, 7);
	}

	//Grey Dye
	if (ID == 242) {
		dyeThing(ID, 8);
	}

	//White Dye
	if (ID == 243) {
		dyeThing(ID, 9);
	}

	//Snuggle Ball
	if (ID == 244) {
		if (snuggleBall == false) {
			textL("You take out the snuggle ball and squeeze it against your chest, hugging it gleefully. So squishy and soft, the pleasant sensation of it forming around your body as you compress it is oh so nice~ Though it doesn't stop forming around your body...\r\rLiquidy tendrils lash out from the ball, sticking to your face and arms, belly and "+legDesc(2)+". You don't have time to resist as it wraps around your body, seeping past your "+currentClothes()+" and coating your "+skinDesc()+".\r\rOver within moments, you stand there and gradually try to move. A plush and soft layer, slightly shiny and malleable just like the ball, covers all your "+skinDesc()+". It doesn't impede your movement or actions, almost like it was an extra layer of skin, and doesn't do much but make you... snuggly.");
			snuggleBall = true;
			doEnd();
		}
		else {
			textL("Would you like to try and remove the plush shiny layer of cuddliness that covers your "+skinDesc()+"?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					if (percent()/2 > str) {
						textL("You pull and tug at the extra layer of 'skin'. It stretches from your body, but yanks itself out of your grip and snaps back in place. The little bugger just doesn't want to let go!");
					}
					else { 
						textL("You pull and tug at the extra layer of 'skin'. It stretches from your body and with a bit more exertion it snaps off, coalescing back down into a little ball in your hand. Your "+skinDesc()+" now free of the little bugger, you put it back in your bag to deal with later."); 
						snuggleBall = false;
					}
					doEnd();
				}
				else { doProcess(); }
			}
		}
	}

	//Facial Mud
	if (ID == 245) { 
		textL("You pour the mud out into your hands and slather it all over your face. You let it sit there for a few moments, enjoying the warm sensation and feeling it creep into your pores and make your "+skinDesc()+" feel nice.\r\rYou soon wipe it off once it has had its effect, but tickle your nose a little in the process and make you laugh until you oink- err... snort.");
		stats(0,0,0,1);
		aff(10, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Fertile Gel
	if (ID == 246) { 
		textL("You pour out the gel into your hand and rub it into your loins, making sure it gets in niiice and deeeep.");
		if (vagTotal > 0) {
			textLP(" Your womb seems to soak up the warmth of the gel, feeling more receptive to semen~");
			if (fertileGel == 0) { pregChanceMod += 10; }
			fertileGel += 24;
		}
		else { textLP(" However, you're not sure why you did that, since you don't exactly have a womb to make more fertile... Oh well, you're a pervert anyways.");}
		doEnd();
	}

	//Support Harness
	if (ID == 247) { 
		if (suppHarness == false) {
			textL("You wrap the harness around your back with the latches in front of you so you can see what you're doing. You gauge how tight they should be for your chest, crotch, and other various anatomy to fit before twisting it around. Then you stuff your chest into the appropriate sling, and continue on down until the multiple slings hold up your various weighty bits snugly, giving you a good deal more support. You can't exactly carry the world on your shoulders, but you can at least carry a bit more of yourself now.");
			carryMod += 50;
			suppHarness = true;
		}
		else {
			carryMod -= 50;
			if (doWeight())	{
				textL("You reach around behind back and fiddle with the latches of the harness, forcing them open. Your anatomy immediately falls out of the slings, taken you with it as you crash to the ground, completely anchored by your own body. You at least manage to finish unequipping the harness and put it in your bag, but now you've got some issues...");
				doWeight();
			}
			else {
				textLP("You reach around behind back and fiddle with the latches of the harness, forcing them open. Your bits bounce out as they're set free, making you jerk as the weight falls back upon your body. You then stuff the harness back into your bag, no longer equipped, and prepare yourself to continue on with the unsupported weight.");
			}			
			suppHarness = false;
		}
		doEnd();
	}

	//Breeder Potion
	if (ID == 248) { 
		textL("You gulp down the potion yourself, rather than giving it to some animal that it was intended for.");
		if (vagTotal > 0) {	
			textLP(" Your womb immediately begins to warm up a little, your ovaries 'feeling' like they're working harder. It's strange to describe, but your body quickly adapts and the warmth settles down."); 
			extraPregChance += 3;
		}
		else { textLP(" However, you don't really notice any effect when it comes to having a larger litter... You kinda can't have litters without a womb to birth them from, come to think of it."); }
		if (heat > 0) {
			textLP(" Whereas your loins seem to feel flushed. Not exactly going into heat just from the potion, but more feeling like they will do so more readily now...");
			heatMaxTime -= Math.floor(heatMaxTime*.1);
		}
		doEnd();
	}

	//Treant's Tear
	if (ID == 249) { 
		textL("You drop the small tear into your mouth, swallowing it easily with a quick gulp. You don't even feel it in your stomach; it doesn't seem to do anything at first.\r\rHowever, a sensation of wilting envelopes your appendages, like they're growing weaker.");
		if (cockTotal > 0 || vagTotal > 0) {
			textLP(" The sensation coalesces into your crotch, focusing within your extra genitalia.");
			if (cockTotal > 0) { 
				tallness += Math.ceil(cockTotal/4)*2;
				cockChange(0, -Math.ceil(cockTotal/4)); 
			}
			if (balls > 2) {
				tallness += Math.ceil(balls/4);
				if (showBalls == true) { textLP("\r\r"+Math.ceil(balls/4)+" of your testicles also shrivel up inside your scrotum, being absorbed back into your body."); }
				balls -= Math.ceil(balls/4);

			}
			if (vagTotal > 0) { 
				tallness += Math.ceil(vagTotal/4)*2;
				vagChange(0, -Math.ceil(vagTotal/4)); 
			}
			textLP("\r\rThen, once you have lost the extra genitals, the ground below you falls away! Or, more accurately, your heads shoots upward as your body rapidly begins to grow, taller and taller to compensate for the genitals you have lost! You have shed your extra 'limbs' and grown towards the sky.");
		}
		else {
			textLP(" The sensation coalesces into your crotch for an instance, but quickly dissolves. Then... that's it.\r\rSeems whatever the tear was supposed to do didn't affect you. So much for that.");
		}
		doEnd();
	}

	//Foomp Bomb
	if (ID == 250) {
		if (currentState != 2) { 
			textL("You can only use this escape bomb in battle, it's not really useful otherwise. You put the foomp bomb back into your bag."); 
			itemAdd(250);
			doEnd();
		}
		else {
			textL("Needing a quick escape, you throw the foomp bomb at the enemy. It explodes on contact with a cloud of magical dust and, just as its name implies, there's a sort of \"foomp!\" sound. As the dust clears, you can't help but giggle at the results. The "+enemyName()+"'s whole body has ballooned to amusing proportions; inflated by the bomb.");
			if (eGen == 1 || eGen == 3) { textLP(" The "+enemyName()+"'s cock propels forward with the growth, flopping down onto the ground many times larger than it was, anchoring itself do the ground and preventing its owner from moving."); }
			if (eGen == 2 || eGen == 3) { textLP(" The "+enemyName()+"'s breasts swell to obscene sizes, making her fall forward and be cushioned by the pillowy masses, unable to stand."); }
			if (eGen == 4) { textLP(" The "+enemyName()+"'s midsection grows so large and round that it is unable to move at all."); }
			textLP("\r\rHowever, the bomb's effects are already beginning to wear off as you stare at its results. Taking advantage of this short opportunity, you turn and dash away before the "+enemyName()+" can shrink back down to a manageable size and continue the fight.");
			currentState = 1;
			hrs += 1;
			doEnd();
		}
	}

	//Plump Quat
	if (ID == 251) {
		textL("Biting into the plump fruit, the sweet flesh melts delightfully in your mouth with a nice citrusy sour tinge. Gulping it down and feeling it splash into your stomach and warm your insides makes you crave even more. Your mouth immediately bites off another chunk of the fruit, then another, insatiably devouring the delicious thing. The flesh slips down your throat and sinks into your stomach, filling you up so delightfully~\r\rBut before you know it, you've already eaten the whole thing. You glutton. Though there's no more left, you can still feel it digesting inside, which in itself is rather pleasant...");
		bellyMod += 10;
		plumpQuats += 6;
		doEnd();
	}

	//Bug Egg
	if (ID == 253) {
		if (tail == 12) {
			viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
			viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
			buttonWrite(5, "Eat");
			buttonWrite(7, "Ovipositor");
			textL("Considering the egg is just about the right size for the hole in your large ovipositor tail, what would you like to do with it?");
			doListen = function():void{
				if (buttonChoice == 5) {
					textL("You pop the egg into your mouth and bite down. The gooey stuff splorts about your mouth and... isn't exactly tasty. Even swallowing it makes your belly want to rebel. The act kills off some of your arousal, at least.");
					doLust(-3, 0);
					doEnd();
				}
				if (buttonChoice == 7){
					textL("Taking the chance, you bend around yourself and press the squishy egg up against the hole at the end of your blunted tail. You wince and shudder as you push it in, the passage inside sensitive as it quickly engulfs the sphere, arousing you slightly. Then it's gone.\r\rYou jiggle your "+buttDesc()+" butt, feeling the wide fleshy tail flop up and down on it, and wait a few moments as you hear and sense some groaning within, similar to the sounds of digestion. Eventually you feel a pressure against the inside of the hole and you press down, your hand ready at the tip to catch the slimy thing as it pops back out.\r\r");
					var chance:int = percent();
					if (chance <= 8) { 
						textLP("The egg now glows with a sort of regal luster, slightly larger than before with a heavier weight.");
						itemAdd(537);
					}
					else if (chance <= 25) {
						textLP("The egg now feels tougher, less squishy in your hand than before.");
						itemAdd(538);
					}
					else if (chance <= 55) {
						textLP("The egg now looks somewhat dimmer, but also has some more warmth to it than before.");
						itemAdd(539);
					}
					else {
						textLP("The egg now seems rather bland, not as gooey and more starchy than before.");
						itemAdd(540);
					}
					doEnd();
				}
			}
		}
		else {
			textL("You pop the egg into your mouth and bite down. The gooey stuff splorts about your mouth and... isn't exactly tasty. Even swallowing it makes your belly want to rebel. The act kills off some of your arousal, at least.");
			doLust(-3, 0);
			doEnd();
		}
	}

	//Fragrant Flower
	if (ID == 255) { 
		textL("You bring the flower to your nose and inhale deeply. It smells so good, the delightful scent filling your nostils and your lungs and leaving you feeling quite tingly all over.\r\rHowever, once you look back down afterwards, the flower has wilted and no longer has any scent at all...");
		stats(0,0,0,2);
		aff(11, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	//Nectar Candy
	if (ID == 256) { 
		textL("You suck on the hard candy, the nutrient-rich ingredients making you feel stronger as the sweet flavors fill your belly.");
		if (eggLaying > 0) {
			textLP(" And your womb gets a good workout, the pro-something bacteria or whatever helping with its functions. Or something.");
			eggTime -= 4;
		}
		stats(1,0,0,0);
		aff(12, Math.floor((percent()/15)+2), -2);
		doEnd();
	}

	

	//Too Human Potion
	if (ID == 257) { 
		textL("You drink down the potion. You immediately begin to feel very odd...");
		if (legType != 1002) {
			humanTaurAffinity = 100;
			legChange(1002);
			textLP("\r\rFor a normal human, having a second body would -technically- be more human than a human. Though you can see why it was a failure...");
		}
		else { textLP("\r\rBut the feeling passes as nothing happens."); }
		doEnd();
	}

	//Tainted Potion
	if (ID == 258) { 
		textL("You drink down the potion. You immediately begin to feel very odd...");
		if (legType != 1001) {
			cowTaurAffinity = 100;
			legChange(1001);
			textLP("\r\rIt's probably best that alchemist didn't sell it to others...");
		}
		else { textLP("\r\rBut the feeling passes as nothing happens."); }
		doEnd();
	}

	//Sweet & Sour Candy
	if (ID == 259) { 
		textL("You pop the candy into your mouth and let it slowly dissolve. You immediately realize that the 'sour' comes before the 'sweet', despite the name, and your face puckers up with the intensity, your pain subsiding in relation.");
		if (vagTotal > 0) {
			textLP(" You pucker so hard that you can feel your cunt"+plural(2)+" stretch further into your body from the force, permanently slightly larger...");
			vagSizeMod += .05;
		}
		textLP("\r\rThen the sweetness comes along, your body relaxing and tingling from the blissful flavor.");
		if (cockTotal > 0)	{
			textLP(" You relax your body so much that your cock"+plural(1)+" droop out even further than usual, so far that they're permanently slightly longer...");
			cockSizeMod += .05;
		}
		doHP(5);
		doLust(5, 0);
		doEnd();
	}

	//Succubus Draft
	if (ID == 260) { 
		textL("You gulp down the draft. The stuff is very thick and heady, nearly burning your throat on the way down. The warmth spreads from your belly, your mind becoming more focused while your body grows stronger, more mature, and taller.");
		if (cockTotal > 0) {
			textLP(" Your "+cockDesc()+" cock"+plural(1)+" also grow"+plural(3)+" from the concentrated masculinity, bulging in your "+clothesBottom()+".");
			cockChange(2, 0);
		}
		if (vagTotal > 0) {
			textLP(" However, unexpectedly, the concentrated masculinity causes your "+clitDesc()+" clit"+plural(2)+" to grow as well, pushing out your "+clothesBottom()+" further...");
			clitSize += 2;
		}
		body += 1;
		tallness += 1;
		stats(2,1,0,0);
		doEnd();
	}


	//Milk Bottle
	if (ID == 500) {
		textL("You down the bottle of milk and feel refreshed!");
		doHP(10 + milkHPMod);
		exhaustion -= 2;
		doEnd();
	}

	//Milk Jug
	if (ID == 501) {
		textL("You guzzle down the jug of milk and feel very refreshed! And you feel like you have a rather full bladder...");
		doHP(40 + milkHPMod);
		exhaustion -= 6;
		doEnd();
	}

	//Milk Barrel
	if (ID == 502) {
		textL("You pour the milk out of the barrel into 4 jugs...");
		itemAdd(501);
		itemAdd(501);
		itemAdd(501);
		itemAdd(501);
		doEnd();		
	}

	//Lust Draft
	if (ID == 503) {
		textL("You take a swig of the draft, your loins warming within seconds.");
		doLust(20, 0);
		doEnd();
	}

	//Rejuvenating Potion
	if (ID == 504) {
		textL("You down the potion, your body feeling much better than before.");
		doHP(30);
		doLust(-15, 0);
		doEnd();
	}

	//Bad Experiment
	if (ID == 505) {
		if (currentState != 2) { 
			textL("You can only use this explosive potion in battle. You put the bad experiment back into your bag."); 
			itemAdd(505);
			doEnd();
		}
		else {
			var dmg:int = Math.floor(Math.random()*(1+20-10))+10;
			textL("You pull the bad experiment from your bag and toss it at the "+enemyName()+". The crude stuff explodes, far enough away to not harm you, dealing "+dmg+" damage!");
			doeHP(-dmg);
			doBattle();
		}
	}

	//Express Pregnancy Potion
	if (ID == 506) {
		if (pregCheck(0)) {
			textL("Drinking this potion, you can feel your "+bellyDesc()+" belly quiver, the offspring inside moving about. With a groan, you double over for a moment, your belly stretching beneath your hands. You can almost hear the "+skinDesc()+" creak, growing taut!");
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i] == true) { pregArray[i+3] += 50; }
				i += 5;
			}
			textLP("\r\rA few moments pass before you gather yourself, standing upright once more. You are slightly more swollen now, wielding a "+bellyDesc()+" gut instead. Fortunately, both you and your offspring are uninjured, though it'll take a bit to get used to the sudden increase in size.");
			doEnd();
		}
		else {
			textL("For some reason, you thought it necessary to drink this potion. It... doesn't seem to have any effect. Though you do strangely feel like you have to go to the bathroom all of a sudden...");
			doEnd();
		}
	}

	//Ball Sweller
	if (ID == 507) {
		if (balls > 0 && showBalls == true) {
			textL("Downing the potion, you quickly begin to feel a slight ache in your "+ballDesc()+" testicles, like you haven't had an orgasm in a while...");
			blueBalls += 30;
			doEnd();
		}
		else if (balls > 0 && showBalls == false) {
			textL("Downing the potion, you quickly begin to feel a slight ache in your abdomen, like you haven't had an orgasm in a while...");
			blueBalls += 30;
			doEnd();
		}
		else {
			textL("Despite not having any balls to speak of, you drink this potion anyways. It does nothing. I hope you're happy.");
			doEnd();

		}
	}

	//S Lust Draft
	if (ID == 508) {
		textL("You take a swig of the draft, your loins burning hot within seconds.");
		doLust(50, 0);
		doEnd();
	}

	//S Rejuvenating Potion
	if (ID == 509) {
		textL("You down the potion, your body feeling immensely better than before.");
		doHP(70);
		doLust(-40, 0);
		doEnd();
	}

	//S Bad Experiment
	if (ID == 510) {
		if (currentState != 2) { 
			textL("You can only use this explosive potion in battle. You put the bad experiment back into your bag."); 
			itemAdd(510);
			doEnd();
		}
		else {
			dmg = Math.floor(Math.random()*(1+40-20))+20;
			textL("You pull the super bad experiment from your bag and toss it at the "+enemyName()+". The super crude stuff explodes superbly, far enough away to not harm you, dealing a super "+dmg+" damage!");
			doeHP(-dmg);
			doBattle();
		}
	}

	//S Express Pregnancy Potion
	if (ID == 511) {
		if (pregCheck(0)) {
			textL("Drinking this potion, you can feel your "+bellyDesc()+" belly shake, the offspring inside moving about. With a groan, you double over for a moment, your belly stretching beneath your hands. You're pretty sure you can hear the "+skinDesc()+" creak, growing taut, to the point where you fear it will tear!");
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i] == true) { pregArray[i+3] += 120; }
				i += 5;
			}
			textLP("\r\rA few moments pass before you gather yourself, standing upright once more, having a bit of difficulty doing so. You are much more swollen now, wielding a "+bellyDesc()+" gut instead. Fortunately, both you and your offspring are uninjured, though you're unsure if you'll be able to get used to this sudden increase in size...");
			doEnd();
		}
		else {
			textL("For some reason, you thought it necessary to drink this potion. It... doesn't seem to have any effect. Though you do strangely wish there was a bathroom here all of a sudden...");
			doEnd();
		}
	}

	//S Ball Sweller
	if (ID == 512) {
		if (balls > 0 && showBalls == true) {
			textL("Downing the potion, you quickly begin to feel a great ache in your "+ballDesc()+" testicles, like you haven't had an orgasm in sooo long!");
			blueBalls += 70;
			doEnd();
		}
		else if (balls > 0 && showBalls == false) {
			textL("Downing the potion, you quickly begin to feel a great ache in your abdomen, like you haven't had an orgasm in sooo long!");
			blueBalls += 70;
			doEnd();
		}
		else {
			textL("Despite not having any balls to speak of, you drink this potion anyways. It does nothing. I hope you're happy.");
			doEnd();
		}
	}

	//Gender Swap Potion
	if (ID == 513) {
		if (gender == 1) {
			textL("You ingest the potion and quickly begin to feel its effects. You pull "+pullUD(2)+" your "+clothesBottom()+" and watch as your "+cockDesc()+" cock"+plural(1)+" shrink more and more before eventually disappearing into your groin. Then, you hug your belly as you feel your insides wrench, making room for a small amount of vaginal flesh inside.");
			if (showBalls == true) { textLP(" Your "+ballDesc()+" balls squeeze up "+legWhere(1)+" your "+legDesc(2)+" before eventually melding into your "+skinDesc()+", leaving behind 1 tiny pair of feminine lips.");	}
			if (showBalls == false) { textLP(" The skin "+legWhere(1)+" your "+legDesc(2)+" swells slightly, forming two tiny mounds, 1 pair of new feminine lips."); 	}
			textLP(" The lips part, the fresh air making you shiver as it passes across the moist flesh within. Your hand passes over your clitoris, making you shiver slightly, before you dip your finger into your new cunny, amazed at the sensation of being penetrated like that. For all intents and purposes, you are now a girl.");
			balls = 0;
			ballSize = 0;
			cockSize = 0;
			stats(0,0,-(2*(cockTotal-1)),0);
			cockTotal = 0;
			humanCocks = 0;
			horseCocks = 0;
			wolfCocks = 0;
			catCocks = 0;
			lizardCocks = 0;
			rabbitCocks = 0;
			bugCocks = 0;

			vagBellyChange(1,1);
			vagTotal = 1;
			pregArray = [false, 0, 0, 0, 0];
			vagSize = 1;
			vulvaSize = 1;
			clitSize = 1;

			gender = 2;

		}
		else if (gender == 2) {
			textL("You ingest the potion and quickly begin to feel its effects. You hug your belly as you feel your insides wrench, your vaginal flesh shrinking within.");
			cockChange(1,1);
			textLP("\r\rHowever, it doesn't last long as the last of your vagina"+plural(2)+" shrink"+plural(4)+" to nothing, your "+vulvaDesc()+" lips disintegrating back against your groin before finally vanishing, making you a boy for all intents and purposes.");
			
			vagChange(-1, 0);
			vagBellyChange(-vagSize, -vagTotal);

			stats(0,0,-(2*(vagTotal-1)),0);
			vagSize = 0;
			vagTotal = 0;
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i] == false) { 
					pregArray.splice(i, 5);
					i = -5;
				}
				i += 5;
			}
			vulvaSize = 0;
			clitSize = 0;

			gender = 1;
		}
		else if (gender == 3) {
			textL("You ingest the potion and quickly begin to feel its effects. You hug your belly as you feel your insides wrench, your vaginal flesh shrinking within. Your "+clothesBottom()+" feels loser as your "+cockDesc()+" bulges dwindle as well.");
			if (showBalls == true) { textLP(" Even your testicles shrivel up, growing smaller and smaller."); }
			textLP("\r\rBy the time you finally pull "+pullUD(2)+" your "+clothesBottom()+", all your attributes are like that of a childs...");

			vagChange(-1, 0);
			vagBellyChange(-(vagSize - 1), 0);
			ballSize = 1;
			cockSize = 1;
			vagSize = 1;
			vulvaSize = 1;
			clitSize = 1;
		}
		else if (gender == 0) {
			var chance:int = percent();
			textL("You ingest the potion and quickly begin to feel its effects.");
			if (chance <= 40) { cockChange(1,1); }
			if (chance > 40 && chance <= 80) { vagChange(1,1); }
			if (chance > 80) { 
				cockChange(1,1); 
				vagChange(1,1);
			}
		}

		doEnd();
	}

	//Masochism Potion
	if (ID == 514) {
		textL("After drinking the potion, your body feels tingly all over. You have the odd feeling like it would be fun to be whipped right about now...");
		masoPot += 24;
		doEnd();
	}

	//Black Dye
	if (ID == 515) {
		dyeThing(ID, 1);
	}

	//Baby Free Potion
	if (ID == 516) {
		textL("Taking the potion, you sudden feel less... fertile than before. You might still be a little fertile, but you suspect you can go out 'clubbing' for the next few days and not have to worry so much about a little extra weight in a few more. If you knew what any of that even meant.");
		babyFree += 72;
		doEnd();
	}

	//Potency Potion
	if (ID == 517) {
		if (showBalls == true && balls > 0) { textL("Within seconds of drinking this potion, you can feel your balls grow slightly warmer. You can almost hear them hum as they work harder to produce more fun goop for your cock"+plural(1)+"."); }
		else if (showBalls == true && balls > 0) { textL("Within seconds of drinking this potion, you can feel your abdomen grow slightly warmer. You can almost hear something inside hum as it works harder to produce more fun goop for your cock"+plural(1)+"."); }
		else { textL("If you had balls to be kicked in, they'd probably be feeling more active right now. Not that you would know, you ball-less freak."); }
		cumMod += 0.2;
		doEnd();
	}

	//S Gender Swap Potion
	if (ID == 518) {
		if (gender == 1) {
			textL("You ingest the potion and quickly begin to feel its effects. You pull "+pullUD(2)+" your "+clothesBottom()+" and watch as your "+cockDesc()+" cock"+plural(1)+" shrink more and more before eventually disappearing into your groin. Then, you hug your belly as you feel your insides wrench, making room for an equal amount of vaginal flesh inside.");
			if (showBalls == true) { textLP(" Your "+ballDesc()+" balls squeeze up "+legWhere(1)+" your "+legDesc(2)+" before eventually melding into your "+skinDesc()+", forming mounds of equal size until you have "+cockTotal+" pair"+plural(1)+" of feminine lips.");	}
			if (showBalls == false) { textLP(" The skin "+legWhere(1)+" your "+legDesc(2)+" swells slightly, forming mounds of plush flesh, "+cockTotal+" pair"+plural(1)+" of new feminine lips."); 	}
			textLP(" The lips part, the fresh air making you shiver as it passes across the moist flesh within. Your hand passes over your new clit"+plural(1)+", making you shiver slightly, before you dip your finger into "+oneYour(1)+" new cunt"+plural(1)+", amazed at the sensation of being penetrated like that. For all intents and purposes, you are now a girl.");
			
			vagBellyChange(cockSize, cockTotal);
			vagTotal = cockTotal;
			i = 1
			while (i <= vagTotal)	{
				if (pregArray.length/5 < 1) {
					pregArray = [false, 0, 0, 0, 0];
					i++
				}
				else if (pregArray.length/5 < vagTotal) {
					pregArray.push(false, 0, 0, 0, 0);
					i++;
				}
				else { i++; }
			}
			vagSize = cockSize;
			vulvaSize = ballSize;
			clitSize = ballSize;
			
			balls = 0;
			ballSize = 0;
			cockSize = 0;
			cockTotal = 0;
			humanCocks = 0;
			horseCocks = 0;
			wolfCocks = 0;
			catCocks = 0;
			lizardCocks = 0;
			rabbitCocks = 0;
			bugCocks = 0;

			gender = 2;
		}
		else if (gender == 2) {
			textL("You ingest the potion and quickly begin to feel its effects. You hug your belly as you feel your insides wrench, your vaginal flesh shrinking within.");
			cockChange(vagSize,vagTotal);
			textLP("\r\rHowever, it doesn't last long as the last of your vagina"+plural(2)+" shrink"+plural(4)+" to nothing, your "+vulvaDesc()+" lips disintegrating into your new scrotum, your testicles growing larger and larger before your lips finally vanish, making you a boy for all intents and purposes.");
			
			ballSize = vulvaSize;

			vagBellyChange(-vagSize, -vagTotal);
			vagSize = 0;
			vagTotal = 0;
			i = 0;
			while (i < pregArray.length) {
				if (pregArray[i] == false) { 
					pregArray.splice(i, 5);
					i = -5;
				}
				i += 5;
			}
			vulvaSize = 0;
			clitSize = 0;

			gender = 1;
		}
		else if (gender == 3) {
			textL("You ingest the potion and quickly begin to feel its effects. You hug your belly as you feel your insides wrench, your vaginal flesh attempting to match the size of your male anatomy. Your "+clothesBottom()+" shakes as your "+cockDesc()+" bulges try to mimic your female anatomy as well.");
			if (showBalls == true) { textLP(" Even your testicles shift, growing to match your pussy lips, while those lips do the same. Your clit"+plural(2)+" also change"+plural(4)+" to more closely match the size of your different vulva."); }
			else { textLP("Even your pussy lips shift, trying to match the size of what's in your abdomen. Your clit"+plural(2)+" also change"+plural(4)+" to more closely match the size of your different vulva."); }
			textLP(" In the end, your whole body feels a little off balanced, having to adjust to the backwards genitals...");
			var tempCockSize:int = cockSize;
			var tempBallSize:int = ballSize;

			cockSize = vagSize;
			ballSize = vulvaSize;

			
			vagBellyChange((tempCockSize - vagSize), 0);
			vagChange(-1, 0);
			vagSize = tempCockSize;
			vulvaSize = tempBallSize;
			clitSize = tempBallSize;
		}
		else if (gender == 0) {
			var chance:int = percent();
			textL("You ingest the potion and quickly begin to feel its effects.");
			if (chance <= 40) { 
				cockChange(Math.ceil(percent()/5),1);
				ballSize = Math.ceil(percent()/5);
			}
			if (chance > 40 && chance <= 80) { 
				vagChange(Math.ceil(percent()/5),1); 
				vulvaSize = Math.ceil(percent()/5);
				clitSize = Math.ceil(percent()/5);

			}
			if (chance > 80) { 
				cockChange(Math.ceil(percent()/5),1); 
				vagChange(Math.ceil(percent()/5),1);
				ballSize = Math.ceil(percent()/5);
				vulvaSize = Math.ceil(percent()/5);

				clitSize = Math.ceil(percent()/5);
			}
		}

		doEnd();
	}

	//S Masochism Potion
	if (ID == 519) {
		textL("After drinking the potion, your body feels like electricity is sparking all over. You have the odd feeling like it would be fun to be beaten to a pulp right about now...");
		sMasoPot += 24;
		doEnd();
	}

	//Red Dye
	if (ID == 520) {
		dyeThing(ID, 3);
	}

	//S Baby Free Potion
	if (ID == 521) {
		textL("Taking the potion, you sudden feel less... fertile than before. You might still be a little fertile, but you suspect you can go out 'clubbing' for the next several days and not have to worry so much about a little extra weight afterwards. If you knew what any of that even meant.");
		babyFree += 216;
		doEnd();
	}

	//S Potency Potion
	if (ID == 522) {
		if (showBalls == true && balls > 0) { textL("Within seconds of drinking this potion, you can feel your balls grow slightly hotter. You can almost hear them whir as they work harder to produce more fun goop for your cock"+plural(1)+"."); }
		else if (showBalls == true && balls > 0) { textL("Within seconds of drinking this potion, you can feel your abdomen grow slightly hotter. You can almost hear something inside whir as it works harder to produce more fun goop for your cock"+plural(1)+"."); }
		else { textL("If you had balls to be kicked in, they'd probably be feeling much more active right now. Not that you would know, you ball-less freak."); }
		cumMod += 0.5;
		doEnd();
	}
	
	//Cum Vial
	if (ID == 523) {
		textL("You pop open the vial of cum and let it ooze down your throat, shivering a bit from the heady taste.");
		doHP(2);
		doLust(5, 0);
		doEnd();
	}

	//Cum Bottle
	if (ID == 524) {
		textL("You gulp down the thick, creamy, sticky cum, having difficulty getting down the large amount of hot spunk with its heady taste.");
		doHP(5);
		doLust(15, 0);
		doEnd();
	}

	//Cum Jug
	if (ID == 525) {
		textL("You pour the jug of cum out into 3 bottles...");
		itemAdd(524);
		itemAdd(524);
		itemAdd(524);
		doEnd();		
	}
	
	//Cum Barrel
	if (ID == 526) {
		if (currentState == 2) {
			textL("You have no use for a barrel full of cum in the midst of battle, so you... tuck it away somewhere in your bag?");
			itemAdd(526);
			doEnd();
		}
		else {
			textL("Without much of a use for it otherwise, you decide to... strip down naked and jump in!\r\rThe cum is nice and warm and feels so good on your "+skinDesc()+". You scrub yourself nice and thoroughly, making sure to get all the nooks and crannies. And with the slimy goop, you really focus on those crannies~\r\rAfter cleaning yourself up a bit, you sit back and relax, pulling out a toy to play with.\r\r\r'Oh rubber ducky, you're the one. You make bath-time lots of fun~'");
			stats(0,0,1,1);
			hrs++;
			doEnd();
		}
	}

	//Good Egg
	if (ID == 527) {
		textL("You crack open the good egg and down its contents, feeling healthier and stronger already.");
		doHP(15);
		stats(1,0,0,0);
		doEnd();
	}

	//Bad Egg
	if (ID == 528) {
		if (currentState != 2) { 
			textL("You can only use this dangerous egg in battle. You put the bad egg back into your bag."); 
			itemAdd(528);
			doEnd();
		}
		else {
			dmg = Math.floor(Math.random()*(1+20-10))+10;
			textL("You pull the bad egg from your bag and toss it at the "+enemyName()+". It explodes in a burst of fire, somehow, dealing "+dmg+" damage!");
			doeHP(-dmg);
			if (currentState == 2) { doEnd(); }
		}
	}

	//Strange Egg
	if (ID == 529) {
		textL("You crack open the strange egg and down its contents, feeling odd...");
		if (percent() <= 10) {
			textLP("\r\rYou grow an inch taller.");
			tallness++;
		}
		if (percent() <= 10) {
			textLP("\r\rYou shrink by an inch.");
			tallness--;
		}
		if (percent() <= 10) {
			textLP("\r\rYour chest springs out, swelling in size.");
			breastSize += Math.ceil(percent()/10);
		}
		if (percent() <= 10 && breastSize > 1) {
			textLP("\r\rYour breasts recoil back, deflating.");
			breastSize -= Math.ceil(percent()/10);
		}
		if (percent() <= 10) {
			textLP("\r\rYour crotch feels strange as some feminine bits begin to appear...");
			vagChange(Math.ceil(percent()/10), Math.ceil(percent()/20));
		}
		if (percent() <= 10) {
			textLP("\r\rYour crotch feels strange as some masculine bits begin to appear...");
			cockChange(Math.ceil(percent()/10), Math.ceil(percent()/20));
		}
		if (percent() <= 10 && cockTotal > 0) {
			textLP("\r\rYour cock"+plural(1)+" grow"+plural(3)+" sporadically.");
			cockChange(Math.ceil(percent()/10), 0);
		}
		if (percent() <= 10 && cockTotal > 0) {
			textLP("\r\rYour cock"+plural(1)+" shrink"+plural(3)+" sporadically.");
			cockChange(-Math.ceil(percent()/10), 0);
		}
		if (percent() <= 10 && vagTotal > 0) {
			textLP("\r\rYour vulva"+plural(2)+" grow"+plural(4)+" sporadically.");
			vagChange(Math.ceil(percent()/10), 0);
			vulvaSize += Math.ceil(percent()/10);
			clitSize += Math.ceil(percent()/10);
		}
		if (percent() <= 10 && vagTotal > 0) {
			textLP("\r\rYour vulva"+plural(2)+" shrink"+plural(4)+" sporadically.");
			vagChange(-Math.ceil(percent()/10), 0);
			vulvaSize -= Math.ceil(percent()/10);
			clitSize -= Math.ceil(percent()/10);
		}
		if (percent() <= 10) {
			textLP("\r\rIt feels as though your blood has thinned out a bit.");
			aff(0,0,-10);
		}
		if (percent() <= 10) {
			textLP("\r\rYou suddenly feel very aroused.");
			doLust(50, 0);
		}
		if (percent() <= 10) {
			textLP("\r\rYour arousal suddenly dies down.");
			doLust(-50, 0);
		}
		if (percent() <= 10) {
			textLP("\r\r10 coins pop out of your ears.");
			doCoin(10);
		}
		if (percent() <= 10 && vagTotal > 0) {
			textLP("\r\rYou grunt and squat, "+legVerb(1)+" your "+legDesc(2)+" and pulling "+pullUD(2)+" your "+clothesBottom()+" in time for more fresh eggs to come sliding out of your slit"+plural(2)+" from nowhere!");
			itemAdd(219);
			itemAdd(219);
			itemAdd(219);
		}

		textLP("\r\rQuite strange indeed...");

		doEnd();
	}

	//Charmed Egg
	if (ID == 530) {
		textL("You crack the charmed egg open and gulp its contents. You suddenly feel charming, oh so charming, it's alarming how charming you feeeeel~");
		if (charmTime <= 0) {
			enticeMod += 13;
			charmTime = 20;
		}
		else { charmTime += 20; }
		stats(0,1,0,0);
		doEnd();
	}

	//Divine Egg
	if (ID == 531) {
		textL("You can nearly hear the sounds of an angelic chorus as you crack the divine egg open, its gooey contents slipping down your throat.");
		if (cockTotal > 0) { 
			textLP(" Your "+cockDesc()+" cock"+plural(1)+" pulse"+plural(3)+" and bulge"+plural(3)+" in your "+clothesBottom()+", swelling in size.");
			if (showBalls == true) { textLP(" Your balls groan to match the amount of growth, expanding in their confines."); }

			textLP(" You can feel the cum churn within your body, trying to make room for more.");
			cockChange(5,0);
			ballSize += 5;
			cumMod += .5;
		}
		if (vagTotal > 0) {
			textLP(" Your loins ache as your nether-lips grow between your thighs, your pelvis literally spreading to make more room as your "+hipDesc()+" hips press outward. Your ovaries tickle a little as they spill their eggs for easier fertilization. Even your "+boobDesc()+" breasts feel heavier, your "+nipDesc()+"nipples growing longer for greater mouthfuls.");
			vagChange(5,0);
			hips += 5;
			vulvaSize += 5;
			pregChanceMod += 5;
			extraPregChance += 10;
			boobChange(5);
		}
		doEnd();
	}

	//Strong Pheromone
	if (ID == 532)	{
		textL("You rub the strong-scented pheromones all over your body. It's so... powerful that even you feel a little rambunctious just wearing it. Others would probably find it much more enticing as well, strengthening their attraction to you.");
		if (pheromone <= 0)	{
			pheromone = 30;
			enticeMod += 25;
			statsMod(0,0,3,0);
		}
		else { pheromone += 30; }
		doEnd();
	}

	//Reduced Reduction
	if (ID == 533) {
		choiceListArray = [];
								
		if (breastSize > 0) { choiceListArray.push("Breasts"); }
		if (nippleSize > 1) { choiceListArray.push("Nipples"); }
		if (butt > 1) { choiceListArray.push("Butt"); }
		if (hips > 1) { choiceListArray.push("Hips"); }
		if (vagTotal > 0) {
			choiceListArray.push("Pussy");
			if (vulvaSize > 0) { choiceListArray.push("Vulva"); }
			if (clitSize > 1) { choiceListArray.push("Clit"); }
		}
		if (cockTotal > 0) {
			choiceListArray.push("Cock");
			if (showBalls == true && ballSize > 1) { choiceListArray.push("Balls"); }
		}
		if (udders == true) {
			if (udderSize > 1) { choiceListArray.push("Udder"); }
			if (teatSize > 2) { choiceListArray.push("Teats"); }
		}
		if (bellyMod > 0) { choiceListArray.push("Belly");	}

		choiceListButtons("Reduc Reduc");
		textL("Select which body part you would like to shrink a bit. If you don't have that part, this elixir will do nothing but will still be consumed.");
		doListen = function():void{
			choiceListSelect("Reduc Reduc");
			textL("You splash the elixir out onto your ");
			if (choiceListResult[0] == "Cock") { 
				textLP(cockDesc()+" cock"+plural(1));
				textLP(" and watch the appendage"+plural(1)+" quiver and shrivel down by "+(2*cockSizeMod)+" inches.");
				cockChange(-4,0);
			}
			if (choiceListResult[0] == "Balls") { 
				textLP(ballDesc()+" balls");
				ballSize -= 4; 
				textLP(" and watch with a shiver as the orbs shrink.");
			}
			if (choiceListResult[0] == "Pussy") { 
				textLP("vagina"+plural(2));
				textLP(" and quiver as the fleshy walls within your body shrink.");
				vagChange(-4,0); 

				
			}
			if (choiceListResult[0] == "Vulva") { 
				textLP(vulvaDesc()+" vulva");
				vulvaSize -= 4;
				textLP(" and watch with a quiver as nether-lips shrink, becoming "+vulvaDesc()+".");
			}
			if (choiceListResult[0] == "Clit") { 
				textLP(clitDesc()+" clit"+plural(2));
				clitSize -= 4;
				textLP(" and watch with a quiver as the button"+plural(2)+" shrink"+plural(4)+", becoming "+clitDesc()+".");
			}
			if (choiceListResult[0] == "Breasts") { 
				textLP(boobDesc()+" breasts");
				breastSize -= 4;
				textLP(" and shudder as they shrink by about 2 inches.");
			}
			if (choiceListResult[0] == "Nipples") { 
				textLP(nipDesc()+" nipples");
				nippleSize -= 4;
				textLP(" and shudder as they receed into your breasts nearly an inch.");
			}
			if (choiceListResult[0] == "Udder") { 
				textLP(udderDesc()+" udder");
				udderSize -= 4; 
				textLP(" and watch as it shrivels, becoming "+udderDesc()+".");
			}
			if (choiceListResult[0] == "Teats") { 
				textLP(teatDesc()+" teats");
				teatSize -= 4; 
				textLP(" and watch as they recede, becoming "+teatDesc()+".");
			}
			if (choiceListResult[0] == "Butt") { 
				textLP(buttDesc()+" butt");
				butt -= 4; 
				textLP(" and squirm as it shrinks, becoming "+buttDesc()+".");
			}	
			if (choiceListResult[0] == "Hips") { 
				textLP(hipDesc()+" hips");
				hips -= 4;
				textLP(" and squirm as they narrow, becoming "+hipDesc()+".");
			}
			if (choiceListResult[0] == "Belly") { 
				textLP(bellyDesc()+" belly");
				bellyMod -= 4;
				textLP(" and watch as some of the fat burns off, becoming "+bellyDesc()+".");
			}
			if (buttonChoice == 4 || buttonChoice == 8) { choiceListButtons("Reduc Reduc");	}
			else if (buttonChoice == 12) {  
				itemAdd(533);
				doProcess();
			}
			else { doEnd(); }
		}
	}

	//Male Enhancement Drug
	if (ID == 534)	{
		textL("You pop the pill into your mouth, feeling a bit of warmth emanating from your groin.");
		if (cockTotal > 0)	{
			textLP(" You pull "+pullUD(2)+" your "+clothesBottom()+" and watch with awe as your shlong"+plural(1)+" grow longer");
			if (showBalls == true)	{ textLP(" and the testicles beneath swell within your scrotum");	}
			textLP(".\r\rIt really does work!");
			cockSize += 4;
			ballSize += 2;
		}
		else if (gender == 2) {
			textLP(" Yet, despite not having any male genitals to speak of, you feel something growing longer. Pulling "+pullUD(2)+" your "+clothesBottom()+", you watch with awe as your clit"+plural(2)+" extends further from "+plural(6)+" hood"+plural(2)+"! You also feel more... horny than usual...\r\rThough the pill was meant for males, females have quite a bit in common.");
			clitSize += 3;
			stats(0,0,1,0);
		}
		else { textLP("\r\rYou don't have any genitals for it to enhance though, so it was kind of a waste."); }
		doEnd();
	}

	//Milk Suppressant
	if (ID == 535)	{
		textL("You gulp down the vial of Milk Suppressant. You don't notice much of a difference, except that your "+nipDesc()+" nipples");
		if (udders == true)	{ textLP(" and "+teatDesc()+" teats");	}
		textLP(" stiffen to such a point that they feel almost rock-hard. They don't really settle down either, like they're trying to hold something back.");
		milkSuppressant += 48;
		milkSuppressantLact = lactation;
		milkSuppressantUdder = udderLactation;
		lactation = 0;
		udderLactation = 0;
		doEnd();
	}

	//Bazoomba!
	if (ID == 536)	{
		textL("You pop the little growing orb into your mouth and quickly gulp it down past your gag reflex. It doesn't take long before your chest begins to feel warm...");

		if (boobTotal == 2)	{
			textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
			if (breastSize > 4)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			boobTotal = 4;
			fourBoobAffinity = 100;
			twoBoobAffinity = 0;
		}

		else if (boobTotal == 4) {
			textLP("\r\rYour chest and belly tickle. Two new nipples form amongst your "+skinDesc()+", right below your second pair above your belly, leaving you with three rows of two breasts.");
			if (breastSize > 4){ textLP(" The nipples protrude as fleshy mounds form beneath them, while your second pair seems to shrink in turn. Breast-flesh wobbles, each row a fraction in size of the one above it. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			boobTotal = 6;
			sixBoobAffinity = 100;
			fourBoobAffinity = 0;
		}
				
		else if (boobTotal == 6) {
			textLP("\r\rYour chest and belly tickle. Two new nipples form amongst your "+skinDesc()+", right below your second pair above your belly, leaving you with four rows of two breasts, from chest to your lower belly.");
			if (breastSize > 4){ textLP(" The lower pairs continue to grow while your top pair shrinks a little, all equalizing in size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			boobTotal = 8;
			eightBoobAffinity = 100;
			sixBoobAffinity = 0;
		}

		else if (boobTotal == 8) {
			textLP("\r\rThe area above your crotch tickles. Two new nipples form amongst your "+skinDesc()+", right below your fourth pair below your belly, leaving you with five rows of two breasts, from your chest to your crotch.");
			if (breastSize > 4){ textLP(" The lower pairs continue to grow while your top pair shrinks a little, all equalizing in size. When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
			boobTotal = 10;
			tenBoobAffinity = 100;
			eightBoobAffinity = 0;
		}

		else if (boobTotal == 10)	{
			textLP("\r\rYour chest down to your crotch starts to tickle. Checking, you see dozens of nipples beginning to appear amongst your breasts, going down to your groin and some even on your back. Mound of flesh begin growing everywhere until you're surrounded by tits!\r\rThen, a popping whir begins to fill the air. In a puff of pink smoke, all your breasts disappear at once, save the single primary pair upon your chest. It seems you have gone a bit overboard with the boobage...");
			boobTotal = 2;
			twoBoobAffinity = 100;
			tenBoobAffinity = 0;
		}
		doEnd();
	}

	//Queen Egg
	if (ID == 537) {
		textL("You munch on the egg, the wonderful flavors flowing over your tongue. It's sweet and buttery, quickly sliding down your gullet with delight until you're sucking the leftovers from your fingers. And as you ruminate over the delicious snack, you feel your "+clothesBottom()+" grow tighter. Your hips grow wider and your rump larger,");
		if (vagTotal > 0) { 
			textLP(" the lips of your sex swelling as well, while your womb becomes more efficient,");
			pregRate += .05;
			vulvaSize += 1;
		}
		textLP(" and your "+boobDesc()+" chest feels slightly bigger on the inside than on the outside. Growing more suitable for a breeding queen.");
		hips += 1;
		butt += 1;
		
		milkCap += 4;
		doEnd();
	}

	//Soldier Egg
	if (ID == 538) {
		textL("You bite down into the egg, getting through the tougher rind and giving it a good chew before you swallow. It takes a bit to get through the whole thing and by the time you're done the ground looks further away than usual. You've grown slightly taller and feel more lean and strong.");
		tallness += 1;
		body += 1;
		stats(1,0,0,0);
		doEnd();
	}

	//Drone Egg
	if (ID == 539) {
		textL("You gobble down the egg, your mind quickly drifting more towards lustful thoughts.");
		if (cockTotal > 0) {
			textLP(" Your cock"+plural(1)+" grow"+plural(3)+" slightly larger, more able to ensure a deeper injection of your seed.");
			cockSize += 1;
			if (showBalls == true) {
				textLP(" Your balls also feel more ready to spurt, as though you've gone many more hours without ejaculation than you actually have.");
			}
			blueBalls += 10;
		}
		if (vagTotal > 0) { 
			textLP(" And though "+plural(8)+" not actually something that can impregnate, your clit"+plural(2)+" swell"+plural(4)+" slightly larger.");
			clitSize += 1;
		}
		stats(0,-1,1,0);
		doEnd();
	}

	//Worker Egg
	if (ID == 540) {
		textL("You quickly chomp down the egg. It doesn't exactly taste good or bad, but that doesn't really matter. You just feel like you've got more energy to keep working!");
		exhaustion -= 6;
		doEnd();
	}

}
