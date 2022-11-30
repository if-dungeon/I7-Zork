"Zork" by Alex Proudfoot

The story headline is "The pre-Infocom classic, rewritten".


Part - The Mechanics

Chapter - Custom Commands and Responses

Section - Reading

Understand the command read as something new.
Understand "read [something]" as reading.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).

Reading is an action applying to one visible thing and requiring light.

A thing can be readable. A thing is usually not readable.
Check reading something (this is the can't read if not readable rule):
	if the noun is not readable, say "How can [we] read [a noun]." instead.

Carry out reading something:
	if the noun is not carried, try taking the noun;
	try examining the noun;


Section - Looking

Understand the command look as something new.
Understand "look" as looking. Understand "look at" as looking.
Understand "look at [something]" as looking at.
Understand "look [something]" as looking at.
Understand "look inside/in/into/through [something]" as searching.
Understand "look under [something]" as looking under.
Understand "look up [text] in [something]" as consulting it about (with nouns reversed).

Looking at is an action applying to one visible thing and requiring light.

Carry out looking at something:
	try examining the noun;


Section - Finding

Understand "find [something]" as finding.

Finding is an action applying to one thing and requiring light.

Carry out finding a backdrop:
	say "Nothing happens.";

Carry out finding something which is not a backdrop when the noun is in the location:
	say "There is [a noun] here.";

Carry out finding something when the noun is in a container (called the box) and the box is in the location:
	say "It is in [the box], which is here.";

Carry out finding something when the player is carrying the noun:
	say "You're holding [the noun]!";


Section - Climbing

Understand the command climb as something new.
Understand "climb" as just climbing.
Understand "climb [something]" or "climb up/over [something]" as climbing.

Just climbing is an action applying to nothing.


Chapter - Carrying Capacity System

Include Bulk Limiter by Eric Eve.

The bulk of a thing is normally 5.

The bulk capacity of a container is normally 0.

The bulk test rule response (A) is "[The noun] [are] too big to fit in [the second noun]."
The bulk test rule response (B) is "[There] [are not] enough room left in [the second noun] for [the noun]."

The bulk capacity of a person is normally 100.

The person bulk test rule response (A) is "[The noun] [are] too big for [if the actor is the player][us][otherwise][the actor][end if] to pick up."

The person bulk test rule response (B) is "[If the player is the actor][We] [don't][otherwise][The actor] [don't][end if] have enough room left to carry [the noun]."


Chapter - Help System

Include Basic Help Menu by Emily Short.


Section - Introduction

When play begins:
	choose row 1 in Table of Basic Help Options;
	now description entry is "Welcome to Zork![paragraph break]   You are near a large dungeon, which is reputed to contain vast quantities of treasure.  Naturally, you wish to acquire some of it.  In order to do so, you must of course remove it from the dungeon. To receive full credit for it, you must deposit it safely in the trophy case in the living room of the house.[paragraph break]   In addition to valuables, the dungeon contains various objects which may or may not be useful in your attempt to get rich.  You may need sources of light, since dungeons are often dark, and weapons, since dungeons often have unfriendly things wandering about.  Reading material is scattered around the dungeon as well;  some of it is rumored to be useful.[paragraph break]   To determine how successful you have been, a score is kept. When you find a valuable object and pick it up, you receive a certain number of points, which depends on the difficulty of finding the object.  You receive extra points for transporting the treasure safely to the living room and placing it in the trophy case.  In addition, some particularly interesting rooms have a value associated with visiting them.  The only penalty is for getting yourself killed, which you may do only twice.[paragraph break]   Of special note is a thief (always carrying a large bag) who likes to wander around in the dungeon (he has never been seen by the light of day).  He likes to take things.  Since he steals for pleasure rather than profit and is somewhat sadistic, he only takes things which you have seen.  Although he prefers valuables, sometimes in his haste he may take something which is worthless.  From time to time, he examines his take and discards objects which he doesn't like.  He may occasionally stop in a room you are visiting, but more often he just wanders through and rips you off (he is a skilled pickpocket).".


Section - InvisiClues

Table of Basic Help Options (continued)
title	subtable	description
"InvisiClues Hints"	Table of Hints	--

Table of Hints
title	subtable	description	toggle
"How do I open the egg?"	Table of Egg Hints	""	hint toggle rule
"How do I enter Hades?"	Table of Hades Hints	""	hint toggle rule
"How do I get the platinum bar?"	Table of Bar Hints	""	hint toggle rule
"How do I pass the glacier?"	Table of Glacier Hints	""	hint toggle rule
"How do I work the well?"	Table of Well Hints	""	hint toggle rule
"How do I work the rainbow?"	Table of Rainbow Hints	""	hint toggle rule
"What good is the barrel?"	Table of Barrel Hints	""	hint toggle rule
"How does the Bank of Zork work?"	Table of Bank Hints	""	hint toggle rule
"How do I get to the endgame?"	Table of Endgame Hints	""	hint toggle rule
"How do I get the last point?"	Table of Brochure Hints	""	hint toggle rule

Table of Egg Hints
hint	used
"[egg hint 1]"	a number
"[egg hint 2]"	--
"[egg hint 3]"	--
"[egg hint 4]"	--

To say egg hint 1: say "You could try 'SMASH EGG'".
To say egg hint 2: say "But that severely detracts from its aesthetic appeal".
To say egg hint 3: say "Someone else in the game can do it.".
To say egg hint 4: say "Only the Thief can open the egg. Give it to him or leave it underground where he will find it.".

Table of Hades Hints
hint	used
"[hades hint 1]"	a number
"[hades hint 2]"	--
"[hades hint 3]"	--
"[hades hint 4]"	--

To say hades hint 1: say "You must first exorcise the demons; are you properly equipped?".
To say hades hint 2: say "For a hint, read the black book.".
To say hades hint 3: say "It requires the bell, book and candles.".
To say hades hint 4: say "Ring the bell, light the candles, and read the black book.".

Table of Bar Hints
hint	used
"[bar hint 1]"	a number
"[bar hint 2]"	--
"[bar hint 3]"	--

To say bar hint 1: say "You must disable the echo.".
To say bar hint 2: say "The solution has something to do with the room's acoustics.".
To say bar hint 3: say "Type ECHO.".

Table of Glacier Hints
hint	used
"[glacier hint 1]"	a number
"[glacier hint 2]"	--

To say glacier hint 1: say "The glacier swells with heat.  Have you found anything fiery?".
To say glacier hint 2: say "Try throwing the torch at the glacier.".

Table of Well Hints
hint	used
"[well hint 1]"	a number
"[well hint 2]"	--
"[well hint 3]"	--
"[well hint 4]"	--

To say well hint 1: say "Have you tried making a wish?".
To say well hint 2: say "Make sure you are carrying the coins. Saving the game would also be a good idea.".
To say well hint 3: say "If the well won't bring you water, you could try bringing water to the well.".
To say well hint 4: say "Get in the bucket, then pour water into it.".

Table of Rainbow Hints
hint	used
"[rainbow hint 1]"	a number
"[rainbow hint 2]"	--
"[rainbow hint 3]"	--
"[rainbow hint 4]"	--

To say rainbow hint 1: say "You can cross it and get the pot of gold.".
To say rainbow hint 2: say "You do not click your heels together three times while saying 'There's no place like home.'".
To say rainbow hint 3: say "Wave the stick while standing at the end of the rainbow".
To say rainbow hint 4: say "This is similar to the fissure puzzle in ADVENTURE".

Table of Barrel Hints
hint	used
"[barrel hint 1]"	a number

To say barrel hint 1: say "The barrel is for joy riders.  If you have always wanted to go for a ride in a barrel, try 'Geronimo'.".

Table of Bank Hints
hint	used
"[bank hint 1]"	a number
"[bank hint 2]"	--
"[bank hint 3]"	--
"[bank hint 4]"	--
"[bank hint 5]"	--
"[bank hint 6]"	--
"[bank hint 7]"	--
"[bank hint 8]"	--

To say bank hint 1: say "The Bank of Zork is built on illusions.  Walls are one of the key illusions.".
To say bank hint 2: say "Have you tried walking through the curtain of light?".
To say bank hint 3: say "The curtain leads to four locations.".
To say bank hint 4: say "It is completely deterministic (i.e., non-random).".
To say bank hint 5: say "The location to which it leads is determined by the direction from which you entered the Depository.".
To say bank hint 6: say "If you enter from the east or west East Viewing Room, you will be transported to Viewing Room. If you enter from the south (e.g., the Chairman's Office) you will be transported to the Small Room.".
To say bank hint 7: say "You can leave the Small Room by walking through the south wall (thus entering the Depository from the North). ".
To say bank hint 8: say "If you enter the Depository from the north, you will be transported to the Vault.".

Table of Endgame Hints
hint	used
"[endgame hint 1]"	a number
"[endgame hint 2]"	--
"[endgame hint 3]"	--

To say endgame hint 1: say "You must win the main game (get all possible points).".
To say endgame hint 2: say "Wait around until you see a sinister wraithlike figure".
To say endgame hint 3: say "Then enter the crypt, close the door, turn off your lamp, and wait".

Table of Brochure Hints
hint	used
"[brochure hint 1]"	a number
"[brochure hint 2]"	--
"[brochure hint 3]"	--
"[brochure hint 4]"	--

To say brochure hint 1: say "Have you read the newspaper?".
To say brochure hint 2: say "Have you availed yourself of ALL opportunities for intellectual improvement?".
To say brochure hint 3: say "Try reading the matchbook.".
To say brochure hint 4: say "Type 'SEND FOR FREE BROCHURE'".


Chapter - Points System

Use scoring.
When play begins: try silently switching score notification off.


Section - Room Discovery

A room has a number called discovery points. The discovery points are usually 0.
Check going when the discovery points of the room gone to are not 0 (this is the award points for room discovery rule):
	if the room gone to is not visited, now the score is the score plus the discovery points of the room gone to.


Section - Treasure Taking

A thing has a number called taking points. The taking points are usually 0.
Check taking when the taking points of the noun are not 0 (this is the award points for treasure taking rule):
	if the noun is not handled, now the score is the score plus the taking points of the noun.


Section - Treasure Hoarding

A thing has a number called hoarding points. The hoarding points are usually 0.
Check inserting into the trophy case when the hoarding points of the noun are not 0 (this is the award points for treasure hoarding rule):
	now the score is the score plus the hoarding points of the noun.

Check removing from the trophy case when the hoarding points of the noun are not 0 (this is the remove points for treasure unhoarding rule):
	now the score is the score minus the hoarding points of the noun.


Chapter - Presentation (Infocom Style)

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


Part - The Game

The player is in West of House.


Chapter - The White House in the Forest

There is a region called the Forest. In the Forest is the Clearing. The white house is a backdrop in the Forest.

Instead of finding the white house when the location is in Outside of the House, say "It's right in front of you.  Are you blind or something?" Instead of looking at the white house when the location is in Outside of the House, say "The house is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy." Instead of burning the white house when the location is in Outside of the House, say "You must be joking."

Instead of finding the white house when the location is the Clearing, say "It seems to be to the southwest." Instead of finding the white house when the location is not in Outside of House and the location is not the Clearing, say "It was just here a minute ago...." Instead of doing something other than finding with the white house when the location is not in Outside of House, say "You're not at the house.";


Section - Outside of the House

In the Forest is a region called Outside of the House. In Outside of the House are West of House, North of House, South of House and Behind House. The windows are a backdrop in North of House. They are a backdrop in South of House. The printed name is "window". Understand "window" as the windows.

There is a room called West of House. "This is an open field west of a white house, with a boarded front door." A small mailbox and a welcome mat are here. The front door is east. Instead of going nowhere from West of House when going east, say "The door is locked, and there is evidently no key."

The small mailbox is a fixed in place closed openable container with printed name "mailbox" and bulk capacity 10. "There is a small mailbox here." Understand "box" as the small mailbox. There is a small leaflet with printed name "leaflet" and bulk 2 in it. It is readable. Understand "advert", "pamphlet", "booklet" or "mail" as the small leaflet.

Instead of reading the small leaflet:
	if the small leaflet is not carried:
		try silently taking the small leaflet;
		if the small leaflet is carried, say "Taken.[no line break]";
	try examining the small leaflet;

Instead of examining the small leaflet:
	center "WELCOME TO ZORK";
	say paragraph break;
	say "    ZORK is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within![paragraph break]";
	say "    In ZORK the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
	say "    No system should be without one![paragraph break]";
	say "    ZORK was created at the MIT Laboratory for Computer Science, by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling. It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction adventure.[paragraph break]";
	say "    On-line information may be obtained by using the HELP command.[paragraph break]";

The welcome mat is readable with initial appearance "A rubber mat saying [']Welcome to Zork!['] lies by the door.", description "Welcome to Zork!" and bulk 12. Understand "rubber" as the welcome mat.

The front door is a locked scenery door with printed name "door".

There is a room called North of House. "You are facing the north side of a white house. There is no door here, and all the windows are barred." West from North of House is north from West of House. Instead of going nowhere from North of House when going south: say "The windows are all barred."

There is a room called South of House. "You are facing the south side of a white house. There is no door here, and all the windows are barred." West from South of House is south from West of House. Instead of going nowhere from South of House when going north: say "The windows are all barred."

There is a room called Behind House. "You are behind the white house. A path leads into the forest to the east. In one corner of the house there is a small window which is [if the window is open]open[else]slightly ajar[end if]." A window is west. North from Behind House is east from North of House. South from Behind House is east from South of House.

The window is a scenery door.


Section - Among the Trees

In the Forest is a region called Among the Trees. In Among the Trees are Forest 3 and Treetop. Every turn while the location is in Among the Trees: if a random chance of 1 in 10 succeeds, say "You hear in the distance the chirping of a song bird."

The song bird is a backdrop in Among the Trees. Understand "songbird" as the song bird. Instead of examining the song bird, say "You can't see any songbird here." Instead of looking at the song bird, say "You see nothing special about the bird." Instead of finding the song bird, say "The songbird is not here, but is probably nearby."

The large tree is a backdrop in Forest 3. It is a backdrop in Treetop.
Instead of just climbing when the large tree is in the location, try climbing the large tree.
Instead of climbing the large tree, try going up.

In Among the Trees is a region called Among Unclimbable Trees.
In Among Unclimbable Trees are Forest 1, Forest 2, Forest 4 and Forest 5.

The unclimbable tree is a privately-named backdrop in Among Unclimbable Trees.
Understand "tree" as the unclimbable tree when the large tree is not in the location.

A forest room is a kind of room. The printed name is always "Forest". The description is usually "This is a forest, with trees in all directions around you." Instead of going nowhere from a forest room when going up, say "There is no tree here suitable for climbing."

There is a forest room called Forest 1. It is west from West of House. West from Forest 1 is north from Forest 1.

There is a forest room called Forest 2. "This is a dimly lit forest, with large trees all around. To the east, there appears to be sunlight." It is south of South of House. West from Forest 2 is south from Forest 1.

There is a forest room called Forest 3. "This is a dimly lit forest, with large trees all around. One particularly large tree with some low branches stands here." Forest 3 is east from Forest 1. Forest 2 is north from Forest 3. West from Forest 3 is north from North of House.

There is a room called Treetop. It is above Forest 3. It has printed name "Up a Tree". "You are about 10 feet above the ground nestled among some large branches. The nearest branch above you is above your reach." A birds nest is here. Instead of going nowhere from Treetop when going up, say "You cannot climb any higher."

The birds nest is an open container with description "There is a small birds nest here." and bulk capacity 20. "On the branch is a small birds nest." Understand "small" as the birds nest. There is an encrusted birds egg with printed name "jewel-encrusted egg" in it.

[ printed name	=	birds nest
  nouns	=	nest
  adjectives	=	birds, small
  flags	=	burnable, open (container)
  behaviour	=	-
]
[ printed name	=	jewel-encrusted egg
  nouns	=	egg
  adjectives	=	birds, encrusted
  flags	=	container
  behaviour	=	EGG-OBJECT
]


There is a forest room called Forest 4. "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." It is south from Forest 4. West from Forest 4 is south from Forest 2.


There is a forest room called Forest 5. It is north of Forest 4. It is north from Forest 5. Forest 2 is west from Forest 5. Nowhere is northwest from Forest 5.


Section - In the Clearing

There is a room called Clearing. "You are in a clearing, with a forest surrounding you on the west and south." It is south from Forest 3. Forest 5 is southeast from Clearing. Southwest from Clearing is east from Behind House. East from Clearing is north from Clearing. West from Clearing is east from Forest 3. South from Clearing is east from Forest 2.

[ printed name	=	grating
  nouns	=	grate, grating
  adjectives	=	-
  flags	=	scenery, door
  behaviour	=	GRATE-FUNCTION
]
[ printed name	=	pile of leaves
  nouns	=	leaves, leaf, pile
  adjectives	=	-
  flags	=	burnable?
  behaviour	=	LEAF-PILE
]

Section - World Index Map Improvements

Index map with North of House mapped northeast of West of House.
Index map with Behind House mapped southeast of North of House.
Index map with Forest 1 mapped west of West of House.
Index map with Forest 3 mapped northeast of North of House.
Index map with Clearing mapped northeast of Behind House.


Chapter - Forward References (Temporary)

The trophy case is a container.

A room called Canyon View is the room east from Forest 4.
A room called Canyon View is the room southeast from Forest 5.
