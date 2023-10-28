Version 1 of Zork Actions by Alex Proudfoot begins here.

"Reproduces the commands and default responses of the original game."

Use authorial modesty.


Chapter 1 - Playing the Game

Section - Burning

[ Not yet implemented. ]


Section - Finding

Finding is an action applying to one thing and requiring light.

Carry out finding something (this is the normally can't find things rule): say "Nothing happens."

Carry out finding something which is in the location when the noun is not the player: say "There is [a noun] here." instead.

Carry out finding something when the noun is in a container (called the box): say "It is in [the box], which is here." instead.

Carry out finding something when the player is carrying the noun: say "You are carrying [a noun]." instead.

Understand "find [something]" as finding.


Section - Reading

Reading is an action applying to one visible thing and requiring light.

A thing can be readable. A thing is usually not readable.

Carry out reading something (this is the normally can't read things rule): say "How can [we] read [a noun]?"

Carry out reading yourself (this is the can't read yourself rule): say "How can [we] read a cretin?" instead.

Carry out reading something readable:
	if the noun is not carried:
		try silently taking the noun;
		if the noun is carried, say "Taken.[no line break]";
	try examining the noun instead.

Understand the command read as something new.
Understand "read [something]" as reading.
Understand "read about [text] in [something]" as consulting it about (with nouns reversed).
Understand "read [text] in [something]" as consulting it about (with nouns reversed).


Section - Locking

[Before locking something with when the second noun does not unlock the noun:
	say "Can you lock [a noun] with [a second noun]?" instead.

Before locking something with when nothing unlocks the noun:
	say "It doesn't seem to work." instead.

Understand "lock [something]" as locking it with.

Rule for supplying a missing second noun while locking something with:
	say "You must lock [the noun] [bold type]with[roman type] something."]


Section - Unlocking

[Before unlocking something with when the second noun does not unlock the noun:
	say "Can you unlock [a noun] with [a second noun]?" instead.

Before unlocking something with when nothing unlocks the noun:
	say "It doesn't seem to work." instead.

Understand "unlock [something]" as unlocking it with.

Rule for supplying a missing second noun while unlocking something with:
	say "You must unlock [the noun] [bold type]with[roman type] something."]


Section - Climbing

Understand the commands "climb" and "scale" as something new.
The block climbing rule is not listed in the check climbing rulebook.

Understand "climb [thing]" and "climb up [thing]" as climbing.
A thing can be climbable. A thing is usually not climbable.

Check climbing something not climbable when word number 2 in the player's command is "up" (this is the block bizarre climbing rule): say "Bizarre!" instead;
Carry out climbing: try going up.

Understand "climb" and "climb up" as climbing when something climbable is in the location.
Rule for supplying a missing noun while climbing: now the noun is a random climbable thing in the location.

Climbing down is an action applying to one thing.
Understand "climb down [thing]" as climbing down.
Check climbing down something not climbable (this is the block bizarre climbing down rule): say "Bizarre!" instead.
Carry out climbing down: try going down.

Understand "climb down" as climbing down when something climbable is in the location.
Rule for supplying a missing noun while climbing down: now the noun is a random climbable thing in the location.


Chapter 2 - Controlling the Game

Section - Quit

[Carry out quitting the game (this is the increment turn count before quitting rule): increment turn count.
Carry out quitting the game (this is the say player statistics before quitting rule): say player statistics.
The quit the game rule response (A) is "Do you wish to leave the game? (Y is affirmative):[line break] ".]


Section - Restart

[Carry out restarting the game (this is the increment turn count before restarting rule): increment turn count.
Carry out restarting the game (this is the say player statistics before restarting rule): say player statistics.
The restart the game rule response (A) is "Do you wish to restart? (Y is affirmative):[line break] ".]


Chapter 3 - Supporting Player Feedback

Section 3a - GitHub Issue Reporting

[Understand "bug" as a mistake ("Please visit https://github.com/zil-transformation/Zork/issues to report an issue."). Understand the commands "gritch" and "complaint" as "bug".

Understand "feature" as a mistake ("Please visit https://github.com/zil-transformation/Zork/issues to report an issue."). Understand the commands "comment", "suggestion" and "idea" as "feature".]


Section 3b - In Transcript Comments

[Understand "* [text]" as a mistake ("Noted.").]


Zork Actions ends here.

---- DOCUMENTATION ----

This extension reproduces the commands and default responses of the original game.
