max_vars(3).
max_body(8).
max_clauses(2).
enable_recursion.

head_pred(p,1).

body_pred(left,2).
body_pred(right,2).
body_pred(morethan,2).
body_pred(lessthan,2).
body_pred(nullptr,1).

type(p,(pointer,)).
type(left,(pointer,pointer)).
type(right,(pointer,pointer)).
type(morethan,(pointer,pointer)).
type(lessthan,(pointer,pointer)).
type(nullptr,(pointer,)).


:-
    not clause(1).

:-
    #count{A,Vars : body_literal(1,p,A,Vars)} != 2.
% :-
%     head_literal(1,_,_,(Var1)),
%     not body_literal(1,nextone,_,(Var1,_)).

:-
    #count{A,Vars : body_literal(0,nullptr,A,Vars)} != 1.

:-
    #count{B,A,Vars : body_literal(0,B,A,Vars)} != 1.
