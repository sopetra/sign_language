function v = MPCA (T, nl, nv, np, i)
##  vraća vektor duljne broja slova, za svako slovo broji 
##  koliko je puta pogodio po ostalim kutevima 
##  dakle, v sadrži brojeve 0 ili 1

  v = zeros(nl,1);
  view_test = T(:,i,:); %% sadrži slova u pogledu i (nl x np)
  T(:,i,:) = []; %% izbacimo i-ti pogled(kut,vertikalni slice) prije HOSVD-a
  nv = nv - 1;
  [S, Ul, Uv, Up] = hosvd(T);
  for j = 1:nl %% testiramo j-to slovo
    test = 0;
    letter_test = view_test(j,:); %% testiramo j-to slovo
    for k = 1:nv
      uv = Uv(k,:); %% fiksiramo pogled(kut)
      B = multiply(multiply(S,uv,2),Up,3);
      A = pinv(B);
      ukv = letter_test * A;  %% aproksimiramo ul za testni primjer u pogledu uv
      for l = 1:nl  
      ul = Ul(l,:);  %%trčimo po ostalim ul-ovima
        if test == 0
          max = dot( ukv, ul )/( norm(ukv,2)*norm(ul,2) );
          max_l = l;
          max_ul = ul;
          test = 1;
        end
        m = dot( ukv, ul )/( norm(ukv,2)*norm(ul,2) );
        if m > max
          max = m;
          max_ul = ul;
          max_l = l;
        end
        
      end
         
    end
    % provrtili smo sve kombinacije ukv-ova i ul-ova
    if max_l == j
       v(j) = 1;
    end
    
  end
  
end
