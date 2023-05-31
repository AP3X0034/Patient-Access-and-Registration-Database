SET IDENTITY_INSERT Patient ON
INSERT Patient(PatientID, Name, Address, Phone, Email, HealthInsuranceInfo, PrimaryCareDoctor) VALUES
(1, 'Paulette Walters', '965 Haverhill Dr, Hamilton, OH 45013', '2095814801', 'yamla@yahoo.com', NULL, 'Dean Hill'),
(2, 'Richard Mcdaniel', '104 S 5th St, Le Claire, IA 52753', '5844635914', 'matsn@gmail.com', NULL, 'Jake Ellis'),
(3, 'Bert Lee', '11205 Oregon Ave N, Champlin, MN 55316', '3979599966', 'frostman@comcast.net', NULL, 'Stanley Cortez'),
(4, 'Lloyd Austin', '40851 140th St, Groton, SD 57445', '2838493114', 'keutzer@live.com', NULL, 'Kim Carpenter'),
(5, 'Robin Valdez', '1203 Northwood Dr, Champaign, IL 61821', '8985881698', 'bjoern@msn.com', NULL, 'Mamie Torres'),
(6, 'Greg Casey', '11118 Zimmerman Rd, Marysville, IN 47141', '1758896071', 'isorashi@sbcglobal.net', NULL, 'Alejandro Pratt'),
(7, 'Ervin Harrison', '202 N 2nd St, Wolcottville, IN 46795', '1177952012', 'pdbaby@optonline.net', NULL, 'Danielle Gilbert'),
(8, 'Eula Carson', '1763 3rd St, Cuyahoga Falls, OH 44221', '6303896245', 'cosimo@att.net', NULL, 'Tracy Morris'),
(9, 'Christie Moody', '5665 Reindeer Pl, Paso Robles, CA 93446', '8935944099', 'hling@hotmail.com', NULL, 'Raul Stewart'),
(10, 'Felicia Osborne', '28500 County 80 Rd, Orlando, OK 73073', '3755204247', 'adillon@gmail.com', NULL, 'Claude Perkins')
SET IDENTITY_INSERT Patient OFF















SET IDENTITY_INSERT Billing ON
INSERT Billing(BillingID, PatientID, Visits, MedicalBillingCodes, Payor, PaymentMethod)VALUES
(1, 1, NULL, 'O58155480', NULL, 'Card'),
(2, 2, NULL,'A58155480', NULL, 'Card'),
(3, 3, NULL, 'E24659070',NULL, 'Card'),
(4, 4, 'Good visits', 'L27021613',NULL, 'Cash'),
(5, 5, 'Good visits', 'P20513244', NULL, 'Card'),
(6, 6, 'Good visits', 'A22638768', NULL, 'Card'),
(7, 7, 'Good visits', 'E22948025',NULL, 'Cash'),
(8, 8, 'Good visits', 'L47581032', NULL, 'Cash'),
(9, 9, NULL, 'P95159496', NULL, 'Card'),
(10, 10, NULL, 'F89141139', NULL, 'Cash')
SET IDENTITY_INSERT Billing OFF













SET IDENTITY_INSERT Costs ON
INSERT Costs(CostsID, PatientID, Medications, HealthProcedures)VALUES
(1,5, 'Acetaminophen', 'Auscultation'),
(2,6, 'Cyclobenzaprine', 'Medical inspection '),
(3,8, 'Januvia', 'Palpation'),
(4,9, 'Omeprazole', 'Percussion (medicine)'),
(5,10, 'Adderall', 'Vital signs measurement'),
(6,1, 'Cymbalta', 'Biopsy test'),
(7,3, 'Jardiance', 'Blood test'),
(8,2, 'Onpattro', 'Stool test'),
(9,4, 'Amitriptyline', 'Urinalysis'),
(10,7, 'Doxycycline', 'Cardiac stress test')
SET IDENTITY_INSERT Costs OFF















