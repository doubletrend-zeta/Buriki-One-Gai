; The Buriki One System CMD.
; Usually someone would edit these to suit their playstyle (i.e. "i have a
; keyboard i cant do fc's asfjklfjasd")
;
; But you shouldn't edit it to a certain point, because I'm afraid it might
; fuck with the delicate strings that are somehow holding this system together.
; Trust me, I've already screwed up the blocking motions as of v0.8, don't edit
; beyond the point I specify.
;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;These are always constants

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Stagger Punch"
command = ~B,UF
time = 20

[Command]
name = "Beatdown"
command = ~B,D,F
time = 20

[Command]
name = "Thrown from the Saddle"
command = ~B,U,F,D,B
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "Spinning Axe Kick"
command = ~D,U
time = 20

[Command]
name = "Air Heel"
command = ~U,U
time = 20

[Command]
name = "Knee to Body"
command = ~U,UF
time = 20

[Command]
name = "Side Kick"
command = ~U,F
time = 20

[Command]
name = "Fake"
command = ~D,D
time = 20

[Command]
name = "Uppercut from fake"
command = ~UF
time = 20

[Command]
name = "Sweep"
command = ~10D,DF
time = 20

[Command]
name = "Spinning Fist"
command = ~10B,F
time = 20

[Command]
name = "Low Dodge"
command = ~U,B
time = 20

[Command]
name  = "Mid Dodge"
command = ~B,B
time = 20

[Command]
name = "High Dodge"
command = ~D,B
time = 20

;--------------------------------------------------------------------------
;Command grabs
;--------------------------------------------------------------------------
[Command]
name = "Grab1"
command = D,UF
time = 20

[command]
name = "saddle"
command = UB
time = 20

;==========================================================================
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; Do not touch anything below this Do not touch anything below this
; Do not touch anything below this Do not touch anything below this
; Do not touch anything below this Do not touch anything below this
; Do not touch anything below this Do not touch anything below this
; Do not touch anything below this Do not touch anything below this
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;==========================================================================
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = a,a
time = 10

[Command]       ;This is a reverse movement command just in case the player
name = "FFr"     ;needs it i.e. their a button is to the right of the b button
command = b,b   ;(which I think might be normal anyway)
time = 10

[Command]
name = "FFB"     ;Required (do not remove)
command = /b     ;This is a separate command for walking when on the other side
time = 10        ;It's the only way to make sure that Hop Back doesn't get held

[Command]
name = "FFBr"     ;Required (do not remove)
command = /b     ;This is a separate command for walking when on the other side
time = 10        ;It's the only way to make sure that Hop Back doesn't get held

[Command]
name = "BB"     ;Required (do not remove)
command = b,b
time = 10

[Command]       ;This is a reverse movement command just in case the player
name = "BBr"     ;needs it i.e. their a button is to the right of the b button
command = a,a   ;(which I think might be normal anyway)
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = DF
time = 1

[Command]
name = "b"
command = F
time = 1

[Command]
name = "c"
command = UF
time = 1

[Command]
name = "x"
command =
time = 1

[Command]
name = "y"
command = 
time = 1

[Command]
name = "z"
command =
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "grapplebreakfwd"
command = a
time = 1

[Command]
name = "grapplebreakback"
command = b
time = 1

[Command]
name = "grapplebreakfwd2"
command = F
time = 1

[Command]
name = "grapplebreakback2"
command = B
time = 1

[command]
name = "Aussaugen"
command = 
time = 1

;===========================================================================
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; Absolutely under no circumstances edit these movement commands. They are
; directly tied to the Buriki One common and must exist at all times.
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;===========================================================================
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /a
time = 1

[Command]        ;This is a reverse movement command just in case the player
name = "holdfwdr" ;needs it i.e. their a button is to the right of the b button
command = /b    ;(which I think might be normal anyway)
time = 10

[Command]
name = "holdback";Required (do not remove)
command = /b
time = 1

[Command]         ;This is a reverse movement command just in case the player
name = "holdbackr" ;needs it i.e. their a button is to the right of the b button
command = /a     ;(which I think might be normal anyway)
time = 10

[Command]
name = "holdup" ;Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /D
time = 1

[Command]
name = "holdguard"
command = /B
time = 1

;===========================================================================
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; AI activation by Seravy (not by me, dont say it was me)
;var(29) = AI variable
;var(30) = Difficulty variable
[State -1, AI ON]
Type = VarSet
TriggerAll = Var(29) < 1
TriggerAll = RoundState=2
Trigger1 = AILevel>0
v = 29
value= 1
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1=var(29)>0
Trigger1=RoundState!=2
Trigger2=!IsHelper
Trigger2=AILevel=0
v=29
value=0
Ignorehitpause=1

[State -1, AI levels]
Type=VarSet
Trigger1=1
var(30)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*13+(AILevel=4)*25+(AILevel=5)*37+(AILevel=6)*56+ (AILevel=7)*75+(AILevel=8)*105
;===========================================================================
; This is the AI section
;---------------------------------------------------------------------------
[State -1, A (AI)]
type = ChangeState
value = 230
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.3
triggerall = enemynear,stateno != [5100,5220]
triggerall = p2bodydist x <= 25
trigger1 = ctrl && p2bodydist x < 25
trigger2 = stateno = 1020 && Movehit = 1 && random < 600 && ctrl
trigger2 = p2bodydist x < 10

[State -1, A2 (AI)]
type = ChangeState
value = 232
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.3
triggerall = enemynear,stateno != [5100,5220]
triggerall = p2bodydist x <= 25
trigger1 = ctrl && p2bodydist x < 25
trigger2 = stateno = 230 && Movehit = 1 && random < 600 && ctrl
trigger2 = p2bodydist x < 10

;---------------------------------------------------------------------------
[State -1, B (AI)]
type = ChangeState
value = 240
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.1
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 25
trigger1 = ctrl && p2bodydist x < 25
trigger2 = stateno = 1020 && Movehit = 1 && random < 600 && ctrl
trigger2 = p2bodydist x < 10

[State -1, B1 (AI)]
type = ChangeState
value = 241
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.1
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 25
trigger1 = ctrl && p2bodydist x < 25
trigger2 = stateno = 240 && Movehit = 1 && random < 600 && ctrl
trigger2 = p2bodydist x < 10
;---------------------------------------------------------------------------
[State -1, C (AI)]
type = ChangeState
value = 250
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.2
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist x = [10,35]
triggerall = enemynear,stateno != [120,159]
trigger1 = ctrl && P2bodydist x = [10,35]
trigger2 = stateno = 230 && Movehit = 1 && random < 150 && ctrl
trigger3 = stateno = 232 && Movehit = 1 && random < 150 && ctrl
trigger4 = stateno = 240 && Movehit = 1 && random < 150 && ctrl
trigger5 = stateno = 241 && Movehit = 1 && random < 150 && ctrl
trigger6 = Prevstateno = 1020 && movehit = 1 && ctrl
trigger6 = p2bodydist x < 15
;----------------------------------------------------------------------------
[State -1, Grab (AI)]
type = ChangeState
value = 800
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = random < var(30)*1
triggerall = enemynear,stateno != [5100,5220]
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, to saddle NON BURIKI (AI)]
type = Changestate
value = 1212121212
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.1
triggerall = enemynear,stateno != [5100,5220]
triggerall = enemy, name != "Buriki One Silber"
triggerall = enemy, name != "Buriki One Gai Tendo"
trigger1 = stateno = 1000 && movehit = 1
trigger1 = p2bodydist x <= 6
;---------------------------------------------------------------------------
[State -1, Spinning Axe Kick (AI)]
type = ChangeState
value = 1000
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1
triggerall = prevstateno != 1000
triggerall = P2bodydist X <= 100
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = ctrl && P2bodydist X < 30
trigger2 = stateno = 230 && Movehit = 1 && random < 200 && p2statetype != A && ctrl
trigger3 = stateno = 240 && Movehit = 1 && random < 200 && p2statetype != A && ctrl
trigger4 = P2Stateno = 5110 && P2bodydist X <= 50
trigger4 = random < 50 && ctrl
trigger5 = stateno = 250 && Movehit = 1 && random < 200 && p2statetype != A && ctrl
trigger6 = stateno = 1050 && Movehit = 1 && random < 200 && p2statetype != A && ctrl

