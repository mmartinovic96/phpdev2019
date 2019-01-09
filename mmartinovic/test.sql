USE videoteka;
SELECT 
clanovi.ime_clana,
clanovi.prezime_clana
FROM clanovi INNER JOIN datumi ON clanovi.id_clana=datumi.id_clana
WHERE datumi.datum_vracanja = 0;

-- drugi dio

USE videoteka;
SELECT 
clanovi.ime_clana,
clanovi.prezime_clana,
dvd.ime_filma
FROM clanovi INNER JOIN datumi ON clanovi.id_clana=datumi.id_clana
INNER JOIN dvd ON dvd.id_filma=datumi.id_filma
WHERE datumi.datum_vracanja = 0;
