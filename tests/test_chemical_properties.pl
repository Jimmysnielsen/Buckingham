% template for setting up a test regime for a module

% the module_name must be defined and compiled.

:- begin_tests(chemical_properties).

test(this_succeeds) :-
    true.

test(mol_weight1) :-
    property_mol_weight("WATER", MW1),
    property_mol_weight("CARBON DIOXIDE", MW2),
    MW1 = 18.015,
    MW2 = 44.010.

% test(testN) :- fail.

/*
test(some_predicate) :-
    a,b,
    c.
*/

% :- end_tests(module_name). % not necessary as this is EOF.
