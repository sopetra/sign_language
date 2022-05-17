% Vraća umnožak tenzora T i matrice A u modu m

function Y = multiply (T, M, mode)
% Ulazni parametri
% ================
% T    - tenzor reda 3
% M    - matrica 
% mode - mod u kojem mnozimu T x_mode M 
% Izlazni parametri
% =================
% Y = T x_mode M
%..........................................................................
if ( size(M,2) ~= size(T,mode) )
    error('>> broj stupaca matrice razlicit od odg. dimenzije tenzora!')
end
dY = size(T) ; dY(mode) = size(M,1) ;  % zadajemo novu dimenziju iz definicije množenja tenzora i matrice

Y = fold( M * unfold(T, mode), mode, dY ) ;

end
