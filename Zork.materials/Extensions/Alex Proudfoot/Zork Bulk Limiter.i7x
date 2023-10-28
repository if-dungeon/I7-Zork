Version 1 of Zork Bulk Limiter by Alex Proudfoot begins here.

"Containers and actors that limit their contents by bulk"

Use authorial modesty.

A container has a number called bulk capacity. 
The bulk capacity of a container is normally 0.

A person has a number called bulk capacity.
The bulk capacity of a person is normally 100.

A thing has a number called bulk. 
The bulk of a thing is normally 5.

Check an actor inserting into when the second noun provides the property bulk capacity
      (this is the bulk test rule):
	if the bulk of the noun is greater than the bulk capacity of the second noun, say "It won't fit." (A) instead;
	if the bulk of the noun is greater than the free capacity of the second noun, say "It won't fit."  (B) instead;
  
Check an actor taking when the actor provides the property bulk capacity
      (this is the person bulk test rule):
	if the bulk of the noun is greater than the bulk capacity of the actor, say "[The noun] [are] too big for [if the actor is the player][us][otherwise][the actor][end if] to pick up." (A) instead;
	if the bulk of the noun is greater than the free capacity of the actor, say "[If the player is the actor][We] [don't][otherwise][The actor] [don't][end if] have enough room left to carry [the noun]." (B) instead;
 
To decide what number is the free capacity of (targetbox - a container):
	let sum be the total bulk of the things in the targetbox;
	now sum is the bulk capacity of the targetbox minus sum;
	decide on the sum.

To decide what number is the free capacity of (targetperson - a person):
	let sum be the total bulk of the things carried by targetperson;
	now sum is the bulk capacity of the targetperson minus sum;
	decide on the sum.

Zork Bulk Limiter ends here.

---- DOCUMENTATION ----

This extension is based on version 9 of Bulk Limiter by Eric Eve.

The extension adds a bulk property to all things, and a bulk capacity property to all containers and people. The implementation is deliberately quite basic, in order to provide an extension with a relatively small footprint to deal with simple cases such as preventing boulders being put in purses or carried. In order to keep things simple this extension deliberately doesn't deal with bulk capacities of supporters, or weights, or take into account the maximum dimension of long, thin objects or the like. It is intended to provide a simple solution to a common problem, not a full simulation.

The default bulk of a thing is 5. The default bulk capacity of a container is 0.  The default bulk capacity of a person is 100.

The extension performs a check on attempting to insert something into a container that the total bulk of the objects inside the container does not exceed its capacity. If an actor (not necessarily the player) attempts to insert an object whose bulk is larger than the bulk capacity of the container or to take an object whose bulk is larger than their own bulk capacity, the attempt will fail with a message saying that the object is too large for the container. Otherwise, if we attempt to insert an object into a container when there's not enough room left for it or take an object we can no longer carry, we'll get a message saying that there's not enough room left.

Note that this extension complements rather than replaces Inform's built in capacity check for containers. 

With thanks to Kevin Riggle whose suggestions have been incorporated into this extension.

Example: * The Mailbox, the Leaflet and the Welcome Mat - Putting things in a container with insufficient room. Carrying too much.

	*: "The White House in the Forest"

	The release number is 0. Include (- Serial "000000"; -). 

	Include Zork Bulk Limiter by Alex Proudfoot.

	There is a room called West of House. "This is an open field west of a white house, with a boarded front door." Yourself, a mailbox and a welcome mat are here.

	The bulk capacity of yourself is 12.

	The mailbox is a fixed in place, closed, openable container. The initial appearance of the mailbox is "There is a small mailbox here." The bulk capacity of the mailbox is 10.

	A leaflet is in the mailbox. The bulk of the leaflet is 2.

	The initial appearance of the welcome mat is "A rubber mat saying [']Welcome to Zork!['] lies by the door." The bulk of the welcome mat is 12.

	Test me with "open mailbox/get leaflet/get mat/drop leaflet/get mat/put mat in mailbox/drop mat/get leaflet/put leaflet in mailbox/get mat/put mat in mailbox".
