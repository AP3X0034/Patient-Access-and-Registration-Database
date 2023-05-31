USE PAR;

-- Creating tables

CREATE TABLE Patient (
	PatientID INT NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(100) NULL,
	Phone VARCHAR(50) NULL,
	Email VARCHAR(50) NULL,
	HealthInsuranceInfo VARCHAR(50) NULL,
	PrimaryCareDoctor VARCHAR(50) NOT NULL
);















CREATE TABLE Billing (
	BillingID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	Visits VARCHAR(50) NULL,
	MedicalBillingCodes VARCHAR(50) NULL,
	Payor VARCHAR(50) NULL,
	PaymentMethod VARCHAR(50) NULL,
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID)
);


















CREATE TABLE Costs (
	CostsID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	Medications VARCHAR(50) NULL,
	HealthProcedures VARCHAR(50) NULL,
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID)
);




















CREATE TABLE Employee (
	EmployeeID INT NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Phone VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Salary VARCHAR(50) NOT NULL,
	Benefits VARCHAR(50) NULL,
	ContractType VARCHAR(50) NULL,
	ContractTerm VARCHAR(50) NULL,
	Reviews VARCHAR(50) NULL,
	Department VARCHAR(50) NULL,
	Office VARCHAR(50) NULL,
	OfficePhone VARCHAR(50) NULL,
	WorkSchedule VARCHAR(50) NULL
);











CREATE TABLE Facility (
	FacilityID INT NOT NULL PRIMARY KEY IDENTITY,
	FacilityName VARCHAR(50) NOT NULL,
	Location VARCHAR(100) NOT NULL,
	Hours datetime NULL,
	RoomCapacity VARCHAR(50) NULL,
	Departments VARCHAR(100) NULL,
	CareCapcity VARCHAR(50) NULL,
	MedicalEquipment VARCHAR(50) NULL,
);

















CREATE TABLE EquipmentReservations (
	EquResID INT NOT NULL PRIMARY KEY IDENTITY,
	FacilityID INT NOT NULL,
	EquipmentName VARCHAR(50) NOT NULL,
	CheckInTime DATETIME NULL,
	CheckOutTime DATETIME NULL,
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID)
);



















CREATE TABLE Imaging (
	ImagingID INT NOT NULL PRIMARY KEY IDENTITY,
	ImagingName VARCHAR(50) NOT NULL,
	Testing VARCHAR(50) NULL
);






















CREATE TABLE Lab (
	LabID INT NOT NULL PRIMARY KEY IDENTITY,
	LabName VARCHAR(50) NOT NULL,
	Tests VARCHAR(50) NULL,
	Results VARCHAR(50) NULL,
	MandatedReportingtoCountyState VARCHAR(50) NULL,
);




















CREATE TABLE Pharmacy (
	PharmacyID INT NOT NULL PRIMARY KEY IDENTITY,
	PharmacyName VARCHAR(50) NOT NULL,
	Medicines VARCHAR(50) NULL,
	RentalEquipment VARCHAR(50) NULL,
);





















CREATE TABLE FacilityDetail (
	FacilityDetailID INT NOT NULL PRIMARY KEY IDENTITY,
	FacilityID INT NOT NULL,
	LabID INT NOT NULL,
	ImagingID INT NOT NULL,
	PharmacyID INT NOT NULL,
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID),
	FOREIGN KEY (ImagingID) REFERENCES Imaging (ImagingID),
	FOREIGN KEY (LabID) REFERENCES Lab (LabID),
	FOREIGN KEY (PharmacyID) REFERENCES Pharmacy (PharmacyID)
);
















CREATE TABLE MedicalStaff (
	EmployeeID INT NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Type VARCHAR(50) NOT NULL,
	Position VARCHAR(50) NOT NULL,
	Status VARCHAR(50) NOT NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
);



















CREATE TABLE InpatientRoomSchedules (
	InpRooScheID INT NOT NULL PRIMARY KEY IDENTITY,
	EmployeeID INT NOT NULL,
	FacilityID INT NOT NULL,
	InpatientRoomName VARCHAR(50) NOT NULL,
	PatientID INT NOT NULL,
	Schedule DATETIME NULL,
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID),
	FOREIGN KEY (EmployeeID) REFERENCES MedicalStaff (EmployeeID)
);

















CREATE TABLE InsuranceCoverage (
	InsuranceID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	HealthInsuranceCompanyName VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL,
	ContactInfo VARCHAR(50) NULL,
	InsuranceCoverages VARCHAR(50) NOT NULL,
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID)
);


















CREATE TABLE NonMedicalStaffSchedule (
	NonMedStaScheID INT NOT NULL PRIMARY KEY IDENTITY,
	EmployeeID INT NOT NULL,
	FacilityID INT NOT NULL,
	Schedule DATETIME NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID),
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID)
);



















CREATE TABLE NurseSchedules (
	NurScheID INT NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	EmployeeID INT NOT NULL,
	FacilityID INT NOT NULL,
	Schedule DATETIME NULL,
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID),
	FOREIGN KEY (EmployeeID) REFERENCES MedicalStaff (EmployeeID)
);


















CREATE TABLE PatientAppointments (
	PatAppID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	EmployeeID INT NOT NULL,
	AppointmentDate DATETIME NOT NULL,
	Description VARCHAR(50) NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID),
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID)
);


















CREATE TABLE PatientMedicalRecords (
	PatMedRecID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	Weight INT NULL,
	Height INT NULL,
	Vitals VARCHAR(50) NULL,
	CheckInTime DATETIME NULL,
	CheckOutTime DATETIME NULL,
	SymptomDiagnosticProcedureCodes INT NULL,
	AttendingPhysician VARCHAR(50) NULL,
	ReferralDoctor VARCHAR(50) NULL,
	MedicationHospitalizationDischarge VARCHAR(50) NULL,
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID)
);













CREATE TABLE PhysicianSchedules (
	PhyScheID INT NOT NULL PRIMARY KEY IDENTITY,
	Name VARCHAR(50) NOT NULL,
	EmployeeID INT NOT NULL,
	FacilityID INT NOT NULL,
	Schedule DATETIME NULL,
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID),
	FOREIGN KEY (EmployeeID) REFERENCES MedicalStaff (EmployeeID)
);


















CREATE TABLE SurgeryRoomSchedules (
	SurRooScheID INT NOT NULL PRIMARY KEY IDENTITY,
	EmployeeID INT NOT NULL,
	FacilityID INT NOT NULL,
	SurgeryRoomName VARCHAR(50) NOT NULL,
	Schedule DATETIME NULL
	FOREIGN KEY (FacilityID) REFERENCES Facility (FacilityID),
	FOREIGN KEY (EmployeeID) REFERENCES MedicalStaff (EmployeeID)
);


















CREATE TABLE Visitors (
	VisitorsID INT NOT NULL PRIMARY KEY IDENTITY,
	VisitorsName VARCHAR(50) NOT NULL,
	IDNumber VARCHAR(50) NOT NULL,
	DateOfBirth DATETIME NULL,
	Picture IMAGE NULL,
	PatientBeingVisited VARCHAR(50) NOT NULL,
	EntryTime DATETIME NULL,
	ExitTime DATETIME NULL
);

















CREATE TABLE VisitingInfo (
	VisitingInfoID INT NOT NULL PRIMARY KEY IDENTITY,
	PatientID INT NOT NULL,
	VisitorsID INT NOT NULL,
	FOREIGN KEY (PatientID) REFERENCES Patient (PatientID),
	FOREIGN KEY (VisitorsID) REFERENCES Visitors (VisitorsID)
);