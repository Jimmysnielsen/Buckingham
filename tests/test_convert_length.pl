% template for setting up a test regime for a module


% the module must be defined and compiled.
:- begin_tests(convert_length).

test(this_succeeds) :-
    true.

% test(testN) :- fail.

/*
test(some_predicate) :-
    a,b,
    c.
*/

test(inch_mm1) :- convert_inch_mm(1,MM), MM is 25.4.
test(inch_mm2) :- convert_inch_mm(Inch,25.4), Inch is 1.0.
test(inch_mm3) :- convert_inch_mm(2,MM), MM is 2*25.4.
test(inch_mm4) :- convert_inch_mm(Inch,50.8), Inch is 2.0.

test(ft_m1) :- convert_ft_m(1,M), M is 0.3048.
test(ft_m2) :- convert_ft_m(2,M), M is 2*0.3048.
test(ft_m3) :- convert_ft_m(Ft,1), Ft is 1/0.3048.
test(ft_m4) :- convert_ft_m(Ft,2), Ft is 2/0.3048.

test(yd_m1) :- convert_yd_m(1,M), M is 0.9144.
test(yd_m2) :- convert_yd_m(2,M), M is 2*0.9144.
test(yd_m1) :- convert_yd_m(Yd,1), Yd is 1/0.9144.
test(yd_m1) :- convert_yd_m(Yd,2), Yd is 2/0.9144.

test(mile_km1) :- convert_mile_km(1,KM), KM is 1.6093.
test(mile_km2) :- convert_mile_km(2,KM), KM is 2*1.6093.
test(mile_km3) :- convert_mile_km(Mile,1), Mile is 1/1.6093.
test(mile_km4) :- convert_mile_km(Mile,2), Mile is 2/1.6093.

test(ångström_m1) :- convert_aangstrom_m(1,M), M is 1.0e-10.
test(ångström_m2) :- convert_aangstrom_m(2,M), M is 2*1.0e-10.
test(ångström_m3) :- convert_aangstrom_m(Aa,1), Aa is 1/1.0e-10.
test(ångström_m4) :- convert_aangstrom_m(Aa,2), Aa is 2/1.0e-10.

% :- end_tests(Module_Name). %not necessary as this is EOF.
