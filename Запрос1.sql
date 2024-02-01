USE DB_217_19_Lab4;
GO
SELECT *
FROM Vrachi
JOIN Specialtost ON Vrachi.id_specialtost = Specialtost.id_specialtost
WHERE Specialtost.nazv_specialtost = 'Хирург';
