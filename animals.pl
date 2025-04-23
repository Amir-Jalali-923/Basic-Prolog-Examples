% Facts about what type each animal is
pet(whiskers, cat).
pet(rex, dog).
pet(kiwi, parrot).

% Facts about who owns which animal
owns(alice, whiskers).
owns(bob, rex).
owns(clara, kiwi).

% Rule about who is an animal lover
animal_lover(X) :- owns(X, Y).

/*
Example queries:

?- pet(rex, dog).

yes
------------------
?- owns(X, kiwi).

X = clara
------------------
?- animal_lover(bob).

yes
------------------
?- animal_lover(X).

X = alice ? ;
X = bob ? ;
X = clara
*/
