CREATE TABLE Drug (
	DID VARCHAR(5),
	GenericName VARCHAR(50) NOT NULL,
	BrandName VARCHAR(200), 
	Form VARCHAR(50) NOT NULL,
	Dosage VARCHAR(100) NOT NULL,
	Description VARCHAR(200) NOT NULL,
	Notes VARCHAR(50),
	Category VARCHAR(50) NOT NULL,
	PRIMARY KEY (DID));


INSERT INTO Drug VALUES ('C1','Guaifenesin','Vicks DayQuil','Tablet, Capsule, syrup','Every 4 hours with or without food as needed.','Relieve chest congestion.','Expectorants','CoughAndCold');
INSERT INTO Drug VALUES ('C2','Dextromethorphan','Zicam Cough MAX','Chewable Tablet, Tablet, Capsule, syrup','Every 4 to 12 hours as needed.','Relieve cough caused by the common cold.','Antitussives','CoughAndCold');
INSERT INTO Drug VALUES ('C3','Pseudoephedrine','Sudafed 12/24 Hour','Tablet, Capsule, syrup','one or twice daily.','Relief of stuffy nose and sinus pain/pressure caused by common cold','Decongestants','CoughAndCold');
INSERT INTO Drug VALUES ('C4','Fexofenadine-Pseudoephedrine','Allegra-D 12 Hour','Tablet','One tablet Twice a day.','Relieve runny nose, sneezing, stuffy/itching nose, water eyes, itching throat.','Decongestants','CoughAndCold');
INSERT INTO Drug VALUES ('C5','Dextromethorphan and guaifenesin','Robitussin DM','Liquid, powder','By mouth with or without food as directed on the product package.','Relieve coughs caused by common cold, bronchitis. Do not use this medication on children under 6 years old.','Combination medication','CoughAndCold');
INSERT INTO Drug VALUES ('C6','Phenylephrine-Dextromethorphan','Triaminic DAYTIME COLD-COUGH','Tablet, Liquid','Dosage is based on age, by mouth with or without food.','Treatment of cough, stuffy nose, and sinus pain/pressure caused by common cold.','Combination medication','CoughAndCold');
INSERT INTO Drug VALUES ('C7','Menthol','Cough Drops','Lozenge','Follow directions on the product package or consult your pharmacist.','Help relieve symptoms such as sore throat, throat irritation, or cough','N/A','CoughAndCold');

INSERT INTO Drug VALUES ('A1','Loratadine','Claritin 24 Hour Non-Drowsy Allergy Relief Tablets','Tablet, Liquid Gel, Liquid','Once a day or as directed by doctor.','Treats symptoms such as itching, runny nose, watery eyes, sneezing, and other allergies.','Null','AllergyAndSinus');
INSERT INTO Drug VALUES ('A2','Cetirizine','Zyrtec','Capsule, Tablet','Once a day.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','Null','AllergyAndSinus');
INSERT INTO Drug VALUES ('A3','Chlorpheniramine','Chlor-Trimeton','Capsule, Chewable Tablet, Tablet, Liquid','By mouth every 4 to 6 hours as needed.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','Null','AllergyAndSinus');
INSERT INTO Drug VALUES ('A4','Diphenhydramine','Benadryl','Capsule, Tablet','Used as directed on package or doctor.','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','Null','AllergyAndSinus');
INSERT INTO Drug VALUES ('A5','Fexofenadine','Allegra','Capsule, Tablet, Liquid','Usually 2 times a day (every 12 hours).','Treats allergies like hay fever. Symptoms like sneezing, runny nose, itchy or watery eyes, itchy throat or nose.','Null','AllergyAndSinus');
INSERT INTO Drug VALUES ('A6','Oxymetazoline','Afrin','Solution','Used every 10 to 12 hours as needed.','Relieve nasal discomfort caused by colds, allergies, hay fever, sinus congestion and pressure.','Nasal Spray','AllergyAndSinus');
INSERT INTO Drug VALUES ('A7','Fluticasone','Flonase','Solution','Once or Twice in each nostil twice daily.','Relieve symptoms of sneezing and a runny, stuffy, or itchy nose and itchy, watery eyes caused by hay fever or other allergies.','Nasal Spray','AllergyAndSinus');
INSERT INTO Drug VALUES ('A8','Mometasone','Nasonex','Solution','As directed by doctor, usually once a day.','Treat seasonal and year-round allergy symptoms, such as stuffy/runny nose, itching, and sneezing. Also used to treat certain growths in the nose.','Nasal Spray','AllergyAndSinus');


