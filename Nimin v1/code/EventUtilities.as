/*****************
 *Event Functions*
 *****************/

function gibberish():String{
    var tempStr:String = "GIBBERISH ERROR";
    var chance:int = percent();
    if (chance <= 33) { tempStr = "¤çÑ-| ÇôG+¦æ| EÆáÜaß pOƒ§· +îdvwqe 5dfÑ¯» º¤äÜ¦) ¼ÿæ¤h ·ƒ."; }
    if (chance > 33 && chance <= 66) { tempStr = "Gs¿ fdfƒæ d§ew ¤-ÿö fs¤£· ÖÅ¢¥¬ ¼«¦ds?";  }
    if (chance > 66) { tempStr = "Tas ªÜhf¤ ÄäÑse çåÅû¿ ÑÜñ?Äsd Ü¥¦»¦ƒ ¦ÜÆ+¿æ£ we¤ rgdA-d»¦± Ü+#A¤$¤-ò. Fi?¤çÑK)^¤2 ges nec ¤?+ÿ• ºñ¡as frtr."; }
    return tempStr;
}

function gibButt():String{
    var tempStr:String = "GIB BUTTON ERROR";
    var chance:int  = percent();
    if (chance <= 20) { tempStr = "Pk¿ºs"; }
    if (chance > 20 && chance <= 40) { tempStr = "Ju£¥)"; }
    if (chance > 40 && chance <= 60) { tempStr = "§hdsa"; }
    if (chance > 60 && chance <= 80) { tempStr = "Ö¦¤ÄT¦+"; }
    if (chance > 80) { tempStr = "Pancakes"; }
    return tempStr;
}

