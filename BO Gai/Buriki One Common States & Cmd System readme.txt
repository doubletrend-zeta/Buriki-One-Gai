This Buriki One styled system is a project I began probably about 2-4 years ago and dropped when I grew
tired of MUGEN. Due to lack of something to do with all the free time I have after class I decided to 
pick it up and finish it. It's going to be implemented into one character first, (which will be Silber)
mostly because I don't know if I want to return to MUGEN, but if circumstances continue I might use 
it to create grappling characters that make full use of the 8-way joystick attack system.

Thanks to:
My buddy who found a Buriki One cabinet in a rundown pizzeria arcade. Without playing it for the first 
time I wouldn't have thought of starting this years ago.

Cyanide for dealing with my lack of understanding how coding worked years ago. I finally understood
what you meant, it only took a couple years to grow up and learn that you have to THINK to code.

SupremeJudge/The_Chosen_One for gameplay videos (because I no longer can find the Hyper64 at that
arcade) and his amazing FAQ that is unfortunately now offline. Thanks for making this SNK buff's dream
come true, because without all the information you provided about how deep the system was, I never would
have been able to do this at all.

Wally Domey for his short FAQ that I stole the mechanics table from.

My friends for realizing that I can't just only play games with them all day and I have to work on
something so I don't end up bored.
========================================================================================================

For an explanation of it and a list of mechanics added, going to be added, and dropped, check out the 
section below:
--------------------------------------------------------------------------------------------------------
Buriki One, for those who haven't played it, was about as close to MMA SNK could get in 1999, but that
shit doesn't matter. The setup is different in that two buttons dictate movement and all attacks and
the like come from the 8-way joystick. Basic attacks were done with the forward sections of the stick
and special attacks were done based on stick motions using all 8 directions. My goal originally was to
retain the unique 8-way joystick system for attacks and then take whatever else I believed would work
in MUGEN. This is what I have so far, and I don't know when it'll be done. Hopefully soon so I don't
have to deal with these frustrating bugs.
-- Bannana, 12/28/12


Buriki One Mechanics

   --Joystick and Buttons--
   Button A: Walk to the Left		Added
   Button B: Walk to the Right          Added
   Press button A twice: Forward Dash   Added
   Press button B twice: Back Jump      Added
   Press button A and B: Block          Added --Tweaked-- Back on the Stick

   Tap Down-Forward: Low Strike         Added
   Tap Forward: Middle Strike		Added
   Tap Up-Forward: High Strike          Added

   Tap Down: Low Guard                  Added --Tweaked-- Back while crouching
   Tap High: High Guard                 Voided
						
   Tap Down-Back: Low Dodge		Added --Tweaked-- Down, Back
   Tap Back: Middle Dodge		Added --Tweaked-- Back, Back
   Tap Up-Back: High Dodge		Added --Tweaked-- Up, Back

   Balance Gauge			Added
   Judges Decision			Added

========================================================================================================
This is the bug and change log for the system.
_______________
v1.0 - 1/17/15
Added death by grappling into the system. I completely forgot about it, so when you killed something you
had to wait for the grappling time to end for the round to end. This uses animation number 6102, but uses
the same code as grapple breaks.

Known (somewhat rare) bugs:
- That "disappearing" thing with the bar when you hold back still exists. Like I said before, go figure.
The AI can use this to make the bar flicker.
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
_______________
v1.0 "More Misc Housekeeping" - 12/21/14
Small system update dealing with the balance system. I've split the CNS into three types: Small, Medium,
and Large. This has to do with how big of a bar characters have based on fighting style and size. Gai and
Silber both have medium sized bars. Smaller characters and or those less based on grappling will feature
small balance values whereas larger characters and those entirely dependant on grappling will have larger
values.

Known (somewhat rare) bugs:
- That "disappearing" thing with the bar when you hold back still exists. Like I said before, go figure.
The AI can use this to make the bar flicker.
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
_______________
v1.0: "Misc. Housekeeping" - 12/6/14
While I'm compiling Gai's sprites I've been working at fixing a few of the annoying bugs that are in
the system.

