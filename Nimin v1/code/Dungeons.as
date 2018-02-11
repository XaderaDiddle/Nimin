/**********
 *Dungeons*
 **********/

function doDungeon():void {

    //Cave Descent
    if (currentDungeon > 1000 && currentDungeon <= 1010) {
        doOldCaveDescent();
    }

}

function doOldCaveDescent():void{ 
    if (currentDungeon == 1001 || currentDungeon == 1002 || currentDungeon == 1003){
        if (defeatedMinotaur == false) {
            textL("With the lantern allowing you to actually see where you're going, you're able to venture much deeper into the old cave. It is surpisingly long for a cave that doesn't open up into a large cavern and there's not terribly much of note either, nothing you could have accidentally bumped into. The only thing particularly interesting are holes that line the bottom of the walls that angle downward, as a sort of natural drainage system for fluids. Otherwise, things are just rather... humid and slimy. It's not something you think too much about, however, as your light eventually begins to glisten off of the back wall of the cave, finally having reached the end. Or so you think it's the end.\r\rAs you reach the back wall, you notice another cave branching off. Yet, it's not exactly another cave. From the way the stone is hewn and the entrance is elevated from the normal floor of the original cave, this appears to have been carved out. You step up inside and immediately notice... There's stairs going down. Since ventured this far in, you continue on, walking down the spiraling staircase.\r\rThis passage appears to be ancient, with many of the steps rather worn from all the footsteps. The walls are slightly warped and scratched, but otherwise in good condition for their age. And they just keep going down and down and down... You quickly lose count of how many steps you've descended and it just becomes a relentless trek downward until... you find a room!\r\rAlthough, it's not much of a room... Rectangular, somewhat large, lighted by a couple torches and relatively boring, with another stairwell against the opposite wall. This is just a sort of waypoint along the stairwell... But it's not empty either.");
            doNext();
            doListen = function():void{
                textL("\"Who go there?!\" A loud grunting voice bellows in your direction.\r\rYou blink at first, the hot and smelly breath catching you off guard, but you quickly grow aware of the large figure towering before you. Large horns nearly scraping the ceiling, the bulky muscular man before you stands in your way. The head of a bull, the body of a human, and the crotch... bulging massively beneath a simple loin cloth, this monster does not look pleased.\r\r\"I am Minotaur!,\" You're not entirely sure if he's stating his name or his ancestry... \"I no know you! I guardian! You no pass!\"\r\rYou don't exactly have time for a diplomatic solution as the creature charges towards you, his massive hands balling up into hard-looking fists as he makes his intentions clear.");
                enemyID = 307;
                currentState = 2;
                enemyBaseStats();
                eMaxHP = eHP;
                doBattle();
            }
        }
        else {
            if (currentDungeon == 1001) { textL("You make your way back to the first 'checkpoint' along the large staircase in the old cave. The Minotaur you had bested is currently facing the wall, grunting and sweating, but quickly jerks to attention as he hears you enter. He quickly spins around to face you, acting like he had been busy guarding attentively the whole time. However, his big fat cock still throbs beneath his lazily drooped loin cloth, the aroused head poking out the side with a gob of pre drooling down. He pretends not to notice so he can tend to his duties, but exhales with a grunt as he sees you.\r\r\"Oh, just you. You can go, I know you now. Unless you want to try Minotaur again?\""); }
            if (currentDungeon == 1002) { textL("With the Minotaur sitting in a corner sulking over his loss, you're free to either go up to the surface or venture further down the stairs."); }
            if (currentDungeon == 1003) { textL("With the Minotaur laying on the ground, continuing to pleasure himself, you're free to either go up to the surface or venture further down the stairs."); }
            viewButtonOutline(1,1,0,1,0,0,0,0,0,0,0,0);
            viewButtonText(1,1,0,1,0,0,0,0,0,0,0,0);
            buttonWrite(4, "Firmshaft");
            buttonWrite(1, "Fight");
            buttonWrite(2, "Down");
            if (currentDungeon != 1001) {   Choice1.visible = false;    }
            doListen = function():void{
                if (buttonChoice == 2) {
                    if (currentDungeon == 1001) { textL("The beast-man gives you a grunt. \"Fine.\"\r\rBefore you're even gone, he's already turning back to the wall and slipping a hand under his loin cloth... You head down the next set of stairs."); }                    
                    else { textL("You leave the beast-man to himself and head towards the stairs."); }
                    doNext();
                    doListen = function():void{
                        currentDungeon = 1004;
                        doOldCaveDescent();
                    }
                }
                if (buttonChoice == 4) {
                    if (currentDungeon == 1001) { textL("The beast-man gives you a grunt. \"Fine.\"\r\rBefore you're even gone, he's already turning back to the wall and slipping a hand under his loin cloth... You head back out to Firmshaft."); }
                    else { textL("You leave the beast-man to himself and head towards the stairs."); }
                    doNext();
                    doListen = function():void{
                        inDungeon = false;
                        regionChange(2);
                        doEnd();
                    }
                }           
                if (buttonChoice == 1) {
                    textL("\"Ahh, goody. Me need something to do!\" The beast-man begins to charge after you once more.");
                    doNext();
                    doListen = function():void{
                        enemyID = 307;
                        currentState = 2;
                        enemyBaseStats();
                        eMaxHP = eHP;
                        doBattle();
                    }
                }
            }
        }
    }
    
    if (currentDungeon == 1004 || currentDungeon == 1005 || currentDungeon == 1006) {
        if (defeatedFreakyGirl == false) {
            textL("Even more stairs than before, you keep going and going, deeper below the surface. You don't know how long it takes, but you do know it's a while before you find the end and step into another room. Just like before, it's nothing too grandoise, just a rectangular room hewn in the ancient stone. And at the far and, you see even more stairs descending down... However, something far more interesting grabs your attention.\r\r\"Ooo, look Mr. Snuggles, someone to pway with!\" The cute little girly voice cuts through the boredom of stairs like a sweet delicate knife.\r\rOnly as the girl gets up from sitting cross-legged do you notice a flash of her white panties. With the short frilly skirt that curls outward and shows off much of her supple legs, she must have been exposing her undergarments to you much longer as she sat on the floor. Although, you quickly try to dash that thought as you realize how young she seems to be. Barely over four feet tall, she hardly has any curves to speak of; a rather flat chest that hardly pushes out her soft shirt just by the slightly puffy nipples beneath and her hips more emphasized by the short bouncy skirt then their own girth. Her hair is bound on either side by big ribbons, pulled into two pigtails the dangle down past her shoulders, brushing across the puffed short sleeves of the otherwise tight-fitting shirt and exposing her large long ears that look almost goofy on her small form.\r\rAnd as she stands, her immaturity is further amplified by the large plushy doll she lifts with her. Nearly as large as herself, it looks like the minotaur you defeated in the previous room, except small and adorable. The thing seems to have seen a fair deal of use, however, as it's completely covered in patches of leather. You can't really tell how old it is, considering much of the leather looks brand new whereas other places look quite worn and faded, with quite a few gashes from some kind of scratches that should probably be patched up as well soon. Nevertheless, the girl hugs it close as she begins to skip around in a circle, her skirt bouncing with small glimpses of her undies as she frolics. \"We're gonna pla-ay~ We're gonna pla-ay~ We're gonna pla-ay~\"\r\rShe seems just so adorable that you almost feel obligated to play. That is... until she stops dead in her tracks and turns to you with a ferocious stare, her eyes looking far darker and her pigtails looking almost like wings as the hair curls outward sinisterly. Her nails dig into the leather of Mr. Snuggles, scratching it like all the other gashes you noticed, and she speaks in a much louder, much more snarling voice. \"IT'S BEEN YEARS SINCE I'VE HAD A GOOD TOY~\"\r\rUh oh...");
            doNext();
            doListen = function():void{
                enemyID = 308;
                currentState = 2;
                enemyBaseStats();
                eMaxHP = eHP;
                doBattle();
            }
        }
        else {
            if (currentDungeon == 1004) { textL("Returning to the second floor of the cave descent, the strange little girl sits on the floor playing with Mr. Snuggles in her lap. As she spots you, she lifts the plushy leather minotaur up to her eyes and turns it toward you, using it as a puppet as she speaks in a fake menacing voice. \"Grr, did you come back to play some more~?\""); }
            if (currentDungeon == 1005) { textL("The girl hides behind Mr. Snuggles, grumbling about how you're a \"Big fat meanie face\" and how she's \"GOING TO FEAST ON YOUR BONES\" for having defeated her, but she allows you to go as you please.");    }
            if (currentDungeon == 1006) { textL("The girl cuddles up with Mr. Snuggles, her hips still twitching and thrusting her enlarged clit into the doll, allowing you to go as you please.");    }
            viewButtonOutline(0,1,0,1,0,1,1,0,0,0,0,0);
            viewButtonText(0,1,0,1,0,1,1,0,0,0,0,0);
            buttonWrite(2, "Up");
            buttonWrite(4, "Firmshaft");
            buttonWrite(6, "'Play'");
            buttonWrite(7, "Down");
            if (currentDungeon != 1004) {   Choice11.visible = false;   }
            doListen = function():void{
                if (buttonChoice == 2) {
                    if (currentDungeon == 1004) { textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you head up to the above floor."); }
                    else { textL("She continues on with her doll and you take to the stairs."); }

                    doNext();
                    doListen = function():void{
                        currentDungeon = 1001;
                        doOldCaveDescent();
                    }
                }
                if (buttonChoice == 4) {
                    if (currentDungeon == 1004) { textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you head up the stairs and out of the cave to Firmshaft."); }
                    else { textL("She continues on with her doll and you take to the stairs."); }
                    doNext();
                    doListen = function():void{
                        inDungeon = false;
                        regionChange(2);
                        doEnd();
                    }
                }           
                if (buttonChoice == 6) {
                    textL("\"Ooo, really?! Yay~!\" The girl hops up to her feet, her skirt flipping up a little to flash you her panties. With Mr. Snuggles in hand, the excitement gets the best of her and she bellows out with her fiercer side. \"I'LL TRY NOT TO TEAR YOU TO SHREDS~\"");
                    doNext();
                    doListen = function():void{
                        enemyID = 308;
                        currentState = 2;
                        enemyBaseStats();
                        eMaxHP = eHP;
                        doBattle();
                    }
                }
                if (buttonChoice == 7) {
                    if (currentDungeon == 1004) { textL("\"Maww, fine. Looks like it's just you and me again, Mr. Snuggles.\" The girl returns to her playing, orienting the big minotaur back into her lap with her hand slipping beneath her skirt as you venture down the next set of stairs."); }
                    else { textL("She continues on with her doll and you take to the stairs."); }
                    doNext();
                    doListen = function():void{
                        currentDungeon = 1007;
                        doOldCaveDescent();
                    }
                }
            }
        }
    }

    if (currentDungeon == 1007 || currentDungeon == 1008 || currentDungeon == 1009) {
        if (defeatedSuccubus == false) {
            textL("The spiraling stairs just keep going down further and further... You don't know how far down below the surface you've traveled, there's no signs of being any deeper. The rock walls look the same, the steps look the same, even the air isn't as stale as you would expect such a deep cavern to be. Even as you muse over these thoughts, the fact that you have reach yet another room almost eludes you until your feet attempt to continue down non-existant steps and slam into the floor abruptly. You've reached another room, just like the others, except your eyes widen in hope as you see a door on the far wall, no more stairs! Yet, your attention is turned as a sweet feminine voice tantalizes your ears and blocks your exit.\r\r\"Well, well. Looks like I've finally got a visitor. So you managed to get past the other two guardians? That's quite the feat. To be honest, that little girl creeps the hell out of me.\"\r\rThe figure steps into your view of the door as she shudders at the thought. Her chest wobbles with two grandoise mounds, the things barely held back by an overburdened red leather bikini top. They look even larger when compared to her surprisingly thin waist that widens back out to some very ample hips, the cheeks of her rump jiggling erotically in the matching red leather panties and her long thin tail tipped with a fleshy spade waves behind her to accentuate the movement further. Garters descend down to help hold up her thigh-high high-heeled boots from a belt that lazily hangs around her waist, adorned with glowing vials and a long beatiful whip. To top the whole image off, her milky white skin, long black hair, short little horns, short bat-like wings, and eyes as red as her outfit, all amount to a single idea. A succubus. A creature popular in legends passed down from earlier generations. A creature that, according to the myths, is known for being extremely attractive and for sucking out the essence of men.\r\rSure you've encountered a lot of strange things, but this is something you already knew about and is something that supposedly did NOT exist. However, you don't have time to contemplate such things further as she proceeds to take her whip in hand and lash it against the floor.\r\r\"On the other hand, if you were able to beat those two, then you must be quite a treat for me. Don't worry, I won't hurt you... much. I doubt you'll be able to pass, but if you do it would be worth it. I'd probably like to try my hand at you again sometime.\" She gives you a wink before lunging in to fight.");
            doNext();
            doListen = function():void{
                enemyID = 309;
                currentState = 2;
                enemyBaseStats();
                eMaxHP = eHP;
                doBattle();
            }
        }
        else {
            if (currentDungeon == 1007) { textL("On the last floor before Sanctuary, the succubus toys around with her vials filled with the masculinity of various victims. She perks up at your presence, something to cut into the boredom. \"Hello again~ Don't worry. Now that you've defeated all of us, you're free to come and go as you please since you've shown you can handle yourself and won't be dead weight, so I won't fight you. Unless you want to go another round~\" She gives you a wink."); }
            if (currentDungeon == 1008) { textL("The succubus smiles at you as she leans up against the wall, trying to pretend like you didn't actually hurt her at all and waiting for you to leave so she can rub the achy bits.");  }
            if (currentDungeon == 1008) { textL("The succubus smiles at you as she leans up against the wall, trying to pretend like you didn't actually best her in the art of sex and waiting for you to leave so she can rub her tingly bits."); }
            viewButtonOutline(0,0,0,1,0,0,1,0,0,0,1,1);
            viewButtonText(0,0,0,1,0,0,1,0,0,0,1,1);
            buttonWrite(4, "Firmshaft");
            buttonWrite(7, "Up");
            buttonWrite(11, "Fight");
            buttonWrite(12, "Sanctuary");
            if (defeatedSuccubus == true) { Choice11Outline.visible = true; }
            doListen = function():void{
                if (buttonChoice == 7) {
                    if (currentDungeon == 1007) { textL("\"Alright, enjoy yourself~\" She returns her focus to her vials."); }
                    else { textL("\"Take care~\" She seems relieved as you leave."); }
                    doNext();
                    doListen = function():void{
                        currentDungeon = 1004;
                        doOldCaveDescent();
                    }
                }
                if (buttonChoice == 4) {
                    if (currentDungeon == 1007) { textL("\"Alright, enjoy yourself~\" She returns her focus to her vials while you head up out to Firmshaft."); }
                    else { textL("\"Take care~\" She seems relieved as you leave."); }
                    doNext();
                    doListen = function():void{
                        inDungeon = false;
                        regionChange(2);
                        doEnd();
                    }
                }           
                if (buttonChoice == 11) {
                    textL("\"Oh, so you want to have another go at little ole me? Don't mind if I do; I could go for a nice snack~\" Her breasts bounce as she steps to attention, grabbing for her whip in anticipation of some excitement.");
                    doNext();
                    doListen = function():void{
                        enemyID = 309;
                        currentState = 2;
                        enemyBaseStats();
                        eMaxHP = eHP;
                        doBattle();
                    }
                }
                if (buttonChoice == 12) {
                    if (currentDungeon == 1007) { textL("\"Alright, try not to do anything I'd want to do~\" She returns her focus to her vials."); }
                    else { textL("\"Take care~\" She seems relieved as you leave."); }
                    doNext();
                    doListen = function():void{
                        inDungeon = false;
                        regionChange(12);
                        doEnd();
                    }
                }
            }
        }
    }
    if (currentDungeon == 1010) {
        textL("The succubus shakes off her defeat and congratulates you. \"Gosh, it's been a while since an outsider has made it through. I suppose you'll be fine then.\" She steps back to the door at the end of the room, grunting slightly as she uses a good deal of force to push it open.\r\rGazing through, you mouth goes agape. After all those stairs, this is faaaar more interesting.\r\rA massive cavern stretches out before you, carved and chipped down to provide room for a sizeable city. The door is high up on a wall, giving you a grand view of all the wonder, with wide steps leading down. There's buildings made from all sorts of materials - from wood to stone to mud to things you can't even identify - littering the expansive floor with some stretching up to the high ceiling. All sorts of alien-looking beings walk the streets, faces and races and bodies you never thought imagineable. They peddle their wares, peddle their bodies, play games, play with each other, they... do all sorts of things to entertain their wide variety of cultures. All of this deep, deep underground.\r\r\"Welcome to Sanctuary! This place has been down here a very long time and has become a haven for those who survived the Change. Err... you probably don't know what the 'Change' is, since you're the newest generation and haven't witnessed it... Well... nor have I... or has anybody down here.... If we had witnessed it, we wouldn't be here to tell about it.\" She gives a dry chuckle.\r\r\"Basically, every several decades, the world just... changes. The terrain... the wildlife... the people... And some of us manage to dodge it somehow, either being caught up in some magical mishap or being in the right place at the right time or whatever. We survive while the rest... disappear. And without anybody else, we venture around and many of us wind up gathering here. Sanctuary seems to be one of the places that remains unaffected by the Change. Some of the people down there have even survived multiple Changes!\"\r\r\"That's why us 'guardians' are up here. We aren't here to guard Sanctuary from 'evildoers' or whatever. We're just here to make sure unwary wanderers from the newest generations don't find their way down here and... get a bit more than they bargained for. Except for those rabbits, but they're a different story that I don't know; they supply us with semen in exchange for something, it's not a matter I pay much attention to.\"\r\r\"Anyways, since you've 'defeated' all of us, you're free to come and go as you please, since you won't be a liability. Other than that, I... can't really explain it much more. I'm just from the last generation, so I don't know everything. This job just lets me get a good amount of essence from stronger travelers, like yourself,\" the succubus snickers as she jiggles her vials, \"and they needed someone a bit more eloquent than the other guardians to explain all I've just said. Sooo... yeah. You can go down there and have fun on your own, I'm not paid to babysit. I'll be here if you ever want to go another round, though.\"\r\rThe succubus gives you a wink and gives you a nudge down the steps, allowing you to explore this hidden world on your own.");
        inDungeon = false;
        regionChange(12);
        if (foundSanctuary == false) { foundSanctuary = true;   }
    }
}
