max_clauses(1).
max_vars(5).
max_body(6).

head_pred(next_value,1).
body_pred(does,2).
body_pred(my_true_value,1).
body_pred(my_succ,2).
body_pred(c_pressButton,1).
body_pred(c_noop,1).
body_pred(c_player,1). % comment to make unsat
body_pred(c1,1).
body_pred(c2,1).
body_pred(c3,1).
body_pred(c4,1).
body_pred(c5,1).

type(next_value,(int,)).
type(does,(agent,action)).
type(my_true_value,(int,)).
type(my_succ,(int,int)).
type(c_pressButton,(action,)).
type(c_noop,(action,)).
type(c_player,(agent,)).
type(c1,(int,)).
type(c2,(int,)).
type(c3,(int,)).
type(c4,(int,)).
type(c5,(int,)).

%% prop(antitransitive,my_succ).
%% prop(antitriangular,my_succ).
%% prop(asymmetric_ab_ba,my_succ).
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
%% prop(unique_a_b,my_succ).
%% prop(unique_b_a,does).
%% prop(unique_b_a,my_succ).
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
%% prop(unsat_pair,my_true_value,c1).


%% prop(antitransitive,my_succ).
%% prop(antitriangular,my_succ).
%% prop(asymmetric_ab_ba,my_succ).
%% prop(pre_postcon,(c1,my_succ,c1)).
%% prop(pre_postcon,(c1,my_succ,c3)).
%% prop(pre_postcon,(c1,my_succ,c4)).
%% prop(pre_postcon,(c1,my_succ,c5)).
%% prop(pre_postcon,(c1,my_succ,next_value)).
%% prop(pre_postcon,(c2,my_succ,c1)).
%% prop(pre_postcon,(c2,my_succ,c2)).
%% prop(pre_postcon,(c2,my_succ,c4)).
%% prop(pre_postcon,(c2,my_succ,c5)).
%% prop(pre_postcon,(c2,my_succ,next_value)).
%% prop(pre_postcon,(c3,my_succ,c1)).
%% prop(pre_postcon,(c3,my_succ,c2)).
%% prop(pre_postcon,(c3,my_succ,c3)).
%% prop(pre_postcon,(c3,my_succ,c5)).
%% prop(pre_postcon,(c3,my_succ,next_value)).
%% prop(pre_postcon,(c4,my_succ,c1)).
%% prop(pre_postcon,(c4,my_succ,c2)).
%% prop(pre_postcon,(c4,my_succ,c3)).
%% prop(pre_postcon,(c4,my_succ,c4)).
%% prop(pre_postcon,(c4,my_succ,next_value)).
%% prop(pre_postcon,(c5,my_succ,c1)).
%% prop(pre_postcon,(c5,my_succ,c2)).
%% prop(pre_postcon,(c5,my_succ,c3)).
%% prop(pre_postcon,(c5,my_succ,c4)).
%% prop(pre_postcon,(c5,my_succ,c5)).
%% prop(pre_postcon,(c5,my_succ,my_true_value)).
%% prop(pre_postcon,(c5,my_succ,next_value)).
%% prop(pre_postcon,(my_true_value,my_succ,c2)).
%% prop(pre_postcon,(my_true_value,my_succ,my_true_value)).
%% prop(pre_postcon,(my_true_value,my_succ,next_value)).
%% prop(pre_postcon,(next_value,my_succ,c1)).
%% prop(pre_postcon,(next_value,my_succ,c2)).
%% prop(pre_postcon,(next_value,my_succ,c3)).
%% prop(pre_postcon,(next_value,my_succ,c4)).
%% prop(pre_postcon,(next_value,my_succ,c5)).
%% prop(pre_postcon,(next_value,my_succ,my_true_value)).
%% prop(pre_postcon,(next_value,my_succ,next_value)).
%% prop(precon,(c5,my_succ)).
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
%% prop(unique_a_b,my_succ).
%% prop(unique_b_a,does).
%% prop(unique_b_a,my_succ).
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
%% prop(unsat_pair,my_true_value,c1).

%% 12:50:09 complete_rule next_value(A):-does(C,B),c_player(C),my_succ(A,D),my_true_value(D),c_noop(B). 944
