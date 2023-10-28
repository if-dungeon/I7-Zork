Version 1 of Zork Player Statistics by Alex Proudfoot begins here.

"Reproduces the player statistics of the original game."

Include Zork Move Counting by Alex Proudfoot.

Use authorial modesty.

The maximum score is initially 616.

To say player statistics:
	say "Your score [if story has ended]is[else]would be[end if] [score] [bracket]total of [maximum score] points[close bracket], in [move count] move[if move count is not 1]s[end if].";
	say "This score gives you the rank of [player rank].";

To say player rank:
	repeat through the table of player ranks in reverse score order:
		if the score is at least the score entry:
			say the rank entry;
			the rule succeeds;

Table of Player Ranks
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

Zork Player Statistics ends here.

---- DOCUMENTATION ----

This extension implements the printing of player statistics.
