--CREATE DATABASE RaceDayDB;

--    CREATE TABLE Organisers (
--    OrganiserID INT NOT NULL PRIMARY KEY,
--    ORname VARCHAR(60) NOT NULL,
--    ORsurname VARCHAR(60) NOT NULL,
--    ORusername VARCHAR(60) NOT NULL,
--    ORpassword VARCHAR(60) NOT NULL
--);


--    CREATE TABLE Participants (
--    ParticipantID INT NOT NULL PRIMARY KEY,
--    Pname VARCHAR(60) NOT NULL,
--    Psurname VARCHAR(60) NOT NULL,
--    Pusername VARCHAR(60) NOT NULL,
--    Ppassword VARCHAR(60) NOT NULL
--);


--    CREATE TABLE Categories (
--    CategoriesID INT NOT NULL PRIMARY KEY,
--    age INT NOT NULL,
--    CategoryType VARCHAR(60) NOT NULL,
--    MinKM INT NOT NULL,
--    MaxKM INT NOT NULL
--);


--    CREATE TABLE Locations (
--    LocationID INT NOT NULL PRIMARY KEY,
--    Province VARCHAR(60) NOT NULL,
--    Town VARCHAR(60) NOT NULL,
--    PhysicalAddress VARCHAR(255) NOT NULL
--);


--    CREATE TABLE Events (
--    EventID INT NOT NULL PRIMARY KEY,
--    EventName VARCHAR(60) NOT NULL,
--    Description VARCHAR(60) NOT NULL,
--    Date DATE NOT NULL,
--    Distance VARCHAR(60) NOT NULL,
--    EventType VARCHAR(60) NOT NULL,
--    OrganiserID INT NOT NULL,
--    CategoriesID INT NOT NULL,
--    LocationID INT NOT NULL,
--    CONSTRAINT FK_Events_Organisers FOREIGN KEY (OrganiserID) REFERENCES Organisers(OrganiserID),
--    CONSTRAINT FK_Events_Categories FOREIGN KEY (CategoriesID) REFERENCES Categories(CategoriesID),
--    CONSTRAINT FK_Events_Locations FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
--);


--CREATE TABLE Event_Enrolment (
--    EventEnrolmentID INT NOT NULL PRIMARY KEY,
--    EventID INT NOT NULL,
--    ParticipantID INT NOT NULL,
--    EnrollmentStatus VARCHAR(60) NOT NULL,
--    CONSTRAINT FK_EventEnrolment_Events FOREIGN KEY (EventID) REFERENCES Events(EventID),
--    CONSTRAINT FK_EventEnrolment_Participants FOREIGN KEY (ParticipantID) REFERENCES Participants(ParticipantID)
--);


--CREATE TABLE Results (
--    ResultsID INT NOT NULL PRIMARY KEY,
--    FinishTime TIME(7) NOT NULL,
--    FinishingPosition VARCHAR(60) NOT NULL,
--    OrganiserID INT NOT NULL,
--    ParticipantID INT NOT NULL,
--    CONSTRAINT FK_Results_Organisers FOREIGN KEY (OrganiserID) REFERENCES Organisers(OrganiserID),
--    CONSTRAINT FK_Results_Participants FOREIGN KEY (ParticipantID) REFERENCES Participants(ParticipantID)
--);


--CREATE TABLE History (
--    HistoryID INT NOT NULL PRIMARY KEY,
--    ResultsID INT NOT NULL,
--    CONSTRAINT FK_History_Results FOREIGN KEY (ResultsID) REFERENCES Results(ResultsID)
);

--INSERT INTO Organisers(OrganiserID,ORname,ORsurname,ORusername,ORpassword)
--VALUES(1,'Sandile','Nhlapo','sandile081','Sandilenhlapo11'),
--      (2,'Blessing','Mashinini','blessingB071','Bless44'),
--      (3,'Mandlakhe','Sgenge','mandla67','Mwilliam'),
--      (4,'happyness','Masuku','happynessM','IamHappy'),
--      (5,'Katleho','Ndlovu','kat112','KGNdlovu');

