Version 1 of Zork Parser Responses by Alex Proudfoot begins here.

"Reproduces the parser responses of the original game."

Use authorial modesty.


Chapter - Parser Error Internal Rule

Include (-
[ FindUnknownWordToken wordnum 
	w twn numwds;
#ifdef TARGET_GLULX;
	numwds = parse-->0;
#ifnot;
	numwds = parse->1;
#endif; ! TARGET_GLULX;
	! Throw out invalid word numbers
	if (wordnum <= 0 || wordnum > numwds) rfalse;
	twn=wn; ! save the value of wn so it can be restored
	wn=wordnum;
	while (1)
	{ w=NextWordStopped();
	  if (w == -1) { wn=twn; rfalse; }
	  if (w == 0 && TryNumber(wn-1) == -1000) 
	  { wordnum=wn-1;
		wn=twn;
		return wordnum; 
	  }
	}
];
-).

To decide what number is the/-- position of the/-- non-dictionary word: (- FindUnknownWordToken(1); -).

Include (-
[ PrintToken wordnum 
	k l m numwds;
#ifdef TARGET_GLULX;
	numwds = parse-->0;
#ifnot;
	numwds = parse->1;
#endif; ! TARGET_GLULX;
	if (wordnum <= 0 || wordnum > numwds) return;
	k=WordAddress(wordnum);
	l=WordLength(wordnum);
	for (m=0: m < l: m++)
	  print (char) k->m;
];
-).

To say the/-- word at position/-- (N - a number): (- PrintToken({N}); -).

To decide what number is the/-- position of the/-- verb: (- return verb_wordnum; -).

[To decide what number is the/-- position of the/-- noun: (- return noun; -).]

[To decide what number is the/-- position of the/-- second noun: (- [return second;]; -).]


Section - Unrecognised Noun

To restore oops from: (- oops_from=saved_oops; -).

To say PEIR Response E:
	Let N be the position of the non-dictionary word;
	if N is zero:
		[let P be the position of the noun;]
		let T be the last word in "[the player's command]";
		[say "I can't see any [word at position P].[no line break]";]
		say "I can't see any [T] here.[no line break]";
	else:
		say "I don't know the word ['][word at position N]['].[no line break]";
	restore oops from;

The parser error internal rule response (E) is "[PEIR Response E]".


Section - Unrecognised Verb

To reset oops from: (- oops_from=verb_wordnum; -).

To say PEIR Response N:
	Let N be the position of the non-dictionary word;
	say "I don't know the word ['][word at position N]['].[no line break]";
	reset oops from;

The parser error internal rule response (N) is "[PEIR Response N]".


Chapter - Parser Clarification Internal Rule

Section - No Noun Stated or Selected

To decide which text is the last word in (T - text):
	let W be the number of punctuated words in T;
	decide on word number W in T.

To say PCIR Response E:
	let T be the last word in "[parser command so far]" in sentence case;
	say "[T] what";

The parser clarification internal rule response (E) is "[PCIR Response E]?".


Zork Parser Responses ends here.

---- DOCUMENTATION ----

This extension reproduces the parser responses of the original game.
