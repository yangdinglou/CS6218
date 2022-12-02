nextone(head, inner1).
nextone(inner1, inner2).
nextone(inner2, inner3).
nextone(inner3, inner4).
nextone(inner4, tail).
nextone(tail, null).

nextone(p1,p2).
nextone(p2,p3).
nextone(p3,null).


lessthan(head, inner1).
lessthan(inner1, inner2).
lessthan(inner2, inner3).
lessthan(inner3, inner4).
lessthan(inner4, tail).
lessthan(tail, null).


lessthan(p1,p2).
lessthan(p2,p3).
lessthan(p3,null).

nullptr(null).


fact(nextone(head, inner1)).
fact(nextone(inner1, inner2)).
fact(nextone(inner2, inner3)).
fact(nextone(inner3, inner4)).
fact(nextone(inner4, tail)).
fact(nextone(tail, null)).

fact(nextone(p1,p2)).
fact(nextone(p2,p3)).
fact(nextone(p3,null)).


fact(lessthan(head, inner1)).
fact(lessthan(inner1, inner2)).
fact(lessthan(inner2, inner3)).
fact(lessthan(inner3, inner4)).
fact(lessthan(inner4, tail)).
fact(lessthan(tail, null)).


fact(lessthan(p1,p2)).
fact(lessthan(p2,p3)).
fact(lessthan(p3,null)).

fact(nullptr(null)).
