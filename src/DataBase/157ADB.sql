CREATE TABLE CoughAndCold (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(50) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	Typ VARCHAR(50),
	PRIMARY KEY (DID));


INSERT INTO CoughAndCold VALUES ('C1','Guaifenesin','Vicks DayQuil','Tablet, Capsule, syrup','Every 4 hours with or without food as needed.','Relieve chest congestion.','Expectorants');
INSERT INTO CoughAndCold VALUES ('C2','Dextromethorphan','Zicam Cough MAX','Chewable Tablet, Tablet, Capsule, syrup','Every 4 to 12 hours as needed.','Relieve cough caused by the common cold.','Antitussives');
INSERT INTO CoughAndCold VALUES ('C3','Pseudoephedrine','Sudafed 12/24 Hour','Tablet, Capsule, syrup','one or twice daily.','Relief of stuffy nose and sinus pain/pressure caused by common cold','Decongestants');
INSERT INTO CoughAndCold VALUES ('C4','Fexofenadine-Pseudoephedrine','Allegra-D 12 Hour','Tablet','One tablet Twice a day.','Relieve runny nose, sneezing, stuffy/itching nose, water eyes, itching throat.','Decongestants');
INSERT INTO CoughAndCold VALUES ('C5','Dextromethorphan and guaifenesin','Robitussin DM','Liquid, powder','By mouth with or without food as directed on the product package.','Relieve coughs caused by common cold, bronchitis. Do not use this medication on children under 6 years old.','Combination medication');
INSERT INTO CoughAndCold VALUES ('C6','Phenylephrine-Dextromethorphan','Triaminic DAYTIME COLD-COUGH','Tablet, Liquid','Dosage is based on age, by mouth with or without food.','Treatment of cough, stuffy nose, and sinus pain/pressure caused by common cold.','Combination medication');
INSERT INTO CoughAndCold VALUES ('C7','Menthol','Cough Drops','Lozenge','Follow directions on the product package or consult your pharmacist.','Help relieve symptoms such as sore throat, throat irritation, or cough','N/A');
---------------------------------------------------------------------------------------------------------------------




CREATE TABLE AllergyAndSinus (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(50) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	NasalSpray VARCHAR(1),
	PRIMARY KEY (DID));


INSERT INTO AllergyAndSinus VALUES ('A1','Loratadine','Claritin 24 Hour Non-Drowsy Allergy Relief Tablets','Tablet, Liquid Gel, Liquid','Once a day or as directed by doctor.','Treats symptoms such as itching, runny nose, watery eyes, sneezing, and other allergies.','N');
INSERT INTO AllergyAndSinus VALUES ('A2','Cetirizine','Zyrtec','Capsule, Tablet','Once a day.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','N');
INSERT INTO AllergyAndSinus VALUES ('A3','Chlorpheniramine','Chlor-Trimeton','Capsule, Chewable Tablet, Tablet, Liquid','By mouth every 4 to 6 hours as needed.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','N');
INSERT INTO AllergyAndSinus VALUES ('A4','Diphenhydramine','Benadryl','Capsule, Tablet','Used as directed on package or doctor.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','N');
INSERT INTO AllergyAndSinus VALUES ('A5','Fexofenadine','Allegra','Capsule, Tablet, Liquid','Usually 2 times a day (every 12 hours).','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','N');
INSERT INTO AllergyAndSinus VALUES ('A6','Oxymetazoline','Afrin','Solution','Used every 10 to 12 hours as needed.','Relieve nasal discomfort caused by colds, allergies, hay fever, sinus congestion and pressure.','Y');
INSERT INTO AllergyAndSinus VALUES ('A7','Fluticasone','Flonase','Solution','Once or Twice in each nostil twice daily.','Relieve symptoms of sneezing and a runny, stuffy, or itchy nose and itchy, watery eyes caused by hay fever or other allergies.','Y');
INSERT INTO AllergyAndSinus VALUES ('A8','Mometasone','Nasonex','Solution','As directed by doctor, usually once a day.','Treat seasonal and year-round allergy symptoms, such as stuffy/runny nose, itching, and sneezing. Also used to treat certain growths in the nose.','Y');
---------------------------------------------------------------------------------------------------------------------

