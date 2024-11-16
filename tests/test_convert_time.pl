% template for setting up a test regime for a module

% the module must be defined and compiled.

:- begin_tests(convert_time).

test(this_succeeds) :-
    true.

% test(testN) :- fail.

/*
test(some_predicate) :-
    a,b,
    c.
*/

test(min_sec1) :- convert_min_second(1,Sec), Sec is 60.0.
test(min_sec2) :- convert_min_second(2,Sec), Sec is 2 * 60.0.
test(min_sec3) :- convert_min_second(Min,60), Min is 1.0.
test(min_sec4) :- convert_min_second(Min,120), Min is 120/60.0.

test(hour_sec1) :- convert_hour_second(1,Sec), Sec is 3600.0.
test(hour_sec2) :- convert_hour_second(2,Sec), Sec is 2*3600.0.
test(hour_sec3) :- convert_hour_second(Hr,3600), Hr is 1.0.
test(hour_sec4) :- convert_hour_second(Hr,7200), Hr is 7200/3600.0.

test(day_sec1) :- convert_day_second(1,Sec), Sec is 24*3600.0.
test(day_sec2) :- convert_day_second(2,Sec), Sec is 2*24*3600.0.
test(day_sec3) :- convert_day_second(D,86400), D is 1.0.
test(day_sec4) :- convert_day_second(D,10000), D is 10000.0/(24*3600).

test(year_sec1) :- convert_year_second(1,Sec), Sec is 1.0*3600*24*365.
test(year_sec2) :- convert_year_second(2,Sec), Sec is 2.0*3600*24*365.
test(year_sec3) :- convert_year_second(Yr,31536000), Yr is 1.0.
test(year_sec4) :- convert_year_second(Yr,100.0e6), Yr is 100.0e6/(3600*24*365).

% :- end_tests(convert_time).