SET IDENTITY_INSERT Lab ON
INSERT Lab(LabID, LabName, Tests, Results, MandatedReportingtoCountyState)VALUES
(1, 'Altman Lab', 'Genetic Testing', 'Positive', NULL),
(2, 'Dean Lab', 'Kidney Tests','Positive', 'Reported'),
(3, 'Coppage Lab', 'Hepatitis Testing', 'Negative', 'Reported'),
(4, 'McCamant Lab', 'Thyroid Tests', 'Positive', 'Reported'),
(5, 'Immunization Lab', 'Laboratory Tests', 'Positive', 'Reported'),
(6, 'Elder Lab', 'Prenatal Testing', 'Negative', 'Reported'),
(7, 'DeAngelis Lab','Urinalysis' , 'Positive', 'Reported'),
(8, 'Vertino Lab', 'Albumin Blood Test', 'Negative', NULL),
(9, 'Waugh Lab', 'Acid-Fast Bacillus (AFB) Tests', 'Positive', 'Reported'),
(10, 'White, Patricia Lab', 'Blood Count Tests', 'Negative', 'Reported')
SET IDENTITY_INSERT Lab OFF














SET IDENTITY_INSERT Facility ON
INSERT Facility(FacilityID, FacilityName, Location, Hours, RoomCapacity, Departments, CareCapcity, MedicalEquipment) VALUES
(1, 'Cliffside Renal Dialysis', 'Flushing', '2005-12-22', '3 rooms 6 beds', 'pediatrics', 6, 3),
(2, 'Castle Hill Medical Center of New York Inc.', 'Bronx', '2007-01-01', '3 rooms 3 beds', 'surgery', 3, 3),
(3, 'Primary Care Associates', 'Endicott', '1998-02-01', '4 rooms 8 beds', 'Hospital Extension Clinic', 10, 8),
(4, 'Lutheran Center at Poughkeepsie, Inc', 'Poughkeepsie', '1998-08-24', '3 rooms 6 beds', 'pediatrics', 6, 3),
(5, 'Meadowbrook Endoscopy Center', 'Westbury', '2008-10-15', '4 rooms 4 beds', 'surgery', 4, 4),
(6, 'New York Endoscopy Center', 'White Plains', '2009-10-05', '10 rooms 20 beds', 'Diagnostic and Treatment Center', 20, 20),
(7, 'UHCC - Madison Irving', 'Syracuse', '2010-06-14', '5 rooms 8 beds', 'Certified Home Health Agency', 20, 15),
(8, 'Warner Place', 'Jamestown', '2010-07-28', '5 rooms 8 beds', 'Adult Day Health Care Program - Offsite', 10, 8),
(9, 'Griffiss Surgery Center', 'Rome', '2012-01-03', '5 rooms 5 beds', 'surgery', 5, 5),
(10, 'H.K. Freedman Renal Center', 'Plattsburgh', '2013-12-05', '4 rooms 8 beds', 'Diagnostic and Treatment Center', 10, 8)
SET IDENTITY_INSERT Facility OFF














SET IDENTITY_INSERT EquipmentReservations ON
INSERT EquipmentReservations(EquResID, FacilityID, EquipmentName, CheckInTime, CheckOutTime)VALUES
(1, 1, 'EKG and ECGs', 2021-02-15, 2021-02-17),
(2, 3, 'Autoclaves', 2021-03-01, 2021-03-15),
(3, 5, 'Patient Monitors', 2021-03-01, NULL),
(4, 4, 'C-Arms', 2021-01-15, 2021-01-30),
(5, 9, 'Sterilizers', 2021-05-03 , 2021-05-20),
(6, 8, 'Surgical Tables', 2021-03-10, NULL),
(7, 10, 'Blanket and Fluid Warmers', 2021-03-10, 2021-03-12),
(8, 2, 'Anesthesia Machines', 2021-02-01, 2021-02-10),
(9, 7, 'Defibrillators', 2021-04-03, NULL),
(10, 6, 'Surgical Lights', 2021-02-07, 2021-02-10)
SET IDENTITY_INSERT EquipmentReservations OFF














SET IDENTITY_INSERT Imaging ON
INSERT Imaging(ImagingID, ImagingName, Testing)VALUES
(1, 'Direct', 'MRI'),
(2, 'Indrect', 'CAT'),
(3, 'Direct', 'MRI'),
(4, 'Direct', 'MRI'),
(5, 'Direct', 'MRI'),
(6, 'Direct', 'CAT'),
(7, 'Indrect', 'MRI'),
(8, 'Indrect', 'MRI'),
(9, 'Indrect', 'MRI'),
(10, 'Indrect', 'CAT')
SET IDENTITY_INSERT Imaging OFF