INSERT INTO Drug VALUES('E1','Carbamide Peroxide','Debrox Drops','Solution','Twice daily or directed by doctor. Do not use for more than 4 days.','To help soften, loosen, and remove the earwax.','NULL','EarCare');
INSERT INTO Drug VALUES('E2','Fluocinolone Acetonide Oil','Dermotic Drops','Solution','Twice a day or directed by doctor.','To treat chronic itchy outer ear, redness, flaking.','NULL','EarCare');
INSERT INTO Drug VALUES('E3','Earwax Removal Kit','N/A','N/A','Use as directed.','Use along with warm water and OTC hydrogen peroxide,','Tool','EarCare');


INSERT INTO Drug VALUES('I1','Carboxymethylcellulose Sodium','Refresh Tears','Solution','Apply 1 or 2 drops as needed.','Relieve dry Eye, eye irritation caused by wind, sun, heat/air conditioning, computer use/reading.','NULL','EyeCare');
INSERT INTO Drug VALUES('I2','Tetrahydrozoline','Murine Plus','Solution','Use in affected eye 3 to 4 times a day or as needed or directed by doctor.','Relieve Redness in the eyes caused by minor eye irritations such as smog, swimming, dust.','NULL','EyeCare');
INSERT INTO Drug VALUES('I3','Olopatadine','Pataday','Solution','Once or twice a day or directed by the product package or by doctor.','Treat itching and redness in the eyes due to allergies.','NULL','EyeCare');
INSERT INTO Drug VALUES('I4','Carboxymethylcellulose Sodium','Refresh Contacts Drops','Ointment, Drop, Gel','Use 1 to 2 times daily or as needed.','Rewetting Drops','ForWearingContactLenses','EyeCare');
INSERT INTO Drug VALUES('I5','Soft Lens Adjunctive Solutions','Renu Rewetting Drops Ophthalmic','Solution','Use as directed on product package.','Rewetting Drops','ForWearingContactLenses','EyeCare');


INSERT INTO Drug VALUES('L1','Butenafine','Lotrimin For Athlete''s Foot','Cream','Apply a thin layer 1 to 2 times daily or as directed on the paroduct package.','Treat a variety of fungal skin infections such as ring worm, athlete''s foot.','Topical','FootCare');
INSERT INTO Drug VALUES('L2','Tolnaftate','Tinactin','Cream','Apply to affected skin twice a day or as directed.','Treat a variety of fungal skin infections such as ringworm, athlete''s foot.','Topical','FootCare');
INSERT INTO Drug VALUES('L3','MISC Antifungal Combo Products, Undecylenic Acid','Fungix','Solution','Apply to affected skin twice a day or as directed.','Treat a variety of fungal skin infections such as ringworm, athlete''s foot.','Topical','FootCare');
INSERT INTO Drug VALUES('L4','N/A','Hylands Homeopathic Restful Legs','Quick- Dissolving Tablet','Dissolve 2-3 tablets under tongue every 4 hours, 6 times per day.','Calm agitated legs, leg jerks.','NULL','FootCare');
INSERT INTO Drug VALUES('L5','N/A','Hyland''s Leg Cramps PM','Tablet','Take as directed.','Relieve leg cramp.','NULL','FootCare');
INSERT INTO Drug VALUES('L6','N/A','Copper Compression Socks','Compression Stockings','As directed.','Helps blood vessels work better. For people who have leg circulation problems.','Topical','FootCare');
INSERT INTO Drug VALUES('L7','N/A','Dr. Scholl''s Heavy Duty Support Pain Relief Orthotics','Foot Support','As directed.','Leg support.','Topical','FootCare');


