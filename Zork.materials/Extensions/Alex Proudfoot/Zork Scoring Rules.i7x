Version 1 of Zork Scoring Rules by Alex Proudfoot begins here.

"Reproduces the scoring rules of the original game."

Use authorial modesty.
Use scoring. [ in order to modify the score ]


Section - Points for Room Discovery

A room has a number called discovery points. The discovery points are usually 0.

Check going when the room gone to is a room and the discovery points of the room gone to are not 0
      (this is the award points for room discovery rule):
	if the room gone to is not visited, now the score is the score plus the discovery points of the room gone to.


Section - Points for Treasure Taking

A thing has a number called taking points. The taking points are usually 0.

Check taking when the taking points of the noun are not 0
      (this is the award points for treasure taking rule):
	if the noun is not handled, now the score is the score plus the taking points of the noun.


Section - Points for Treasure Hoarding

The trophy case is a container.

A thing has a number called hoarding points. The hoarding points are usually 0.

Check inserting into the trophy case when the hoarding points of the noun are not 0
      (this is the award points for treasure hoarding rule):
	now the score is the score plus the hoarding points of the noun.

Check removing from the trophy case when the hoarding points of the noun are not 0
      (this is the remove points for treasure unhoarding rule):
	now the score is the score minus the hoarding points of the noun.


Zork Scoring Rules ends here.

---- DOCUMENTATION ----

This extension implements the rules governing points awarded for room discovery, treasure taking and treasure hoarding.
