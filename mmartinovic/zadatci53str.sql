use fakultet;
-- zadatak 3.2
-- ispisi mb te imena i prezimena studenata,ime i premizeme treba upisati zajedno

SELECT
stud.mbrStud,
stud.imeStud,
stud.prezStud
FROM stud;

-- zadatak 3.3
-- ispisi sva imena studenata da se ne ponavljaj

SELECT
DISTINCT stud.imeStud
FROM stud
ORDER BY stud.imeStud DESC;

-- zadatak 3.3 - DRUGI NACIN
-- ispisi sva imena studenata da se ne ponavljaju

SELECT
stud.imeStud
FROM stud
GROUP BY stud.imeStud
ORDER BY stud.imeStud DESC;

-- ZADATAK 3.4
-- MATICNI BROJ STUD KOJI SU ISPIT POLOZILI 146

SELECT
ispit.mbrStud
FROM ispit INNER JOIN pred ON ispit.sifPred = pred.sifPred
WHERE pred.sifPred=146;

-- ZADATAK 3.5
-- ima i prezimena nastavnika dobivenu formulom(koef + 0.4) * 800

SELECT
nastavnik.imeNastavnik,
nastavnik.prezNastavnik,
800*(nastavnik.koef + 0.4) AS dobro
FROM nastavnik;

-- ZADATAK 3.6
-- ima i prezimena nastavnika dobivenu formulom(koef + 0.4) * 800

SELECT
nastavnik.imeNastavnik,
nastavnik.prezNastavnik,
800*(nastavnik.koef + 0.4) AS dobro
FROM nastavnik
HAVING dobro < 3500 OR dobro > 8000;

-- ZADATAK 3.7
-- ima i prezimena tudenata koji su pali bar jednom iz ispita sa sifrom 220 -240

SELECT
stud.imeStud,
stud.prezStud,
ispit.sifPred,
ispit.ocjena
FROM ispit INNER JOIN stud ON ispit.mbrStud = stud.mbrStud
WHERE ispit.ocjena =1  AND	( ispit.sifPred >220 AND ispit.sifPred <240);

-- ZADATAK 3.8
-- ima i prezimena studenata koji su dobili 3

SELECT
CONCAT (stud.imeStud," ",stud.prezStud),
ispit.sifPred,
ispit.ocjena
FROM ispit INNER JOIN stud ON ispit.mbrStud = stud.mbrStud
WHERE ispit.ocjena =3  ;

-- ZADATAK 3.9
-- ime predmeta na koje nije nitko izasao

SELECT
pred.nazPred
FROM pred LEFT JOIN ispit ON pred.sifPred=ispit.sifPred
WHERE ispit.sifPred IS NULL;

-- ZADATAK 3.10
-- ima predmeta koji su izasli

SELECT
DISTINCT pred.nazPred
FROM pred INNER JOIN ispit ON pred.sifPred=ispit.sifPred;

-- zadatak 3.11
-- cije ime pocinje i zavrsava samoglasnikom

SELECT
*,
SUBSTR(stud.imeStud,1,1) AS inic1,
SUBSTR(stud.imeStud,-1,1) AS inic2
FROM stud
HAVING inic1 IN ("a","e","i","o","u") AND inic2 IN ("a","e","i","o","u")

-- zadatak 3.11
-- DRUGI NACIN

SELECT
*
FROM stud
WHERE LEFT(stud.imeStud,1) IN ("a","e","i","o","u") AND LEFT(stud.imeStud,1) IN ("a","e","i","o","u")

-- zadatak 3.12
-- NISU SAMOGLASNICI

SELECT
*
FROM stud
WHERE LEFT(stud.imeStud,1) NOT IN ("a","e","i","o","u") AND LEFT(stud.imeStud,1) NOT IN ("a","e","i","o","u");

-- zadatak 3.13
-- NISU SAMOGLASNICI

SELECT
*
FROM stud
WHERE LEFT(stud.imeStud,1) NOT IN ("a","e","i","o","u") OR LEFT(stud.imeStud,1) NOT IN ("a","e","i","o","u");

-- zadatak 3.14
-- "NK" JEDNO IZA DRUGOG

SELECT
*

FROM stud
WHERE LOCATE('nk',stud.imeStud) >0;

-- zadatak 3.15
-- ime i prezime studenta te naziv i ocjena za svaki ispit

SELECT
stud.imeStud,
stud.prezStud,
pred.nazPred,
ispit.ocjena
FROM pred INNER JOIN ispit ON pred.sifPred=ispit.sifPred
INNER JOIN stud on ispit.mbrStud=stud.mbrStud
WHERE ispit.ocjena>1;

-- zadatak 3.16
-- ime i prezime,mjesto i zupaniju gdje su i odakle su

SELECT
stud.imeStud,
stud.prezStud,
mjesto.nazMjesto,
zupanija.nazZupanija

FROM zupanija INNER JOIN mjesto ON zupanija.sifZupanija=mjesto.sifZupanija
INNER JOIN stud ON mjesto.pbr=stud.pbrRod INNER JOIN stud m1 ON mjesto.pbr=m1.pbrStan