[State -1, Air Heel (AI)]
type = ChangeState
value = 1010
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.5
triggerall = prevstateno != 1010
triggerall = P2stateno != [5100,5220]
triggerall = anim != 20
triggerall = anim != 21
trigger1 = ctrl && P2bodydist X <= 50
trigger2 = stateno = 1020 && movehit = 1 && random < 200 && ctrl
trigger3 = stateno = 1050 && movehit = 1 && random < 200 && ctrl

[State -1, Knee to Body (AI)]
type = ChangeState
value = 1020
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = random < var(30)*.8
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X < 30
triggerall = anim != 20
triggerall = anim != 21
trigger1 = stateno != 1050 && prevstateno != 1050
trigger1 = ctrl && P2bodydist X < 30

[State -1, Side Kick(AI)]
type = ChangeState
value = 1050
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.2
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 40
trigger1 = var(19)
trigger1 = ctrl && P2bodydist X < 40
trigger2 = stateno = 230 && Movehit = 1 && random < 50 && ctrl
trigger2 = P2bodydist X <= 40
trigger3 = stateno = 240 && Movehit = 1 && random < 50 && ctrl
trigger3 = P2bodydist X <= 40
trigger4 = prevstateno = 243 && movehit = 1 && ctrl
trigger4 = P2bodydist X <= 40 && random < 50
trigger5 = stateno = 250 && P2bodydist X <= 40 && random < 50

