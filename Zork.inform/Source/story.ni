"Zork" by Alex Proudfoot

The story headline is "The pre-Infocom classic, rewritten".


Part - The Mechanics

Chapter - Infocom Style Presentation

Section - Status Line

Include Basic Screen Effects by Emily Short.

Table of Status
left	central	right 
" [location]"	""	"Score: [score]       Moves: [move count]"

To decide which number is the move count:
	if the story has not ended:
		decide on the turn count - 1;
	otherwise:
		decide on the turn count;

Rule for constructing the status line:
	fill the status bar with the Table of Status;
	the rule succeeds.

When play begins: now the right alignment depth is 30.


Section - Room Description

Printing the room-description of something is an activity.

Rule for printing the room-description of a room (called the place):
	if the description of the place is not "":
		say the description of the place;
	otherwise:
		do nothing instead.

The activity-based room description body text rule is listed instead of the room description body text rule in the carry out looking rules.

This is the activity-based room description body text rule:
	if the visibility level count is 0:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and
			abbreviated form allowed is true and
			darkness witnessed is true,
			continue the action;
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity:
			now the prior named object is nothing;
			say "[It] [are] pitch dark, and [we] [can't see] a thing." (A);
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if set to abbreviated room descriptions, continue the action;
		if set to sometimes abbreviated	room descriptions and abbreviated form
			allowed is true and the location is visited, continue the action;
		carry out the printing the room-description activity with the location.

After looking, say "".


Section - Item Description

A thing has a text called subsequent appearance.

Rule for writing a paragraph about something not handled (called the item):
	if the initial appearance of the item is not "":
		say the initial appearance of the item;
	else if the subsequent appearance of the item is not "":
		say the subsequent appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about something handled (called the item):
	if the subsequent appearance of the item is not "":
		say the subsequent appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about an open container (called the box) when the box contains something:
	if the initial appearance of the box is not "":
		say the initial appearance of the box;
	else if the subsequent appearance of the box is not "":
		say the subsequent appearance of the box;
	else:
		say "There is [a box] here.";
	say "[The box] contains:";
	repeat with item running through the list of things in the box:
		say line break;
		say "  [a item]";


Chapter - Non Standard Commands and Responses

Section - Reading

[ The I7 Standard Definition of "read" is as follows.
	Understand "read [something]" as examining.
	Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
	Understand "read [text] in [something]" as consulting it about (with nouns reversed). ]

[ Here, the aim is to link "read [something]" to a new action called reading and to leave the rest untouched. ]
Understand the command read as something new.
Understand "read [something]" as reading.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).

[ The new action is modelled on examining. ]
Reading is an action applying to one visible thing and requiring light.