CREATE TABLE EarCare (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(30) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	Tool VARCHAR(20),
	PRIMARY KEY (DID));


INSERT INTO EarCare VALUES('E1','Carbamide Peroxide','Debrox Drops','Solution','Twice daily or directed by doctor. Do not use for more than 4 days.','To help soften, loosen, and remove the earwax.','N');
INSERT INTO EarCare VALUES('E2','Fluocinolone Acetonide Oil','Dermotic Drops','Solution','Twice a day or directed by doctor.','To treat chronic itchy outer ear, redness, flaking.','N');
INSERT INTO EarCare VALUES('E3','Earwax Removal Kit','N/A','N/A','Use as directed.','Use along with warm water and OTC hydrogen peroxide,','Y');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE EyeCare (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(30) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	ForWearingContactLenses VARCHAR(1),
	PRIMARY KEY (DID));


INSERT INTO EyeCare VALUES('I1','Carboxymethylcellulose Sodium','Refresh Tears','Solution','Apply 1 or 2 drops as needed.','Relieve dry Eye, eye irritation caused by wind, sun, heat/air conditioning, computer use/reading.','N');
INSERT INTO EyeCare VALUES('I2','Tetrahydrozoline','Murine Plus','Solution','Use in affected eye 3 to 4 times a day or as needed or directed by doctor.','Relieve Redness in the eyes caused by minor eye irritations such as smog, swimming, dust.','N');
INSERT INTO EyeCare VALUES('I3','Olopatadine','Pataday','Solution','Once or twice a day or directed by the product package or by doctor.','Treat itching and redness in the eyes due to allergies.','N');
INSERT INTO EyeCare VALUES('I4','Carboxymethylcellulose Sodium','Refresh Contacts Drops','Ointment, Drop, Gel','Use 1 to 2 times daily or as needed.','Rewetting Drops','Y');
INSERT INTO EyeCare VALUES('I5','Soft Lens Adjunctive Solutions','Renu Rewetting Drops Ophthalmic','Solution','Use as directed on product package.','Rewetting Drops','Y');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE FootCare (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(30) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	Topical VARCHAR(1),
	PRIMARY KEY (DID));

INSERT INTO FootCare VALUES('L1','Butenafine','Lotrimin For Athlete''s Foot','Cream','Apply a thin layer 1 to 2 times daily or as directed on the paroduct package.','Treat a variety of fungal skin infections such as ring worm, athlete''s foot.','Y');
INSERT INTO FootCare VALUES('L2','Tolnaftate','Tinactin','Cream','Apply to affected skin twice a day or as directed.','Treat a variety of fungal skin infections such as ringworm, athlete''s foot.','Y');
INSERT INTO FootCare VALUES('L3','MISC Antifungal Combo Products, Undecylenic Acid','Fungix','Solution','Apply to affected skin twice a day or as directed.','Treat a variety of fungal skin infections such as ringworm, athlete''s foot.','Y');
INSERT INTO FootCare VALUES('L4','N/A','Hylands Homeopathic Restful Legs','Quick- Dissolving Tablet','Dissolve 2-3 tablets under tongue every 4 hours, 6 times per day.','Calm agitated legs, leg jerks.','N');
INSERT INTO FootCare VALUES('L5','N/A','Hyland''s Leg Cramps PM','Tablet','Take as directed.','Relieve leg cramp.','N');
INSERT INTO FootCare VALUES('L6','N/A','Copper Compression Socks','Compression Stockings','As directed.','Helps blood vessels work better. For people who have leg circulation problems.','Y');
INSERT INTO FootCare VALUES('L7','N/A','Dr. Scholl''s Heavy Duty Support Pain Relief Orthotics','Foot Support','As directed.','Leg support.','Y');



---------------------------------------------------------------------------------------------------------------------

CREATE TABLE DigestiveHealth (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(30) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	ForKid VARCHAR(1),
	PRIMARY KEY (DID));