[State -1, Fake (AI)]
type = ChangeState
value = 1070
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*.9
triggerall = enemynear,stateno = [5100,5220]
triggerall = P2bodydist X <= 20
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = ctrl && p2bodydist x <= 20

[State -1, Uppercut from Fake (AI)]
type = ChangeState
value = 1071
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*.9
triggerall = stateno = 1070
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 20
triggerall = anim != 20
triggerall = anim != 21
trigger1 = stateno = 1070 && p2bodydist x <= 20 && ctrl
trigger1 = time >= 30

[State -1, Sweep (AI)]
type = ChangeState
value = 1080
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.1
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 50
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = ctrl && p2bodydist x <= 50

[State -1, Spinning Fist (AI)]
type = ChangeState
value = 242
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*1.2
triggerall = enemynear,stateno != [5100,5220]
triggerall = P2bodydist X <= 35
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = ctrl && p2bodydist x <= 35
trigger2 = stateno = 240 && movehit = 1 && ctrl && p2bodydist x <= 35
trigger3 = stateno = 241 && movehit = 1 && ctrl && p2bodydist x <= 35
;---------------------------------------------------------------------------
[State -1, Stagger Punch (AI)]
type = ChangeState
value = 3000
triggerall = Var(29) > 0 && power >= 1000
triggerall = statetype != A
triggerall = random < var(30)*1.8
triggerall = P2stateno != [5100,5220]
triggerall = p2bodydist x <= 40
trigger1 = ctrl && power >= 1000
trigger1 = hitdefattr = SC, NA, SA, HA
trigger2 = ctrl && power >= 1000
trigger2 = stateno != 3000
trigger2 = stateno != 3001

;---------------------------------------------------------------------------
[State -1, Thrown from the Saddle (AI)]
type = ChangeState
value = 1515151515
triggerall = Var(29) > 0 && power >= 2000
triggerall = statetype != A
triggerall = random < var(30)*1
triggerall = stateno = 1212121212
trigger1 = power >= 2000
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Beatdown (AI)]
type = ChangeState
value = 3048
triggerall = Var(29) > 0 && power >= 3000
triggerall = statetype != A
triggerall = random < var(30)*0.7
triggerall = P2stateno != [5100,5220]
triggerall = P2bodydist X >= 10
trigger1 = ctrl && (P2bodydist X >= 10) && power >= 3000
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = ctrl && (P2bodydist X >= 10) && power >= 3000
trigger3 = stateno != 3049
trigger3 = stateno != 3050
trigger4 = stateno = 230 && movehit
trigger5 = stateno = 232 && movehit
trigger6 = stateno = 240 && movehit
trigger7 = stateno = 241 && movehit
trigger8 = stateno = 250 && movehit