SET IDENTITY_INSERT Pharmacy ON
INSERT Pharmacy(PharmacyID, PharmacyName, Medicines, RentalEquipment)VALUES
(1, 'Boone Drug', 'Allopurinol, Alendronate, Alemtuzumab', 'Defibrillators'),
(2, 'Bartell Drugs', 'Ifosfamide, Imatinib, Imipenem', 'Anesthesia Machines'),
(3, 'CVS Pharmacy', 'Dacarbazine, Dactinomycin, Dapsone', 'Patient Monitors'),
(4, 'Discount Drug Mart', 'L-glutamine, abetalol, Lamivudine', 'EKG/ECG Machines''Heparin Lock Flush '),
(5, 'Hartig Drug', 'Heparin Lock Flush', 'Sterilizers'),
(6, 'London Drugs', 'Nelarabine, Nelfinavir, Neuromuscular', 'Surgical Tables'),
(7, 'Family Pharmacy', 'Omeprazole, Ondansetron, Oxycodone', 'Blanket and Fluid Warmers'),
(8, 'Pharmasave', 'Valproic acid, Vancomycin, Vinblastine', 'Electrosurgical Units'),
(9, 'Good Neighbor', 'Efavirenz, Efavirenz / emtricitabine', 'Surgical Tables'),
(10, 'Lawtons', 'Baclofen, Bleomycin, Bortezomib', 'EKG/ECG Machines')
SET IDENTITY_INSERT Pharmacy OFF














SET IDENTITY_INSERT FacilityDetail ON
INSERT FacilityDetail(FacilityDetailID, FacilityID, LabID, ImagingID, PharmacyID)VALUES
(1, 1, 1, 4, 7),
(2, 2, 3, 5, 8),
(3, 3, 5, 1, 3),
(4, 4, 10, 8, 1),
(5, 5, 4, 9, 2),
(6, 6, 7, 6, 5),
(7, 7, 6, 3, 4),
(8, 8, 2, 2, 6),
(9, 9, 9, 7, 9),
(10, 10, 8, 10, 10)
SET IDENTITY_INSERT FacilityDetail OFF














