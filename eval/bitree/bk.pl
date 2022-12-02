left(p1,p2).
left(p2,p4).
left(p3,p6).
left(p4,null).
left(p5,null).
left(p6,null).
left(p7,null).
left(p8,null).
left(q1, q2).


right(p1,p3).
right(p2,p5).
right(p3,p7).
right(p4,null).
right(p5,p8).
right(p6,null).
right(p7,null).
right(p8,null).
right(q1,null).

lessthan(p1,p3).
lessthan(p2,p5).
lessthan(p3,p7).
lessthan(p4,null).
lessthan(p5,p8).
lessthan(p6,null).
lessthan(p7,null).
lessthan(p8,null).
lessthan(q1,null).

morethan(p1,p2).
morethan(p2,p4).
morethan(p3,p6).
morethan(p4,null).
morethan(p5,null).
morethan(p6,null).
morethan(p7,null).
morethan(p8,null).
morethan(q1, q2).

nullptr(null).



fact(left(p1,p2)).
fact(left(p2,p4)).
fact(left(p3,p6)).
fact(left(p4,null)).
fact(left(p5,null)).
fact(left(p6,null)).
fact(left(p7,null)).
fact(left(p8,null)).

fact(left(q1, q2)).


fact(right(p1,p3)).
fact(right(p2,p5)).
fact(right(p3,p7)).
fact(right(p4,null)).
fact(right(p5,p8)).
fact(right(p6,null)).
fact(right(p7,null)).
fact(right(p8,null)).
fact(right(q1,null)).

fact(lessthan(p1,p3)).
fact(lessthan(p2,p5)).
fact(lessthan(p3,p7)).
fact(lessthan(p4,null)).
fact(lessthan(p5,p8)).
fact(lessthan(p6,null)).
fact(lessthan(p7,null)).
fact(lessthan(p8,null)).
fact(lessthan(q1,null)).

fact(morethan(p1,p2)).
fact(morethan(p2,p4)).
fact(morethan(p3,p6)).
fact(morethan(p4,null)).
fact(morethan(p5,null)).
fact(morethan(p6,null)).
fact(morethan(p7,null)).
fact(morethan(p8,null)).

fact(morethan(q1, q2)).

fact(nullptr(null)).