INSERT INTO Drug VALUES('D1','Omeprazole Magnesium','Prilosec OTC','Tablet','Once daily before meal or as directed by doctor.','Used to treat certain stomach and esophagus problems.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D2','Famotidine','Pepcid','Tablet','Once or twice a day with or without food or as directed by the doctor.','Used to treat ulcers of the stomach and intestines.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D3','Bismuth Subsalicylate','Pepto-Bismol','Chewable tables, Liquid','Take as needed or as directed by the product package.','Used to treat upset stomach, heartburn, and nausea.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D4','Bisacodyl','Dulcolax','Tablet','Take as directed on product package or by doctor.','Used to treat constipation. ','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D5','Polyethylene Glycol 3350','MiraLAX','Powder','once daily or as directed by doctor.','Treat occasional constipation.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D6','Docusate Sodium','Colace','Capsule','As directed by doctor or product package.','Treat occasional constipation.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D7','Loperamide','Imodium','Tablet','As directed by doctor or product package.','Treat sudden diarrhea including traveler''s diarrhea.','NULL','DigestiveHealth');
INSERT INTO Drug VALUES('D8','Lactobacillus Rhamnosus GG','Culturelle Kids','Powder','As directed by doctor or product package.','Improve digestion and restore normal flora.','ForKid','DigestiveHealth');
INSERT INTO Drug VALUES('D9','Simethicone','Infants'' Mylicon','Liquid','As directed by doctor or product package. Do not exceed 12 doses per day.','Relieve symptoms of extra gas caused by air swallowing or certain foods.','ForKid','DigestiveHealth');


INSERT INTO Drug VALUES('FA1','Neomycin-Bacitracin-Poly Xnb','Neosporin','Cream, Ointment, Lotion','As directed on product package or by doctor.','Prevent and treat minor skin infections caused by small cuts,scrapes, or burns.','Lotion','FirstAid');
INSERT INTO Drug VALUES('FA2','First Aid Kit','Rapid Care','Multiple tools.','Use on skin only as directed on product package or by doctor.','Perform first aid treatment.','Lotion','FirstAid');
INSERT INTO Drug VALUES('FA3','Diphenhydramine HCL','Benadryl','Capsule','As directed on product package or by doctor.','An antihistamine used to relieve symptoms of allergy, hay fever, and common cold. Also used to help relax and fall asleep.','NULL','FirstAid');
INSERT INTO Drug VALUES('FA4','Bandage','Telfa','Non-adherent Dressing','As directed on product package or by doctor.','Used to perform first aid treatment.','Lotion','FirstAid');
INSERT INTO Drug VALUES('FA5','Ice Bag','N/A','Ice Bag','As directed on product package or by doctor.','Used to perform first aid treatment.','Lotion','FirstAid');
INSERT INTO Drug VALUES('FA6','Aspirin','Bayer Aspirin','Tablet','As directed on product package or by doctor.','Reduce fever and relieve mild to moderate pain from conditions such as muscle aches, toothaches, common cold, and headaches. ','NULL','FirstAid');




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

CREATE TABLE Treatment (
	DID VARCHAR (5),
	SYMID CHAR (5),
	PRIMARY KEY (DID, SYMID),
	FOREIGN KEY (DID) REFERENCES Drug(DID),
	FOREIGN KEY (SYMID) REFERENCES Symptom(SYMID));


INSERT INTO Treatment VALUES('C1','SYM1');
INSERT INTO Treatment VALUES('C2','SYM3');
INSERT INTO Treatment VALUES('C3','SYM3');
INSERT INTO Treatment VALUES('C4','SYM2');
INSERT INTO Treatment VALUES('C5','SYM3');
INSERT INTO Treatment VALUES('C6','SYM2');
INSERT INTO Treatment VALUES('C7','SYM4');

INSERT INTO Treatment VALUES('A1','SYM5');
INSERT INTO Treatment VALUES('A2','SYM5');
INSERT INTO Treatment VALUES('A3','SYM5');
INSERT INTO Treatment VALUES('A4','SYM5');
INSERT INTO Treatment VALUES('A5','SYM5');
INSERT INTO Treatment VALUES('A6','SYM6');
INSERT INTO Treatment VALUES('A7','SYM6');
INSERT INTO Treatment VALUES('A8','SYM6');


INSERT INTO Treatment VALUES('E1','SYM7');
INSERT INTO Treatment VALUES('E2','SYM7');
INSERT INTO Treatment VALUES('E3','SYM8');


