:- module(module_name, %fill in module_name
          [pred1/N, %list of all exported and public predicates in the module.
           pred2/N]).

private_(X) :- false. %this should not be exported

public(X,Y) :- false. %this could be exported.
