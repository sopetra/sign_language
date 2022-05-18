# Prepoznavanje znakovnog jezika pomoću tenzora

[![CC BY-NC-SA 4.0][cc-shield]][cc]
[![stability-beta](https://img.shields.io/badge/stability-beta-33bbff.svg)](https://github.com/mkenney/software-guides/blob/master/STABILITY-BADGES.md#beta)


Sign_language project for university course [Uvod u složeno pretraživanje podataka](http://www.pmf.unizg.hr/math/predmet/uuspp_a), academic year 2020/2021, University of Zagreb, Faculty of Science, Department of Mathematics.

## Kratki opis 
Prepoznavanje znakovnog jezika pomoću tenzora. Za skup podataka smo uzeli slike ruku koje gestikuliraju znakove engleske abecede, ali iz pet različitih kuteva. Cilj je doći do algoritma koji će za danu sliku geste izbaciti kadidata za slovo koje slika predstavlja. Pri tome želimo izbjeći osjetljivost algoritma na osvjetljenje pa koristimo YCbCr model umjesto RGB-a. 
Detaljnije o načinu testiranja, rezultatima i teoriji tenzora može se naći u [tekstu](https://github.com/sopetra/sign_language/blob/main/Prepoznavanje%20znakovnog%20jezika%20pomo%C4%87u%20tenzora.pdf) ili u [sažetku](https://github.com/sopetra/sign_language/blob/main/Prezentacija.pdf).

## Pokretanje programa
Testiranje algoritma se postiže pokretanjem `prog.m`.

## License
  
 [Sign_language](https://github.com/sopetra/sign_language) © 2021 by [Petra Sočo](https://github.com/sopetra) and [Jelena Zaninović](https://github.com/jelzani) is licensed under [Attribution-NonCommercial-ShareAlike 4.0 International][cc].

[![CC 4.0][cc-image]][cc]


[cc]: https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1
[cc-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg


License can be found under [License](LICENSE).