First, I've fixed guarding. You can now guard when holding back, just as you normally would in a fighting
game. Crouching guard is still Downback on the stick though, because I figure it's more natural to press
downback than pressing the back button while crouching (that's a bit silly).

Second, I've fixed up a bunch of balance bar animations, making sure I find all of the ones that get
stuck in hitstates and the like to return prior to returning to the idle state. This means being hit into
the air while running for example.

Third, I've fixed the bar not shaking during combos. It was the easiest fix that took me hours to realize
because I didn't think about it. There are certain characters who will put you into states where the
bar won't exist (i.e. Kurai Naito's Mr. Karate). These are incompatabilities and I cannot foresee all of
these or undergo the effort to fix them all.

Fourth, I've fixed the grapple gauge not always appearing when you're walking and then grab. I've also
made sure you cannot grab while walking. There is a natural bug in the bar where if you hold a button
(it seems to usually be up or right), it will cause the bar to be stuck in the walking forward animation
until it is destroyed and another explod is made. This is something the AI might exploit, but otherwise
it's easy to avoid.

Fifth, I've fixed the bar getting stuck in motion loops when you're moving and then enter another state.
It'll still get stuck when you hold down a stick motion when you let go of walking, but this has to do
with command buffering messing with the 

Next, I'm splitting all system settings (-2 and the like) separate from the character cns for easier
editing of the system files and being able to make universal ones I can copy over to characters without
having to edit everything manually when I make updates to the system. I can also release system updates
on their own so no one has to redownload the same characters every time I make a minor system updates.
Both the Balance Gauge and Grappling States will have their own files for easier editing on my part.

I also used this to generate a widescreen (720?) version of the bars, seeing how that resolution is
starting to get a fair amount of content. I'm not a huge fan of widescreen because it's too squashed for 
my tastes, but I should make the system compatible so everyone can enjoy it.

In order to use the bars, just change un-; the 720 balance gauge and grappling states CNS files and ; the
standard ones.

Known (somewhat rare) bugs:
- That "disappearing" thing with the bar when you hold back still exists. Like I said before, go figure.
The AI can use this to make the bar flicker.
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
_______________
v1.0 - 11/27/14
Work on Grapple gauges FINALLY underway after a very long hiatus. The gauge states are made up of three
sections: The first is the transition gague, followed by the removal of the transition gauge, and then
the states for the gauge itself. Both transition sections include the states for entering and exiting
grappling.

Building this took an immense amount of time not because it was difficult. The way of doing it was
actually really simple, what made it take so long was that I recompiled animations 3 times and recoded
everything every time I changed something. Originally the disappearance of the balance bar and appearance
of the grapple gauge was one animation, but because both required different scaling and positions I
couldn't set it up without messing up the other and modifyexplod had already proven it was useless for
this kind of on the fly stuff. What also proved to be an issue was that because it existed in the -2
state I couldn't specify the explod animation to be changed so there was no way to work around it.

What I did instead was make an animation for the balance bar to disappear and then edit the grapple gauge
animation so the gauge came in and then looped at the current location. The grapple gauge was coded in
the -2 states with the other bar states, but the transition animation plays separately within states 6998 and 6999 which are transition states for both attacking and being attacked. These states exist to allow
the animation to play and change the bars and then feed directly into the rest of the grappling states.

The states flow in this order:
Transition states (6998-6999)
Grappling state/held by grapple state (6000/6050)
Attacking/Being Hit states (6001-6049/6051-6099) - Return to 6000/6050 if grapple not broken or finished!
Broken Grapple states (6101-6103) - If target breaks grapple
Standing state (0)

Another thing I changed was the filler for the grapple gauges. They scaled terrible because I forgot the
arrow would look terrible scaled because it would just push in. Therefore, I've split the arrow into two
sections with the bar part being affected by scaling and the point to exist purely for cosmetic reasons.

Now with that, there's some limitations. Since I can't scale the arrow, the bar threshold for the grapple state ending is higher than it is in the actual game. In the source, it ends once the bar depletes completely, which is 0. If I have the bar scale to 0 in this, it goes beyond the gauge and looks bad. In
order to make amends because the scaling isn't that sophisticated, the threshold is when the stem of
the bar reaches the arrow, which is around 50-70.

Bar replenishment was an issue because it was coded in that the bar would not rise in any hitstates, but
I realized it would rise during grappling states for the attacker because his bar would naturally fall as
it is meant to, but would also replenish because he was not ina  hitstate. It actually took two months to
mull this over when I later realized that all I had to do was but an XOR expression between the hitstates
and the grappling states.

