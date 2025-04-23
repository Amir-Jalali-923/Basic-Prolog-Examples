% Facts about the family
parent(john, mary).
parent(john, tom).
parent(mary, alice).
parent(tom, bob).
parent(bob, clara).

% Rules about family relationships
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
ancestor(X, Y) :- parent(X, Y). % Base case
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y). % Recursive case 

/*
example queries:

?- parent(john, tom).

yes
----------------------
?- parent(X, bob).

X = tom
----------------------
?- sibling(tom, mary).

yes
----------------------
?- ancestor(john, clara).

yes
----------------------
?- ancestor(X, clara).

X = bob ? ;
X = tom ? ;
X = john
----------------------
ancestor(mary, clara).

no
*/
