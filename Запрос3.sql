USE DB_217_19_Lab4;
GO
INSERT Pacient (Familiya, Imya, Otchestvo, Data_rozjd, Adress_Pacient) 
VALUES ('Иванов', 'Петров', 'Иванович', '1975-05-15', 'ул. Центральная, д. 10');
INSERT Specialtost (nazv_specialtost) 
VALUES ('Ортопед');
INSERT Vrachi (Familiya, Imya, Otchestvo, id_specialtost, Procent_otchisl_zp) 
VALUES ('Смирнов', 'Павел', 'Игоревич', 1, 16.00);
INSERT Stoimosti_Priyoma (id_vracha, Stoimost_priyoma) 
VALUES (2, 150.00);
INSERT Cheki (id_Pacient, id_vracha, id_stoimosti, Data_Priyoma)
VALUES (7, 4, 3, '2023-06-10');
INSERT Priyom_Pacientov (id_vracha, id_Pacient, Data_Priyoma) 
VALUES (3, 5, '2023-05-20');



