% Monkey Banana Problem

% Initial state:
% Monkey is at door, box is at window, bananas are at center.

% Monkey moves to a location
move(monkey(Door), X, monkey(X)) :-
    X = window.

% Monkey pushes box from window to center
push_box(monkey(window), box(window), 
         monkey(center), box(center)).

% Monkey climbs onto the box
climb(monkey(center), box(center), monkey_on_box(center)).

% Monkey gets the bananas
get_banana(monkey_on_box(center), bananas(center), got_banana).

% Complete solution
solve :-
    move(monkey(door), window, M1),
    push_box(M1, box(window), M2, B1),
    climb(M2, B1, M3),
    get_banana(M3, bananas(center), got_banana),
    write('Monkey got the bananas!').