INSERT INTO Treatment VALUES('I1','SYM9');
INSERT INTO Treatment VALUES('I2','SYM10');
INSERT INTO Treatment VALUES('I3','SYM11');
INSERT INTO Treatment VALUES('I4','SYM12');
INSERT INTO Treatment VALUES('I5','SYM12');


INSERT INTO Treatment VALUES('L1','SYM13');
INSERT INTO Treatment VALUES('L2','SYM13');
INSERT INTO Treatment VALUES('L3','SYM13');
INSERT INTO Treatment VALUES('L4','SYM14');
INSERT INTO Treatment VALUES('L5','SYM15');
INSERT INTO Treatment VALUES('L6','SYM16');
INSERT INTO Treatment VALUES('L7','SYM16');


INSERT INTO Treatment VALUES('D1','SYM17');
INSERT INTO Treatment VALUES('D2','SYM18');
INSERT INTO Treatment VALUES('D3','SYM19');
INSERT INTO Treatment VALUES('D4','SYM21');
INSERT INTO Treatment VALUES('D5','SYM21');
INSERT INTO Treatment VALUES('D6','SYM21');
INSERT INTO Treatment VALUES('D7','SYM20');
INSERT INTO Treatment VALUES('D8','SYM20');
INSERT INTO Treatment VALUES('D9','SYM22');


INSERT INTO Treatment VALUES('FA1','SYM24');
INSERT INTO Treatment VALUES('FA2','SYM24');
INSERT INTO Treatment VALUES('FA3','SYM24');
INSERT INTO Treatment VALUES('FA4','SYM24');
INSERT INTO Treatment VALUES('FA5','SYM24');
INSERT INTO Treatment VALUES('FA6','SYM24');


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


CREATE TABLE SoldByStore (
	DID varchar(5) ,
	SID varchar(5) , 
	PRIMARY KEY (SID, DID),
	FOREIGN KEY (DID) REFERENCES Drug(DID) ,
	FOREIGN KEY (SID) REFERENCES Store(SID));


INSERT INTO SoldByStore VALUES('C1', 'S1');
INSERT INTO SoldByStore VALUES('C2', 'S5');
INSERT INTO SoldByStore VALUES('C3', 'S2');
INSERT INTO SoldByStore VALUES('C4', 'S3');
INSERT INTO SoldByStore VALUES('C5', 'S4');
INSERT INTO SoldByStore VALUES('C6', 'S3');
INSERT INTO SoldByStore VALUES('C7', 'S1');


INSERT INTO SoldByStore VALUES('A1', 'S4');
INSERT INTO SoldByStore VALUES('A2', 'S1');
INSERT INTO SoldByStore VALUES('A3', 'S2');
INSERT INTO SoldByStore VALUES('A4', 'S3');
INSERT INTO SoldByStore VALUES('A5', 'S5');
INSERT INTO SoldByStore VALUES('A6', 'S1');
INSERT INTO SoldByStore VALUES('A7', 'S4');
INSERT INTO SoldByStore VALUES('A8', 'S2');


INSERT INTO SoldByStore VALUES('E1', 'S5');
INSERT INTO SoldByStore VALUES('E2', 'S1');
INSERT INTO SoldByStore VALUES('E3', 'S3');


INSERT INTO SoldByStore VALUES('I1', 'S1');
INSERT INTO SoldByStore VALUES('I2', 'S4');
INSERT INTO SoldByStore VALUES('I3', 'S5');
INSERT INTO SoldByStore VALUES('I4', 'S3');
INSERT INTO SoldByStore VALUES('I5', 'S1');


INSERT INTO SoldByStore VALUES('L1', 'S2');
INSERT INTO SoldByStore VALUES('L2', 'S5');
INSERT INTO SoldByStore VALUES('L3', 'S3');
INSERT INTO SoldByStore VALUES('L4', 'S1');
INSERT INTO SoldByStore VALUES('L5', 'S2');
INSERT INTO SoldByStore VALUES('L6', 'S5');
INSERT INTO SoldByStore VALUES('L7', 'S1');


