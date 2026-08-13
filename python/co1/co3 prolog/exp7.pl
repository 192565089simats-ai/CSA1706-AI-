% Best First Search

% Graph
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(e, h).
edge(f, h).

% Heuristic values
h(a, 6).
h(b, 4).
h(c, 5).
h(d, 7).
h(e, 2).
h(f, 3).
h(g, 8).
h(h, 0).

% Best First Search
best_first(Start, Goal, Path) :-
    bfs([Start], Goal, [], Path).

bfs([Goal|_], Goal, _, [Goal]).

bfs([Current|Rest], Goal, Visited, [Current|Path]) :-
    findall(H-Next,
            (edge(Current, Next),
             \+ member(Next, Visited),
             h(Next, H)),
            Children),
    sort(Children, Sorted),
    extract_nodes(Sorted, Nodes),
    append(Nodes, Rest, NewQueue),
    bfs(NewQueue, Goal, [Current|Visited], Path).

extract_nodes([], []).

extract_nodes([_-Node|T], [Node|R]) :-
    extract_nodes(T, R).
