--USER ENTITY SQL (Don't edit this file)

-- Insert Into USER_ENTITY (password  - @ABC123abc@)
INSERT INTO
USER_ENTITY
( USER_ID, USER_NAME, USER_EMAIL, USER_PASSWORD, USER_TITLE,
USER_FIRST_NAME, USER_LAST_NAME, USER_GENDER, USER_MOBILE, USER_DOB, USER_IS_DELETED,
USER_CREATED_BY, USER_UPDATED_BY, USER_CREATED_DATE_TIME, USER_MODIFIED_DATE_TIME )
VALUES
( NEXTVAL('USER_ENTITY_SEQ'), 'himanshusingh2041', 'himanshusingh2041@gmail.com',
'$2a$10$0ceI1jcFW2ArMmMwNCjU6u.81CDEhOICTWmH8fisJcpfO.gwLibRO', (SELECT CODE_ID FROM CODE_ENTITY WHERE CODE_KEY = 'MR'),
'Himanshu', 'Kumar', (SELECT CODE_ID FROM CODE_ENTITY WHERE CODE_KEY = 'MALE'), '9810249301', '1994-11-04 12:21:32.065', false,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );

INSERT INTO
ADDRESS_ENTITY
(ADDRESS_ID, ADDRESS_USER_ID, ADDRESS_ADDRESS1, ADDRESS_ADDRESS2, ADDRESS_ADDRESS3, ADDRESS_CITY,
ADDRESS_STATE, ADDRESS_COUNTRY,
ADDRESS_CREATE_BY, ADDRESS_UPDATED_BY, ADDRESS_CREATED_DATE_TIME, ADDRESS_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('ADDRESS_ENTITY_SEQ'), (select USER_ID from USER_ENTITY WHERE USER_NAME = 'himanshusingh2041') ,'Delhi', 'Delhi', 'Delhi',
(select CITY_ID from CITY_ENTITY WHERE CITY_KEY = 'IN_DELHI_NEW_DELHI'),
(select STATE_ID from STATE_ENTITY WHERE STATE_KEY = 'IN_DELHI'),
(select COUNTRY_ID from COUNTRY_ENTITY WHERE COUNTRY_KEY = 'IN'),
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO
CARD_ENTITY
(CARD_ID, CARD_USER_ID, CARD_NUMBER, CARD_FIRST_NAME, CARD_LAST_NAME, CARD_EXPIRE_MONTH,
CARD_EXPIRE_YEAR, CARD_CVV,CARD_IS_ACTIVE,
CARD_CREATED_BY, CARD_UPDATED_BY, CARD_CREATED_DATE_TIME, CARD_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('CARD_ENTITY_SEQ'), (select USER_ID from USER_ENTITY WHERE USER_NAME = 'himanshusingh2041') ,1234567899876543,
'Himanshu', 'Kumar',
01, 2025, 123, true,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Into USER_ROLE_ENTITY
INSERT INTO
USER_ROLE_ENTITY
( USER_ROLE_ID, USER_ROLE_NAME, USER_ROLE_DESCRIPTION,
USER_ROLE_CREATED_BY, USER_ROLE_UPDATED_BY, USER_ROLE_CREATED_DATE_TIME, USER_ROLE_MODIFIED_DATE_TIME )
VALUES
( NEXTVAL('USER_ROLE_ENTITY_SEQ'), 'USER', 'USER',
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP ),
( NEXTVAL('USER_ROLE_ENTITY_SEQ'), 'ADMIN', 'ADMIN',
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP );


-- Insert Into USER_ENTITY_USER_ROLE_ENTITY
INSERT INTO
USER_ENTITY_USER_ROLE_ENTITY
( USER_ID, USER_ROLE_ID)
VALUES
((SELECT USER_ID FROM USER_ENTITY ORDER BY USER_ID DESC LIMIT 1),
(SELECT USER_ROLE_ID FROM USER_ROLE_ENTITY ORDER BY USER_ROLE_ID DESC LIMIT 1)),
((SELECT USER_ID FROM USER_ENTITY ORDER BY USER_ID DESC LIMIT 1),
(SELECT USER_ROLE_ID FROM USER_ROLE_ENTITY ORDER BY USER_ROLE_ID ASC LIMIT 1));
