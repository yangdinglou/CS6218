eval_head(Ex, 0) :- =(Ex, !), !.
eval_head(Ex, 1) :- clause(Ex, true), call(Ex), !.

% Have a value of 5 for build-in predicate.

eval_head(Ex, 5) :- \+ clause(Ex, _), call(Ex), !.
eval_head(Ex, V) :- clause(Ex, RawbodyList), call(RawbodyList), eval_body(RawbodyList, V).

eval_body(RawbodyList, V) :- RawbodyList =..BodyList, first_rest(BodyList, ',', Bodyss), first_rest(Bodyss, H, Bodys), eval_head(H, V0), first_rest(Bodys, Body, _), eval_body(Body, V1), plus(V0, V1, V), !.

eval_body(RawbodyList, V) :- RawbodyList =..BodyList, \+ first_rest(BodyList, ',', _), eval_head(RawbodyList, V).

first_rest([Fst|Rst], Fst, Rst).

f(A) :- f1(A), f2(A).
f(A) :- f3(A).

f1(2).
f2(2).
f3(1).

g(A, B, C) :- append(A, B, C).

nextone(head, inner1).
nextone(inner1, inner2).
nextone(inner2, inner3).
nextone(inner3, inner4).
nextone(inner4, tail).
nextone(tail, null).

nextone(p1,p2).
nextone(p2,p3).
nextone(p3,null).


new(head, inner1).
new(inner1, inner2).
new(inner2, inner3).
new(inner3, inner4).
new(inner4, tail).
new(tail, null).


new(p1,p2).
new(p2,p3).
new(p3,null).

nullptr(null).

pos(p(p1)).
pos(p(head)).

p(A):- nullptr(A),!.
p(A):- nextone(A,B),new(A,B),p(B).

teval_all(Vs):- 
    catch(call_with_time_limit(1, eval_all(Vs)),time_limit_exceeded,=(Vs, 0)),!.

eval_all(Vs):-
    findall(V, (pos(Atom), eval_head(Atom, V)), Vs_list), sum_list(Vs_list, Vs).

