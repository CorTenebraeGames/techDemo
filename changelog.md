# Changelog
____________________
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