INSERT INTO SoldByStore VALUES('D1', 'S4');
INSERT INTO SoldByStore VALUES('D2', 'S1');
INSERT INTO SoldByStore VALUES('D3', 'S5');
INSERT INTO SoldByStore VALUES('D4', 'S3');
INSERT INTO SoldByStore VALUES('D5', 'S4');
INSERT INTO SoldByStore VALUES('D6', 'S2');
INSERT INTO SoldByStore VALUES('D7', 'S2');
INSERT INTO SoldByStore VALUES('D8', 'S1');
INSERT INTO SoldByStore VALUES('D9', 'S5');


INSERT INTO SoldByStore VALUES('FA1', 'S1');
INSERT INTO SoldByStore VALUES('FA2', 'S2');
INSERT INTO SoldByStore VALUES('FA3', 'S3');
INSERT INTO SoldByStore VALUES('FA4', 'S4');
INSERT INTO SoldByStore VALUES('FA5', 'S5');
INSERT INTO SoldByStore VALUES('FA6', 'S3');


---------------------------------------------------------------------------------------------------------------------



CREATE TABLE HasReview (
	DID varchar(5) ,
	RID varchar(5), 
	PRIMARY KEY (DID, RID),
	FOREIGN KEY (DID) REFERENCES Drug(DID) ,
	FOREIGN KEY (RID) REFERENCES Review(RID));

INSERT INTO HasReview VALUES('C1', 'R5');
INSERT INTO HasReview VALUES('C2', 'R3');
INSERT INTO HasReview VALUES('C3', 'R5');
INSERT INTO HasReview VALUES('C4', 'R2');
INSERT INTO HasReview VALUES('C5', 'R1');
INSERT INTO HasReview VALUES('C6', 'R4');
INSERT INTO HasReview VALUES('C7', 'R3');


INSERT INTO HasReview VALUES('A1', 'R2');
INSERT INTO HasReview VALUES('A2', 'R2');
INSERT INTO HasReview VALUES('A3', 'R3');
INSERT INTO HasReview VALUES('A4', 'R5');
INSERT INTO HasReview VALUES('A5', 'R1');
INSERT INTO HasReview VALUES('A6', 'R2');
INSERT INTO HasReview VALUES('A7', 'R1');
INSERT INTO HasReview VALUES('A8', 'R3');


INSERT INTO HasReview VALUES('E1', 'R4');
INSERT INTO HasReview VALUES('E2', 'R1');
INSERT INTO HasReview VALUES('E3', 'R5');


INSERT INTO HasReview VALUES('I1', 'R1');
INSERT INTO HasReview VALUES('I2', 'R3');
INSERT INTO HasReview VALUES('I3', 'R5');
INSERT INTO HasReview VALUES('I4', 'R2');
INSERT INTO HasReview VALUES('I5', 'R4');


INSERT INTO HasReview VALUES('L1', 'R3');
INSERT INTO HasReview VALUES('L2', 'R5');
INSERT INTO HasReview VALUES('L3', 'R3');
INSERT INTO HasReview VALUES('L4', 'R2');
INSERT INTO HasReview VALUES('L5', 'R1');
INSERT INTO HasReview VALUES('L6', 'R2');
INSERT INTO HasReview VALUES('L7', 'R3');


INSERT INTO HasReview VALUES('D1', 'R1');
INSERT INTO HasReview VALUES('D2', 'R5');
INSERT INTO HasReview VALUES('D3', 'R2');
INSERT INTO HasReview VALUES('D4', 'R1');
INSERT INTO HasReview VALUES('D5', 'R3');
INSERT INTO HasReview VALUES('D6', 'R4');
INSERT INTO HasReview VALUES('D7', 'R5');
INSERT INTO HasReview VALUES('D8', 'R2');
INSERT INTO HasReview VALUES('D9', 'R1');


INSERT INTO HasReview VALUES('FA1', 'R3');
INSERT INTO HasReview VALUES('FA2', 'R4');
INSERT INTO HasReview VALUES('FA3', 'R5');
INSERT INTO HasReview VALUES('FA4', 'R2');
INSERT INTO HasReview VALUES('FA5', 'R3');
INSERT INTO HasReview VALUES('FA6', 'R1');

---------------------------------------------------------------------------------------------------------------------








