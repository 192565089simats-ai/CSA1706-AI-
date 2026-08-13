% Bird facts
bird(parrot).
bird(eagle).
bird(penguin).
bird(ostrich).

% Birds that can fly
can_fly(parrot).
can_fly(eagle).

% Birds that cannot fly
cannot_fly(penguin).
cannot_fly(ostrich).

% Function to check flying ability
fly(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

fly(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').
