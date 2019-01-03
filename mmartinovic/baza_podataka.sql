
SELECT
iznos_place.firma,
iznos_place.ime,

max(placa.iznos) as najbolja_placa
FROM placa LEFT JOIN iznos_place ON placa.id=iznos_place.placa
WHERE placa.iznos > 450
GROUP BY iznos_place.firma 
HAVING najbolja_placa < 3000