--INSERT INTO Participants(ParticipantID, Pname, Psurname, Pusername, Ppassword)
--VALUES (1, 'Thabo', 'Mokoena', 'thaboM12', 'Thabo@2024'),
--       (2, 'Lerato', 'Mthembu', 'leratoL', 'Lerato#99'),
--       (3, 'Sipho', 'Zulu', 'siphoZ', 'SiphoZulu01'),
--       (4, 'Nomsa', 'Dlamini', 'nomsaD', 'Nomsa@Dla'),
--       (5, 'Kagiso', 'Petersen', 'kagisoP', 'Kagi$o2024');
 
 

    --INSERT INTO Categories(CategoriesID, age, CategoryType, MinKM, MaxKM)
    --VALUES (1, 18, 'Junior','5KM', '10KM'),
    --       (2, 25, 'Open','10KM','15KM'),
    --       (3, 35, 'Senior','15KM','30KM'),
    --       (4, 40, 'Masters','20KM','40KM'),
    --       (5, 50, 'Veteran','10KM','20KM');


    --INSERT INTO Locations(LocationID, Province, Town, PhysicalAddress)
    --VALUES (1, 'KwaZulu-Natal', 'Pietermaritzburg', '221 Alan Paton Avenue, Pietermaritzburg'),
    --       (2, 'KwaZulu-Natal', 'Durban', '45 Masabalala Yengwa Avenue, Durban'),
    --       (3, 'Western Cape', 'Cape Town', '12 Beach Road, Mouille Point, Cape Town'),
    --       (4, 'Western Cape', 'Cape Town', '88 Main Road, Newlands, Cape Town'),
    --       (5, 'Gauteng', 'Soweto', '1 Vilakazi Street, Soweto, Johannesburg'),
    --       (6, 'Gauteng', 'Johannesburg', '44 Central Avenue, Sandton, Johannesburg'),
    --       (7, 'Western Cape', 'Stellenbosch', '15 Dorp Street, Stellenbosch'),
    --       (8, 'Eastern Cape', 'Port Elizabeth', '23 Marine Drive, Summerstrand, Port Elizabeth'),
    --       (9, 'Gauteng', 'Pretoria', '78 Church Street, Pretoria Central'),
    --       (10, 'Western Cape', 'Paarl', '5 Main Road, Paarl');

    --INSERT INTO Events(EventID, EventName, Description, Date, Distance, EventType, OrganiserID, CategoriesID, LocationID)
    --VALUES (1, 'Comrades Marathon', 'Ultramarathon between Pietermaritzburg and Durban', '2026-06-15', '90km', 'Running', 1, 2, 1),
    --       (2, 'Cape Town Cycle Tour', 'Worlds largest timed cycle race', '2026-03-08', '109km', 'Cycling', 2, 2, 3),
    --       (3, 'Soweto Marathon', 'Iconic marathon through Soweto streets', '2026-11-07', '42.2km', 'Running', 3, 2, 5),
    --       (4, 'Two Oceans Marathon', 'Ultramarathon in Cape Town', '2026-04-04', '56km', 'Running', 4, 2, 4),
    --       (5, 'Park Run - Johannesburg', 'Weekly community 5km run', '2026-09-05', '5km', 'Running', 5, 1, 6),
    --       (6, 'Cape Town Park Run', 'Weekly community 5km run', '2026-09-06', '5km', 'Running', 5, 1, 3),
    --       (7, 'Durban Cycle Tour', 'Coastal cycling event in Durban', '2026-07-18', '60km', 'Cycling', 2, 2, 2),
    --       (8, 'Charity Walk - Sandton', 'Community fundraising walk', '2026-10-10', '10km', 'Walking', 1, 1, 6),
    --       (9, 'Stellenbosch Trail Run', 'Scenic trail running event', '2026-08-22', '15km', 'Running', 4, 3, 7),
    --       (10, 'Pretoria Marathon', 'Capital city marathon', '2026-05-09', '42.2km', 'Running', 3, 2, 9);


    --INSERT INTO Event_Enrolment(EventEnrolmentID, EventID, ParticipantID, EnrollmentStatus)
    --VALUES (1, 1, 1, 'Confirmed'),
    --       (2, 1, 2, 'Confirmed'),
    --       (3, 2, 3, 'Pending'),
    --       (4, 2, 4, 'Confirmed'),
    --       (5, 3, 5, 'Confirmed'),
    --       (6, 4, 1, 'Cancelled'),
    --       (7, 5, 2, 'Confirmed'),
    --       (8, 5, 3, 'Confirmed'),
    --       (9, 6, 4, 'Pending'),
    --       (10, 7, 5, 'Confirmed');


       --INSERT INTO Results(ResultsID, FinishTime, FinishingPosition, OrganiserID, ParticipantID)
       --VALUES (1, '02:15:30', '1st', 1, 1),
       --       (2, '02:18:45', '2nd', 1, 2),
       --       (3, '02:20:10', '3rd', 1, 3),
       --       (4, '03:45:20', '15th', 2, 4),
       --       (5, '03:50:15', '20th', 2, 5),
       --       (6, '01:30:00', '5th', 3, 1),
       --       (7, '04:10:05', '45th', 4, 2),
       --       (8, '04:15:30', '50th', 4, 3),
       --       (9, '00:25:45', '10th', 5, 4),
       --       (10, '00:26:30', '12th', 5, 5);


       --INSERT INTO History(HistoryID, ResultsID)
       --VALUES (1, 1),
       --       (2, 2),
       --       (3, 4),
       --       (4, 5),
       --       (5, 7),
       --       (6, 8),
       --       (7, 10),
       --       (8, 2),
       --       (9, 5),
       --       (10, 8),
       --       (11, 1),
       --       (12, 3),
       --       (13, 5),
       --       (14, 7),
       --       (15, 9),
       --       (16, 1),
       --       (17, 3),
       --       (18, 5),
       --       (19, 7),
       --       (20, 9);
