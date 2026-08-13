% Forward Chaining

% Initial facts
fact(a).
fact(b).

% Rules
rule(c) :-
    fact(a),
    fact(b).

rule(d) :-
    fact(c).

rule(e) :-
    fact(c),
    fact(d).

% Forward chaining
forward :-
    rule(X),
    \+ fact(X),
    assertz(fact(X)),
    write('New fact: '),
    write(X),
    nl,
    forward.

forward :-
    write('No more new facts.'), nl.
