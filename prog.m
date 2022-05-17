## u A se učitava file '7_binary_25.mat' ili '24_binary_25.mat' 
## koji redom sadrži 7 ili 24 slova u 5 pogleda
## A će imati np redaka i nl*nv stupaca
## i-ti blok od nv stupaca se odnosi na i-to slovo i tako za i=1,...,nl

nv = 5; %% 5 pogleda
np = 25*25; 
A = load('24_binary_25.mat');
niz = size(A);
nl = niz(2)/nv;
T = fold(A,3,[nl,nv,np]);

view = zeros(nv,1);
letter = zeros(nl,1);

for i = 1:nv 
  v = MPCA(T, nl, nv, np, i); 
  for j = 1:nl
    if v(j) > 0 
      view(i) = view(i) + 1;
      letter(j) = letter(j) + 1;
    end
  end
  %% v je vektor duljine nl=26 u kojem je zapisano koliko 
  %% puta je pogodio slovo j, j=1,...,26
  %% i-ti pogled je testni, ostali su ya usporedbu (traning set) 
end

view
letter
