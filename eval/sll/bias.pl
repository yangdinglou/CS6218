max_vars(2).
max_body(3).
max_clauses(2).
enable_recursion.

head_pred(p,1).
% body_pred(addone,2).
% body_pred(my_subset,3).
body_pred(nextone,2).
body_pred(lessthan,2).
% body_pred(isof,2).
body_pred(nullptr,1).
% body_pred(zero,1).
% body_pred(empty,1).

type(p,(element,)).
% type(addone,(number, number)).
% type(my_subset,(element, list, list)).
type(nextone,(element,element)).
type(lessthan,(element,element)).
% type(isof,(element, list)).
type(nullptr,(element,)).
% type(zero,(number,)).
% type(empty,(list,)).


:-
    not clause(1).

% :-
%     head_literal(1,_,_,(Var1)),
%     not body_literal(1,nextone,_,(Var1,_)).

:-
    #count{A,Vars : body_literal(0,nullptr,A,Vars)} != 1.

:-
    #count{B,A,Vars : body_literal(0,B,A,Vars)} != 1.