SET IDENTITY_INSERT Employee ON
INSERT Employee(EmployeeID, Name, Address, Phone, Email, Salary, Benefits, ContractType, ContractTerm, Reviews, Department, Office, OfficePhone, WorkSchedule) VALUES
(1,'Finnian Moyer','15 Alton Street Brooklyn, NY 11207','6558307415' ,'FinnianMoyer@gmail.com','50534','bonus','fixed-price',NULL,NULL,'medical',NULL,'8684091023','9-17'),
(2,'Kiyan Worthington','501 South Peachtree Lane Bronx, NY 10463', '8845227792','KiyanWorthington@gmail.com','37453',NULL,'fixed-price',NULL,NULL,'administration',NULL,'8376350088','9-17'),
(3,'Minnie Glenn','785 Carriage Dr.West Babylon, NY 11704','0170735302' ,'MinnieGlenn@gmail.com','63765',NULL,'fixed-price',NULL,NULL,'logistics',NULL,'0463209805','9-17'),
(4,'Inaaya Dyer','81 Old Dunbar Lane Jackson Heights, NY 11372', '6310627418','InaayaDyer@gmail.com','78345','bonus','fixed-price',NULL,NULL,'administration',NULL,'7200016468','8-16'),
(5,'Tariq Myers','2 North Berkshire Avenue Yonkers, NY 10701', '5295374578','TariqMyers@gmail.com','68755','bonus','cost-reimbursement',NULL,NULL,'administration',NULL,'9611106482','8-16'),
(6,'Vihaan Hulme','24518 Melyssa Meadow Apt. 322 West Adalberto, IN 91173', '6069878004','pfeffer.cydney@yahoo.com','54464','bonus','fixed-price',NULL,NULL,'administration',NULL,'1628118873','9-17'),
(7,'Barry Carpenter','4549 Wilton Valley Sauerberg, PA 23957','6217172459' ,'schuppe.braeden@yahoo.com','45645','bonus','fixed-price',NULL,NULL,'administration',NULL,'0772970610','9-17'),
(8,'Jaeden Noel','15722 Wilkinson Isle East Dellastad, WA 49728', '5041957090','rae95@hotmail.com','55645','bonus','fixed-price',NULL,NULL,'administration',NULL,'0422424858','9-17'),
(9,'Darrell Naylor','5334 VonRueden Lakes Suite 683 Goodwinville, NE 81010', '7909854128','alakin@gmail.com','45645','bonus','fixed-price',NULL,NULL,'administration',NULL,NULL,'9-17'),
(10,'Niyah Kemp','110 Skyla Estate Port Mittie, SC 49513', '6740838458','crooks.alaina@yahoo.com','45645','bonus','fixed-price',NULL,'logistics','administration',NULL,'0814764446','9-17'),
(11,'Rares Hopper','693 Estelle Cliffs Suite 704 Michelemouth, SC 53933', '4045537794','hannah97@spinka.net','67657','bonus','fixed-price',NULL,NULL,'medical',NULL,'1805733194','9-17'),
(12,'Hughie Whittington','401 Odessa Turnpike Port Budtown, AR 98911-3045', '4671739881','zmaggio@wuckert.com','65454','bonus','fixed-price',NULL,NULL,'medical',NULL,'7915637384','9-17'),
(13,'Teddie Curran','671 Gottlieb Row Apt. 177 Schadenberg, AL 12452-0485','7967015831' ,'eli21@schmeler.net','87685','bonus','fixed-price',NULL,NULL,'medical',NULL,'3969268819','9-17'),
(14,'Jaheim Friedman','892 Matilda Plains Apt. 923 New Arno, MD 53607', '9131847291','xledner@huel.com','45656','bonus','fixed-price',NULL,NULL,'medical',NULL,'2831681366','8-16'),
(15,'Declan Shah','372 Cristopher Roads Lake Santa, AZ 76817', '8292203050','alberta.casper@lindgren.com','74536','bonus','fixed-price',NULL,NULL,'medical',NULL,'4081907698','8-16'),
(16,'Carly Collier','331 Leopold Prairie Apt. 792 West Tracemouth, MA 52000-1820', '5063202635','delores.christiansen@gmail.com','46345',NULL,'fixed-price',NULL,NULL,'medical',NULL,'0039484081','8-16'),
(17,'Huxley Bailey','37033 Izaiah Ridges Gianniport, DE 42915','8964400286' ,'tillman.eloise@morissette.biz','76574',NULL,'fixed-price',NULL,NULL,'medical',NULL,'4828147894','8-16'),
(18,'Harlow Emerson','823 Alberta Fork Suite 359 Lake Dorothea, MA 48558', '5192833596','gunnar55@mraz.com','78567',NULL,'fixed-price',NULL,NULL,'logistics',NULL,'8050950930','8-16'),
(19,'Teddy Grey','255 Carter Junction Suite 221 Devynbury, SC 86155-1203', '9828774679','hills.andreanne@yahoo.com','55724',NULL,'fixed-price',NULL,NULL,'medical',NULL,NULL,'8-16'),
(20,'Anne Hubbard','4733 Treutel Vista Apt. 708 West Matteoberg, LA 88682', '6027894995','schmitt.helena@langosh.com','77644',NULL,'fixed-price',NULL,NULL,'logistics',NULL,NULL,'8-16'),
(21,'Bethanie Delarosa','3670 Brekke Fork Suite 375 Fadelburgh, ND 39924-1567', '6053408977','king.kellen@nolan.com','73454',NULL,'fixed-price',NULL,NULL,'medical',NULL,'9257686337','8-16'),
(22,'Imani Currie','8317 Idella Underpass Lake Mack, MO 83033','4791179552' ,'leuschke.anabel@gmail.com','76544','bonus','fixed-price',NULL,NULL,'logistics',NULL,NULL,'8-16'),
(23,'Nabiha Olsen','72064 Jenkins Mission Suite 612 Naderhaven, NC 74759-2212', '0869231800','maeve52@hotmail.com','43574','bonus','fixed-price',NULL,NULL,'logistics',NULL,'7110229650','8-16'),
(24,'Ammarah Fernandez','588 Jast Keys Suite 388 Stammland, MO 81937-4219','6661434310' ,'beahan.maxwell@prosacco.com','45745','bonus','fixed-price',NULL,NULL,'medical',NULL,'7379103681','8-16'),
(25,'Muna Ward','3835 Herzog Isle Suite 201 Rutheland, IN 55759-6656', '7451148432','dauer@hotmail.com','75644',NULL,'fixed-price',NULL,NULL,'medical',NULL,'4816091219','8-16'),
(26,'Fleur Sampson','432 Hahn Road Apt. 266 Wardstad, MN 88476-3499','2368578461' ,'xdickinson@yahoo.com','76545',NULL,'fixed-price',NULL,NULL,'logistics',NULL,NULL,'9-17'),
(27,'Bobbie Patterson','912 Hand Flats Elodyside, GA 04646', '0842572167','qgottlieb@parisian.com','57353',NULL,'fixed-price',NULL,NULL,'logistics',NULL,'3412970749','8-16'),
(28,'Serena Zimmerman','2435 Hamill Port South Gerry, MA 28100-7145', '2838524220','yterry@yahoo.com','65754','bonus','fixed-price',NULL,NULL,'administration',NULL,'2737894990','8-16'),
(29,'Myles Pacheco','694 Quigley Path Jenkinsport, VA 72640-7449', '8895636740','abagail.kshlerin@hotmail.com','65734','bonus','fixed-price',NULL,NULL,'administration',NULL,'9510504260','9-17'),
(30,'Herbert Burt','767 Lucienne Land Apt. 646 West Filomenaview, IA 31760-6929', '7281804046','wolff.nora@connelly.com','34534','bonus','fixed-price',NULL,NULL,'medical',NULL,NULL,'8-16')
SET IDENTITY_INSERT Employee OFF

