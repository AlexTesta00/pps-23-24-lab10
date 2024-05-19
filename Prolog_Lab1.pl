%Exercise 1
search(X, cons(X, _)).
search(X, cons(_, Xs)) :- search(X, Xs).

%Exercise 1.2
search2(X, cons(X, cons(X, _))).
search2(X, cons(_, Xs)) :- search2(X, Xs).

%Exercise 1.3
search_two(X, cons(X, cons(_, cons(X, _)))).
search_two(X, cons(_, Xs)) :- search_two(X, Xs).

%Exercise 1.4
search_anytwo(X, cons(X, T)) :- search(X, T).
search_anytwo(X, cons(_, Xs)) :- search_anytwo(X, Xs).

%Exercise 2.1
size(nil, zero).
size(cons(_, T), s(C)) :- size(T, C).

%Exercise 2.2
sum_list(nil, zero).
sum_list(cons(zero, T), C) :- sum_list(T, C).
sum_list(cons(s(X), T), s(C)) :- sum_list(cons(X, T), C).

%Exercise 2.3
count(List, E, N) :- count(List, E, zero, N).
count(nil, E, N, N).
count(cons(E, L), E, N, M) :- count(L, E, s(N), M).
count(cons(E, L), E2, N, M) :- E \= E2, count(L, E2, N, M).

%Exercise 2.4

%Exercise 2.5

%Exercise 3.1
same(L, L).

%Exercise 3.2
major(s(_), zero).
major(s(N), s(M)) :- major(N, M).
all_bigger(nil, nil).
all_bigger(cons(H, T), cons(H2, T2)) :- major(H, H2).
all_bigger(cons(H, T), cons(H2, T2)) :- all_bigger(T, T2).

%Exercise 3.3
sublist(nil, L).
sublist(cons(H, T), L) :- search(H, L).
sublist(cons(H, T), L) :- sublist(T, L).

%Exercise 4.1
seq(zero, _, nil).
seq(s(N), E, cons(E,T)) :- seq(N, E, T).

%Exercise 4.2
seqR(zero, nil).
seqR(s(N), cons(N, T)) :- seqR(N, T).

%Exercise 4.3
range(E, E, nil).
range(S, E, cons(S, T)) :- range(s(S), E, T).
seqR2(N, R) :- range(zero, N, R).

%Exercise 5