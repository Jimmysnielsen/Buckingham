:- module(chemical_properties, %fill in module_name
          [property_mol_weight/2, %list of all exported and public predicates in the module.
           property_fp_bp/3,
           property_critical_point/4,
           property_liquid_density/3,
           property_hvap/2,
           property_viscosity/3,
           property_heat_of_formation/3,
           property_ideal_gas_equation/5,
           property_vapour_pressure/6]).

%the data is stored in predicates as chem_parameters/27. Use this structure for accessing the data.
% COMPOUNDNAME is the generic getter. Use of other parameters may result in duplicates or no results at all:
%property_X(COMPOUNDNAME,X) :- chem_parameters(_﻿NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%:- consult("../resources/chemical_data.pl"). %load the data table
% table broken, !!! use example data instead:
chem_parameters(20,"H2O","WATER",18.015,0,100,647.3,220.5,0.056,998,20,40683,658.25,283.16,-242,-228.77,32243,1.92E-03,1.06E-05,-3.60E-09,18.3036,3816.44,-46.13,11,168,"H2O, WATER").
chem_parameters(48,"CO2","CARBON DIOXIDE",44.01,-56.6,-78.5,304.2,73.8,0.094,777,20,17166,578.08,185.24,-393.77,-394.65,19.795,7.34E-02,-5.60E-05,1.72E-08,22.5898,3103.39,-0.16,-119,-69,"CO2, CARBON DIOXIDE").

%property_mol_weight/2 :- return the molecular weight of a chemical species from the property list.
%property_mol_weight(+COMPOUNDNAME,-MW) returns the mol weight [g/mol] of Compoundname.
%@
property_mol_weight(COMPOUNDNAME,MOLWT) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_fp_bp/3 :- return the freezing point and boiling point of a chemical species from the property list.
%property_fp,bp(+Name,-Fp,-Bp) returns the freezing point Fp and boiling point BP for the chemical species. Values Fp and Bp are in [degC] at P=1 bar.
%@
property_fp_bp(COMPOUNDNAME,TFP,TBP) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,TFP,TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_critical_point/4 :- return the critical values TC, PC and VC (critical temperature [Kelvin], pressure [bar] and molar volume [m3/mol]) for a chemical species.
%property_critical_point(+Name,-TC,-PC,-VC).
%@
property_critical_point(COMPOUNDNAME,TC,PC,VC) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,TC,PC,VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_liquid_density/3) :- return liquid density [kg/m3] and reference temperature [degC] for a chemical species
%property_liquid_density(+Name,-Density,-Temperature).
%@
property_liquid_density(COMPOUNDNAME,LDEN,TDEN) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,LDEN,TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_hvap/2 :- return the heat of vaporization at normal boiling point in [J/mol]
%property_hvap(+Name,-HVAP).
%@
property_hvap(COMPOUNDNAME,HVAP) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_viscosity/3 :- return the parameters VisA and VisB for calculating the viscosity of a chemical species.
%Viscosity as a function of temperature is log(viscosity) = [VisA] * [1/T - 1/VisB] [mNs/m2] and temperature in [Kelvin].
%property_viscosity(+Name,-VisA,-VisB).
%@
property_viscosity(COMPOUNDNAME,VISA,VISB) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,VISA,VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_heat_of_formation/3 :- returns DeltaHf [kJ/mol] and DeltaGf [kJ/mol] both measured at 298 K.
%Delta_Hf is the standard enthalpy of formation of vapour at 298 K.
%Delta_Gf is the Gibbs free energy of formation of vapour at 298 K.
%@
property_heat_of_formation(COMPOUNDNAME,DELHF,DELGF) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,DELHF,DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_ideal_gas_equation/5) :- returns the parameters CPVAPA,CPVAPB,CPVAPC,CPVAPD for calculating the ideal gas heat capacity for a chemical species.
%heat_capacity= CPVAPA + CPVAPB*T + CPVAPC*T**2 + CPVAPD*T**3.
%property_ideal_gas_equation(+Name,-CPVAPA,-CPVAPB,-CPVAPC,-CPVAPD).
%@
property_ideal_gas_equation(COMPOUNDNAME,CPVAPA,CPVAPB,CPVAPC,CPVAPD) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,CPVAPA,CPVAPB,CPVAPC,CPVAPD,_ANTA,_ANTB,_ANTC,_TMN,_TMX,_TITLE).

%property_vapour_pressure/6) :- return the parameters for calculating the vapour pressure for a chemical species at a given temperature.
%property_vapour_pressure(+Name,-AntA,-AntB,-AntC,-AntD,-Tmn,-Tmx)
%Name is the name of the chemical species, AntA, AntB, and AntC are parameters for the Antoine equation below. Tmn and Tmx [K] are er minimum and maximum temperatures for which the euation is valid.
%Antoine equation : ln(P) = A - B/(T+C), P=[mmHg], T=[Kelvin]. Note that the parameters are unit-dependant, so other parameters (data sets) may have other units for P and T.
%@
property_vapour_pressure(COMPOUNDNAME,ANTA,ANTB,ANTC,TMN,TMX) :-
    chem_parameters(_NO,_FORMULA,COMPOUNDNAME,_MOLWT,_TFP,_TBP,_TC,_PC,_VC,_LDEN,_TDEN,_HVAP,_VISA,_VISB,_DELHF,_DELGF,_CPVAPA,_CPVAPB,_CPVAPC,_CPVAPD,ANTA,ANTB,ANTC,TMN,TMX,_TITLE).
