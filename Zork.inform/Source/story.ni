"Zork" by Alex Proudfoot

The story headline is "The pre-Infocom classic, rewritten". The story description is "This is an Inform 7 rewrite of the MIT version of Zork." The story genre is "Fantasy". The story creation year is 2023.

The release number is 0. Include (- Serial "000000"; -). Release along with a website, an interpreter, cover art and the source text.

Include Zork Library by Alex Proudfoot.


Chapter 1 - The White House in the Forest

There is a region called the Forest. The white house is a backdrop in the Forest.

In the Forest is a region called Outside of the House. In Outside of the House are West of House, North of House, South of House and Behind House. Instead of finding the white house when the location is in Outside of the House, say "It's right in front of you. Are you blind or something?" Instead of examining the white house when the location is in Outside of the House, say "The house is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy." Instead of entering the white house when the location is in Outside of House, say "I can't see how to get in from here."

In the Forest is a region called Among the Trees. In Among the Trees are Forest 1, Forest 2, Forest 3, Up a Tree, Forest 4 and Forest 5. Instead of finding the white house when the location is in Among the Trees, say "It was just here a minute ago...." Instead of doing something other than finding with the white house when the location is in Among the Trees, say "You're not at the house."

In the Forest is the Clearing. Instead of finding the white house when the location is the Clearing, say "It seems to be to the southwest." Instead of doing something other than finding with the white house when the location is the Clearing, say "You're not at the house."


Section 1a - Finding the Game Leaflet

There is a room called West of House. "This is an open field west of a white house, with a boarded front door." Yourself, a mailbox and a welcome mat are here. The front door is east from West of House. Instead of going nowhere from West of House when going east, say "The door is locked, and there is evidently no key."

The mailbox is a fixed in place, closed, openable container with general appearance "There is a small mailbox here." and bulk capacity 10. Understand "small" and "box" as the mailbox. A leaflet is in it.

The leaflet is readable with general appearance "There is a small leaflet here.", description "[leaflet text]" and bulk 2. Understand "small", "advert", "pamphlet", "booklet" and "mail" as the leaflet.

To say leaflet text:
	center "WELCOME TO ZORK";
	say paragraph break;
	say "    ZORK is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within![paragraph break]";
	say "    In ZORK the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
	say "    No system should be without one![paragraph break]";
	say "    ZORK was created at the MIT Laboratory for Computer Science, by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling. It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction adventure.[paragraph break]";
	say "    On-line information may be obtained by using the HELP command.[no line break]";

The welcome mat is readable with initial appearance "A rubber mat saying [']Welcome to Zork!['] lies by the door.", description "Welcome to Zork!" and bulk 12. Understand "rubber" as the welcome mat.

The front door is a scenery locked door with printed name "door". Instead of entering the front door, say "You hit your head against the door as you attempt this feat." Instead of opening the front door, say "The door cannot be opened."


Section 1b - Walking around the House

The barred windows are a privately-named backdrop in North of House and in South of House with printed name "window". Understand "windows" or "window" as the barred windows. Instead of entering the barred windows, say "You hit your head against the window as you attempt this feat."

There is a room called North of House. "You are facing the north side of a white house.  There is no door here, and all the windows are barred." West from North of House is north from West of House. Instead of going nowhere from North of House when going south, say "The windows are all barred."

There is a room called South of House. "You are facing the south side of a white house.  There is no door here, and all the windows are barred." West from South of House is south from West of House. Instead of going nowhere from South of House when going north, say "The windows are all barred."


Section 1c - Entering the House

There is a room called Behind House. "You are behind the white house.  A path leads into the forest to the east.  In one corner of the house there is a small window which is [if the window is open]open[else]slightly ajar[end if]." North from Behind House is east from North of House. South from Behind House is east from South of House. Instead of going west from Behind House when the window is closed, say "You can't go that way." A window is west from Behind House.

The window is a scenery door. Instead of entering the closed window, say "The window is closed."

Before entering the white house when the location is Behind House: try entering the window instead.


Section 1d - Exploring the Forest

The unclimbable tree is a privately-named backdrop in Forest 1, in Forest 2, in Forest 4 and in Forest 5. The printed name is "tree". Understand "tree" as the unclimbable tree.

A forest room is a kind of room. The printed name is always "Forest". The description is usually "This is a forest, with trees in all directions around you." Instead of going nowhere from a forest room when going up, say "There is no tree here suitable for climbing."

There is a forest room called Forest 1. It is west from West of House. West from Forest 1 is north from Forest 1.

There is a forest room called Forest 2. "This is a dimly lit forest, with large trees all around.  To the east, there appears to be sunlight." It is south of South of House. West from Forest 2 is south from Forest 1.

