% Backward Chaining

% Facts
fact(a).
fact(b).

% Rules
prove(c) :-
    fact(a),
    fact(b).

prove(d) :-
    prove(c).

prove(e) :-
    prove(c),
    prove(d).

% Backward chaining function
backward(Goal) :-
    prove(Goal),
    write('Goal proved: '),
    write(Goal),
    nl.
