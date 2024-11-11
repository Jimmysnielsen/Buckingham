/* -*- coding UTF-16 -*- */

%dimensionless numbers used in various calculations. refer to technical documentation (or wikipedia : dimensionless numbers in fluid mechanics)

:-encoding(utf8). %allow greek characters


%Archimedes number Ar. 
%archimedes(-Ar,+G,+L,+ρ,+ρl,+μ) :- Ar is Archimedes number (fluid mechanics, motion of fluids due to density differences). Rho [ρ] is the density, Rho_l [ρ_l] is the density of the liquid, G is the gravity constant, and L is a characteristic dimension.
archimedes(Ar,G,L,Rho,Rho_l,Mu) :- 
    Ar is G*(L**3)*(Rho-Rho_l)/(Mu**2).


%Atwood number A
%atwood(-A,+ρ1,+ρ2) :- A is the Atwood number (onset of instabilities in fluid mixtures due to density differences
atwood(-A,+Rho1,+Rho2) :-
    A is (Rho1-Rho2)/(Rho1+Rho2).

%Bejan Number Be
%bejan(Be,ΔP,L,μ,α) :- Be is the Bejan number (fluid mechanics; dimensionless pressure drop along a channel)
bejan(Be,ΔP,L,Mu,Alpha) :-
    Be is ΔP*(L**2)/(Mu*Alpha).


%Bingham number Bm
%bingham(-Bm,+τy,+L,+μ,+V) :- Bm is Binghams number (fluid mechanics, rheologi, ratio of yield stress to viscous stress).
bingham(-Bm,Tau,L,Mu,V) :-
    Bm is Tau*L/(Mu*V).


%Biot number Bi
%biot(Bi,h,Lc,kb) :- Bi is Biots number (heat transfer, surface vs. volume conductivity of solids)
biot(Bi,H,Lc,Kb) :-
    Bi is H * Lc / Kb.

%Blake number Bl


%bond number Bo


%Brinkman number Br


%Burger number Bu


%Brownell-Katz number


%Capillary number Ca


%Cauchy number Ca


%Cavitation number Ca


%Chandrasekhar number C


%Colburn J factors Jm, Jh, Jd


%Damkohler number Da


%Darcy friction number Cf


%Dean number D


%Deborah number De
%deborah(-De,+tc,+tp) :- De is Deborah's number (rheology, viscoelastic fluids).
deborah(De,Tc,Tp) :-
    De is Tc/Tp.

%Drag coefficien cd


%Eckert number Ec


%Eötvös number Eo


%Ericksen number Er


%Excess temperature coefficient Θr


%Fanning friction factor f


%Froude number Fr
%froude(-Fr,+U,+g,+l) :- Fr is Froudes number (fluid mechanics, wave and surface behaviour; ratio of a bodys inertia to gravitational forces)
froude(Fr,U,G,L) :-
    Fr is U / (G*L)**0.5.

%Galilei number Ga


%Görtler number G


%Garcia-Atance number Ga


%Graetz number Gz
%graetz(-Gz,+Dh,+L,+Re,+Pr) :- Gr is Graetz' number (heat transfer, fluid mechanics; laminar flow through a conduit; also used in mass transfer).
graetz(Gz,Dh,L,Re,Pr) :-
    Gz is Dh*Re*Pr/L.


%Grashoff number Gr
%grasshof(-Gr,+g,+β,T_s,T_inf,L,ν) :- Gr is Grasshofs number (heat transfer; natural convection, ratio of the boyancy to viscous force).
grasshof(Gr,G,B,Ts,Tinf,L,V) :-
    Gr is G*B*(Ts-Tinf)*L**3/V**2.


%Hartmann number Ha


%Hagen number Hg


%Iribarren number Ir


%Jakob number


%Karlowitz number Ka


%Kapitza number Ka


%Keulegan-Carpenter number


%Knudsen number
%knudsen(-Kn,+λ,+L) :- Kn is Knudsens number (gas dynamics, ratio of the molecular mean free path length to a representative physical length scale)
knudsen(Kn,Lambda,L) :-
    Kn is Lambda/L.

%Kutateladze number Ku


%Laplace number La


%Lewis number Le
%lewis(Le,Sc,Pr) :- Le is Lewis number (heat and mass transfer (ratio of thermal to mass diffusivity).
lewis(-Le,+Sc,+Pr) :-
    Le is Sc/Pr.

%Lift coefficient Cl


%Lockhart-Martinelli parameter X


%Mach number M
%mach(M,v,v_sound) :- M is the Mach number (gas dynamics; compressible flow; dimensionless velocity).
mach(-M,+V,+V_sound) :-
    M is V/V_sound.


% Marangoni number Mg


%Markstein number Ma


%Morton number Mo


%Nusselt number Nu
%nusselt(-Nu,+h,+k,+d) :- Nu is Nusselt's number (heat transfer; forced convection; ratio of convective to conductive heat transfer).
nusselt(Nu,H,K,D).
%!!! this is often used to calculate 'something' when Nu is given.

    

%Ohnesorge number Oh


%Péclet number Pe


%Prandtl number
%prandtl(-Pr,+cp,+μ,k) :- Pr is Prandtls number (heat transfer; ratio of viscous diffusion rate over thermal diffusion rate).
prandtl(Pr,Cp,Mu,K) :-
    Pr is Cp*Mu/K.

%Pressure coefficient Cp


%Rayleigh number Ra


%Reynolds number Re
%reynolds(-Re,+ρ,+v,+D,η) :- Re is Reynolds number (fluid mechanics; ratio of fluid inertial and viscous forces).
reynolds(Re,Rho,V,D,Eta) :-
    Re is Rho*V*D/Eta.


%Richardson number Ri


%Roshko number Ro


%Rossby number Ro


%Schmidt number Sc
%schmidt(-Sc,+ν,+D) :- Sc is Schmidts number (mass transfer; viscous over molecular diffusion rates).
schmidt(Sc,V,D) :-
    Sc is V/D.


%Shape factor H


%Sherwood number Sh
%sherwood(-Sh,+K,+L,+D) :- Sh is Sherwoods number (mass transfer; forced convetion; ratio of convective to diffusive mass transport).
sherwood(Sh,K,L,D) :-
    Sh is K*L/D.

%Sommerfeld number S


%Stanton number St


%Stokes number Stk


%Strouhal number St


%Stuart number N


%Taylor number Ta


%Ursell number U


%Wallis parameter J*


%Weber number We


%Weissenberg number Wi


%Womersley number α


%Zel'dovich number β

%-- end of dimensionless numbers --
