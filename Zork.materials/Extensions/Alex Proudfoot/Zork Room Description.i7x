Version 1 of Zork Room Description by Alex Proudfoot begins here.

"Describes rooms in the style of the original game"

Use authorial modesty.


Section - Describing the Room

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


Section - Describing the Contents of the Room

A thing has some text called usual appearance.

Rule for writing a paragraph about something (called the item): describe the item.

To describe (item - a thing):
	if the item is not handled and the initial appearance of the item is not "":
		say the initial appearance of the item;
	else if the usual appearance of the item is not "":
		say the usual appearance of the item;
	else:
		say "There is [an item] here.[no line break]";

To describe (box - an open container):
	describe the box;
	if the box contains significant items:
		repeat with item running through the list of things in the box:
			say line break;
			describe the item;
	else if the box contains something:
		say line break;
		say "[The box] contains:";
		repeat with item running through the list of things in the box:
			say line break;
			say "  [a item]";

To decide if (box - an open container) contains significant items:
	repeat with item running through the list of things in the box:
		if the item is not handled and the initial appearance of the item is not "", decide on true;
	decide on false;


Section - Ending with a Line Break

After looking, say "".


Zork Room Description ends here.

---- DOCUMENTATION ----

This extension describes rooms in the style of the original game.
