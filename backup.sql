BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "hours" (
	"hours_id"	TEXT NOT NULL UNIQUE,
	"loc_name"	TEXT NOT NULL UNIQUE,
	"sunday_hours"	TEXT,
	"monday_hours"	TEXT,
	"tuesday_hours"	TEXT,
	"wednesday_hours"	TEXT,
	"thursday_hours"	TEXT,
	"friday_hours"	TEXT,
	"saturday_hours"	TEXT,
	PRIMARY KEY("hours_id"),
	FOREIGN KEY("loc_name") REFERENCES "providers"("loc_name") ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "locations" (
	"loc_store_no"	TEXT NOT NULL,
	"loc_name"	TEXT NOT NULL UNIQUE,
	"loc_admin_street1"	TEXT NOT NULL,
	"loc_admin_street2"	TEXT,
	"loc_admin_city"	TEXT NOT NULL,
	"loc_admin_state"	TEXT NOT NULL,
	"loc_admin_zip"	TEXT NOT NULL,
	"loc_phone"	TEXT,
	"latitude"	TEXT NOT NULL,
	"longitude"	TEXT NOT NULL,
	PRIMARY KEY("loc_store_no"),
	FOREIGN KEY("loc_name") REFERENCES "providers"("loc_name") ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "providers" (
	"provider_location_guid"	TEXT NOT NULL UNIQUE,
	"loc_name"	TEXT NOT NULL UNIQUE,
	"searchable_name"	TEXT NOT NULL,
	"in_stock"	TEXT NOT NULL,
	"supply_level"	INTEGER NOT NULL,
	"quantity_last_updated"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	PRIMARY KEY("provider_location_guid")
);
CREATE TABLE IF NOT EXISTS "special_notes" (
	"note_id"	TEXT NOT NULL UNIQUE,
	"loc_name"	TEXT NOT NULL UNIQUE,
	"web_address"	TEXT,
	"pre_screen"	TEXT,
	"insurance_accepted"	TEXT NOT NULL,
	"walkins_accepted"	TEXT NOT NULL,
	"provider_notes"	TEXT,
	PRIMARY KEY("note_id"),
	FOREIGN KEY("loc_name") REFERENCES "providers"("loc_name") ON UPDATE CASCADE
);
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_1','KATY MEMORIAL PHARMACY #MS1001872','Closed','8:30 AM - 5:30 PM','8:30 AM - 5:30 PM','8:30 AM - 5:30 PM','8:30 AM - 5:30 PM','8:30 AM - 5:30 PM','Closed');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_2','HUMANA PHARMACY - S. RAINBOW','Closed','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','9:00 AM - 4:00 PM','Closed');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_3','Walgreens Co. #13871','09:00AM - 05:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','09:00AM - 06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_4','CVS Pharmacy, Inc. #02715','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_5','Walgreens Co. #10175','10:00AM - 06:00PM','09:00AM - 08:00PM','09:00AM - 08:00PM','09:00AM - 08:00PM','09:00AM - 08:00PM','09:00AM - 08:00PM','09:00AM - 06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_6','Walgreens Co. #15948','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM','08:00AM - 09:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_7','CVS Pharmacy, Inc. #18027','10:00AM-04:00PM','09:00AM-09:00PM','09:00AM-09:00PM','09:00AM-09:00PM','09:00AM-09:00PM','09:00AM-09:00PM','09:00AM-06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_8','CVS Pharmacy, Inc. #16911','11:00AM-05:00PM','10:00AM-07:00PM','10:00AM-07:00PM','10:00AM-07:00PM','10:00AM-07:00PM','10:00AM-07:00PM','11:00AM-05:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_9','Walgreens Co. #13844','08:00AM - 10:00PM','08:00AM - 10:00PM','08:00AM - 10:00PM','08:00AM - 10:00PM','08:00AM - 10:00PM','08:00AM - 10:00PM','08:00AM - 10:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_10','Walgreens Co. #3125','09:00AM - 05:00PM','09:00AM - 09:00PM','09:00AM - 09:00PM','09:00AM - 09:00PM','09:00AM - 09:00PM','09:00AM - 09:00PM','09:00AM - 06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_11','Publix Super Markets Inc. #672','11:00AM - 6:00PM','9:00AM - 9:00PM','9:00AM - 9:00PM','9:00AM - 9:00PM','9:00AM - 9:00PM','9:00AM - 9:00PM','9:00AM - 7:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_12','Walgreens Co. #9295','10:00AM - 06:00PM','08:00AM - 08:00PM','08:00AM - 08:00PM','08:00AM - 08:00PM','08:00AM - 08:00PM','08:00AM - 08:00PM','09:00AM - 06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_13','CVS Pharmacy, Inc. #18096','10:30AM-04:00PM','08:00AM-08:00PM','08:00AM-08:00PM','08:00AM-08:00PM','08:00AM-08:00PM','08:00AM-08:00PM','09:00AM-06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_14','CVS Pharmacy, Inc. #06710','10:00AM-06:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','08:00AM-10:00PM','09:00AM-06:00PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_15','Kroger Pharmacy #03400137','10:00 AM - 5:00 PM','9:00 AM - 8:00 PM','9:00 AM - 8:00 PM','9:00 AM - 8:00 PM','9:00 AM - 8:00 PM','9:00 AM - 8:00 PM','9:00 AM - 6:00 PM');
INSERT INTO "hours" ("hours_id","loc_name","sunday_hours","monday_hours","tuesday_hours","wednesday_hours","thursday_hours","friday_hours","saturday_hours") VALUES ('hours_16','H-E-B #412','10:00 AM - 05:00 PM','08:00 AM - 08:00 PM','08:00 AM - 08:00 PM','08:00 AM - 08:00 PM','08:00 AM - 08:00 PM','08:00 AM - 08:00 PM','09:00 AM - 06:00 PM');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('MS1001872','KATY MEMORIAL PHARMACY #MS1001872','23920 KATY FREEWAY SUITE 112','Medical Plaza Bldg 1','Katy','TX','77494','(832) 437-7864','29.787137','-95.788318');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('1','HUMANA PHARMACY - S. RAINBOW','1000 S. Rainbow Blvd',NULL,'Las Vegas','NV','89145','(702) 854-7812','36.160644','-115.242778');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('13871','Walgreens Co. #13871','1016 W SHAW AVE',NULL,'FRESNO','CA','93711-3701','559-229-2361','36.809079','-119.809276');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('2715','CVS Pharmacy, Inc. #02715','17 WILLIAM H. TAFT RD.',NULL,'CINCINNATI','OH','45219','(513) 569-4301','39.12761','-84.510872');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('10175','Walgreens Co. #10175','12011 E ILIFF AVE',NULL,'AURORA','CO','80014-1135','303-695-3049','39.675265','-104.848289');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('15948','Walgreens Co. #15948','525 E 68TH ST','SUITE F01-170','NEW YORK','NY','10065-4870','212-249-6451','40.764413','-73.954438');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('18027','CVS Pharmacy, Inc. #18027','9074 OVERLAND PLAZA',NULL,'OVERLAND','MO','63114','(314) 426-4211','38.685476','-90.359045');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('16911','CVS Pharmacy, Inc. #16911','10209 E US HIGHWAY 36',NULL,'AVON','IN','46123','(317) 271-6598','39.760266','-86.342429');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('13844','Walgreens Co. #13844','17000 CARR 3',NULL,'CANOVANAS','PR','00729-2881','787-957-8050','18.376842','-65.896222');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('3125','Walgreens Co. #3125','8615 N PORT WASHINGTON RD',NULL,'FOX POINT','WI','53217-2202','414-352-0526','43.173528','-87.913044');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('672','Publix Super Markets Inc. #672','1860 Sandy Plains Road',NULL,'Marietta','GA','30066','(770) 578-6627','33.993743','-84.509438');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('9295','Walgreens Co. #9295','1855 DECHERD BLVD',NULL,'DECHERD','TN','37324-3656','931-967-4938','35.205358','-86.094911');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('18096','CVS Pharmacy, Inc. #18096','2206 BARNES BLVD.',NULL,'ROCKFORD','IL','61112','(815) 332-7078','42.242466','-88.976893');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('6710','CVS Pharmacy, Inc. #06710','25622 CROWN VALLEY PKWY.',NULL,'LADERA RANCH','CA','92694','(949) 347-6751','33.563748','-117.630145');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('3400137','Kroger Pharmacy #03400137','3731 RILEY FUZZEL RD',NULL,'SPRING','TX','77386','(281) 602-0283','30.118376','-95.382013');
INSERT INTO "locations" ("loc_store_no","loc_name","loc_admin_street1","loc_admin_street2","loc_admin_city","loc_admin_state","loc_admin_zip","loc_phone","latitude","longitude") VALUES ('412','H-E-B #412','100 EAST HOUSTON ST.',NULL,'BEEVILLE','TX','78102-5613','3613583737','28.400334','-97.74602');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('e220a5f2-f14d-4cfc-8948-3fcffd01d281','KATY MEMORIAL PHARMACY #MS1001872','Flu Shot','false',0,'2022-08-18','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('d33e978d-acf1-4364-8bd3-4a44350bf56d','HUMANA PHARMACY - S. RAINBOW','Flu Shot (Egg free)','false',0,'2022-08-19','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('d998c30e-7906-4d2c-9dc0-b92ac2cebde2','Walgreens Co. #13871','Flu Shot (Egg free)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('f7694f5c-5113-4d35-bd63-57f54087cc50','CVS Pharmacy, Inc. #02715','Flu Shot (65+, high-dose or adjuvanted)','false',0,'2022-08-26','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('0a235866-d818-48b1-a3e1-c2ac46147983','Walgreens Co. #10175','Flu Shot (Egg free)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('11e6fbb5-ea09-42fa-b768-50255b6c9069','Walgreens Co. #15948','Flu Shot (Egg free)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('f49d2fc6-c613-4105-888b-e8a6c361c569','CVS Pharmacy, Inc. #18027','Flu Shot','false',0,'2022-08-20','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('272477b0-236a-4c32-a592-df9438de140a','CVS Pharmacy, Inc. #16911','Flu Shot','false',0,'2022-08-20','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('36b5f684-97ce-48eb-9e3b-ac8a6c785916','Walgreens Co. #13844','Flu Shot (Egg free)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('68c93e94-a046-47c7-9b10-d40fb67a24eb','Walgreens Co. #3125','Flu Shot (65+, high-dose or adjuvanted)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('a82d525e-27a9-4a7c-86fc-8ec0dd8b24e2','Publix Super Markets Inc. #672','Flu Shot (65+, high-dose or adjuvanted)','true',4,'2022-08-26','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('b21d86e8-cb65-469a-8378-03599ee1666a','Walgreens Co. #9295','Flu Shot (65+, high-dose or adjuvanted)','false',0,'2022-08-22','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('3cf1cf66-9a9a-4fce-b3f0-7587c21f5780','CVS Pharmacy, Inc. #18096','Flu Shot','false',0,'2022-08-20','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('680ee331-35ee-4613-97a0-c17b1cd31feb','CVS Pharmacy, Inc. #06710','Flu Shot','false',0,'2022-08-20','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('0787754d-157a-4854-81f0-f3662d43c805','Kroger Pharmacy #03400137','Flu Shot','true',0,'2022-08-27','seasonal');
INSERT INTO "providers" ("provider_location_guid","loc_name","searchable_name","in_stock","supply_level","quantity_last_updated","category") VALUES ('5e1eb3de-329a-493c-a53d-e264a97e3595','H-E-B #412','Flu Shot (65+, high-dose or adjuvanted)','false',0,'2022-08-27','seasonal');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_1','KATY MEMORIAL PHARMACY #MS1001872',NULL,NULL,'true','false','Pharmacy is located on the first (1) floor of the Medical Plaza Building -1 next to Memorial Hermann -Katy Hospital. The address above on the left of the screen is INCORRECT.  This is correct address : 23920 Katy FWY. Ste#112, Katy, TX 77494');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_2','HUMANA PHARMACY - S. RAINBOW',NULL,NULL,'true','false','Please call the pharmacy to schedule your vaccination.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_3','Walgreens Co. #13871','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_4','CVS Pharmacy, Inc. #02715','https://www.cvs.com/store-locator/details-directions/002715','https://www.cvs.com/immunizations/get-vaccinated','true','true','It is highly recommended to make an appointment for pediatric (5-11 years old) COVID-19 vaccinations.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_5','Walgreens Co. #10175','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_6','Walgreens Co. #15948','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_7','CVS Pharmacy, Inc. #18027','https://www.cvs.com/store-locator/details-directions/018027','https://www.cvs.com/immunizations/get-vaccinated','true','true','It is highly recommended to make an appointment for pediatric (5-11 years old) COVID-19 vaccinations.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_8','CVS Pharmacy, Inc. #16911','https://www.cvs.com/store-locator/details-directions/016911','https://www.cvs.com/immunizations/get-vaccinated','true','true','It is highly recommended to make an appointment for pediatric (5-11 years old) COVID-19 vaccinations.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_9','Walgreens Co. #13844','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_10','Walgreens Co. #3125','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_11','Publix Super Markets Inc. #672','https://www.publix.com/pharmacy/pharmacy-services/vaccinations','https://www.publix.com/vaccines','true','true',NULL);
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_12','Walgreens Co. #9295','https://www.walgreens.com','https://www.walgreens.com/findcare/vaccination/covid-19','true','true','Appointments are not required to receive a Flu vaccine.  walk-ins are accepted at this time.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_13','CVS Pharmacy, Inc. #18096','https://www.cvs.com/store-locator/details-directions/018096','https://www.cvs.com/immunizations/get-vaccinated','true','true','It is highly recommended to make an appointment for pediatric (5-11 years old) COVID-19 vaccinations.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_14','CVS Pharmacy, Inc. #06710','https://www.cvs.com/store-locator/details-directions/006710','https://www.cvs.com/immunizations/get-vaccinated','true','true','It is highly recommended to make an appointment for pediatric (5-11 years old) COVID-19 vaccinations.');
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_15','Kroger Pharmacy #03400137','http://www.krogerhealth.com','https://www.kroger.com/i/coronavirus-update/vaccine','true','false',NULL);
INSERT INTO "special_notes" ("note_id","loc_name","web_address","pre_screen","insurance_accepted","walkins_accepted","provider_notes") VALUES ('note_16','H-E-B #412','https://vaccine.heb.com/','https://vaccine.heb.com/','false','true',NULL);
COMMIT;
