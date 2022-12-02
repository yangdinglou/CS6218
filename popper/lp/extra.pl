eval_head(Ex, 0) :- =(Ex, !), !.
eval_head(Ex, 1) :- clause(Ex, true), call(Ex), !.

% Have a value of 5 for build-in predicate.

eval_head(Ex, 5) :- \+ clause(Ex, _), call(Ex), !.
eval_head(Ex, V) :- clause(Ex, RawbodyList), call(RawbodyList), eval_body(RawbodyList, V).

eval_body(RawbodyList, V) :- RawbodyList =..BodyList, first_rest(BodyList, ',', Bodyss), first_rest(Bodyss, H, Bodys), eval_head(H, V0), first_rest(Bodys, Body, _), eval_body(Body, V1), plus(V0, V1, V), !.

eval_body(RawbodyList, V) :- RawbodyList =..BodyList, \+ first_rest(BodyList, ',', _), eval_head(RawbodyList, V).

first_rest([Fst|Rst], Fst, Rst).

teval_all(Vs):- 
    catch(call_with_time_limit(1, eval_all(Vs)),time_limit_exceeded,=(Vs, 0)),!.

eval_all(Vs):-
    findall(V, (pos(Atom), eval_head(Atom, V)), Vs_list), sum_list(Vs_list, Vs).