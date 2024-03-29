--COUNTRY STATE CITY DATA SQL (Don't edit this file)

-- Insert Into COUNTRY_ENTITY, STATE_ENTITY AND CITY_ENTITY

---- INSERT FOR INDIA
INSERT INTO
COUNTRY_ENTITY
( COUNTRY_ID, COUNTRY_KEY, COUNTRY_SHORT_DESCRIPTION, COUNTRY_DESCRIPTION, COUNTRY_IS_AVAILABLE,
COUNTRY_PRIORITY, COUNTRY_PHONE_CODE,
COUNTRY_CREATED_BY, COUNTRY_UPDATED_BY, COUNTRY_CREATED_DATE_TIME, COUNTRY_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('COUNTRY_ENTITY_SEQ'), 'IN', 'India', 'India', true, 1, 91,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO
STATE_ENTITY
( STATE_ID, STATE_KEY, STATE_SHORT_DESCRIPTION, STATE_DESCRIPTION, STATE_IS_AVAILABLE,
STATE_PRIORITY, STATE_COUNTRY_ID,
STATE_CREATED_BY, STATE_UPDATED_BY, STATE_CREATED_DATE_TIME, STATE_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('STATE_ENTITY_SEQ'), 'IN_DELHI', 'Delhi', 'Delhi', true, 1,
(select COUNTRY_ID from COUNTRY_ENTITY WHERE COUNTRY_KEY = 'IN') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO
CITY_ENTITY
( CITY_ID, CITY_KEY, CITY_SHORT_DESCRIPTION, CITY_DESCRIPTION, CITY_IS_AVAILABLE,
CITY_PRIORITY, CITY_STATE_ID,
CITY_CREATED_BY, CITY_UPDATED_BY, CITY_CREATED_DATE_TIME, CITY_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('CITY_ENTITY_SEQ'), 'IN_DELHI_NEW_DELHI', 'New Delhi', 'New Delhi', true, 1,
(select STATE_ID from STATE_ENTITY WHERE STATE_KEY = 'IN_DELHI') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
( NEXTVAL('CITY_ENTITY_SEQ'), 'IN_DELHI_DELHI', 'Delhi', 'Delhi', true, 2,
(select STATE_ID from STATE_ENTITY WHERE STATE_KEY = 'IN_DELHI') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

---- INSERT FOR USA
INSERT INTO
COUNTRY_ENTITY
( COUNTRY_ID, COUNTRY_KEY, COUNTRY_SHORT_DESCRIPTION, COUNTRY_DESCRIPTION, COUNTRY_IS_AVAILABLE,
COUNTRY_PRIORITY, COUNTRY_PHONE_CODE,
COUNTRY_CREATED_BY, COUNTRY_UPDATED_BY, COUNTRY_CREATED_DATE_TIME, COUNTRY_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('COUNTRY_ENTITY_SEQ'), 'US', 'United States', 'United States', true, 2, 1,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO
STATE_ENTITY
( STATE_ID, STATE_KEY, STATE_SHORT_DESCRIPTION, STATE_DESCRIPTION, STATE_IS_AVAILABLE,
STATE_PRIORITY, STATE_COUNTRY_ID,
STATE_CREATED_BY, STATE_UPDATED_BY, STATE_CREATED_DATE_TIME, STATE_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('STATE_ENTITY_SEQ'), 'IN_CALIFORNIA', 'California', 'California', true, 1,
(select COUNTRY_ID from COUNTRY_ENTITY WHERE COUNTRY_KEY = 'US') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO
CITY_ENTITY
( CITY_ID, CITY_KEY, CITY_SHORT_DESCRIPTION, CITY_DESCRIPTION, CITY_IS_AVAILABLE,
CITY_PRIORITY, CITY_STATE_ID,
CITY_CREATED_BY, CITY_UPDATED_BY, CITY_CREATED_DATE_TIME, CITY_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('CITY_ENTITY_SEQ'), 'IN_CALIFORNIA_ACTON', 'Acton', 'Acton', true, 1,
(select STATE_ID from STATE_ENTITY WHERE STATE_KEY = 'IN_CALIFORNIA') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
( NEXTVAL('CITY_ENTITY_SEQ'), 'IN_CALIFORNIA_ADELANTO', 'Adelanto', 'Adelanto', true, 2,
(select STATE_ID from STATE_ENTITY WHERE STATE_KEY = 'IN_CALIFORNIA') ,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
