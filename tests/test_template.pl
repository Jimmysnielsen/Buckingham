% template for setting up a test regime for a module

% the module_name must be defined and compiled.

:- begin_tests(module_name).

test(this_succeeds) :-
    true.

% test(testN) :- fail.

/*
test(some_predicate) :-
    a,b,
    c.
*/

% :- end_tests(module_name). % not necessary as this is EOF.
