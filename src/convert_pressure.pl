:- module(convert_pressure,
          [pascal_bar/2,
           pascal_at/2,
           pascal_atm/2,
           pascal_torr/2,
           pascal_psi/2]).

%pascal_bar/2
pascal_bar(P,B) :- %Pascal to Bar
    var(B),!,
    B is P * 1.0e-5.
pascal_bar(P,B) :- %Bar to Pascal
    var(P), !,
    P is B * 1.0e5.

%pascal_at/2
pascal_at(P,A) :- %Pascal to at (technical atmosphere)
    var(A),!,
    A is P * 1.0197e-5.
pascal_at(P,A) :- %at (technical atmosphere) to Pascal
    var(P), !,
    P is A * 98066.5.

%pascal_atm/2
pascal_atm(P,A) :- %Pascal to atmosphere
    var(A),!,
    A is P * 9.8692e-6.
pascal_atm(P,A) :- %atmosphere to Pascal
    var(P), !,
    P is A * 101325.0.

%pascal_torr/2
pascal_torr(P,T) :- %Pascal to Torr
    var(T), !,
    T is P * 7.5006e-3.
pascal_torr(P,T) :- %Torr to Pascal
    var(P), !,
    P is T * 133.322368421.

%pascal_psi/2
pascal_psi(Pa,Psi) :- %Pascal to Psi
    var(Psi), !,
    Psi is Pa * 0.000145037737730.
pascal_psi(Pa,Psi) :- %psi to Pascal
    var(Pa), !,
    Pa is Psi * 6894.757293168.
