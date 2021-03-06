function y=psiprim(x,i,xg,xd)

%
% Fonction psi
% Description: Calculer les derivates du vector ph(x,i,xg,xd) o�:
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
                y = -1 /(xd-xg);
           case 2                                       %Faire calc pour i = 2
                y = 1 /(xd-xg);
           otherwise
                error('Value not supporteds. The values are: i= 1 or 2');
end;