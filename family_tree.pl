
male(abraham).
male(herb).
male(homer).
male(clancy).
male(bart).


female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).


parent(abraham, herb).
parent(abraham, homer).
parent(mona, homer).

parent(clancy, marge).
parent(jackie, marge).
parent(clancy, patty).
parent(jackie, patty).
parent(clancy, selma).
parent(jackie, selma).

parent(homer, bart).
parent(marge, bart).
parent(homer, lisa).
parent(marge, lisa).
parent(homer, maggie).
parent(marge, maggie).

parent(selma, ling).



father(X, Y) :- parent(X, Y), male(X).


mother(X, Y) :- parent(X, Y), female(X).


son(X, Y) :- parent(Y, X), male(X).


daughter(X, Y) :- parent(Y, X), female(X).


sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.


brother(X, Y) :- sibling(X, Y), male(X).


sister(X, Y) :- sibling(X, Y), female(X).


grandfather(X, Z) :- parent(X, Y), parent(Y, Z), male(X).


uncle(X, Y) :- parent(P, Y), brother(X, P).


aunt(X, Y) :- parent(P, Y), sister(X, P).


cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).


ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).