;---------------------------------------------------------------------------
[State -1, Walk Fwd (AI)]
type = ChangeState
value = 98
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*5
triggerall = !enemynear,stateno = [0,52]
triggerall = !enemynear,statetype != A
triggerall = !enemynear,movetype != A
triggerall = P2movetype != A
trigger1 = P2bodydist X > 150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = !enemynear,stateno = [0,52]
trigger1 = !enemynear,statetype != A
trigger1 = !enemynear,movetype != A
trigger2 = P2bodydist X > 150
trigger2 = !enemynear,stateno = [0,52]
trigger2 = !enemynear,statetype != A
trigger2 = !enemynear,movetype != A
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Fwd (AI)]
type = ChangeState
value = 100
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < 350
triggerall = !enemynear,stateno = [0,52]
triggerall = !enemynear,statetype != A
triggerall = !enemynear,movetype != A
triggerall = P2movetype != A
triggerall = stateno != [100,105]
trigger1 = P2bodydist X >= 150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = !enemynear,stateno = [0,52]
trigger1 = !enemynear,statetype != A
trigger1 = !enemynear,movetype != A
trigger2 = P2bodydist X >= 150
trigger2 = !enemynear,stateno = [0,52]
trigger2 = !enemynear,statetype != A
trigger2 = !enemynear,movetype != A
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = P2bodydist X >= 150
trigger3 = !enemynear,stateno = [0,52]
trigger3 = !enemynear,statetype != A
trigger3 = !enemynear,movetype != A
trigger3 = statetype = S
trigger3 = !enemynear,statetype = L

[State -1, Walk Back (AI)]
type = ChangeState
value = 99
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = random < var(30)*5
triggerall = !enemynear,stateno = [0,52]
triggerall = !enemynear,statetype != A
triggerall = !enemynear,movetype != A
triggerall = P2movetype != A
triggerall = backedgebodydist > 10
triggerall = p2movetype != H
triggerall = gethitvar(animtype) != 5
trigger1 = P2bodydist X > 150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = !enemynear,stateno = [0,52]
trigger1 = !enemynear,statetype != A
trigger1 = !enemynear,movetype != A
trigger2 = P2bodydist X > 150
trigger2 = !enemynear,stateno = [0,52]
trigger2 = !enemynear,statetype != A
trigger2 = !enemynear,movetype != A
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Back (AI)]
type = ChangeState
value = 105
triggerall = Var(29) > 0
triggerall = statetype != A
triggerall = stateno != 120
triggerall = stateno != 130
triggerall = stateno != 131
triggerall = stateno != 140
triggerall = stateno != 150
triggerall = stateno != 151
triggerall = stateno != 152
triggerall = stateno != 153
triggerall = stateno != [100,105]
triggerall = !Inguarddist
triggerall = command != "holdguard"
triggerall = command != "holddown"
triggerall = random < 150
triggerall = p2movetype != H
triggerall = gethitvar(animtype) != 5
trigger1 = P2bodydist X <= 60
trigger1 = statetype = S
trigger1 = ctrl && backedgebodydist >= 80
trigger2 = P2bodydist X <= 60
trigger2 = P2movetype = A && backedgebodydist >= 80 && ctrl
trigger3 = enemynear,stateno = [200,499]
trigger3 = backedgedist >= 80
trigger3 = ctrl
trigger4 = p2statetype != L && backedgebodydist >= 80 && ctrl
trigger4 = p2movetype = A

[State -1, Guard (AI)]
Type=Changestate
value=120
Triggerall = Inguarddist
Triggerall = var(29)>0
Triggerall = random < (var(30)*2+(AILevel)*30)
Triggerall = movetype != H
triggerall = enemynear,IsHelper
triggerall = enemynear,hitdefattr = SCA, NA, SA, HA
triggerall = enemy,hitdefattr = SCA, NP, SP, HP
triggerall = enemynear,movetype = A
trigger1 = ctrl
trigger2 = (stateno = 5120) && ctrl
trigger2 = p2bodydist x <= 40
trigger3 = p2bodydist x <= 40 && ctrl

[State -1, Guard (AI) (assert)]
Type=Assertspecial
Triggerall = StateNo != [120,160]
Trigger1 = var(29)>0
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, Dodge Low (AI)]
type = changestate
value = 160
Triggerall = Inguarddist
Triggerall = var(29)>0
Triggerall = random < (var(30)*2+(AILevel)*30)
Triggerall = movetype != H
triggerall = enemynear,IsHelper
triggerall = enemynear,hitdefattr = C, NA, SA, HA
triggerall = enemy,hitdefattr = C, NP, SP, HP
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype = C
trigger1 = ctrl
trigger2 = (stateno = [120,159]) && ctrl
trigger2 = p2bodydist x <= 40
trigger3 = p2bodydist x <= 40 && ctrl

