function y=psi(x,i,xg,xd)

%
% Fonction psi
% Description: Calculer les valeurs du vector ph(x,i,xg,xd) où:
%              x => le valeur
%              i => L'inclination du droit. 
%                    i=1: Positive
%                    j=2: Negative
%                    L'autre valeur: Error!
%              xg => Valeur a gauche
%              xd => Valeur a droit
%              ------------------------
%              Output => y: Value of y
%


    switch i
           case 1                                       %Faire calc pour i = 1
                y = (x-xg)/(xd-xg);
           case 2                                       %Faire calc pour i = 2
                y = (x-xd)/(xg-xd);
           otherwise
                error('Value not supporteds. The values are: i= 1 or 2');
end;