[ However, it requires that things need to be explicitly marked as readable if they are to be read. ]
A thing can be readable. A thing is usually not readable.
Check reading something (this is the can't read if not readable rule):
	if the noun is not readable, say "How can [we] read [a noun]." instead.

[ Although the default rule for reading something implies that the thing can be taken, this is not enforced. ]
Carry out reading something:
	if the noun is not held, try taking the noun;
	try examining the noun;


Section - Looking

[ The I7 Standard Definition of "look" is as follows.
	Understand "look" as looking.
	Understand "look at [something]" as examining.
	Understand "look [something]" as examining.
	Understand "look inside/in/into/through [something]" as searching.
	Understand "look under [something]" as looking under.
	Understand "look up [text] in [something]" as consulting it about (with nouns reversed). ]

[ Here, the aim is to link "look at [something]" to a new action called looking at and to leave the rest untouched. Note that, in the original game, "look at" (without a noun) is defined as looking. ]

Understand the command look as something new.
Understand "look" as looking. Understand "look at" as looking.
Understand "look at [something]" as looking at.
Understand "look [something]" as looking at.
Understand "look inside/in/into/through [something]" as searching.
Understand "look under [something]" as looking under.
Understand "look up [text] in [something]" as consulting it about (with nouns reversed).

[ The new action is modelled on examining. ]
Looking at is an action applying to one visible thing and requiring light.

[ The default rule for looking at something just examines the thing. ]
Carry out looking at something:
	try examining the noun;


Section - Finding

[ There is no I7 Standard Definition of "find". ]

[ Here, the aim is to link "find [something]" to a new action called finding. ]
Understand "find [something]" as finding.

[ The new action is modelled on examining. ]
Finding is an action applying to one thing and requiring light.

Carry out finding a backdrop:
	say "Nothing happens.";

Carry out finding something which is not a backdrop when the noun is in the location:
	say "There is [a noun] here.";

Carry out finding something when the noun is in a container (called the box) and the box is in the location:
	say "It is in [the box], which is here.";

Carry out finding something when the player is carrying the noun:
	say "You're holding [the noun]!";


Part - The Game

The player is in West of House.


Chapter - The White House in the Forest

There is a region called the Forest. In the Forest is the Clearing. The white house is a backdrop in the Forest.


Section - At the House

In the Forest is a region called Vicinity of House. In Vicinity of House are West of House and Behind House. Instead of looking at the white house when the location is in Vicinity of House, say "The house is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy." Instead of finding the white house when the location is in Vicinity of House, say "It's right in front of you. Are you blind or something?" Instead of doing something with the white house when the location is not in Vicinity of House, say "You're not at the house."

In Vicinity of House is a region called Sides of House. In Sides of House are North of House and South of House. The windows are a backdrop in Sides of House with printed name "window". Understand "window" as the windows.

There is a room called West of House. "This is an open field west of a white house, with a boarded front door." A small mailbox and a welcome mat are here. The front door is east. Instead of going nowhere from West of House when going east, say "The door is locked, and there is evidently no key."

The small mailbox is a fixed in place container with printed name "mailbox". "There is a small mailbox here." Understand "box" as the small mailbox. It is closed and openable. There is a small leaflet with printed name "leaflet" in it. It is readable. Understand "advert", "pamphlet", "booklet" or "mail" as the small leaflet.

Instead of examining the small leaflet:
	center "WELCOME TO ZORK";
	say paragraph break;
	say "    ZORK is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within![paragraph break]";
	say "    In ZORK the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
	say "    No PDP-10 should be without one![paragraph break]";
	say "    ZORK was created at the MIT Laboratory for Computer Science, by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling. It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction adventure. ZORK is written in MDL (alias MUDDLE).[paragraph break]";
	say "    On-line information may be available using the HELP and INFO commands (most systems).[paragraph break]";
	say "    Direct inquiries, comments, etc. by Net mail to ZORK@MIT-DMS.";
	center "(c) Copyright 1978,1979 Massachusetts Institute of Technology.";
	center "All rights reserved.";
	say paragraph break;

The welcome mat is readable. It has the initial appearance "A rubber mat saying [']Welcome to Zork!['] lies by the door." It has the description "Welcome to Zork!" Understand "rubber" as the welcome mat.

The front door is a locked scenery door with printed name "door".

There is a room called North of House. "You are facing the north side of a white house. There is no door here, and all the windows are barred." West from North of House is north from West of House. Instead of going nowhere from North of House when going south: say "The windows are all barred."

There is a room called South of House. "You are facing the south side of a white house. There is no door here, and all the windows are barred." West from South of House is south from West of House. Instead of going nowhere from South of House when going north: say "The windows are all barred."

There is a room called Behind House. "You are behind the white house. A path leads into the forest to the east. In one corner of the house there is a small window which is [if the window is open]open[else]slightly ajar[end if]." A window is west. North from Behind House is east from North of House. South from Behind House is east from South of House.

The window is a scenery door.


Section - Among the Trees

A forest room is a kind of room. The printed name is always "Forest". The description is usually "This is a forest, with trees in all directions around you." Instead of going nowhere from a forest room when going up, say "There is no tree here suitable for climbing."

In the Forest is a region called Vicinity of Songbird. In Vicinity of Songbird are Forest 3 and Treetop. The song bird is a backdrop in Vicinity of Songbird. Understand "songbird" as the song bird.

In Vicinity of Songbird is a region called Impenetrable Forest. In Impenetrable Forest are Forest 1, Forest 2, Forest 4 and Forest 5. The tree is a backdrop in Impenetrable Forest.

There is a forest room called Forest 1. It is west from West of House. West from Forest 1 is north from Forest 1.

There is a forest room called Forest 2. "This is a dimly lit forest, with large trees all around. To the east, there appears to be sunlight." It is south of South of House. West from Forest 2 is south from Forest 1.

There is a forest room called Forest 3. "This is a dimly lit forest, with large trees all around. One particularly large tree with some low branches stands here." It is east from Forest 1. Forest 2 is north from Forest 3. West from Forest 3 is north from North of House.

There is a room called Treetop. "You are about 10 feet above the ground nestled among some large branches.  The nearest branch above you is above your reach." It has printed name "Up a Tree". It is above Forest 3. Instead of going nowhere from Treetop when going up, say "You cannot climb any higher."

There is a forest room called Forest 4. "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." It is south from Forest 4. West from Forest 4 is south from Forest 2.

There is a forest room called Forest 5. It is north of Forest 4. It is north from Forest 5. Forest 2 is west from Forest 5. Nowhere is northwest from Forest 5.


Section - In the Clearing

There is a room called Clearing. "You are in a clearing, with a forest surrounding you on the west and south." It is south from Forest 3. Forest 5 is southeast from Clearing. Southwest from Clearing is east from Behind House. East from Clearing is north from Clearing. West from Clearing is east from Forest 3. South from Clearing is east from Forest 2.

Instead of finding the white house when the location is Clearing, say "It seems to be to the southwest."


Section - Map Improvements

Index map with North of House mapped northeast of West of House.
Index map with Behind House mapped southeast of North of House.
Index map with Forest 1 mapped west of West of House.
Index map with Forest 3 mapped northeast of North of House.
Index map with Clearing mapped northeast of Behind House.


Chapter - Forward References (Temporary)

A room called Canyon View is the room east from Forest 4.
A room called Canyon View is the room southeast from Forest 5.