//Knothole
function knotholeMain(entering:Boolean):void{
    viewButtonOutline(1,0,0,0,0,1,1,0,0,0,0,1);
    viewButtonText(1,0,0,0,0,1,1,0,0,0,0,1);
    buttonWrite(1, "Upstairs");
    buttonWrite(6, "Drum");
    buttonWrite(7, "Dance");
    buttonWrite(12, "Leave");
    hrs += 1;

    if (entering == true) { textL("Inside The Knothole, you come across an almost primal sight.\r\r"); }
    else { textL("You return to the main floor of the Knothole, looking around to see what else you would like to do.\r\r"); }
    textLP("Many Lupans are gathered in the drum-house, beating on sturdy, yet beautifully crafted drums built into the very foundation, the source of the deep, hard thumps that got your heart racing in the first place now pounding at your ears.");
    if (ment <= 20 && entering == true) {
        textLP("The few who look like they are done for the night that you can see look like they've either just ran a marathon, or have just released after being pent up for a month or five. And to you right now, those vacant drums are looking very inviting.");
    }
    textLP("To the right, you see more Lupans dancing to the beating rhythm. Pheromones and mixed scents fill the Knothole, making your heart race harder. As you start feeling the blood pump through your veins, almost in sync with the beat of the drums, you find your body bouncing slightly with the rhythm.");
    if (lust >= 50 && entering == true) {
        textLP("As if there was a subtle draft, the scents coming from the dancers start to entice you to join them, the movement of bodies a welcome sight right now. Watching the movement of bodies and tails dancing to the beat, you find your body starting to sway with the flow of the dances, as if the very essence of the drum-house was moving it for you.");
        doLust(10,0);
    }
    textLP("On the left, you spot a wide staircase leading up, and another leading down. A good portion of Lupans are going to the other floors, some holding others on leashes linked to collars wrapped and locked around the necks of the ones being walked. Those on leashes heading up seemed to be more high-spirited than those heading down, which half seemed to be 'zoned out' or in a trance, following their Masters and Mistresses.");

    doListen = function():void{
        if (buttonChoice == 1) { knotholeUpstairs(); }
        if (buttonChoice == 6) { 
            textL("Stepping up to one of the many drums, you feel the beat seeping into your veins. Each thrum of the rhythm resounding through the structure can be felt through the floor. Your fists rise up above your head, not entirely of your will, before swinging down upon the drum. Your fists bounce off the head of the instrument, and both swing down on their own, your rhythm matching that of the one booming throughout the room.\r\rYou decide to add a few quirks to the beat, your hands dancing and slamming into the drum, adding a bit of a different style lead to the rhythmic percussion. Meeting your ear is the sound of more and more of the others around you start going with your new style, soon, the whole house thrums with the rhythm.\r\rAfter quite a while of beating your heart out almost literally, you slowly bring your drumming to a halt, feeling like you just ran a marathon. Yet, there's also a sensation as having just got out of a soothing, relaxing bath and massage.\r\rFeeling no more need to be here, you leave the Knothole and return to Tieden.");
            stats(1,0,-1,0);
            doLust(-20, 0);
            hrs += 2;
            doEnd();
        }
        if (buttonChoice == 7) { 
            if (percent() <= 50) {
                textL("The beat of the drums and movement of the dancers pull you to the crowd, your heartbeat racing hard as your body starts moving.\r\rAt the edge of the crowd, your "+legDesc(10)+" hit the floor with the rhythm, your "+legDesc(2)+" pulsing with each beat of your thumping heart. Your arms bent at your sides, bouncing with your body, the flow of the dancers taking you in, your dance becomes one with the heat and movement of those around you.\r\rAs the drums start thrumming in a more graceful cadence, the dance of everyone around you, and yourself, takes on a smoother, gliding turn. A long stride, harsh stomp, left twist, right glide double stomp. Your "+legDesc(10)+" slam the ground with the drumbeat, the floor vibrating as everyone does so as well.\r\rA good long time of dancing harshly and calmly leads you to the edge of the group again, the dance eventually driven from your body, leaving you feeling exhausted, yet incredibly invigorated.\r\rFinding your time done for now, you leave the Knothole, wiping off the sweat collected on your body.");
                doLust(-15, 0);
                exhaustion += 3;
            }
            else {
                textL("The draw of the dancers pulls you to them, your body already starting to move with the enticing way they dance to the beat of the drums.\r\rReaching the edge of the group, your motions start to match theirs, your heartbeat already racing and pulsing throughout your body. Moving with the others around you, you find yourself being drawn further in, surrounded by bodies shifting to the rhythm. You also slowly come to realize that you feel those same bodies softly rubbing and grinding on yours…\r\rUndaunted, you continue dancing, matching the beat of those around you, until you come across a particularly inviting gesture of a fluffy Lupan tail brushing over your face, with the rump connected to said tail grinding against your hips. Another thing you quickly notice: not everyone is fully clothed, but not naked either, and the scent of pheromones comes to your nose.\r\rYour new dance partner continues to dance circles around you, almost always keeping contact with your body, be it with their tail, hands, or hips. Your hands and hips return the favor by matching their moves, grinding back into them, along with your rump.\r\rYour hands explore their body, finding a bare chest and a skirt over their legs and hips. Both bodies soon dance in sync, theirs pressing back into yours. You could have sworn you could hear them moan, but it's drowned out by the drums, and your hands explore the soft fur regardless. Your right hand moves down and slips under the skirt, finding a soaked pussy between a firm, soft pair of thighs.\r\rYour fingers stroke the soft lips, hips swaying back and forth to the rhythm, and the unoccupied hand keeping itself occupied with the soft mounds on her chest. Her hips grind harder into you, laying her head back on you in need. Your fingers stop stroking her cunny’s labia and start to wriggle in. Your tongue slides out of your mouth and licks her exposed neck, and you can hear her whimpers and moans with her mouth next to your ear.\r\rIn a burst of primal urge out of nowhere, you find yourself bearing your teeth and biting her neck through her fur, causing her to howl as her pussy clamps down over your fingers in ecstasy. Her howl rings out, with other Lupans in the area, a chorus of howls resounding throughout the drum-house. Once her pussy lets go of your fingers and your teeth no longer hold her neck, she slips away into the crowd, dancing with renewed energy.\r\rBefore you know it, you're back outside of the dancing group, with a pair of soaked fingers, and feeling exhausted from the dancing and surprisingly refreshed even though you know you haven't actually 'released'.\r\rWith nothing more to do save smell the woman's scent on your fingers, you leave the Knothole.");
                doLust(-200, 0);
                exhaustion += 4;
                stats(0,0,1,0);
            }
            hrs += 2;
            doEnd();
        }
        if (buttonChoice == 12) { knotholeLeave(); }
    }
}

