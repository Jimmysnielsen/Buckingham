:- begin_tests(convert_temperature).
test(celcius_to_kelvin_1) :-
    celcius_kelvin(0,K),
    K is 273.15.
test(celcius_to_kelvin_2) :-
    celcius_kelvin(10,K),
    K is 273.15 + 10.

test(kelvin_to_celcius1) :-
    celcius_kelvin(C,0),
    C is -273.15.
test(kelvin_to_celcius2) :-
    celcius_kelvin(C,100),
    C is -273.15 + 100.

test(celcius_to_fahrenheit1) :-
    celcius_fahrenheit(0,F),
    F is 32.0.
test(celcius_to_fahrenheit2) :-
    celcius_fahrenheit(100,F),
    F is 180 + 32.0.

test(fahrenheit_to_celcius1) :-
    celcius_fahrenheit(C,0),
    C is -32/1.8.
test(fahrenheit_to_celcius2) :-
    celcius_fahrenheit(C,32),
    C is 0.0.

test(kelvin_to_rankine1) :-
    kelvin_rankine(0,R),
    R is 0.0.
test(kelvin_to_rankine2) :-
    kelvin_rankine(100,C),
    C is 180.0.
test(kelvin_to_rankine3) :-
    kelvin_rankine(K,0),
    K is 0.0.
test(kelvin_to_rankine4) :-
    kelvin_rankine(K,180),
    K is 100.0.

% test(testN) :- fail.
