"Zork" by Alex Proudfoot

The story headline is "The pre-Infocom classic, rewritten".
The story description is "This is an Inform 7 rewrite of the MIT version of Zork."
The story genre is "Fantasy".
The story creation year is 2023.

The release number is 0. Include (- Serial "000000"; -).
Release along with a website, an interpreter, cover art and the source text.


[ Include Zork Commands by Alex Proudfoot. ]

Part - The Commands

[ Reproduces the commands and default responses of the original game. ]

Chapter - Commands leading to In World Actions

Section - Find

Understand "find [something]" as finding.

Finding is an action applying to one thing and requiring light.

Check finding yourself (this is the can't find yourself rule):
	say "Nothing happens." instead.

Check finding a backdrop (this is the can't find a backdrop rule):
	say "Nothing happens." instead.

Carry out finding something which is not a backdrop when the noun is in the location:
	say "There is [a noun] here.";

Carry out finding something when the noun is in a container (called the box) and the box is in the location:
	say "It is in [the box], which is here.";

Carry out finding something when the player is carrying the noun:
	say "You're holding [the noun]!"


Section - Look At

Understand the command look as something new.

Understand "look" as looking. Understand "look at" as looking.
Understand "look at [something]" as looking at.
Understand "look [something]" as looking at.
Understand "look inside/in/into/through [something]" as searching.
Understand "look under [something]" as looking under.
Understand "look up [text] in [something]" as consulting it about (with nouns reversed).

Looking at is an action applying to one visible thing and requiring light.

The looking at action has a truth state called looking at text printed.

Carry out looking at (this is the standard looking at rule):
	if the noun provides the property description and the description of the noun is not "":
		say "[description of the noun][line break]";
		now looking at text printed is true.

Carry out looking at (this is the looking at undescribed things rule):
	if looking at text printed is false:
		say "[We] [see] nothing special about [the noun]." (A).


Section - Read

Understand the command read as something new.

Understand "read [something]" as reading.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).

Reading is an action applying to one visible thing and requiring light.

A thing can be readable. A thing is usually not readable.

Check reading something (this is the can't read if not readable rule):
	if the noun is not readable, say "How can [we] read [a noun]?" instead.

Check reading yourself (this is the can't read yourself rule):
	say "How can [we] read a cretin?" instead.

Carry out reading something:
	if the noun is not carried, try taking the noun;
	try examining the noun;


Chapter - Commands leading to Out of World Actions

[ In MIT Zork, the out-of-world actions are counted as moves. ]

Section - Quit

Carry out quitting the game (this is the increment turn count before quitting rule): increment turn count.
Carry out quitting the game (this is the say player statistics before quitting rule): say player statistics.
The quit the game rule response (A) is "Do you wish to leave the game? (Y is affirmative):[line break] ".


Section - Restart

Carry out restarting the game (this is the increment turn count before restarting rule): increment turn count.
Carry out restarting the game (this is the say player statistics before restarting rule): say player statistics.
The restart the game rule response (A) is "Do you wish to restart? (Y is affirmative):[line break] ".


Chapter - Commands Providing Test Feedback

[ Adds support for test feedback to the game. ]


Section - In Transcript Comments

Understand "* [text]" as a mistake ("Noted.").


Section - GitHub Issue Reporting

Understand "bug" as a mistake ("Please visit https://github.com/zil-transformation/Zork/issues to report an issue."). Understand the commands "gritch" and "complaint" as "bug".

Understand "feature" as a mistake ("Please visit https://github.com/zil-transformation/Zork/issues to report an issue."). Understand the commands "comment", "suggestion" and "idea" as "feature".


[ Include Zork Containment Limiter by Alex Proudfoot. ]

Part - The Containment Limiter

[ Reproduces the containment limiting behaviour of the original game. ]

Include Bulk Limiter by Eric Eve.

The bulk of a thing is normally 5.

The bulk capacity of a container is normally 0.

The bulk test rule response (A) is "[The noun] [are] too big to fit in [the second noun]."
The bulk test rule response (B) is "[There] [are not] enough room left in [the second noun] for [the noun]."

The bulk capacity of a person is normally 100.

The person bulk test rule response (A) is "[The noun] [are] too big for [if the actor is the player][us][otherwise][the actor][end if] to pick up."

The person bulk test rule response (B) is "[If the player is the actor][We] [don't][otherwise][The actor] [don't][end if] have enough room left to carry [the noun]."


[ Include Zork Help Menu by Alex Proudfoot. ]

Part - The Help Menu

[ Adds a help menu to the game. ]

Include Basic Help Menu by Emily Short.


Chapter - Introduction

When play begins:
	choose row 1 in Table of Basic Help Options;
	now description entry is "Welcome to Zork![paragraph break]   You are near a large dungeon, which is reputed to contain vast quantities of treasure.  Naturally, you wish to acquire some of it.  In order to do so, you must of course remove it from the dungeon. To receive full credit for it, you must deposit it safely in the trophy case in the living room of the house.[paragraph break]   In addition to valuables, the dungeon contains various objects which may or may not be useful in your attempt to get rich.  You may need sources of light, since dungeons are often dark, and weapons, since dungeons often have unfriendly things wandering about.  Reading material is scattered around the dungeon as well;  some of it is rumored to be useful.[paragraph break]   To determine how successful you have been, a score is kept. When you find a valuable object and pick it up, you receive a certain number of points, which depends on the difficulty of finding the object.  You receive extra points for transporting the treasure safely to the living room and placing it in the trophy case.  In addition, some particularly interesting rooms have a value associated with visiting them.  The only penalty is for getting yourself killed, which you may do only twice.[paragraph break]   Of special note is a thief (always carrying a large bag) who likes to wander around in the dungeon (he has never been seen by the light of day).  He likes to take things.  Since he steals for pleasure rather than profit and is somewhat sadistic, he only takes things which you have seen.  Although he prefers valuables, sometimes in his haste he may take something which is worthless.  From time to time, he examines his take and discards objects which he doesn't like.  He may occasionally stop in a room you are visiting, but more often he just wanders through and rips you off (he is a skilled pickpocket).".


Chapter - InvisiClues

Section - Main Menu

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


Section - Egg Hints

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


Section - Hades Hints

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


Section - Bar Hints

Table of Bar Hints
hint	used
"[bar hint 1]"	a number
"[bar hint 2]"	--
"[bar hint 3]"	--

To say bar hint 1: say "You must disable the echo.".
To say bar hint 2: say "The solution has something to do with the room's acoustics.".
To say bar hint 3: say "Type ECHO.".


Section - Glacier Hints

Table of Glacier Hints
hint	used
"[glacier hint 1]"	a number
"[glacier hint 2]"	--

To say glacier hint 1: say "The glacier swells with heat.  Have you found anything fiery?".
To say glacier hint 2: say "Try throwing the torch at the glacier.".


Section - Well Hints

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


Section - Rainbow Hints

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


Section - Barrel Hints

Table of Barrel Hints
hint	used
"[barrel hint 1]"	a number

To say barrel hint 1: say "The barrel is for joy riders.  If you have always wanted to go for a ride in a barrel, try 'Geronimo'.".


Section - Bank Hints

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


Section - Endgame Hints

Table of Endgame Hints
hint	used
"[endgame hint 1]"	a number
"[endgame hint 2]"	--
"[endgame hint 3]"	--

To say endgame hint 1: say "You must win the main game (get all possible points).".
To say endgame hint 2: say "Wait around until you see a sinister wraithlike figure".
To say endgame hint 3: say "Then enter the crypt, close the door, turn off your lamp, and wait".


Section - Brochure Hints

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


[ Include Zork Presentation by Alex Proudfoot. ]

Part - The Presentation

[ Adds an Infocom-style presentation to the game. ]

Chapter - Status Bar

Include Basic Screen Effects by Emily Short.

Table of Zork Status
left	central	right 
" [location]"	""	"Score: [score]       Moves: [move count]"

Rule for constructing the status line:
	fill the status line with the Table of Zork Status;
	the rule succeeds.

When play begins: now the right alignment depth is 30.


Chapter - Room Description

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


Chapter - Locale Description

A thing has a text called appearance.

Rule for writing a paragraph about something not handled (called the item):
	if the initial appearance of the item is not "":
		say the initial appearance of the item;
	else if the appearance of the item is not "":
		say the appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about something handled (called the item):
	if the appearance of the item is not "":
		say the appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

Rule for writing a paragraph about an open container (called the box) when the box contains something:
	if the initial appearance of the box is not "":
		say the initial appearance of the box;
	else if the appearance of the box is not "":
		say the appearance of the box;
	else:
		say "There is [a box] here.";
	say line break;
	say "[The box] contains:";
	repeat with item running through the list of things in the box:
		say line break;
		say "  [a item]";


[ Include Zork Scoring System by Alex Proudfoot. ]

Part - The Scoring

[ Reproduces the scoring system of the original game. ]

Use scoring. The maximum score is initially 616.
[When play begins: try silently switching score notification off.]


Chapter - Scoring Categories

Section - Room Discovery

A room has a number called discovery points. The discovery points are usually 0.

Check going when the room gone to is a room and the discovery points of the room gone to are not 0 (this is the award points for room discovery rule):
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


Chapter - Player Statistics

To say player statistics:
	say "Your score [if story has ended]is[else]would be[end if] [score] [bracket]total of [maximum score] points[close bracket], in [move count] move[if move count is not 1]s[end if].";
	say "This score gives you the rank of [player ranking].";

To decide which number is the move count:
	if the story has not ended:
		decide on the turn count - 1;
	otherwise:
		decide on the turn count;

To say player ranking:
	repeat through the table of rankings in reverse score order:
		if the score is at least the score entry:
			say the rank entry;
			the rule succeeds;

Table of Rankings
Score	Rank
-31	"Incompetent"
0	"Beginner"
31	"Amateur Adventurer"
62	"Novice Adventurer"
123	"Junior Adventurer"
246	"Adventurer"
370	"Hacker"
493	"Winner"
554	"Master"
585	"Wizard"
616	"Cheater"
641	"Advanced Cheater"
666	"Master Cheater"
691	"Super Cheater"
716	"Dungeon Master"


Part - The Game

Include Basic Screen Effects by Emily Short.


Chapter 1 - The White House in the Forest

There is a region called the Forest. The white house is a backdrop in the Forest.

In the Forest is a region called Outside of the House. In Outside of the House are West of House, North of House, South of House and Behind House. Instead of finding the white house when the location is in Outside of the House, say "It's right in front of you. Are you blind or something?" Instead of looking at the white house when the location is in Outside of the House, say "The house is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy." Instead of entering the white house when the location is in Outside of House, say "I can't see how to get in from here."

In the Forest is a region called Among the Trees. In Among the Trees are Forest 1, Forest 2, Forest 3, Treetop, Forest 4 and Forest 5. Instead of finding the white house when the location is in Among the Trees, say "It was just here a minute ago...." Instead of doing something other than finding with the white house when the location is in Among the Trees, say "You're not at the house."

In the Forest is the Clearing. Instead of finding the white house when the location is the Clearing, say "It seems to be to the southwest." Instead of doing something other than finding with the white house when the location is the Clearing, say "You're not at the house."


Section - In Front of the House

There is a room called West of House. "This is an open field west of a white house, with a boarded front door." Yourself, a mailbox and a welcome mat are here. The front door is east. Instead of going nowhere from West of House when going east, say "The door is locked, and there is evidently no key."

The mailbox is a fixed in place, closed, openable container. Understand "small" and "box" as the mailbox. "There is a small mailbox here." The bulk capacity is 10. A leaflet is in it.

The leaflet is readable. Understand "small", "advert", "pamphlet", "booklet" and "mail" as the leaflet. The appearance is "There is a small leaflet here." The description is "[leaflet text]". The bulk is 2.

To say leaflet text:
	center "WELCOME TO ZORK";
	say paragraph break;
	say "    ZORK is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within![paragraph break]";
	say "    In ZORK the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
	say "    No system should be without one![paragraph break]";
	say "    ZORK was created at the MIT Laboratory for Computer Science, by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling. It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction adventure.[paragraph break]";
	say "    On-line information may be obtained by using the HELP command.[no line break]";

Instead of reading the leaflet:
	if the leaflet is not carried:
		try silently taking the leaflet;
		if the leaflet is carried, say "Taken.[no line break]";
	try examining the leaflet;

The welcome mat is readable. Understand "rubber" as the welcome mat. "A rubber mat saying [']Welcome to Zork!['] lies by the door." The description is "Welcome to Zork!" The bulk is 12.

The front door is a scenery locked door with printed name "door". Instead of entering the front door, say "You hit your head against the door as you attempt this feat." Instead of opening the front door, say "The door cannot be opened." Before unlocking the front door with something: say "It doesn't seem to work." instead.


Section - Beside the House

The barred windows are a privately-named backdrop in North of House and in South of House with printed name "window". Understand "windows" or "window" as the barred windows. Instead of entering the barred windows, say "You hit your head against the window as you attempt this feat."

There is a room called North of House. "You are facing the north side of a white house.  There is no door here, and all the windows are barred." West from North of House is north from West of House. Instead of going nowhere from North of House when going south, say "The windows are all barred."

There is a room called South of House. "You are facing the south side of a white house.  There is no door here, and all the windows are barred." West from South of House is south from West of House. Instead of going nowhere from South of House when going north, say "The windows are all barred."


Section - Behind the House

There is a room called Behind House. "You are behind the white house.  A path leads into the forest to the east.  In one corner of the house there is a small window which is [if the window is open]open[else]slightly ajar[end if]." A window is west. North from Behind House is east from North of House. South from Behind House is east from South of House. Instead of going west from Behind House when the window is closed, say "You can't go that way."

The window is a scenery door. Instead of entering the closed window, say "The window is closed." Before unlocking the window with something: say "It doesn't seem to work." instead.

Before entering the white house when the location is Behind House: try entering the window instead.


Section - Lost in the Trees

The unclimbable tree is a privately-named backdrop in Forest 1, in Forest 2, in Forest 4 and in Forest 5. The printed name is "tree". Understand "tree" as the unclimbable tree.

A forest room is a kind of room. The printed name is always "Forest". The description is usually "This is a forest, with trees in all directions around you." Instead of going nowhere from a forest room when going up, say "There is no tree here suitable for climbing."

There is a forest room called Forest 1. It is west from West of House. West from Forest 1 is north from Forest 1.

There is a forest room called Forest 2. "This is a dimly lit forest, with large trees all around.  To the east, there appears to be sunlight." It is south of South of House. West from Forest 2 is south from Forest 1.

There is a forest room called Forest 4. "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." It is south from Forest 4. West from Forest 4 is south from Forest 2.

There is a forest room called Forest 5. It is north of Forest 4. It is north from Forest 5. Forest 2 is west from Forest 5. Nowhere is northwest from Forest 5.


Section - Finding the Egg

The songbird is a backdrop in Among the Trees. The printed name is "bird". Understand "song/-- bird" as the songbird.

Instead of finding the songbird, say "The songbird is not here, but is probably nearby."

Instead of examining the songbird, say "I can't see any songbird here."

Every turn when the songbird is in the location:
	if a random chance of 1 in 10 succeeds, say "You hear in the distance the chirping of a song bird."

The large tree is a backdrop in Forest 3 and in Treetop. [It is climbable.]

There is a forest room called Forest 3. "This is a dimly lit forest, with large trees all around.  One particularly large tree with some low branches stands here." Forest 3 is east from Forest 1. Forest 2 is north from Forest 3. West from Forest 3 is north from North of House.

There is a room called Treetop. It is above Forest 3. It has printed name "Up a Tree". "You are about 10 feet above the ground nestled among some large branches.  The nearest branch above you is above your reach." A bird's nest is here. Instead of going nowhere from Treetop when going up, say "You cannot climb any higher."

The bird's nest is a container. Understand "small" as the bird's nest. "On the branch is a small bird's nest." The appearance is "There is a small bird's nest here." The bulk capacity is 20. A jewel-encrusted egg is in it.

The jewel-encrusted egg is a closed, openable container. Understand "bird's" and "encrusted" as the jewel-encrusted egg. "In the bird's nest is a large egg encrusted with precious jewels, apparently scavenged somewhere by a childless songbird.  The egg is covered with fine gold inlay, and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed.  The egg appears extremely fragile." The bulk capacity is 6. The taking points are 5. The hoarding points are 5.

Rule for writing a paragraph about the bird's nest when the bird's nest contains something:
	if the bird's nest is not handled:
		say the initial appearance of the bird's nest;
	else:
		say the appearance of the bird's nest;
	if the bird's nest contains the jewel-encrusted egg:
		say line break;
		say the initial appearance of the jewel-encrusted egg;


Section - In the Clearing

There is a room called Clearing. "You are in a clearing, with a forest surrounding you on the west and south."

A pile of leaves is here. A grating is down from Clearing.

Clearing is south from Forest 3. Forest 5 is southeast from Clearing. Southwest from Clearing is east from Behind House. East from Clearing is north from Clearing. West from Clearing is east from Forest 3. South from Clearing is east from Forest 2.

The pile of leaves is a thing.

The grating is a door.




[Section - Concerning the Trees

[Instead of just climbing when the large tree is in the location, try climbing the large tree.]
Instead of climbing the large tree, try going up.]





[Section - Concerning the Grating

[ printed name	=	grating
  nouns	=	grate, grating
  adjectives	=	-
  flags	=	scenery, door
  behaviour	=	GRATE-FUNCTION
]]


[Section - Concerning the Pile of Leaves

[ printed name	=	pile of leaves
  nouns	=	leaves, leaf, pile
  adjectives	=	-
  flags	=	burnable?
  behaviour	=	LEAF-PILE
]]






Chapter - World Index Map Improvements

[Index map with North of House mapped northeast of West of House.]
Index map with Behind House mapped southeast of North of House.
Index map with South of House mapped southwest of Behind House.
Index map with Forest 1 mapped west of West of House.
Index map with Forest 3 mapped northeast of North of House.
Index map with Clearing mapped northeast of Behind House.


Chapter - Forward References (Temporary)

[A room called Canyon View is the room east from Forest 4.]
[A room called Canyon View is the room southeast from Forest 5.]

The trophy case is a container.

Kitchen is a room. The window is east.
Above Kitchen is Attic.
West of Kitchen is Living Room.
Below Living room is Cellar.

Index map with Living Room mapped east of West of House.

[Index map with EPS file.]