Grabbing is now separated into two kinds: a standard hitdef for when fighting non-Buriki One characters,
and a Buriki One specific one that has p2name and authorname failsafes. What happens is that grabbing
takes both characters to my favorite kind of state: an inbetween where the differences are examined.
There are three sections to the inbetweens: Buriki One character & success, Buriki One character &
failure, and Non-Buriki one character. If you are a Buriki One character, it looks at their variables and
determines if it is a successor not, either sending you to a grappling breaking state or the inbetween to
enter grappling mode. If you are not a Buriki One character, it skips the grappling mode inbetween state
and goes straight to a normal grappling attack state.

Thanks to my brother for some help on certain things, but really mostly some workarounds for the
transition animations and bouncing off logical expressions that I was having trouble thinking about
without a second opinion.

Known bugs:
- That "disappearing" thing with the bar when you hold back still exists. Like I said before, go figure.
The AI can use this to make the bar flicker.
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
- Bar hit anim only plays once for a combo of hits (i.e. if hit by a light attack canceled into a medium, only the light shaking anim will play and the medium shaking anim will not)
- When walking/running forward and then grabbing, the grapple gague will sometimes not appear.

_______________
v0.99 - 7/31/13
Small (or large, if you think it was a huge issue) bug fix having to do with the AI compatability with
the balance bars. The AI was duplicating them because it was bypassing the state checkpoints for the
explods. Big mistake on my part because I didn't realize that the AI completely ignores states and
freely flows between them. I fixed it by adding explod number checkpoints for each part of the bar so it
would prevent the AI from duplicating the explods whenever it moved. Also works as a failsafe in general
for the system.

Known bugs:
- That "disappearing" thing with the bar when you hold back still exists. Like I said before, go figure.
The AI can use this to make the bar flicker.
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
- Bar hit anim only plays once for a combo of hits (i.e. if hit by a light attack canceled into a medium, only the light shaking anim will play and the medium shaking anim will not)

_______________
v0.99 - 1/??/13
The Balance Gauge system is now 100% complete. It actually took much longer to make it than I originally
hoped. I spent about half a day coding the original system, BUT what I discovered was that "modifyexplod"
doesn't work as it should and I had to change everything and use a new system to use the bars (requiring
me to create hundreds of animations for every type of movement within the bar's system).

What hurt me more was that I had to do these animations because in my opinion bindtime does not work as
it should. If I put bindtime to 1 it activates after 1 tick. So if I say "trigger1 = stateno ="blah blah"
I expect the explod to move while you're in that state. But that's not what happens. Bindtime activates
AFTER you leave that state, which makes no sense. If the trigger is that you're in that state then
bindtime should be active IN that state. If explods were coded efficiently at all it would be much easier
to actually move them, and that's REALLY unfortunate.

I've added several new states to the common as inbetweens for movement to make sure the bar moves
smoothly along with you. They literally just exist as states so the bars don't double up and overlap as
it returns to the original position.

---------------------------
breakthrough - 1/23/13
I noticed my algorithm for the scaling was actually incorrect!
i.e. I screwed up my parentheses and didn't realize it!