There is a forest room called Forest 4. "This is a large forest, with trees obstructing all views except to the east, where a small clearing may be seen through the trees." It is south from Forest 4. West from Forest 4 is south from Forest 2.

There is a forest room called Forest 5. It is north of Forest 4. It is north from Forest 5. Forest 2 is west from Forest 5. Nowhere is northwest from Forest 5.


Section 1e - Finding the Egg

The songbird is a backdrop in Among the Trees. The printed name is "bird". Understand "song/-- bird" as the songbird. Instead of examining the songbird, say "I can't see any songbird here." Instead of finding the songbird, say "The songbird is not here, but is probably nearby."

Every turn when the songbird is in the location:
	if a random chance of 1 in 10 succeeds, say "You hear in the distance the chirping of a song bird."

The large tree is a backdrop in Forest 3 and in Up a Tree.

There is a forest room called Forest 3. "This is a dimly lit forest, with large trees all around.  One particularly large tree with some low branches stands here." Forest 3 is east from Forest 1. Forest 2 is north from Forest 3. West from Forest 3 is north from North of House.

There is a room called Up a Tree. It is above Forest 3. "You are about 10 feet above the ground nestled among some large branches.  The nearest branch above you is above your reach." A bird's nest is here. Instead of going nowhere from Up a Tree when going up, say "You cannot climb any higher."

The bird's nest is a container with initial appearance "On the branch is a small bird's nest.", general appearance "There is a small bird's nest here." and bulk capacity 20. Understand "small" as the bird's nest. A jewel-encrusted egg is in it.

The jewel-encrusted egg is a closed, openable container with initial appearance "In the bird's nest is a large egg encrusted with precious jewels, apparently scavenged somewhere by a childless songbird.  The egg is covered with fine gold inlay, and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed.  The egg appears extremely fragile.", bulk capacity 6, taking points 5 and hoarding points 5. Understand "bird's" and "encrusted" as the jewel-encrusted egg.


Section 1f - Finding the Grating

There is a room called Clearing. "You are in a clearing, with a forest surrounding you on the west and south.[if the grating is revealed][line break][grating description][end if]". A pile of leaves is here. A grating is down from Clearing. Clearing is south from Forest 3. Forest 5 is southeast from Clearing. Southwest from Clearing is east from Behind House. East from Clearing is north from Clearing. West from Clearing is east from Forest 3. South from Clearing is east from Forest 2. Instead of going down from the Clearing when the grating is closed, say "You can't go that way."

The pile of leaves is a thing with general appearance "There is a pile of leaves on the ground." and bulk 25.

The grating is a hidden scenery locked door.

Carry out taking the leaves for the first time:
	say "A grating appears on the ground.[no line break]";
	reveal the grating;

To say grating description:
	if the grating is closed:
		say "There is a grating securely fastened into the ground.[no line break]";
	else:
		say "There is an open grating, descending into darkness.[no line break]";


Chapter 2 - Inside the White House

Section 2a - Kitchen

There is a room called Kitchen. "You are in the kitchen of the white house. A table seems to have been used recently for the preparation of food. A passage leads to the west and a dark staircase can be seen leading upward. To the east is a small window which is [if the window is open]open[else]slightly ajar[end if]."


Section 2b - Attic

A room called Attic is above Kitchen. "This is the attic. The only exit is stairs that lead down."


Section 2c - Living Room

A room called Living Room is west of Kitchen. ["You are in the living room. There is a door to the east[if the wooden door is open]. To the west is a cyclops-shaped hole in an old wooden door, above which is some strange gothic lettering[else], a wooden door with strange gothic lettering to the west, which appears to be nailed shut,[end if] [if the rug is not moved]and a large oriental rug in the center of the room[else if the trap door is closed]and a closed trap-door at your feet[else]and a rug lying beside an open trap-door[end if]."]


Section 2z - Forward References  (Temporary)

The trophy case is a container.


Chapter 3 - Beneath the White House

Section 3z - Forward References (Temporary)

Below Living room is Cellar.


Chapter 4 - The Maze

Section 4z - Forward References (Temporary)

The grating is above Grating Room.
The skeleton key unlocks the grating.


Chapter 12 - River Area

Section 12z - Forward References (Temporary)

East from Forest 4 is south from Canyon View.
Southeast from Forest 5 is west from Canyon View.


Chapter A - World Index Map Improvements

Section A1 - The White House in the Forest

Index map with Behind House mapped southeast of North of House.
Index map with South of House mapped southwest of Behind House.
Index map with Forest 1 mapped west of West of House.
Index map with Forest 3 mapped northeast of North of House.
Index map with Clearing mapped northeast of Behind House.


Section A2 - Inside the White House

Index map with Living Room mapped east of West of House.