[State -1, Dodge Mid (AI)]
type = changestate
value = 161
Triggerall = Inguarddist
Triggerall = var(29)>0
Triggerall = random < (var(30)*2+(AILevel)*30)
Triggerall = movetype != H
triggerall = enemynear,IsHelper
triggerall = enemynear,hitdefattr = SA, NA, SA, HA
triggerall = enemy,hitdefattr = SA, NP, SP, HP
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype = S || enemynear,statetype = A
trigger1 = ctrl
trigger2 = (stateno = [120,159]) && ctrl
trigger2 = p2bodydist x <= 40
trigger3 = p2bodydist x <= 40 && ctrl

[State -1, Dodge High (AI)]
type = changestate
value = 162
Triggerall = Inguarddist
Triggerall = var(29)>0
Triggerall = random < (var(30)*2+(AILevel)*30)
Triggerall = movetype != H
triggerall = enemynear,IsHelper
triggerall = enemynear,hitdefattr = SA, NA, SA, HA
triggerall = enemy,hitdefattr = SA, NP, SP, HP
triggerall = enemynear,movetype = A
triggerall = enemynear,statetype = S || enemynear,statetype = A
trigger1 = ctrl
trigger2 = (stateno = [120,159]) && ctrl
trigger2 = p2bodydist x <= 40
trigger3 = p2bodydist x <= 40 && ctrl
;===========================================================================
; Player command states
;---------------------------------------------------------------------------
[State -1, Stagger Punch]
type = ChangeState
value = 3000
triggerall = command = "Stagger Punch"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3000
trigger2 = stateno != 3001

;---------------------------------------------------------------------------
[State -1, Beatdown]
type = ChangeState
value = 3048
triggerall = command = "Beatdown"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3049
trigger2 = stateno != 3050
trigger3 = stateno = 230 && movehit
trigger4 = stateno = 232 && movehit
trigger5 = stateno = 240 && movehit
trigger6 = stateno = 241 && movehit
trigger7 = stateno = 250 && movehit

;---------------------------------------------------------------------------

[State -1, Thrown from the Saddle]
type = Changestate
value = 6008
triggerall = (stateno = 6002)
triggerall = power >= 2000
trigger1 = command = "Thrown from the Saddle"

[State -1, Thrown from the Saddle NON BURIKI]
type = Changestate
value = 1515151515
triggerall = (stateno = 1212121212)
triggerall = power >= 2000
trigger1 = command = "Thrown from the Saddle"

;===========================================================================
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299])
trigger2 = movecontact
var(19) = 1

;---------------------------------------------------------------------------
[State -1, Spinning Axe Kick]
type = ChangeState
value = 1000
triggerall = command = "Spinning Axe Kick"
triggerall = prevstateno != 1000
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 233 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 250 && movecontact
trigger6 = stateno = 1050 && movecontact

[State -1, Air Heel]
type = ChangeState
value = 1010
triggerall = command = "Air Heel"
triggerall = prevstateno != 1010
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 233 && movecontact
trigger3 = stateno = 1020 && movecontact
trigger4 = stateno = 1050 && movecontact

[State -1, Knee to Body]
type = ChangeState
value = 1020
triggerall = command = "Knee to Body"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Side Kick]
type = ChangeState
value = 1050
triggerall = command = "Side Kick"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 243 && movecontact
trigger5 = stateno = 250 && movecontact

[State -1, Fake]
type = ChangeState
value = 1070
triggerall = command = "Fake"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Uppercut from Fake]
type = ChangeState
value = 1071
triggerall = command = "Uppercut from fake"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = stateno = 1070
trigger1 = statetype = C
trigger1 = time >= 30

[State -1, Sweep]
type = ChangeState
value = 1080
triggerall = command = "Sweep"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Spinning Fist]
type = ChangeState
value = 242
triggerall = command = "Spinning Fist"
triggerall = anim != 20
triggerall = anim != 21
trigger1 = var(19)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 241 && movecontact

