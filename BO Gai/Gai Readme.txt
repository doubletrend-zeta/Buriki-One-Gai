========================================================================================================
Buriki One Gai Tendo for 1.0
-------------------------------------------------------------------------------------------------------- 
Created by Bannana/DefamedRice/SoulBannana/Whim/whatever I decide to call myself because I'm an idiot
========================================================================================================
This is, if you've paid attention to the names, Gai Tendo from Buriki One. Silber was really just a
vehicle for the system so it was built around a character with very little effort needed non-system wise.
Therefore, this Gai is the first of many ways of me working within the Buriki One system guidelines. 
He is the first to be built around accurate(?) constants (walking & running), though it's important to note
that Buriki One has forward hops and I am dealing with the running in XI. I'm gonna put an asterisk on
"accurate" because MAME isn't handling Buriki One perfectly just yet, and for all I know artmoney isn't
gonna give me perfect results because of that. I've done my own work sorting through thousands of
integers to find ones that make the most sense, so bear with me for the moment. Once newer versions of
MAME are released I will come back and fix up the constants if I've discovered I was wrong (which is
very possible).

Gai is a bit arranged moveset wise. XI was pretty accurate in most attacks and animations, but his
grappling was completely different (come on SNK, could you at least TRY???). All of his basics have been
moved around (Apparently he didn't have a low roundhouse in XI?), the one basic that is completely the
same is his DF, which was F in Buriki One. It takes the place of weak attack because it's an open palm
strike and the weakest looking of all of them. Some of his specials remain, albeit in different commands 
because of how I developed the arranged system. Hypers are MUGEN only (no power bar in Buriki One, it was 
REALISTIC, unlike what I'm creating because lolmugenbalance), as per the usual like Silber. I've tried to
have the attacks that exist in Buriki One have accurate velocities, and for the most part they do with
the exception of the Wheel kick because the animation for it in Buriki One is incredibly awkward and
poorly done.

Be sure to read the various extra text files lying around. They provide important information about the
system.
--------------
If you find any bugs, contact me at:
doubletrend.zeta@gmail.com
or send me a message or post in the thread on MFG
--------------
Credits

Wuwo - Sprites & Sounds (R.I.P. Mugen China)
SNK - Buriki One
Feedback People - You know why
Seravy - Various bits of code
JNP and Vans - Artmoney tips to get me back into shape
2OS and everyone else - help with scaling issues and pointing out obvious things I overlooked.
--------------
I've got nothing else to say. Nothing good ever came from an asshole on a soapbox.
________________________________________________________________________________________
How the controls work
________________________________________________________________________________________
Be sure to check out the CMD & Common log for a short description on the system.
--------------------------
Movement
--------------------------
Mirrored to make it so the forward direction is always closer to the side you face
(Reverse Commands are located in the CMD)

Facing Right (P1 side)
A - walk forward
B - Walk back
A,A - Run forward
B,B - Hop Back

Facing Left (P2 side)
B - Walk forward
A - Walk back
B,B - Run forward
A,A - Hop Back

D - Crouch (hasn't changed from normal controls)

D,UF - Grapple Grab
A and B or Forward and Back on the stick - Grapple break (If you are fighting a Buriki One Character)

D,B - Low Dodge
B,B - Mid Dodge
U,B - High Dodge

Hold DB - Low Guard
Hold B - Mid Guard
--------------------------
Normal Attacks
--------------------------
DF - Weak Attack
F - Medium Attack
UF - Strong Attack
--------------------------
Special Attacks (Uses Up and Down [with exceptions])
* - Accurate to Buriki One counterpart
** - Modified form of Buriki One counterpart
--------------------------
DF,DF - Weak Attack Chain*
F,F - Medium Attack Chain
D,U - Spinning Axe Kick** > UB - Saddle > UB - Grapple attack
U,U - Air Heel
U,UF - Knee to Body
U,F - Side Kick*
D,D - Fake* > UF - Uppercut*
Charge D,DF - Sweep*
Charge B,F - Spinning Fist*
--------------------------
Super Attacks (Uses Back)
--------------------------
B,UF - Stagger Punch (1000)
B,U,F,D,B - Thrown from the Saddle (in Saddle) (2000)
B,D,F - Beatdown (3000)
--------------------------
How to Reverse Commands
--------------------------
Open up Misc.cns

Inside that there is a -3 state that says "reverse controls"
change the variable value to either 0 or 1

0 - default (A = forward, B = backward)
1 - reverse (A = backward, B = forward)

Enjoy

========================================================================================================
Log v1.05 - 12/14/2015
________________________________________________________________________________________
Issues Addressed
________________________________________________________________________________________

- Animation timings tweaked
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- None at the moment (may be overlooked)
=====
Log v1.0 - 2/8/2015
________________________________________________________________________________________
Issues Addressed
________________________________________________________________________________________

- Edited all air attack states
- Fixed no air velocity for being hit by C and special attacks
- Cornerpush and other misc things
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- None at the moment (may be overlooked)
=====
Log v.9 - 1/31/2015
________________________________________________________________________________________
Issues Addressed
________________________________________________________________________________________

- New portrait
- Made it so Saddle drains grapple bar
- Fixed position issue when recovering from Saddle vs Buriki One characters
- Fixed Buriki One grappling not exiting the grappling states correctly
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- None at the moment (may be overlooked)
=====
Log v.9 - 1/25/2015
________________________________________________________________________________________
Issues Addressed
________________________________________________________________________________________

- Sounds
_ Hypers
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- None at the moment (may be overlooked)
=====
Log vBETA #2
________________________________________________________________________________________
Issues Addressed
________________________________________________________________________________________

- Edits to Misc file
- Grappling
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
- Sounds
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- Find any I might have overlooked!
=====
Log vBETA
________________________________________________________________________________________
To Do
________________________________________________________________________________________

- Double check constants' velocity in the future
- Grapples
- More sounds
________________________________________________________________________________________
Bugs (Mostly the same bugs as in the CMD & Common log. Head there for more detail.)
________________________________________________________________________________________

- Find any I might have overlooked!
========================================================================================================