INSERT INTO DigestiveHealth VALUES('D1','Omeprazole Magnesium','Prilosec OTC','Tablet','Once daily before meal or as directed by doctor.','Used to treat certain stomach and esophagus problems.','N');
INSERT INTO DigestiveHealth VALUES('D2','Famotidine','Pepcid','Tablet','Once or twice a day with or without food or as directed by the doctor.','Used to treat ulcers of the stomach and intestines.','N');
INSERT INTO DigestiveHealth VALUES('D3','Bismuth Subsalicylate','Pepto-Bismol','Chewable tables, Liquid','Take as needed or as directed by the product package.','Used to treat upset stomach, heartburn, and nausea.','N');
INSERT INTO DigestiveHealth VALUES('D4','Bisacodyl','Dulcolax','Tablet','Take as directed on product package or by doctor.','Used to treat constipation. ','N');
INSERT INTO DigestiveHealth VALUES('D5','Polyethylene Glycol 3350','MiraLAX','Powder','once daily or as directed by doctor.','Treat occasional constipation.','N');
INSERT INTO DigestiveHealth VALUES('D6','Docusate Sodium','Colace','Capsule','As directed by doctor or product package.','Treat occasional constipation.','N');
INSERT INTO DigestiveHealth VALUES('D7','Loperamide','Imodium','Tablet','As directed by doctor or product package.','Treat sudden diarrhea including traveler''s diarrhea.','N');
INSERT INTO DigestiveHealth VALUES('D8','Lactobacillus Rhamnosus GG','Culturelle Kids','Powder','As directed by doctor or product package.','Improve digestion and restore normal flora.','Y');
INSERT INTO DigestiveHealth VALUES('D9','Simethicone','Infants'' Mylicon','Liquid','As directed by doctor or product package. Do not exceed 12 doses per day.','Relieve symptoms of extra gas caused by air swallowing or certain foods.','Y');



---------------------------------------------------------------------------------------------------------------------

CREATE TABLE FirstAid (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(30) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	Lotion VARCHAR(1),
	PRIMARY KEY (DID));


INSERT INTO FirstAid VALUES('FA1','Neomycin-Bacitracin-Poly Xnb','Neosporin','Cream, Ointment, Lotion','As directed on product package or by doctor.','Prevent and treat minor skin infections caused by small cuts,scrapes, or burns.','Y');
INSERT INTO FirstAid VALUES('FA2','First Aid Kit','Rapid Care','Multiple tools.','Use on skin only as directed on product package or by doctor.','Perform first aid treatment.','Y');
INSERT INTO FirstAid VALUES('FA3','Diphenhydramine HCL','Benadryl','Capsule','As directed on product package or by doctor.','An antihistamine used to relieve symptoms of allergy, hay fever, and common cold. Also used to help relax and fall asleep.','N');
INSERT INTO FirstAid VALUES('FA4','Bandage','Telfa','Non-adherent Dressing','As directed on product package or by doctor.','Used to perform first aid treatment.','Y');
INSERT INTO FirstAid VALUES('FA5','Ice Bag','N/A','Ice Bag','As directed on product package or by doctor.','Used to perform first aid treatment.','Y');
INSERT INTO FirstAid VALUES('FA6','Aspirin','Bayer Aspirin','Tablet','As directed on product package or by doctor.','Reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, common cold, and headaches. ','N');




---------------------------------------------------------------------------------------------------------------------

CREATE TABLE Symptom (
	SYMID CHAR (5),
	Name VARCHAR (50),
	PRIMARY KEY (SYMID));