SET IDENTITY_INSERT MedicalStaff ON
INSERT MedicalStaff(EmployeeID, Name, Type, Position, Status) VALUES
(1,'Finnian Moyer','Physician','attending','active'),
(2,'Kiyan Worthington','Physician','attending','active'),
(3,'Minnie Glenn','Physician','PCP','active'),
(4,'Inaaya Dyer','Physician','PCP','active'),
(5,'Tariq Myers','Physician','PCP',' retired'),
(6,'Vihaan Hulme','Physician','PCP','active'),
(7,'Barry Carpenter','Physician','PCP','active'),
(8,'Jaeden Noel','Physician','attending','active'),
(9,'Darrell Naylor','Physician','attending','leave'),
(10,'Niyah Kemp','Physician','attending','leave'),
(11,'Rares Hopper','Nurse','visiting','leave'),
(12,'Hughie Whittington','Nurse','PCP','active'),
(13,'Teddie Curran','Nurse','PCP','active'),
(14,'Jaheim Friedman','Nurse','PCP','retired'),
(15,'Declan Shah','Nurse','PCP','active'),
(16,'Carly Collier','Nurse','PCP','retired'),
(17,'Huxley Bailey','Nurse','PCP','active'),
(18,'Harlow Emerson','Nurse','attending','active'),
(19,'Teddy Grey','Nurse','attending','leave'),
(20,'Anne Hubbard','Nurse','visiting','active')
SET IDENTITY_INSERT MedicalStaff OFF










SET IDENTITY_INSERT InpatientRoomSchedules ON
INSERT InpatientRoomSchedules(InpRooScheID, FacilityID, EmployeeID, InpatientRoomName, PatientID, Schedule)VALUES
(1, 1, 11, '1001', 1, '2021-05-01'),
(2, 2, 12, '1002', 2, '2021-05-02'),
(3, 3, 13, '1003', 3, '2021-05-03'),
(4, 4, 14, '1004', 4, '2021-05-04'),
(5, 5, 15, '1005', 5, '2021-05-05'),
(6, 6, 16, '1006', 6, '2021-05-06'),
(7, 7, 17, '1007', 7, '2021-05-07'),
(8, 8, 18, '1008', 8, '2021-05-08'),
(9, 9, 19, '1009', 9, '2021-05-09'),
(10, 10, 10, '1100', 10, '2021-05-10')
SET IDENTITY_INSERT InpatientRoomSchedules OFF











SET IDENTITY_INSERT InsuranceCoverage ON
INSERT InsuranceCoverage(InsuranceID, PatientID, HealthInsuranceCompanyName, Phone, ContactInfo, InsuranceCoverages) VALUES
(1, 1, 'UnitedHealthcare Group', '6442725896', NULL,'Full Coverage'),
(2, 2, 'Anthem', '3527353380', NULL,'Full Coverage'),
(3, 3, 'Cigna', '8840713595', NULL,'Half Coverage'),
(4, 4, 'UnitedHealthcare Group', '6442725896', NULL,'Full Coverage'),
(5, 5, 'Anthem', '3527353380', NULL,'Full Coverage'),
(6, 6, 'Anthem', '3527353380', NULL,'Half Coverage'),
(7, 7, 'UnitedHealthcare Group', '6442725896', NULL,'Half Coverage'),
(8, 8, 'Humana', '4831732029', NULL,'Full Coverage'),
(9, 9, 'Aetna', '6171301124', NULL,'Half Coverage'),
(10, 10, 'Cigna', '8840713595', NULL,'Full Coverage')
SET IDENTITY_INSERT InsuranceCoverage OFF