So instead of it being
0.00+(0.3*(var(47)-160)/160)
it was actually
0.00+(0.3*(var(47)-160/160)
which, if you know your basic algebra and order of operations means that var(47) isn't subtracting 160 
first, but 160 is actually being divided by itself first, screwing up the entire formula.
WHOOPS!

If you're curious, the final correct function is:
0.00+((0.3*(var(47)))/160)

----------------------------
Updates - 2/21/13
Implemented facing and switching. The grapple bars are the only things incomplete because Silber does
not have any grappling moves. This will be patched in the future.

Switching as it is may still be a bit buggy. I know that when you switch sides it does not completely
register the change until the code recognizes another input. I'm looking into a solution for this, but
at the moment it's one small bug.

In other news, the bars will never be constant. I've written in exception for being hit, but you can't
always count on it being perfect. Custom hitstates will always be taken into account in my characters,
but I can't keep track of every character's custom hitstates, it's just impossible. Players will have
to live with the fact that if you fight non-Buriki characters the bars will be buggy.

Bugs:
- When C hits a target the base bar reappears
- Recognition of side switching is buggy
- Bar hit anim only plays once for a combo of hits (i.e. if hit by a light attack canceled into a medium, only the light shaking anim will play and the medium shaking anim will not)
_______________
v.95 - 1/4/13 - Dodging & Fixing movement 
Added Dodging. It's funny how you're so against something at one point, but end up giving in at the end.
I originally didn't want dodging because I believed it was a mechanic that didn't fit in MUGEN. Then I
picked up one of those cool new characters and, playing Silber, I learned that maybe it wouldn't be too
bad to have a dodge after all. High dodge takes the place of guard for air attacks, since I looked
through the common again and I just don't think I can make a standing guard for air attacks because I'm
assuming the whole guard thing is hardcoded into the system and only activates within those states in
the common.

On fixing movement:
I'm not sure how this happened, except that it happened slowly. First, we need to understand that a large
amount of things within the common pertaining to movement and guarding were changed over the last couple
of years. Most it it turned out to be counter productive, because all it did in reality was screw with
everything. This was the calculated step-by-step process I underwent to fix the mess:
--------
Part 1 - Realize what caused the problem
--------
Right away, the first thing we needed to do was reactivate run and make it and hop back double tap. That
was easy, though it required wading through the common and figuring out what I changed was actually
stable in practice. I had muddled the lines between "FF" & "BB" with "holdfwd" & "holdback," which made
it hard to figure out which one was actually correct. Much of my facing states that dealt with control
mapping swapping when you changed sides fell into this (though movement was double tap at the moment,
if I edited something that said "holdfwd," it messed up the moment completely)

--------
Part 2 - Carefully make changes to all the conflicting commands
--------
First off, all "holdfwd"s and "holdback"s in the state 100 in the common were changed to the respective 
commands "FF" and "BB" to make sure nothing was twisted with the hold commands. And I fixed that problem.
I did it by overriding what the game wanted by making a -1 state for it. I fixed the first part, but what
remained frustrated me the most.

--------
Part 3 - How the hell do I deal with broken animations?
--------
In the 4 times I tried fixing this before, what stopped me from finishing wasn't that I didn't know how
to solve it. I knew how to solve the problem. What stopped me was the fact that when I changed everything
back to normal, it was more screwed up than it was BEFORE when you couldn't use all the movements. What
I essentially had to deal with was the animation starting, and the character moving, but after about 3
ticks the animation would stop in place and the character would still be moving toward the opponent.
To make matters worse, when you double tapped for run, it lasted 1 tick and then brought you back to the
standing animation.

The question was more like "why is it like this" than "how do I fix this garbage?" What the true issue
was in that common was in the statedef for walk:
[Statedef 20]
type    = S
physics = S
anim = 20
sprpriority = 0

When I first changed movement, I had added "anim = 100" so that when you held down a, it would make
walk run. I don't even remotely know why I kept it there, because I later voided the walking state and
just changed the "FF" command to hold a so that it would go to the run state, which I changed the
animation to 20 (go figure why I wrote stuff like this years ago, I was being really stupid). You
wouldn't believe it, and this is generally why I'd tell people NOT to screw with the common even though
I did that for 2 years, but adding that little "anim" section in the walk statedef ruins EVERYTHING. All
movement is compromised when you add that because MUGEN somehow cannot comprehend that one line of code.
(I swear all the "teaching vs first hand experience" lectures I recieved from my uncle are starting to
ring in my head right now).

--------
Part 4 - How I learned to stop worrying and love the common
--------
BUT I WASN'T DONE YET! WHERE'S RUN AND HOP BACK? MIA? KIA? POW? WHAM?
Well, there's a story for that too.

So I had solved the walking dilemma and went down to Run and Hop Back. I cross-checked my common with
the Vanilla common and found nothing was different except for my facing changestates for control
swapping. The same was true for Run Back. This generally meant it was a command error, so I went back
to double check the new "walk fwd" and "walk back" commands to see if they might be interfering (and to
see if I even needed them anymore)

AND WHAT HAPPENS?

It turns out that if I void the walking commands I made, the running commands work fine, but walk no
longer works. If I turn on the walking commands, then run no longer works and I have walk in perfect
condition once again. It was almost as if MUGEN and I had reached an impasse; it wasn't about to give me
what I wanted, and I almost just wasn't willing to try anymore. But I had to because I had already
invested at least an hour in this shit.

But why couldn't they exist together? It didn't make any sense? Was walk meant to be hardcoded in and
run meant to have a command, and it wouldn't work any other way? I didn't believe it, that's far too
counter-intuitive, so I did the same thing to Kung Fu Man, and well... It canceled the run. 

All I have to say is "fuck Elecbyte." The goddamn truth is stranger than fiction.

--------
Part 5 - The solution arises
--------

After 2 hours of sitting around thinking about how to solve it, I had the idea to override walking over
time. If I couldn't have run normally, I'd force the common states to use it, so no matter what the
active commands were, I could still get my way.

The first thing I was able to do was get the hop back working. I doubt this was the best code, BUT it
got my back hop working 100%
[state 20 change to hopback]
type = changestate
triggerall = anim = 21
trigger1 = command = "BB"
value = 105

A similar code was applied to walking for the run, and I could see the change it made. Run phased in for
1 tick and then became walk again. I didn't have it yet, but I was 100% on the right path.

I voided state 20 (walk) because I felt it was too tied to the engine's system. In order to override it
I created state 99, which was the intermediate state between running and standing. When you press back or
forward, you enter state 99. From state 99 you can double tap either to enter the correct state.

THEN the one thing you had to do was go to state 100 and set ctrl = 0 to the statedef so it wouldn't
break from the running animation.

I must be a genius because that's literally the only way anyone could have solved this mess I created.
But now, it's done! One of the last important base mechanics of the Buriki One system is done!
_______________
v.93 - 1/3/13 - About Judges' Decision
Judges' Decision has now been added (with much thanks to Cyanide for pointing out my variables' trigger
problems). It takes the form of two variables: 40, which calculates P1's score, and 41, which calculates
P2's score. The system is only active for one character to prevent it from overriding itself if two
characters with it fight. It's always active for the home team (P1), but there's an optional trigger
in the varset state (located in the -2) that's for if you wanted to play arcade as a Buriki One
character. (In arcade mode the AI is home team, so you just need to make sure your void the first
trigger and activate the second for teamside = 1)

