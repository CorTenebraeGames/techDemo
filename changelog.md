# Changelog
____________________
4/22/2017 (19:42) - v5
- ADDED Ceilings and walls to rooms that did not have them
	- Prevents player from exiting playable area
	- Affected levels
		- Sloth
		- Envy (left ceiling above room in sub-level)
		- Wrath (Main only, haven't checked others)
		- All boss rooms where the player falls in at the start
- ADDED Deathfall triggers to all Pride levels and Greed sub01

- CHANGED Door in Wrath start level to correct door

- CHANGED "par_enemy_hitbox" objects in Wrath start level to "legde_hitbox" objects
	- Unsure if that was intentional or not, but can easily be changed back if so

4/21/2017 (12:12) - v4
- FIXED Glitch where grenade shrapnel would fall through walls

- CHANGED HP and "Sight" values for Pride minions
	- Made them harder to fight than previously

- ADDED An "Outside room" function for all enemy parents
	- Will destroy instances if they leave the room (knocked off into pits)
	- Intended to increase performance

4/21/2017 (00:08) - Beta v3a
- FIXED Repo formatting

4/20/2017 (1:00 - 23:00) - Beta v2 and Beta v3
- CHANGED combat
	- No longer press and hold to kill, instead it is tap to attack
		- Trigger temporarily set to visible for bug testing.
		
- FIXED Pride door
	- (It was the wrong type of door. Switched it to the right one)
	
- FIXED Pause crash bug prior to start screen (Ra's bugfix)
	- Moved object_pause (aka pause init file) to room_pressStart
	
4/19/2017 (10:55) - Beta v1
- ADDED Confirmation to create new save file if an existing save exists

- FIXED Transition into greed's level with the moveLock and textbox glitch

- FIXED Game crash on player entering pride's boss fight.

- CHANGED Audio array for SFX Volume control.
	- Grunting sounds for player are now controlled by SFX volume settings

- Misc.
	- Beginning of the BETA development phase.
	- yay

4/18/2017 (17:05) - v30
- FIXED Door transition for pride levels

- FIXED Footsteps playing when running then crouching.

- CHANGED Ladder animation for climbing down
4/18/2017 (16:30) - v29e
- FIXED Pride room to make it playable

- ADDED Key to Envy room

4/18/2017 (16:17) - v28c - v29d
- ADDED Lust boss level placeholder

- ADDED Grunt sounds for player damage
	- Sounds created by Ott

- ADDED Lust and Pride triggers to display "Boss Defeated" when they are killed respectively

- REMOVED Debug door I placed to quickly skip to level 03 and beyond

- CHANGED God mode can now be activated by holding backspace and block at the same time, then releasing

- FIXED Settings save bug

- FIXED Kill trigger at the bottom of Greed level.

- FIXED Invincibility Graphic Not working

4/18/2017 (05:14) - v28b
- ADDED Greed Placeholder
- ADDED Envy Placeholder
- ADDED Ra's Build
	- Wrath rooms
	- Wrath minions

- FIXED doors
	- Specifically from Envy -> Pride; Pride -> Wrath; Wrath - > Lust

- FIXED Sloth placeholder getting stuck in ground

- CHANGED Music during intro

- CHANGED Music during bossfights to placeholders

- CHANGED Background for Envy

- Misc
	- (Ott) Added Grunt sound files

4/18/2017 (02:49)
- UPDATED Pride
- UPDATED Pride rooms

4/17/2017 (23:15) - v23
- UPDATED Intro sequence 
	- Now with pictures :P

4/17/2017 (22:09) - v21
- UPDATED Pride minion sprites
- CHANGED Pride minion collision to work properly with new sprites

4/17/2017 (19:27) - v20c
- FIXED Player within a player
- FIXED Goldenize now works properly.

4/17/2017 (15:52) - v20b
- CHANGED Pride's mechanics
	- Now has "seeing eye", similar to his minions

- ADDED "A" button support on Main Audio Settings menu

- FIXED Player being able to get out of "Gold Lock" by attacking, blocking, or throwing grenade

4/17/2017 (13:00) - v20a
- ADDED Intro text.
	- Timed
	- Pressing Enter, Esc, "A button" or "Start" will skip the intro!
	- No pictures yet because I have to go into photoshop and separate all those storyboard drawings
	- Took some creative liberties with intro text
		- Some of the grammar was technically incorrect
		- Some of the sentences were redundant
		- Some words were overused. I either replaced or cut entire sentences primarily for this reason.
		- I skipped the "buying me a drink" frame. It had no place in the intro... in fact it's placing was really awkward
		- I rearranged the: "I don't know where you are, but I'm going to find you" to instead be the LAST slide/frame.

- ADDED new text trigger for intro text.

- FIXED Health/damage problem again.

4/16/2017 (20:08)
- ADDED Greed minion placeholder
	- No actual art... just a white box
	- However, it functions
- ADDED Envy minions 
	- Fully functional except no art for shadow greed minions
- ADDED Sprite for player to turn to gold
- CHANGED Player step event to include conditionals for becoming golden
- FIXED Doors on Level 04 (Envy)
- FIXED Enemy Damage values being absolutely fucking borked
	- Starting to think that the damage counts for two frames
	- In any case enemy parents 1-3 and greed enemy damage values have been edited!

4/16/2017 (16:23)
- ADDED Fake tileset (Player can walk through this tileset, but is aesthetically identical to normal one)
- ADDED Persistent Water to Level 04 (Envy)
- CHANGED Envy level layout
- FIXED Level 02 (Gluttony) door returning to save room
- FIXED Door glitch on Level 03 (Greed)


4/15/2017 (17:48)
- ADDED Level 07 room bases
	- New Backgrounds
	- New Indoor tileset
	- New Doors

- ADDED Fall death trigger

- CHANGED Level 03 and Level 04 door paths

- CHANGED Pressing R also gives the player a key now for debug purposes

- REMOVED Unused Assets

- REMOVED (Temporarily) Loading Screen Init

4/15/2017 (00:55)
- REMOVED Audio Groups
- ADDED Audio Options
	- Main Menu
	- Pause Menu
	- Settings are saved to new save file.
		(AudioSettings.sav)

- CHANGED Text positioning on main menu

- CHANGED Audio is not muted on pause

- CHANGED Footsteps audio was bugged... I don't know why.

4/13/2017 (13:45)
- ADDED Audio groups for testing
	- aud_group_SFX for Effects
	- aud_group_music for Music
4/12/2017 (15:52)
- ADDED Pride minions, Boss, sound effects, and placeholder sprites for each

- ADDED Ledge hitboxes to Pride's rooms

- ADDED Key and Vessel to Pride's levels

4/11/2017 (06:38)
- CHANGED Gluttony SFX when hit standing up

- CHANGED Greed level layout slightly

- ADDED SFX for the following
  - Attacking Gluttony
  - Attacking Gluttony Minions
  - Attacking Sloth Minions
  - Blocking Attacks
  
- ADDED God Mode
  - For Controllers only (Morrison Purposes)
    - Hold the Select/Back button and Block at the same time
    - Release
    - Listen for slight audio cue
    - God mode will be enabled
 
- ADDED Music for Sloth Level

- REMOVED Obsolete/Unused Audio files

4/8/2017 (11:57)
- ADDED global.moveLock variable so that other objects could handle if the player wasn't allowed to move. This is for textboxes, cutscenes or the like.

- ADDED Textboxes of varying sorts
  - Tutorial Textboxes (Currently the same from normal ones. Possibly to change into something visually different to distinguish from actual dialogue)
  
  - Normal Textboxes
    - These textboxes lock the player in place until he/she presses 'Enter' or presses 'A'.
    
  - No-Lock Textboxes
    - These textboxes will not lock thep player in one spot when they appear
    - These textboxes run on a timer of 5 seconds. I'm going to change this when I get home from my appointment to be configurable.
    
  - To use any of the textboxes:
    1. simply place a trigger object for the type of textbox you want.
    2. In the creation code of that trigger define the following: creationText = "[Insert string here]"
    3. Test it.

4/7/2017 (14:13)
- CHANGED Certain level layouts that were bugged (tilesets MUST work with the grid collisions, fixed a few scenarios where they weren't aligned)

- FIXED Specific doors not working with controllers

4/5/2017 (01:40)
- CHANGED Weapon attack sound

- CHANGED Title Screen Art

- CHANGED Save System
  - Added save variable for if player has access to wall jump

- CHANGED Credits screen

- CHANGED Gluttony boss fight start
  - Gluttony waits until player lands in pit, then he starts going after player

- ADDED Wall Jumping

- ADDED Debug Mode
  - Press R to HEAL and enable Wall Jumping

- ADDED new animations for the following
  - Climbing
  - Blocking
  - Wall Jumping
  - Wall Leaning
  
- ADDED new footsteps SFX

- FIXED Gluttony reset (again)

- FIXED Minions breaking after they attacked the player

- FIXED Volume of attacking being way too loud

3/28/2017 (01:49):
- FIXED gluttony bug in which he would hover into the air after being hit

- FIXED audio balance issues. (Workaround at the moment)

- CHANGED Tileset textures

3/22/2017 (23:39):
- CHANGED several event handlers from "released" to "pressed", vice versa, and other things of the sort

- ADDED Controller support (should work with any gamepad)

3/19/2017 (02:13):
- CHANGED Healing funciton from a "direct" key check to a "pressed" key check

- ADDED Grenade system

- ADDED Vessel Pick ups

3/18/2017 (03:29):
- CHANGED Gluttony minions from placeholders to proper

- ADDED MANUAL SAVE system
  - Please, for the love of christ. DO NOT TOUCH ANY OF THE SAVE SCRIPTS or SHRINES. This was a bitch to get working.

- ADDED Pause menu system

- ADDED credits

- ADDED New sounds and music

- ADDED New font for levels and saving


- FIXED Music trigger bugs

- FIXED Save system bugginess

3/16/2017 (22:26):
- CHANGED combat system damage handlers for enemies.
  - I've forgotten all of the details. If you've got questions, ask me and I'll answer. I didn't use a tutorial for this re-write, I started doing my own thing. :P
- CHANGED door entering system. Now player must press up to interact with door

- ADDED Gluttony Save room

- ADDED Gluttony boss fight room

- ADDED Key Object and functionality

- ADDED Blocking function (S key)

- ADDED additional enemy placeholder type

- FIXED small tileset issue at the beginning of tutorial and main room

- UPDATED HUD to now include key indicator

2/27/2017 (19:04):
- CHANGED jump to space bar
  - This is so that up can function as going up a ladder
  
- Implemented ladder system
  - Up arrow climbs
  - Down arrow traverses downwards
  
- Implemented door/room-to-room play
  - Walking into a door way takes you into the room linked to it
    - This will be expanded on by FFP with transitions and text saying where you are
    
- Created parent objects for the following:
  - Ladder
  - tilesets (64x64)

- Sleep deprivation increases.

2/25/2017 (03:23):
- Uploaded updated techDemo.gmx project

- Created various placeholder assets
  - Minion
  - Shrine

- Used / Edited various placeholder assets from Ra's POK
  - Protagonist
    - Changed max jumps to 2 for balance. (May be changed back)
    - Disabled pause input for protagonist (Temporary when Ra compiles his menus in)
    - Changed collision 'if' statements to look for "obj_tileset01" instead of "object_platform" from POK.
    - Changed depth to 1. (The larger the value, the more it goes deeper in to the background.)
  - Door
    - Changed depth to 2.
  - Background

- Created candidate assets
  - tileset01mk3
    - Depth set at 0
    - Has an autotile script that picks which tiles in the tileset to place depening on what tiles are next to it.
        - Essentially, all you have to worry about is where the blocks are placed. The tileset will pick which type to use.

----

2/24/2017 (07:18):
- Uploaded scr_auto_tile [CHA]
  - Completely forgot to add the corresponding script for auto tile to work. Quickly fixed, sorry if anyone saw that and was awake.

----

2/24/2017 (06:00):
- Uploaded spr_tileset01 [CHA]
  - Uploaded corresponding images as well
  - 47 different images. AUTOTILE set up already if script does not conflict with anyone elses
  
- Uploaded obj_tileset01 [CHA]

- Uploaded room_testOnly

----

2/23/2017 (23:30):
- Created folders for compiling sample document [CHA]
  - Will work on this later and finish it tomorrow morning
  
- Created changelog, wee~ [CHA]
