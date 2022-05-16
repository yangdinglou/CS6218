max_vars(6).
max_body(6).
max_clauses(1).

head_pred(next_value,2).
body_pred(does,3).
body_pred(true_value,2).
body_pred(my_succ,2).
body_pred(pressButton,1).
body_pred(noop,1).
body_pred(player,1).
body_pred(c1,1).
body_pred(c2,1).
body_pred(c3,1).
body_pred(c4,1).
body_pred(c5,1).

type(next_value,(ex,int)).
type(does,(ex,agent,action)).
type(true_value,(ex,int)).
type(my_succ,(int,int)).
type(pressButton,(action,)).
type(noop,(action,)).
type(player,(agent,)).
type(c1,(int,)).
type(c2,(int,)).
type(c3,(int,)).
type(c4,(int,)).
type(c5,(int,)).

%% BECAUSE WE DO NOT LEARN FROM INTERPRETATIONS
:-
    clause(C),
    #count{V : clause_var(C,V),var_type(C,V,ex)} != 1.

%% prop(antitransitive,succ).
%% prop(antitriangular,succ).
%% prop(asymmetric_ab_ba,succ).
%% prop(singleton,c1).
%% prop(singleton,c2).
%% prop(singleton,c3).
%% prop(singleton,c4).
%% prop(singleton,c5).
%% prop(singleton,c_noop).
%% prop(singleton,c_player).
%% prop(singleton,c_pressButton).
%% prop(singleton,does).
%% prop(unique_a_b,does).
%% prop(unique_a_b,succ).
%% prop(unique_b_a,does).
%% prop(unique_b_a,succ).
%% prop(countk,c1,1).
%% prop(countk,c2,1).
%% prop(countk,c3,1).
%% prop(countk,c4,1).
%% prop(countk,c5,1).
%% prop(countk,c_noop,1).
%% prop(countk,c_player,1).
%% prop(countk,c_pressButton,1).
%% prop(countk,does,1).
%% prop(unsat_pair,c2,c1).
%% prop(unsat_pair,c3,c1).
%% prop(unsat_pair,c3,c2).
%% prop(unsat_pair,c4,c1).
%% prop(unsat_pair,c4,c2).
%% prop(unsat_pair,c4,c3).
%% prop(unsat_pair,c5,c1).
%% prop(unsat_pair,c5,c2).
%% prop(unsat_pair,c5,c3).
%% prop(unsat_pair,c5,c4).
%% prop(unsat_pair,c_pressButton,c_noop).
%% prop(unsat_pair,true_value,c1).


%% prop(antitransitive,succ).
%% prop(antitriangular,succ).
%% prop(asymmetric_ab_ba,succ).
%% prop(pre_postcon,(c1,succ,c1)).
%% prop(pre_postcon,(c1,succ,c3)).
%% prop(pre_postcon,(c1,succ,c4)).
%% prop(pre_postcon,(c1,succ,c5)).
%% prop(pre_postcon,(c1,succ,next_value)).
%% prop(pre_postcon,(c2,succ,c1)).
%% prop(pre_postcon,(c2,succ,c2)).
%% prop(pre_postcon,(c2,succ,c4)).
%% prop(pre_postcon,(c2,succ,c5)).
%% prop(pre_postcon,(c2,succ,next_value)).
%% prop(pre_postcon,(c3,succ,c1)).
%% prop(pre_postcon,(c3,succ,c2)).
%% prop(pre_postcon,(c3,succ,c3)).
%% prop(pre_postcon,(c3,succ,c5)).
%% prop(pre_postcon,(c3,succ,next_value)).
%% prop(pre_postcon,(c4,succ,c1)).
%% prop(pre_postcon,(c4,succ,c2)).
%% prop(pre_postcon,(c4,succ,c3)).
%% prop(pre_postcon,(c4,succ,c4)).
%% prop(pre_postcon,(c4,succ,next_value)).
%% prop(pre_postcon,(c5,succ,c1)).
%% prop(pre_postcon,(c5,succ,c2)).
%% prop(pre_postcon,(c5,succ,c3)).
%% prop(pre_postcon,(c5,succ,c4)).
%% prop(pre_postcon,(c5,succ,c5)).
%% prop(pre_postcon,(c5,succ,true_value)).
%% prop(pre_postcon,(c5,succ,next_value)).
%% prop(pre_postcon,(true_value,succ,c2)).
%% prop(pre_postcon,(true_value,succ,true_value)).
%% prop(pre_postcon,(true_value,succ,next_value)).
%% prop(pre_postcon,(next_value,succ,c1)).
%% prop(pre_postcon,(next_value,succ,c2)).
%% prop(pre_postcon,(next_value,succ,c3)).
%% prop(pre_postcon,(next_value,succ,c4)).
%% prop(pre_postcon,(next_value,succ,c5)).
%% prop(pre_postcon,(next_value,succ,true_value)).
%% prop(pre_postcon,(next_value,succ,next_value)).
%% prop(precon,(c5,succ)).
%% prop(singleton,c1).
%% prop(singleton,c2).
%% prop(singleton,c3).
%% prop(singleton,c4).
%% prop(singleton,c5).
%% prop(singleton,c_noop).
%% prop(singleton,c_player).
%% prop(singleton,c_pressButton).
%% prop(singleton,does).
%% prop(unique_a_b,does).
%% prop(unique_a_b,succ).
%% prop(unique_b_a,does).
%% prop(unique_b_a,succ).
%% prop(countk,c1,1).
%% prop(countk,c2,1).
%% prop(countk,c3,1).
%% prop(countk,c4,1).
%% prop(countk,c5,1).
%% prop(countk,c_noop,1).
%% prop(countk,c_player,1).
%% prop(countk,c_pressButton,1).
%% prop(countk,does,1).
%% prop(unsat_pair,c2,c1).
%% prop(unsat_pair,c3,c1).
%% prop(unsat_pair,c3,c2).
%% prop(unsat_pair,c4,c1).
%% prop(unsat_pair,c4,c2).
%% prop(unsat_pair,c4,c3).
%% prop(unsat_pair,c5,c1).
%% prop(unsat_pair,c5,c2).
%% prop(unsat_pair,c5,c3).
%% prop(unsat_pair,c5,c4).
%% prop(unsat_pair,c_pressButton,c_noop).
%% prop(unsat_pair,true_value,c1).
