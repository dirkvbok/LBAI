:-dynamic in/1,			% matches the in/1 percept
	state/1,		% matches the state/1 percept
	zone/5,			% matches the zone/5 percept
	place/1,		% matches the place/1 percept
	sequence/1.		% matches the sequence/1 percept

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".
