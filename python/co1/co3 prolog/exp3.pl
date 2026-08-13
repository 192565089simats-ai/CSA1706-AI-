% Facts

male(ravi).
male(kumar).
male(rajan).
female(lakshmi).
female(anu).
female(priya).

parent(ravi, anu).
parent(ravi, kumar).
parent(lakshmi, anu).
parent(lakshmi, kumar).

parent(anu, priya).
parent(kumar, rajan).

% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
