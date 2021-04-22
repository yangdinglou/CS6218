%% time py popper.py examples/dropk/
%% f(A,B,C) :- tail(A,C),one(B).
%% f(A,B,C) :- tail(A,D),decrement(B,E),f(D,E,C).
%% python3 popper.py examples/dropk/  0.83s user 0.09s system 102% cpu 0.903 total

max_vars(5).
max_body(5).
max_clauses(2).

head_pred(f,3).
body_pred(f,3).
body_pred(head,2).
body_pred(tail,2).
body_pred(element,2).
body_pred(increment,2).
body_pred(decrement,2).
body_pred(geq,2).
body_pred(empty,1).
body_pred(even,1).
body_pred(odd,1).
body_pred(one,1).
body_pred(zero,1).

type(f,(list,element,list)).
type(head,(list,element)).
type(tail,(list,list)).
type(element,(list,element)).
type(cons,(element,list,list)).
type(increment,(element,element)).
type(decrement,(element,element)).
type(geq,(element,element)).
type(empty,(list,)).
type(even,(element,)).
type(odd,(element,)).
type(one,(element,)).
type(zero,(element,)).

direction(f,(in,in,out)).
direction(head,(in,out)).
direction(tail,(in,out)).
direction(element,(in,out)).
direction(cons,(in,in,out)).
direction(increment,(in,out)).
direction(decrement,(in,out)).
direction(geq,(in,in)).
direction(empty,(in,)).
direction(even,(in,)).
direction(odd,(in,)).
direction(one,(in,)).
direction(zero,(out,)).