When the Judges' Decision is active, you gain points for each attack. All attacks are worth 100 points,
except for grabs and grapples, and are scaled based on the type of attack. Grabs always give 300 points,
and grapples give 400 times the hitcount of the grapple (which is how long you hold the grapple before
your gauge runs out or your opponent breaks it. Grapples are based on a system where you input follow up 
commands during the grapple. Each follow up command counts as one hit and lowers the grappling bar each
time. When your bar is out the grapple ends.)

At the end of the round by time out, the scores of the variables are compared. If var(40) is higher, then
P1 wins. If var(41) is higher, then P2 wins.

IMPORTANT INFORMATION ABOUT COMPATABILITY
The Special Custom States file (name is sorta misleading, it's just a file of mandatory state numbers)
lists the states that affect the score system. These are non-fluctuating, meaning attacks in Buriki One
characters with both the Judges' Decision and Balance Gauge must always be within those boundaries.
If they're not, this happens: www.youtube.com/watch?v=fx2gK1Mv8BU

The Judges' Decision system is designed around these states, meaning that if you fight against characters
that break the rules set down in the Special Custom States file, there's no guarantee the variables will
calculate correctly. 

To be done:
- Debugging while I figure out where to get balance gauges made for me
_______________
v.9 revision #2 - 1/1/13
Fixed the walking in place when you press Up bug. Pressing up will now return you to the standing anim, 
so if you press it in movement now it will no longer catch you in an animation loop.

_______________
v.9 - 12/30/12
All guard bugs have been fixed. The major problem was that when I originally edited the guarding section
of the common, I changed commands around so that when I went back to fix them I forgot what the
original commands were. It only took reading the vanilla common to find my errors (half of the
"holddown" commands that are standard were changed to "holdguard" (which is really just "holdback" with
another name because "holdback" was already changed and in use for movement), so I just had to fix those
and the bugs were fixed).

In other news, this is pretty much 99% of the system. The remaining is mostly additional things that I
could add later. I'm treating high guard as an extra thing until I figure out how to edit the air guard
code so that it allows you to guard air attacks while on the ground. In my opinion, the movement is fine
as it is and I won't be looking to add the two voided sections there. Dodge is extraneous in my opinion,
so I'm leaving it out. There isn't much demand for a dodge in MUGEN because the whole "meta" shit
behind a lot of fighting games makes dodging useless. Dodging was good in Buriki One because it was a
game filled with grapplers and a few normal fighters, and it was a good way to escape the clutches of
Sokolov so you wouldn't be submissioned so early. But I wouldn't even say Dodge played a huge role where
the game was broken without it, because the balance gauge did more to even out grabs than dodge would.

When it comes to the last few mechanics, it depends on how I feel. The balance gauge has a 50% chance of
actually being implemented, but it would only matter in grapplers, which is where it hits the wall.
All the balance gauge does is track how easy or hard it is to grab and be grabbed. I would explain it,
but I'd do it terribly so I'd rather quote The_Chosen_One (undisputed king of Buriki One) from the 
Neo-Geo forums:

"Balance Gauge-
Every character has a balance gauge shown on the bottom of the screen. This balance gauge effects three 
different things from what I have found.

First, it impacts how easily you are thrown, countered, or shaken(shook) off from grapples.

Second, when performing submission holds you repeat the joystick direction then back to neutral, the 
amount of times you can repeat (and thus the damage done) depends on how full your balance gauge is.

Third, if you are the receipient of a submission hold it is SOMETIMES possible to lessen the damage or
return some of it by pushing the joystick left to right repeatidly. This is done a variety of ways
from pulling yourself across the mat to kicking your opponent while they are performing the move.
The amount of times you can do this is determined by your balance gauge.

As well, I also wanted to note that the size, starting point, and rate at which the balance gauge will 
fill up will difer according to which character you have.

That should help a bit. When your balance gauge is empty they can throw you around like a rag doll
unless you counter. Whether or not you can counter will depend on the the grapple they attempt on you
and which character you have.

When they begin to grapple you (Ivan for instance) you can shake the joystick back and forth and
sometimes you will shake them off. That again depends on how much balance your character has as compared
to how much your opponent has. Some characters have a huge advantage in this area such as Ivan [Sokolov]
who has a huge balance gauge, while Takato has a rather small one."
						-- The_Chosen_One, 8/25/2005

The deal with the balance gauge is that it requires a ton of work. I'm not converting Buriki One
characters, I am just converting the system. This means for every Buriki One character I'd make, I'd
have to create balance specs for them depending on their fighting style, which goes beyond just normal
character conversion because I'm now adding something entirely new which requires balancing every time
I make a new character as the standards would change as more are made.

The second problem is the main one: what does this mean in MUGEN? The hardest thing about converting
systems to MUGEN is figuring out how they'll affect characters in other systems. If a Buriki One
character had a Balance Gauge, would that make it so he could break out of custom states of non-Buriki
One characters? And if it didn't, what's the point of even making such a system if it's just there so
the system ends up being more accurate to the source. Accuracy is fine and all, but it really depends
if it's worthwhile to actually apply the system to the game. It's the same reason why I believe Dodging
shouldn't be converted; it really has no place in MUGEN. I could always add the bar for aesthetics, but
I'm not a flashy aesthetics kind of guy, I'm a tight system type of guy and I'd rather make sure the
system works fine than waste my time making Balance Gauges for every character.

Lastly, Judges Decision. In Buriki One Judges Decision only comes into play if time runs out. It would
be easy to make a variable that tracks your score based on what moves you land and how often you are hit
or grabbed. It's very simple and could easily be implemented, but what it requires is to completely
override the time out system already established, where if at the end of the round, even if you have
lower health you could have more points because you grappled your opponent out the wazoo, therefore
making you the winner. I can do this, but is it right to override the time out system in order to do
it?

Anyway, this was a lot longer than it should be, but I feel like v.9 is jsut about the final phase of
the system. Everything after this is just debugging and deciding whether to add the aforementioned
extraneous mechanics. When I first started making this system in late 2008 it was an idea that I didn't
even start coding until about 2009 or 2010. I'm surprised it actually took me less time than I thought:
only about two weeks because I made it in conjunction with Silber. However, I'm really glad I was able
to get this done, and I'll always look back on this being the most important and best thing I've ever
made (mostly just because I'm shit at making characters).

Bugs:
- Pressing Up while moving will cause you to walk in place (I'm almost going to argue that maybe I can't
fix this because it's hardcoded into MUGEN for jump to be Up. Too bad.)

_______________
v.85 - 12/29/12
I believe I've solved the hopping back while guarding sprite/animation hiccup. For some reason the game
didn't like that if you guarded you could hop back, and I'm pretty sure the ability to do that was
completely my fault when I rewrote sections of the common. HOWEVER, knowing that block is somehow
bound to the back of the joystick by the engine makes it easy to solve, and all I really had to do was
write a command using the back of the stick to deal with this and then create an exception for hopping
back being invalid when that command is applied.

Other changes:
- Readded crouching, due to A) it IS in the realm of possibility for grappling, I'm just stupid and
didn't want it even though I actually grapple and wrestle, and B) it allows for crouch guarding, which
is VERY important. However, crouching is purely for guarding and there are no attacks while crouching.
There is still no method for guarding air attacks, and there might never be, which is unfortunate.
The good thing is that once all debugging is done with guarding, the system will essentially be complete
outside of the miscellaneous systems (balance gauge & judges decision). 

Bugs:
- Guard animation spasses out and gets caught in a strange stand to crouch loop
- Pressing Up while moving will cause you to walk in place 

_______________
v.83 - 12/28/12
Important change regarding applied movement. Switching sides will now proc a movement change depending
on what side you face, similar to how MUGEN treats the directional keys. To illustrate:

Normal P1
a = forwards
b = backwards

Normal P2
b = forwards
a = backwards

When you switch sides, these two will change with you, P1's controls ending up as P2's and visa-versa.
Thus, it becomes:

P1 opposite side
b = forwards
a = backwards

P2 opposite side 
a = forwards
b = backwards

Other changes consist of:
- Normal walking is now voided, After guarding if the player held down hop back and guard the character
would move back. Voiding this removes the issue (but voiding things isn't that good of a solution)
- Guarding bugs concerning getting stuck MIGHT have been fixed, the results are unknown as of now
- 

Bugs:
- Guarding is still holding back on the joystick
- Pressing Up or Down while moving will cause you to walk in place
_______________
v.8 - 12/23/12
The system is rough at the moment, mostly full of messy code and voided sections, unrefined and
most likely comparable to patching up a large gash with a band-aid (read: the common is a mess, don't
look at it). However, it is still 100% compatible and runs fine, just be aware.

Changes made:
- The a and b buttons are Forwards and Backwards, respectively. Walking is currently FUBAR until I
take a detailed look over the bugs afflicting it, so they're voided at the moment and run is replaced 
with walk. For backwards movement there is a hop back. Walking backwards is voided because it's
uneeded and redundant to have it when hopping back is a better way to disengage.

- Attacking relies on an 8-way joystick. Downforward, Forward, and Upforward and Weak, Medium, and
Heavy attacks, respectively. Special moves are combinations of these with Up and Down, and Super moves 
are combinations of these as well as Downback, Back, and Upback. This is the mandatory template and no
characters will/should break it.

- There is no jump or crouch. This is not to promote a disadvantage whatsoever, but to adhere to the
notion of grappling as a ground only form of combat. Crouching as a mechanic itself MIGHT be reapplied
to the system in the future, but as of now it overrides the 8-way joystick when you press any form of
Down and I don't want to deal with it at the moment.

Known Bugs/To-Be-Fixed Shit (you can't expect me to do it all just yet):
- Walk doesn't exist until I figure out why
- In a recent cmd & common editing session the guard was returned from holding b (backwards) to holding
back on the joystick. I'm not sure how this happened, so bear with me for the moment.
- Crouching overrides 8-way joystick for Down movements (crouch is voided for this sole reason)
- Either people will have to get used to a & b being constant (i.e. unlike with arrow keys, a will
always be forwards, EVEN IF you've switched sides with the opponent), or I will try to force a change
of commands everytime you end up on the other side. Honestly I don't think it's a big deal (nor do I
think I can override this thing), but if it ends up being very bothersome I will "fix" it.
- Pressing Up or Down while moving will cause you to walk in place
