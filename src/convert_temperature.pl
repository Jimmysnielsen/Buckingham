:- module(convert_temperature,
          [celcius_kelvin/2,
           celcius_fahrenheit/2,
           kelvin_rankine/2]).

%celcius_kelvin/2
%
celcius_kelvin(Celcius,Kelvin) :- % convert Celcius to Kelvin
    var(Kelvin), !,
    Kelvin is Celcius + 273.15.
celcius_kelvin(Celcius,Kelvin) :- % convert Kelvin to Celcius
    var(Celcius), !,
    Celcius is Kelvin - 273.15.

%celcius_fahrenheit/2
celcius_fahrenheit(C,F) :- % convert Celcius to Fahrenheit
    var(F), !,
    F is C * 1.8 + 32.
celcius_fahrenheit(C,F) :- % convert Fahrenheit to Celcius
    var(C), !,
    C is (F - 32) / 1.8.

%Kelvin_Rankine/2
kelvin_rankine(K,R) :- % convert Kelvin to Rankine
    var(R), !,
    R is K * 1.8.
kelvin_rankine(K,R) :- % convert Rankine to Kelvin
    var(K), !,
    K is R / 1.8.