function knotholeLeave():void {
    textL("Finished with your time in the Knothole, you return to the fresh air of Tieden.");
    doEnd();
}

function knotholeUpstairs():void {
    viewButtonOutline(1,0,1,0,0,0,0,0,1,0,0,1);
    viewButtonText(1,0,1,0,0,0,0,0,1,0,0,1);
    buttonWrite(1, "Relax");
    buttonWrite(3, "Exhibition");
    buttonWrite(9, "Downstairs");
    buttonWrite(12, "Leave");

    textL("The staircase going up is wide, accommodating as many as five people side by side. With enough space, you make it up without bumping into anyone, though you're sure you felt some eyes on your rear as you climbed the stairs. Looking back, you don’t see anyone staring at you but you still sense eyes admiring your "+bodyDesc()+" figure.\r\rDismissing the odd paranoia, you look around the area, deciding to get accustomed to the environment. The room looks like it covers the whole area above the first floor. Pillars here and there support the roof, standing above pillars and supporting walls you saw below, though these ones have four iron rings midway up their height. Many of these rings sport Lupans, both male and female, chained to the pillars, mostly nude or wearing exotic clothing, and exposing themselves in erotic displays, looking like they are enjoying themselves in front of their audience.\r\rA large area of the room is taken up by rigs. X-crosses, suspension rigs, stockades, padded sawhorses, and cushioning on the walls with more iron rings and padded metal restraints. Aside the pillars and walls with the rings, there are several wooden posts standing in various spots around the room, half of those also linked to what looks to be more personal 'displays' of Lupans acting as pets.\r\rIn the area filled with rigs, there stands a small gathering as submissive Lupans toy, tease, get teased, beg, seduce, and outright presenting themselves for their audience. The apparent Dominants either stand or seat themselves on lavish sofas and chairs; a group of voyeurs enjoying the exhibitions.");
    doListen = function():void{
        if (buttonChoice == 1) {
            if (breastSize > 2 && hips > 2 && body < 20 ){ textL("Feeling the need to relax, you find an empty seat in the corner of the room that looks like you would be alone.\r\rThe moment you take a seat on the soft comfortable cushions, a dark gray collared Lupan takes notice of you and makes their way over to you. Slowly approaching you (and crawling on all fours), you notice that they are male, and he is avoiding eye contact with you, focusing more on your "+legDesc(10)+" and "+legDesc(2)+".\r\rReaching your corner of the room, the collared male kneels at your "+legDesc(10)+", keeping his eyes low and bows his head. “Would you like me to dance for you?” he asks almost indirectly, his voice sounding timid.\r\rYou consider for a moment, looking over the dark fur of the male's slender, nude frame before you."); }
            else { textL("Feeling the need to relax, you find an empty seat in the corner of the room that looks like you would be alone.\r\rThe moment you take a seat on the soft, comfortable cushions, a collared Lupan takes notice of you and makes their way over to you. Getting closer to you (and crawling on all fours), you notice that they are female, and she avoids eye contact despite you almost getting lost in her beautiful deep emerald green eyes.\r\rReaching your corner of the room, she kneels before you, pressing her bare chest out to display her ample breasts, showing her Lupan qualities to you. Her legs spread to expose her snatch between her legs, her hands on her legs with palms up. “Would you like me to dance for you?” she asks, still avoiding eye contact and keeping her head down, her tone of voice very timid.\r\rYou consider for a moment, looking over the dark fur of the female's slender, nude frame before you."); }
            buttonConfirm();
            doListen = function():void{
                if (buttonChoice == 6) {
                    if (breastSize > 2 && hips > 2 && body < 20 ){ 
                        textL("The male Lupan with a collar before you nods and slowly comes to a stand, keeping his head down. With the stand, you have full view of his endowment, an already fully erect deep-red canine cock, with knot and all at attention out of his sheath.\r\rThe beat of the drums below rumbles softly through the floor, being felt through your "+legDesc(10)+". Tapping a toe to the rhythm, the slender Lupan male before you counts himself down, then starts with a spin, and slide, giving you a very nice view of his furred ass.\r\rThe dance quickly turns erotic, his hands sliding over his body as his torso weaves in concert, putting on a rather arousing display for his audience. His tail sways with his motions, in rhythm to the drumbeat.\r\rThe collar he wears has a slight jingle of an oval, golden tag bearing his name. With how he moves, you don't get a good view of it, but you don't believe he is available for an owner anyway. Instead, you enjoy his display, watching the slender figure move and twist, showing off his supple ass and throbbing knotted canine shaft.\r\rAfter a couple hours of watching him dance almost nonstop to the ever-changing rhythm of the drum-house below, he is called by a female Lupan wearing a deep red corset and short skirt holding a couple of leashes. This woman you assume to be his owner and you watch as he obediently heeds her call, bowing to you before crawling back to her on all fours and letting her hook a leash to his collar.\r\rSeeing as you became rather aroused by his performance, you decide to leave the Knothole for now, leaving the male Lupan to his Mistress."); 
                        doLust(Math.floor(lib/4), 0);
                    }
                    else { 
                        textL("The female Lupan with a collar before you nods and slowly comes to a stand, keeping her head down. With the stand, you have a wondrous view of her supple bosom and damp pussy.\r\rThe beat of the drums below rumbles softly through the floor, being felt through your "+legDesc(10)+". Tapping a toe to the rhythm, the slender Lupan female before you counts herself down, then starts with a spin, and slide, giving you a very nice view of her soft and firm furred ass.\r\rThe dance quickly turns erotic, her hands sliding over her breasts and slender belly as her torso weaves in concert, putting on a rather arousing display for her audience. Her fluffy tail sways with her motions, in rhythm to the drumbeat.\r\rThe collar she wears has a slight jingle of an oval, golden tag bearing her name. With how she moves, you don't get a good view of it, but you don't believe she is available for an owner anyway. Instead, you enjoy her erotic display, watching the slender figure move and twist, showing off her firm slim ass and damp cunny.\r\rAfter a couple hours of watching her dance almost nonstop to the ever-changing rhythm of the drum-house below, she is called by another female Lupan wearing a deep red corset and short skirt holding a couple of leashes. This woman you assume to be her owner and you watch as she obediently heeds her call, bowing to you before crawling back to her on all fours and letting her hook a leash to her collar.\r\rSeeing as you became rather aroused by her performance, you decide to leave the Knothole for now, leaving the female Lupan to her Mistress."); 
                        doLust(Math.floor(lib/4), 0);
                    }
                    hrs += 3;
                    doEnd();
                }
                else {
                    textL("Dismissing the submissive Lupan before you, you lay your head back and relax, listening to the dulled beat of the drum-house below and the mixed sounds of pleasure, conversation, and ecstasy around the large room.\r\rSometime later, you don't know how long, you take a heavy yawn and stretch, having your rest filled with wet dreams and imaginings of the events around you. Seeing not much else to do, you take your leave of the Knothole.");
                    hrs += 1;
                    doLust(10, 0);
                    doEnd();
                }
            }
        }

        if (buttonChoice == 3) {
            textL("Feeling like showing off, you walk to an open area of the room, swaying your hips a bit.\r\rAlmost right away, you notice you've already caught someone's eye, relaxing on a bench. A smirk crosses your lips as your motions, now directed in their general direction, make your body sway and twist.\r\rWhile turned away from your observer, you slowly strip off your "+currentClothes()+", letting the outfit drop to the floor. The patron you are entertaining, now standing and a bit closer to watch, a Lupan male, nude, with a full erection and deep-red throbbing knot, raises his brow to your naked backside, intrigued by what he sees.\r\rWithout breaking stride, feeling the beat of the drum-house through the floor, and your "+legDesc(10)+", you swirl your hips and twirl, giving him a round-view of your naked body. This gets both his brows raised, and leaving him licking his lips as he watches.\r\rYour now-exposed rump has his attention now, his eyes following it whenever you spin and twist as you dance before him. Having a bit more fun, you inch closer to the Lupan, teasing with your ass as you wiggle it, only to pull it away.");
            doNext();
            doListen = function():void{
                if (gender == 2) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your lower lips. You wiggle your ass teasingly and spread your pussy lips wide, giving him a nice view of your nethers. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you wriggle a finger into your lips with a moan, starting to please yourself in front of the Lupan male.\r\rOne finger not enough, you push in another, pulling out a loud moan as you finger yourself, getting lost in the pleasure.\r\rWet, moaning, and so lost in yourself, you don't notice the male now behind you. He grabs your hips, making you gasp in surprise, your fingers pulling out of your soaking wet cunn"+plural(16)+". The next thing you feel, is a thick, canine shaft thrusting into "+oneYour(2)+" puss"+plural(16)+", a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your quivering lips.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your cunny drives you up towards your climax, not quite reaching it. Feeling him grip your waist and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your cunny stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your pussy feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
                if (gender == 1) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your stiffened shaft. You wiggle your ass teasingly and spread your legs wide, giving him a nice view of your tailhole. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you start to tease your cock, lightly stroking it with a few fingers, starting to please yourself in front of the Lupan male.\r\rThe teasing not enough, you grip your rod tighter, stroking faster, pulling out a loud moan as you finger yourself, getting lost in the pleasure.\r\rHard, moaning, and so lost in yourself, you don't notice the male now behind you. The next thing you feel, is a thick, canine shaft thrusting into your ass, a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your tight hole.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your ass drives you up towards your climax, not quite reaching it. Feeling him grip your waist, and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your tailhole stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your rump feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
                if (gender == 3) { textL("Bending over and leaning up against a pillar, your hand slides down your body to your lower lips. You wiggle your ass teasingly and spread pussy lips wide and pressing "+oneYour(1)+" shaft"+plural(1)+" down "+legWhere(1)+" your "+legDesc(2)+", giving him a nice view of your nethers. With his almost-full attention (almost because he is now stroking his throbbing, pre-leaking canine dick while watching), you wriggle a finger into your lips with a moan, your other hand stroking and playing with your throbbing cock, starting to please yourself in front of the Lupan male.\r\rOne finger not enough, you push in another, pulling out a loud moan as you finger yourself, getting lost in the pleasure, stroking your shaft harder and faster.\r\rWet, moaning, and so lost in yourself, you don't notice the male now behind you. He grabs your hips, making you gasp in surprise, your fingers pulling out of your soaking wet cunn"+plural(16)+". The next thing you feel, is a thick, canine shaft thrusting into "+oneYour(2)+" puss"+plural(16)+", a very loud moan of mixed surprise and pleasure escaping you as you feel the throbbing rod slide in all the way to its knot, the inflation pressing up against your quivering lips.\r\rThe manhood thrust into you gets pulled, almost leaving your body before thrusting back in, and out, and in, getting into a pace. You brace yourself against the pillar, not fighting against his assertion.\r\rFeeling his girth fill your cunny drives you up towards your climax, not quite reaching it. Feeling him grip your waist, and breathe against your neck, you bite your lip to stifle a loud moan. His thrusts get harder, and harder, then -POP- your cunny stretches hard as his knot finally enters your body. You try to stifle a scream of ecstasy, but your own climax, your cock spraying your load all over the ground and pillar in front of you, and feeling him bite down on your neck, it is let loose for all to hear.\r\rThe following moments slowly dim into darkness as you faint, your pussy feeling nice and full, of both his knotted cock, and his thick, warm cream."); }
                doNext();
                doListen = function():void{
                    textL("A couple hours later, you wake up and find yourself laying on a bench, clothes stacked next to you, and feeling very relieved from the experience.\r\rGathering your clothes, and trying to stand, you wobble a bit, still feeling the fuck you had not long ago, your ");
                    if (vagTotal > 0) {
                        textLP("pussy");
                        doImpregnate(3);
                    }
                    else{ textLP("ass"); }
                    textLP(" dripping a bit from the cum still filling it as you -slowly- take your leave of the knothole.");
                    doLust(-Math.floor(sen/2), 2, 2, 5);
                    hrs += 2;
                    doEnd();
                }
            }
        }

        if (buttonChoice == 9) { knotholeMain(false);   }
        if (buttonChoice == 12) { knotholeLeave(); }
    }
}