INSERT INTO Symptom VALUES('SYM1','chest congestion');
INSERT INTO Symptom VALUES('SYM2','runny nose, stuffy nose, sinus pain');
INSERT INTO Symptom VALUES('SYM3','common cold');
INSERT INTO Symptom VALUES('SYM4','sore throat');
INSERT INTO Symptom VALUES('SYM5','allergies');
INSERT INTO Symptom VALUES('SYM6','nasal discomfort');
INSERT INTO Symptom VALUES('SYM7','earwax');
INSERT INTO Symptom VALUES('SYM8','itchy outer ear');
INSERT INTO Symptom VALUES('SYM9','dry eye');
INSERT INTO Symptom VALUES('SYM10','redness in the eyes');
INSERT INTO Symptom VALUES('SYM11','eye irritations');
INSERT INTO Symptom VALUES('SYM12','rewetting');
INSERT INTO Symptom VALUES('SYM13','fungal skin infections');
INSERT INTO Symptom VALUES('SYM14','agitated legs');
INSERT INTO Symptom VALUES('SYM15','leg cramp');
INSERT INTO Symptom VALUES('SYM16','leg circulation/leg support');
INSERT INTO Symptom VALUES('SYM17','stomach and esophagus problems');
INSERT INTO Symptom VALUES('SYM18','ulcer');
INSERT INTO Symptom VALUES('SYM19','upset stomach, heartburn');
INSERT INTO Symptom VALUES('SYM20','diarrhea or travelers'' diarrhea');
INSERT INTO Symptom VALUES('SYM21','constipation');
INSERT INTO Symptom VALUES('SYM22','extra gas');
INSERT INTO Symptom VALUES('SYM23','improve digestion');
INSERT INTO Symptom VALUES('SYM24','first aid');



---------------------------------------------------------------------------------------------------------------------

CREATE TABLE TreatCoughAndCold (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES CoughAndCold(DID),
	FOREIGN KEY (SYMID) REFERENCES Symptom(SYMID));


INSERT INTO TreatCoughAndCold VALUES('C1','SYM1');
INSERT INTO TreatCoughAndCold VALUES('C2','SYM3');
INSERT INTO TreatCoughAndCold VALUES('C3','SYM3');
INSERT INTO TreatCoughAndCold VALUES('C4','SYM2');
INSERT INTO TreatCoughAndCold VALUES('C5','SYM3');
INSERT INTO TreatCoughAndCold VALUES('C6','SYM2');
INSERT INTO TreatCoughAndCold VALUES('C7','SYM4');