;===========================================================================
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; Absolutely under no circumstances edit these movement commands. They are
; directly tied to the Buriki One common and must exist at all times.
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;===========================================================================
[State -1, Walk Fwd P1 Facing Right]
type = changestate
value = 98
triggerall = teamside = 1
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Fwd P1 Facing Right]
type = changestate
value = 98
triggerall = teamside = 1
triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdbackr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Fwd P1 Facing Right]
type = changestate
value = 98
triggerall = teamside = 2
triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdbackr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Fwd P1 Facing Right]
type = changestate
value = 98
triggerall = teamside = 1
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl
;---------------------------------------------------------------------------
[State -1, Walk Back P1 Facing Right]
type = changestate
value = 99
triggerall = teamside = 1
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 0
trigger2 = command = "holdbackr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Back P1 Facing Right]
type = changestate
value = 99
triggerall = teamside = 1
triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Back P1 Facing Right]
type = changestate
value = 99
triggerall = teamside = 2
triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Walk Back P1 Facing Right]
type = changestate
value = 99
triggerall = teamside = 1
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdbackr"
trigger2 = statetype = S
trigger2 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Fwd P1 Facing Right]
type = ChangeState
value = 99
triggerall = teamside = 1
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Fwd P1 Facing Left]
type = ChangeState
value = 99
triggerall = teamside = 1
triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Fwd P2 Facing Left]
type = ChangeState
value = 99
triggerall = teamside = 2
Triggerall = facing = -1
trigger1 = var(1) = 0
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdfwdr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Fwd P1 Facing Right]
type = ChangeState
value = 99
triggerall = teamside = 2
triggerall = facing = 1
trigger1 = var(1) = 0
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "holdbackr"
trigger2 = statetype = S
trigger2 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back P1 Facing Right]
type = ChangeState
value = 105
triggerall = teamside = 1
triggerall = facing = 1
triggerall = command != "holdguard"
triggerall = command != "holddown"
trigger1 = var(1) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "BBr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Back P1 Facing Left]
type = ChangeState
value = 105
triggerall = teamside = 1
triggerall = facing = -1
triggerall = command != "holdguard"
triggerall = command != "holddown"
trigger1 = var(1) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "FFr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Back P2 Facing Left]
type = ChangeState
value = 105
triggerall = teamside = 2
triggerall = facing = -1
triggerall = command != "holdguard"
triggerall = command != "holddown"
trigger1 = var(1) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "FFr"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Run Back P2 Facing Right]
type = ChangeState
value = 105
triggerall = teamside = 2
triggerall = facing = 1
triggerall = command != "holdguard"
triggerall = command != "holddown"
trigger1 = var(1) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(1) = 1
trigger2 = command = "BBr"
trigger2 = statetype = S
trigger2 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Grab]
type = ChangeState
value = 800
triggerall = command = "Grab1"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 98
trigger1 = command = "Grab1"
trigger1 = p2bodydist X < 15
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "Grab1"
trigger2 = p2bodydist X < 14
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Grapple Attack]
type = Changestate
value = 6001
triggerall = stateno = 6000
triggerall = time >= 30
trigger1 = command = "c"

[State -1, to saddle]
type = Changestate
value = 6002
triggerall = command = "saddle"
trigger1 = stateno = 6000
;triggerall = time >= 30

[State -1, to saddle NON BURIKI]
type = Changestate
value = 1212121212
triggerall = command = "saddle"
trigger1 = enemy, name != "Buriki One Silber"
trigger1 = enemy, name != "Buriki One Gai Tendo"
trigger1 = stateno = 1000 && movehit
trigger1 = p2bodydist x <= 6

[State -1, Grapple Attack 2]
type = Changestate
value = 6003
triggerall = stateno = 6002
triggerall = time >= 30
trigger1 = command = "saddle"

[State -1, Grapple Attack 2 NON BURIKI]
type = Changestate
value = 1313131313
triggerall = stateno = 1212121212
triggerall = time >= 30
trigger1 = command = "saddle"

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
[State -1, A]
type = ChangeState
value = 230
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1020 && movecontact

[State -1, A2]
type = ChangeState
value = 232
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = stateno = 230 && movecontact
;---------------------------------------------------------------------------
[State -1, B]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1020 && movecontact

[State -1, B1]
type = ChangeState
value = 241
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
[State -1, C]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = stateno != 6000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 231 && movecontact
trigger4 = stateno = 232 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 241 && movecontact
trigger7 = stateno = 242 && movecontact
trigger8 = stateno = 1020 && movecontact
;---------------------------------------------------------------------------
[State -1, Low Dodge]
type = Changestate
value = 160
triggerall = command = "Low Dodge"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Mid Dodge]
type = Changestate
value = 161
triggerall = command = "Mid Dodge"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, High Dodge]
type = Changestate
value = 162
triggerall = command = "High Dodge"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
