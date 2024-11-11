:- begin_tests(convert_pressure).

test(pascal_to_bar1) :-
    pascal_bar(1,Bar),
    Bar is 1.0 * 1e-5.
test(pascal_to_bar2) :-
    pascal_bar(1.0e5,Bar),
    Bar is 1.0.
test(pascal_to_bar3) :-
    pascal_bar(Pa,1),
    Pa is 1.0e5.
test(pascal_to_bar4) :-
    pascal_bar(Pa,10),
    Pa is 10.0*1e5.

test(pascal_to_at1) :-
    pascal_at(1,At),
    At is 1.0197e-5.
test(pascal_to_at2) :-
    pascal_at(10,At),
    At is 10.0*1.0197e-5.
test(pascal_to_at3) :-
    pascal_at(Pa,1),
    Pa is 98066.5.
test(pascal_to_at4) :-
    pascal_at(Pa,10),
    Pa is 10.0*98066.5.

test(pascal_to_atm1) :-
    pascal_atm(100,Atm),
    Atm is 100.0 * 9.8692e-6.
test(pascal_to_atm2) :-
    pascal_atm(1,Atm),
    Atm is 9.8692e-6.
test(pascal_to_atm3) :-
    pascal_atm(Pa,1),
    Pa is 101325.0.
test(pascal_to_atm4) :-
    pascal_atm(Pa,10),
    Pa is 10.0*101325.

test(pascal_to_torr1) :-
    pascal_torr(1,Torr),
    Torr is 7.5006e-3.
test(pascal_to_torr2) :-
    pascal_torr(100,Torr),
    Torr is 100.0 * 7.5006e-3.
test(pascal_to_torr3) :-
    pascal_torr(Pa,1),
    Pa is 133.322368421.
test(pascal_to_torr4) :-
    pascal_torr(Pa,10),
    Pa is 10.0 * 133.322368421.

test(pascal_to_psi1) :-
    pascal_psi(1,Psi),
    Psi is 0.000145037737730.
test(pascal_to_psi2) :-
    pascal_psi(100,Psi),
    Psi is 100.0*0.00014503773773.
test(pascal_to_psi3) :-
    pascal_psi(Pa,1),
    Pa is 6894.757293168.
test(pascal_to_psi4) :-
    pascal_psi(Pa,2),
    Pa is 2.0 * 6894.757293168.

:- end_tests(convert_pressure).

			