SET IDENTITY_INSERT NonMedicalStaffSchedule ON
INSERT NonMedicalStaffSchedule(NonMedStaScheID, EmployeeID, FacilityID, Schedule)VAlUES
(1, 25, 5, '2021-05-01'),
(2, 24, 4, '2021-05-02'),
(3, 23, 3, '2021-05-03'),
(4, 22, 2, '2021-05-04'),
(5, 21, 1, '2021-05-05'),
(6, 26, 6, '2021-05-06'),
(7, 27, 7, '2021-05-07'),
(8, 28, 8, '2021-05-08'),
(9, 29, 9, '2021-05-09'),
(10, 30, 10, '2021-05-10')
SET IDENTITY_INSERT NonMedicalStaffSchedule OFF











SET IDENTITY_INSERT NurseSchedules ON
INSERT NurseSchedules(NurScheID,Name, EmployeeID,FacilityID, Schedule) VALUES
(1,'Rares Hopper',11,1,'2019-07-12'),
(2,'Hughie Whittington',12,2,'2020-03-23'),
(3,'Teddie Curran',13,3,'2020-07-01'),
(4,'Jaheim Friedman',14,4,'2020-11-01'),
(5,'Declan Shah',15,5,'2019-09-15'),
(6,'Carly Collier',16,6,'2019-12-17'),
(7,'Huxley Bailey',17,7,'2020-06-21'),
(8,'Harlow Emerson',18,8,'2020-07-27'),
(9,'Teddy Grey',19,9,'2019-05-14'),
(10,'Anne Hubbard',20,10,'2020-07-12')
SET IDENTITY_INSERT NurseSchedules OFF











SET IDENTITY_INSERT PatientAppointments ON
INSERT PatientAppointments(PatAppID,PatientID, EmployeeID,AppointmentDate, Description) VALUES
(1,1,1,'2020-09-13',NULL),
(2,2,5,'2020-11-18',NULL),
(3,3,5,'2020-12-02',NULL),
(4,4,3,'2021-03-22',NULL),
(5,5,6,'2019-02-12',NULL),
(6,6,23,'2015-07-12',NULL),
(7,7,1,'2021-01-02',NULL),
(8,8,3,'2020-02-19',NULL),
(9,9,6,'2006-05-17',NULL),
(10,10,7,'2005-09-13',NULL)
SET IDENTITY_INSERT PatientAppointments OFF











SET IDENTITY_INSERT PatientMedicalRecords ON
INSERT PatientMedicalRecords(PatMedRecID, PatientID, Weight, Height, Vitals, CheckInTime, CheckOutTime, SymptomDiagnosticProcedureCodes, AttendingPhysician, ReferralDoctor, MedicationHospitalizationDischarge)VALUES
(1,1,71,171, NULL,'2021-05-02 01:20:03','2021-05-02 13:31:44',1,'Ismael Webb','Ismael Webb', NULL),
(2,2,72,172, NULL, '2021-05-03 00:12:04', '2021-05-03 06:22:41',2,'Virgil Jefferson','Virgil Jefferson', NULL),
(3,3,73,173, NULL, '2021-05-03 08:23:50', '2021-05-03 12:48:20',3,'Chad Bryant','Chad Bryant', NULL),
(4,4,74,174, NULL,'2021-05-03 23:47:54', '2021-05-04 00:00:01',4,'Opal Benson','Opal Benson', NULL),
(5,5,75,175, NULL, '2021-05-04 07:36:08','2021-05-06 22:28:24',5,'Jodi Bailey','Jodi Bailey', NULL),
(6,6,76,176, NULL, '2021-05-08 01:49:53','2021-05-08 08:53:42',6,'Pamela Chambers','Pamela Chambers', NULL),
(7,7,77,177, NULL, '2021-05-10 13:42:06','2021-05-13 15:33:00',7,'Lora Beck','Lora Beck', NULL),
(8,8,78,178, NULL, '2021-05-14 03:08:23','2021-05-16 05:04:33',8,'Nichole Klein','Nichole Klein', NULL),
(9,9,79,179, NULL, '2021-05-17 02:34:05','2021-05-17 11:42:52',9,'Donna Hardy','Donna Hardy', NULL),
(10,10,80,180, NULL, '2021-05-18 01:35:16','2021-05-18 09:31:11',10,'Sadie Martinez','Sadie Martinez', NULL)
SET IDENTITY_INSERT PatientMedicalRecords OFF













