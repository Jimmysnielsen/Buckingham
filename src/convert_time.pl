:- module(convert_time,
          [convert_min_second/2,
           convert_hour_second/2,
           convert_day_second/2,
           convert_year_second/2]).

%convert_min_second/2
%@
convert_min_second(Min,Sec) :- % minute to second
    var(Sec), !,
    Sec is Min * 60.0.
convert_min_second(Min,Sec) :- % second to minute
    var(Min),
    Min is Sec/60.0.

%convert_hour_second/2
convert_hour_second(H,Sec) :- % hour to second
    var(Sec), !,
    Sec is 3.6e3 * H.
convert_hour_second(H,Sec) :- % second to hour
    var(H), !,
    H is Sec / 3.6e3.

%convert_day_second/2
%@
convert_day_second(D,Sec) :- % day to second
    var(Sec), !,
    Sec is D * 86.4e3.
convert_day_second(D,Sec) :- % second to day
    var(D), !,
    D is Sec / 86.4e3.

%convert_year_second/2
convert_year_second(Yr,Sec) :- % Year to second
    var(Sec), !,
    Sec is Yr * 3600*24*365.0.
convert_year_second(Yr,Sec) :- % second to year
    var(Yr), !,
    Yr is Sec/(3600*24*365.0).
