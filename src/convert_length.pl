:- module(convert_length,
          [convert_inch_mm/2,
           convert_aangstrom_m/2,
           convert_ft_m/2,
           convert_mile_km/2,
           convert_yd_m/2]).


%convert_inch_mm/2
convert_inch_mm(In,MM) :- % In to mm
    var(MM), !,
    MM is In * 25.4.
convert_inch_mm(In,MM) :- % mm to In
    var(In), !,
    In is MM / 25.4.

%convert_ft_m/2
convert_ft_m(Ft,M) :- % ft to m
    var(M), !,
    M is Ft * 0.3048.
convert_ft_m(Ft,M) :- % m to ft
    var(Ft), !,
    Ft is M / 0.3048.

%convert_yd_m/2
convert_yd_m(Yd,M) :- % yd to m
    var(M), !,
    M is Yd * 0.9144.
convert_yd_m(Yd,M) :- % m to yd
    var(Yd), !,
    Yd is M / 0.9144.

%convert_mile_km/2
convert_mile_km(Mile,Km) :- % mile to km
    var(Km), !,
    Km is Mile * 1.6093.
convert_mile_km(Mile,Km) :- % km to mile
    var(Mile), !,
    Mile is Km / 1.6093.

%convert_angstrom_m/2
convert_aangstrom_m(Aa,M) :- % Ångstrøm to m
    var(M), !,
    M is Aa * 1.0e-10.
convert_aangstrom_m(Aa,M) :- % m to Aangstrøm
    var(Aa), !,
    Aa is M / 1.0e-10.

%% end of length converters