SET IDENTITY_INSERT PhysicianSchedules ON
INSERT PhysicianSchedules(PhyScheID,Name, EmployeeID,FacilityID, Schedule) VALUES
(1,'Finnian Moyer',1,1,'2021-05-21'),
(2,'Kiyan Worthington',2,2,'2021-04-21'),
(3,'Minnie Glenn',3,3,'2021-05-19'),
(4,'Inaaya Dyer',4,7,'2021-05-12'),
(5,'Tariq Myers',5,4,' 2021-05-10'),
(6,'Vihaan Hulme',6,10,'2021-05-19'),
(7,'Barry Carpenter',7,5,'2021-05-21'),
(8,'Jaeden Noel',8,9,'2021-05-07'),
(9,'Darrell Naylor',9,6,'2021-05-08'),
(10,'Niyah Kemp',10,8,'2021-05-19')
SET IDENTITY_INSERT PhysicianSchedules OFF












SET IDENTITY_INSERT SurgeryRoomSchedules ON
INSERT SurgeryRoomSchedules(SurRooScheID, EmployeeID, FacilityID, SurgeryRoomName, Schedule)VALUES
(1, 6, 1, 'firstclass1','2021-05-01'),
(2, 1, 2, 'firstclass2', '2021-05-02'),
(3, 3, 3, 'secondclass1', '2021-05-01'),
(4, 5, 4, 'firstclass3', '2021-05-03'),
(5, 4, 5, 'secondclass2', '2021-05-01'),
(6, 9, 6, 'secondclass3', '2021-05-02'),
(7, 8, 7, 'firstclass4', '2021-05-07'),
(8, 7, 8, 'firstclass5', '2021-05-10'),
(9, 2, 9, 'firstclass6', '2021-05-15'),
(10, 10, 10, 'firstclass7', '2021-05-05')
SET IDENTITY_INSERT SurgeryRoomSchedules OFF













SET IDENTITY_INSERT Visitors ON
INSERT Visitors(VisitorsID, VisitorsName, IDNumber, DateOfBirth, Picture, PatientBeingVisited, EntryTime, ExitTime) Values
(1,'Mario Baker','2374739417','1989-09-10', NULL, 'Visted', '2021-05-02 01:20:03','2021-05-02 13:31:44'),
(2,'Jennie Pierce','5567549402','1976-08-25', NULL, 'Visted', '2021-05-03 00:12:04', '2021-05-03 06:22:41'),
(3,'Adam Rodriquez','9971788390','1979-10-26', NULL, 'Visted', '2021-05-03 08:23:50', '2021-05-03 12:48:20'),
(4,'Angel Ruiz','6065530153','1999-06-22', NULL, 'Visted', '2021-05-03 23:47:54', '2021-05-04 00:00:01'),
(5,'Lyle Summers','3429094491','1997-01-09', NULL, 'Visted', '2021-05-04 07:36:08','2021-05-06 22:28:24'),
(6,'Rose Jennings','6071126183','1963-08-03', NULL, 'Visted', '2021-05-08 01:49:53','2021-05-08 08:53:42'),
(7,'Valerie Gibson','0535989612','1980-09-25', NULL, 'Visted', '2021-05-10 13:42:06','2021-05-13 15:33:00'),
(8,'Neil Grant','1996830502','1985-12-25', NULL, 'Visted', '2021-05-14 03:08:23','2021-05-16 05:04:33'),
(9,'Andrew Rodriguez','3460661408','1993-03-21', NULL, 'Visted', '2021-05-17 02:34:05','2021-05-17 11:42:52'),
(10,'Kyle Marsh','1610857171','1969-05-10', NULL, 'Visted', '2021-05-18 01:35:16','2021-05-18 09:31:11')
SET IDENTITY_INSERT Visitors OFF











SET IDENTITY_INSERT VisitingInfo ON
INSERT VisitingInfo(VisitingInfoID, PatientID, VisitorsID)VALUES
(1,1,1),
(2,1,2),
(3,3,3),
(4,9,4),
(5,1,5),
(6,1,6),
(7,7,7),
(8,1,8),
(9,9,9),
(10,10,10)
SET IDENTITY_INSERT VisitingInfo OFF
