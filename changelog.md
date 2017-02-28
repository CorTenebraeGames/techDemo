# Changelog
____________________

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
