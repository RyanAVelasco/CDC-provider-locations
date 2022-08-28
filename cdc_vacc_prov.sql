CREATE DATABASE cdc_vaccine_providers;

DROP TABLE cdc_vaccine_providers.providers;
DROP TABLE cdc_vaccine_providers.location;
DROP TABLE cdc_vaccine_providers.hours;
DROP TABLE cdc_vaccine_providers.special_notes;

CREATE TABLE cdc_vaccine_providers.providers(
    provider_location_guid VARCHAR(255) PRIMARY KEY NOT NULL,
    loc_name VARCHAR(255) NOT NULL,
    searchable_name VARCHAR(255) NOT NULL,
    in_stock BOOLEAN NOT NULL,
    supply_level INT NOT NULL,
    quantity_last_updated DATE NOT NULL,
    category VARCHAR(26) NOT NULL
);

CREATE TABLE cdc_vaccine_providers.location(
    loc_store_no VARCHAR(100) PRIMARY KEY NOT NULL,
    loc_name VARCHAR(255) NOT NULL,
    loc_admin_street1 VARCHAR(255) NOT NULL,
    loc_admin_street2 VARCHAR(100),
    loc_admin_city VARCHAR(56) NOT NULL, 
    loc_admin_state VARCHAR(2) NOT NULL,
    loc_admin_zip VARCHAR(11) NOT NULL,
    loc_phone VARCHAR(14),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6)
);

CREATE TABLE cdc_vaccine_providers.hours(
    hours_id VARCHAR(11) PRIMARY KEY NOT NULL,
    loc_name VARCHAR(255) NOT NULL,
    sunday_hours VARCHAR(15) NOT NULL,
    monday_hours VARCHAR(15) NOT NULL,
    tuesday_hours VARCHAR(15) NOT NULL,
    wednesday_hours VARCHAR(15) NOT NULL,
    thursday_hours VARCHAR(15) NOT NULL,
    friday_hours VARCHAR(15) NOT NULL,
    saturday_hours VARCHAR(15) NOT NULL
);

CREATE TABLE cdc_vaccine_providers.special_notes(
    note_id VARCHAR(11) PRIMARY KEY NOT NULL,
    loc_name VARCHAR(255) NOT NULL,
    web_address VARCHAR(100),
    pre_screen VARCHAR(100),
    insurance_accepted BOOLEAN NOT NULL,
    walkins_accepted BOOLEAN NOT NULL,
    provider_notes VARCHAR(32500)
);
