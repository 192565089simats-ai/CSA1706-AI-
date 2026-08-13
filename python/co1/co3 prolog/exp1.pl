% Student facts
student(ravi).
student(anu).
student(kumar).

% Teacher facts
teacher(raja).
teacher(priya).

% Subject and Code facts
subject(math, m101).
subject(science, s102).
subject(computer, c103).

% Teacher teaches subject
teaches(raja, math).
teaches(raja, scie% Towers of Hanoi

hanoi(1, From, To, _) :-
    write('Move disk from '),
    write(From),
    write(' to '),
    write(To),
    nl.

hanoi(N, From, To, Aux) :-
    N > 1,
    M is N - 1,
    hanoi(M, From, Aux, To),
    hanoi(1, From, To, Aux),
    hanoi(M, Aux, To, From).