---------------------------------------------------------------------------------------------------------------------
CREATE TABLE TreatAllergyAndSinus (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES AllergyAndSinus(DID) ,
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatAllergyAndSinus VALUES('A1','SYM5');
INSERT INTO TreatAllergyAndSinus VALUES('A2','SYM5');
INSERT INTO TreatAllergyAndSinus VALUES('A3','SYM5');
INSERT INTO TreatAllergyAndSinus VALUES('A4','SYM5');
INSERT INTO TreatAllergyAndSinus VALUES('A5','SYM5');
INSERT INTO TreatAllergyAndSinus VALUES('A6','SYM6');
INSERT INTO TreatAllergyAndSinus VALUES('A7','SYM6');
INSERT INTO TreatAllergyAndSinus VALUES('A8','SYM6');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE TreatEar (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES EarCare(DID) ,
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatEar VALUES('E1','SYM7');
INSERT INTO TreatEar VALUES('E2','SYM7');
INSERT INTO TreatEar VALUES('E3','SYM8');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE TreatEye (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES EyeCare (DID),
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatEye VALUES('I1','SYM9');
INSERT INTO TreatEye VALUES('I2','SYM10');
INSERT INTO TreatEye VALUES('I3','SYM11');
INSERT INTO TreatEye VALUES('I4','SYM12');
INSERT INTO TreatEye VALUES('I5','SYM12');


---------------------------------------------------------------------------------------------------------------------


CREATE TABLE TreatFoot (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES FootCare(DID) ,
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatFoot VALUES('L1','SYM13');
INSERT INTO TreatFoot VALUES('L2','SYM13');
INSERT INTO TreatFoot VALUES('L3','SYM13');
INSERT INTO TreatFoot VALUES('L4','SYM14');
INSERT INTO TreatFoot VALUES('L5','SYM15');
INSERT INTO TreatFoot VALUES('L6','SYM16');
INSERT INTO TreatFoot VALUES('L7','SYM16');


---------------------------------------------------------------------------------------------------------------------


CREATE TABLE TreatDigestive (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES DigestiveHealth(DID) ,
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatDigestive VALUES('D1','SYM17');
INSERT INTO TreatDigestive VALUES('D2','SYM18');
INSERT INTO TreatDigestive VALUES('D3','SYM19');
INSERT INTO TreatDigestive VALUES('D4','SYM21');
INSERT INTO TreatDigestive VALUES('D5','SYM21');
INSERT INTO TreatDigestive VALUES('D6','SYM21');
INSERT INTO TreatDigestive VALUES('D7','SYM20');
INSERT INTO TreatDigestive VALUES('D8','SYM20');
INSERT INTO TreatDigestive VALUES('D9','SYM22');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE TreatFirstAid (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES FirstAid (DID),
	FOREIGN KEY (SYMID) REFERENCES Symptom (SYMID));


INSERT INTO TreatFirstAid VALUES('FA1','SYM24');
INSERT INTO TreatFirstAid VALUES('FA2','SYM24');
INSERT INTO TreatFirstAid VALUES('FA3','SYM24');
INSERT INTO TreatFirstAid VALUES('FA4','SYM24');
INSERT INTO TreatFirstAid VALUES('FA5','SYM24');
INSERT INTO TreatFirstAid VALUES('FA6','SYM24');




---------------------------------------------------------------------------------------------------------------------

CREATE TABLE Store (
	SID varchar(5) PRIMARY KEY,
	name varchar(50) NOT NULL,
	street varchar(50),
	city varchar(50),
	stat varchar(5),
	zip_code varchar(10),
	phone_number varchar(20));

INSERT INTO Store VALUES('S1', 'Walgreens', '440 Blossom Hill Rd', 'San Jose', 'CA', '95123', '(408) 229-8013');
INSERT INTO Store VALUES('S2', 'RiteAid', '1029 East Capitol Expressway', 'San Jose', 'CA', '95121', '(408) 629-6060');
INSERT INTO Store VALUES('S3', 'Walmart', '777 Story Rd', 'San Jose', 'CA', '95122', '(408) 885-1142');
INSERT INTO Store VALUES('S4', 'CVS', '645 Market St', 'San Diego', 'CA', '92101', '(619) 234-5952');
INSERT INTO Store VALUES('S5', 'Costco', '4502 E Oak St', 'Phoenix', 'AZ', '85008', '(602) 808-0111');

---------------------------------------------------------------------------------------------------------------------



CREATE TABLE Review (
	RID varchar(5) PRIMARY KEY,
	date_recieved varchar(50),
	decision_date varchar(50),
	decision varchar(50),
	reviewed_by varchar(50));

INSERT INTO Review VALUES('R1', '02/08/2018', '04/05/2018', 'Substantially Equivalent (SESE)', 'FDA');
INSERT INTO Review VALUES('R2', '06/05/2018', '10/31/2018', 'Granted (DENG)', 'FDA');
INSERT INTO Review (RID, date_recieved, reviewed_by) VALUES('R3', '05/09/2021', 'FDA');
INSERT INTO Review VALUES('R4', '04/07/2020', '08/12/2020', 'Substantially Equivalent (SESE)', 'FDA');
INSERT INTO Review VALUES('R5', '07/15/2019', '11/29/2019', 'Granted (DENG)', 'FDA');


---------------------------------------------------------------------------------------------------------------------



CREATE TABLE CoughAndColdSoldByStore (
	DID varchar(5) ,
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES CoughAndCold(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));


INSERT INTO CoughAndColdSoldByStore VALUES('C1', 'S1');
INSERT INTO CoughAndColdSoldByStore VALUES('C2', 'S5');
INSERT INTO CoughAndColdSoldByStore VALUES('C3', 'S2');
INSERT INTO CoughAndColdSoldByStore VALUES('C4', 'S3');
INSERT INTO CoughAndColdSoldByStore VALUES('C5', 'S4');
INSERT INTO CoughAndColdSoldByStore VALUES('C6', 'S3');
INSERT INTO CoughAndColdSoldByStore VALUES('C7', 'S1');



---------------------------------------------------------------------------------------------------------------------




CREATE TABLE AllergyAndSinusSoldByStore (
	DID varchar(5),
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES AllergyAndSinus(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));

INSERT INTO AllergyAndSinusSoldByStore VALUES('A1', 'S4');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A2', 'S1');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A3', 'S2');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A4', 'S3');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A5', 'S5');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A6', 'S1');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A7', 'S4');
INSERT INTO AllergyAndSinusSoldByStore VALUES('A8', 'S2');


---------------------------------------------------------------------------------------------------------------------

CREATE TABLE EarCareSoldByStore (
	DID varchar(5) ,
	SID varchar(5), 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES EarCare(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));

INSERT INTO EarCareSoldByStore VALUES('E1', 'S5');
INSERT INTO EarCareSoldByStore VALUES('E2', 'S1');
INSERT INTO EarCareSoldByStore VALUES('E3', 'S3');

---------------------------------------------------------------------------------------------------------------------

CREATE TABLE EyeCareSoldByStore (
	DID varchar(5) ,
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES EyeCare(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));

INSERT INTO EyeCareSoldByStore VALUES('I1', 'S1');
INSERT INTO EyeCareSoldByStore VALUES('I2', 'S4');
INSERT INTO EyeCareSoldByStore VALUES('I3', 'S5');
INSERT INTO EyeCareSoldByStore VALUES('I4', 'S3');
INSERT INTO EyeCareSoldByStore VALUES('I5', 'S1');

---------------------------------------------------------------------------------------------------------------------

CREATE TABLE FootCareSoldByStore (
	DID varchar(5) ,
	SID varchar(5), 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES FootCare(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID) 
);

INSERT INTO FootCareSoldByStore VALUES('L1', 'S2');
INSERT INTO FootCareSoldByStore VALUES('L2', 'S5');
INSERT INTO FootCareSoldByStore VALUES('L3', 'S3');
INSERT INTO FootCareSoldByStore VALUES('L4', 'S1');
INSERT INTO FootCareSoldByStore VALUES('L5', 'S2');
INSERT INTO FootCareSoldByStore VALUES('L6', 'S5');
INSERT INTO FootCareSoldByStore VALUES('L7', 'S1');

---------------------------------------------------------------------------------------------------------------------

CREATE TABLE DigestiveHealthSoldByStore (
	DID varchar(5) ,
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES DigestiveHealth(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));

INSERT INTO DigestiveHealthSoldByStore VALUES('D1', 'S4');
INSERT INTO DigestiveHealthSoldByStore VALUES('D2', 'S1');
INSERT INTO DigestiveHealthSoldByStore VALUES('D3', 'S5');
INSERT INTO DigestiveHealthSoldByStore VALUES('D4', 'S3');
INSERT INTO DigestiveHealthSoldByStore VALUES('D5', 'S4');
INSERT INTO DigestiveHealthSoldByStore VALUES('D6', 'S2');
INSERT INTO DigestiveHealthSoldByStore VALUES('D7', 'S2');
INSERT INTO DigestiveHealthSoldByStore VALUES('D8', 'S1');
INSERT INTO DigestiveHealthSoldByStore VALUES('D9', 'S5');

---------------------------------------------------------------------------------------------------------------------


CREATE TABLE FirstAidSoldByStore (
	DID varchar(5) ,
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES FirstAid(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));

INSERT INTO FirstAidSoldByStore VALUES('FA1', 'S1');
INSERT INTO FirstAidSoldByStore VALUES('FA2', 'S2');
INSERT INTO FirstAidSoldByStore VALUES('FA3', 'S3');
INSERT INTO FirstAidSoldByStore VALUES('FA4', 'S4');
INSERT INTO FirstAidSoldByStore VALUES('FA5', 'S5');
INSERT INTO FirstAidSoldByStore VALUES('FA6', 'S3');


---------------------------------------------------------------------------------------------------------------------



CREATE TABLE CoughAndColdHasReview (
	DID varchar(5) ,
	RID varchar(5), 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES CoughAndCold(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO CoughAndColdHasReview VALUES('C1', 'R5');
INSERT INTO CoughAndColdHasReview VALUES('C2', 'R3');
INSERT INTO CoughAndColdHasReview VALUES('C3', 'R5');
INSERT INTO CoughAndColdHasReview VALUES('C4', 'R2');
INSERT INTO CoughAndColdHasReview VALUES('C5', 'R1');
INSERT INTO CoughAndColdHasReview VALUES('C6', 'R4');
INSERT INTO CoughAndColdHasReview VALUES('C7', 'R3');


---------------------------------------------------------------------------------------------------------------------


CREATE TABLE AllergyAndSinusHasReview (
	DID varchar(5) ,
	RID varchar(5) , 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES AllergyAndSinus(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO AllergyAndSinusHasReview VALUES('A1', 'R2');
INSERT INTO AllergyAndSinusHasReview VALUES('A2', 'R2');
INSERT INTO AllergyAndSinusHasReview VALUES('A3', 'R3');
INSERT INTO AllergyAndSinusHasReview VALUES('A4', 'R5');
INSERT INTO AllergyAndSinusHasReview VALUES('A5', 'R1');
INSERT INTO AllergyAndSinusHasReview VALUES('A6', 'R2');
INSERT INTO AllergyAndSinusHasReview VALUES('A7', 'R1');
INSERT INTO AllergyAndSinusHasReview VALUES('A8', 'R3');

---------------------------------------------------------------------------------------------------------------------


CREATE TABLE EarCareHasReview (
	DID varchar(5) ,
	RID varchar(5), 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES EarCare(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO EarCareHasReview VALUES('E1', 'R4');
INSERT INTO EarCareHasReview VALUES('E2', 'R1');
INSERT INTO EarCareHasReview VALUES('E3', 'R5');


---------------------------------------------------------------------------------------------------------------------


CREATE TABLE EyeCareHasReview (
	DID varchar(5) ,
	RID varchar(5) , 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES EyeCare(DID),
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO EyeCareHasReview VALUES('I1', 'R1');
INSERT INTO EyeCareHasReview VALUES('I2', 'R3');
INSERT INTO EyeCareHasReview VALUES('I3', 'R5');
INSERT INTO EyeCareHasReview VALUES('I4', 'R2');
INSERT INTO EyeCareHasReview VALUES('I5', 'R4');

---------------------------------------------------------------------------------------------------------------------

CREATE TABLE FootCareHasReview (
	DID varchar(5) ,
	RID varchar(5) , 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES FootCare(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO FootCareHasReview VALUES('L1', 'R3');
INSERT INTO FootCareHasReview VALUES('L2', 'R5');
INSERT INTO FootCareHasReview VALUES('L3', 'R3');
INSERT INTO FootCareHasReview VALUES('L4', 'R2');
INSERT INTO FootCareHasReview VALUES('L5', 'R1');
INSERT INTO FootCareHasReview VALUES('L6', 'R2');
INSERT INTO FootCareHasReview VALUES('L7', 'R3');

---------------------------------------------------------------------------------------------------------------------


CREATE TABLE DigestiveHealthHasReview (
	DID varchar(5) ,
	RID varchar(5) , 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES DigestiveHealth(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO DigestiveHealthHasReview VALUES('D1', 'R1');
INSERT INTO DigestiveHealthHasReview VALUES('D2', 'R5');
INSERT INTO DigestiveHealthHasReview VALUES('D3', 'R2');
INSERT INTO DigestiveHealthHasReview VALUES('D4', 'R1');
INSERT INTO DigestiveHealthHasReview VALUES('D5', 'R3');
INSERT INTO DigestiveHealthHasReview VALUES('D6', 'R4');
INSERT INTO DigestiveHealthHasReview VALUES('D7', 'R5');
INSERT INTO DigestiveHealthHasReview VALUES('D8', 'R2');
INSERT INTO DigestiveHealthHasReview VALUES('D9', 'R1');


---------------------------------------------------------------------------------------------------------------------



CREATE TABLE FirstAidHasReview (
	DID varchar(5) ,
	RID varchar(5) , 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES FirstAid(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO FirstAidHasReview VALUES('FA1', 'R3');
INSERT INTO FirstAidHasReview VALUES('FA2', 'R4');
INSERT INTO FirstAidHasReview VALUES('FA3', 'R5');
INSERT INTO FirstAidHasReview VALUES('FA4', 'R2');
INSERT INTO FirstAidHasReview VALUES('FA5', 'R3');
INSERT INTO FirstAidHasReview VALUES('FA6', 'R1');

---------------------------------------------------------------------------------------------------------------------








