"Zork" by Alex Proudfoot

The story headline is "The pre-Infocom classic, rewritten".

Include Basic Screen Effects by Emily Short.

Include Zork Commands by Alex Proudfoot.
Include Zork Containment Limiter by Alex Proudfoot.
Include Zork Help Menu by Alex Proudfoot.
Include Zork Presentation by Alex Proudfoot.
Include Zork Scoring System by Alex Proudfoot.
Include Zork Test Feedback Support by Alex Proudfoot.


Chapter 1 - The White House in the Forest

There is a region called the Forest. In the Forest is the Clearing. The white house is a backdrop in the Forest.

Instead of looking at the white house when the location is in Outside of the House, say "The house is a beautiful colonial house which is painted white. It is clear that the owners must have been extremely wealthy."

Instead of finding the white house when the location is in Outside of the House, say "It's right in front of you.  Are you blind or something?"

[Check burning the white house when the location is in Outside of the House:
	say "You must be joking." instead.]

Instead of finding the white house when the location is in Among the Trees, say "It was just here a minute ago...."

Instead of doing something other than finding with the white house when the location is in Among the Trees, say "You're not at the house."

Instead of finding the white house when the location is the Clearing, say "It seems to be to the southwest."

Instead of doing something other than finding with the white house when the location is the Clearing, say "You're not at the house."


Section - Outside of the House

In the Forest is a region called Outside of the House. In Outside of the House are West of House, North of House, South of House and Behind House. The windows are a backdrop in North of House. They are a backdrop in South of House. The printed name is "window". Understand "window" as the windows.

Instead of going nowhere from North of House when going south, say "The windows are all barred."

Instead of going nowhere from South of House when going north, say "The windows are all barred."

Instead of entering the window, say "You hit your head against the window as you attempt this feat."

There is a room called West of House. "This is an open field west of a white house, with a boarded front door." Yourself, a small mailbox and a welcome mat are here. The front door is east.

The small mailbox is a fixed in place closed openable container with printed name "mailbox". "There is a small mailbox here." Understand "box" as the small mailbox.

[The bulk capacity of the small mailbox is 10.]

A small leaflet with printed name "leaflet" and description "[leaflet text]" is in the small mailbox. Understand "advert", "pamphlet", "booklet" or "mail" as the small leaflet.

The small leaflet is readable.
[The bulk of the small leaflet is 2.]

To say leaflet text:
	center "WELCOME TO ZORK";
	say paragraph break;
	say "    ZORK is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within![paragraph break]";
	say "    In ZORK the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
	say "    No system should be without one![paragraph break]";
	say "    ZORK was created at the MIT Laboratory for Computer Science, by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling. It was inspired by the Adventure game of Crowther and Woods, and the long tradition of fantasy and science fiction adventure.[paragraph break]";
	say "    On-line information may be obtained by using the HELP command.[no line break]";

Instead of reading the small leaflet:
	if the small leaflet is not carried:
		try silently taking the small leaflet;
		if the small leaflet is carried, say "Taken.[no line break]";
	try examining the small leaflet;

There is a welcome mat with description "Welcome to Zork!". "A rubber mat saying [']Welcome to Zork!['] lies by the door." Understand "rubber" as the welcome mat.

The welcome mat is readable.
[The bulk of the welcome mat is 12.]

The front door is a locked scenery door with printed name "door".

Instead of going nowhere from West of House when going east, say "The door is locked, and there is evidently no key."

Instead of entering the front door, say "You hit your head against the door as you attempt this feat."

Instead of opening the front door, say "The door cannot be opened."

Before unlocking the front door with something, say "It doesn't seem to work." instead.

There is a room called North of House. "You are facing the north side of a white house. There is no door here, and all the windows are barred." West from North of House is north from West of House.

There is a room called South of House. "You are facing the south side of a white house. There is no door here, and all the windows are barred." West from South of House is south from West of House.

There is a room called Behind House. "You are behind the white house. A path leads into the forest to the east. In one corner of the house there is a small window which is [if the window is open]open[else]slightly ajar[end if]." A window is west. North from Behind House is east from North of House. South from Behind House is east from South of House.

The window is a scenery door.


Section - Among the Trees

In the Forest is a region called Among the Trees. In Among the Trees are Forest 3 and Treetop.

The song bird is a backdrop in Among the Trees. Understand "songbird" as the song bird.

Every turn while the song bird is in the location:
	if a random chance of 1 in 10 succeeds, say "You hear in the distance the chirping of a song bird."

The large tree is a backdrop in Forest 3. It is a backdrop in Treetop.
[Instead of just climbing when the large tree is in the location, try climbing the large tree.]
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

The birds nest is an open container with description "There is a small birds nest here." [and bulk capacity 20]. "On the branch is a small birds nest." Understand "small" as the birds nest. There is an encrusted birds egg with printed name "jewel-encrusted egg" in it.

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


Chapter - Exploring Outside of the House

Section - The White House


Section - The Front Door


Section - The Barred Windows


Chapter - Exploring Among the Trees

Section - The White House


Section - The Songbird

[ The Appearance ]

Instead of examining the song bird:
	say "You can't see any songbird here."

[Instead of looking at the song bird:
	say "You see nothing special about the bird."]

[ The Location ]

[Instead of finding the song bird:
	say "The songbird is not here, but is probably nearby."]


Chapter - Exploring In the Clearing

Section - The White House

