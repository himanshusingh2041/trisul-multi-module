--TILE ENTITY SQL (Don't edit this file)
-- Insert Into TILE_ENTITY

INSERT INTO TILE_ENTITY
( TILE_ID, TILE_KEY, TILE_SHORT_DESCRIPTION, TILE_DESCRIPTION, TILE_TYPE, TILE_COMPONENT,
TILE_ICON, TILE_IS_ACCESSED, TILE_IS_DELETE, TILE_PRIORITY,
TILE_CREATED_BY, TILE_UPDATED_BY, TILE_CREATED_DATE_TIME, TILE_MODIFIED_DATE_TIME)
VALUES
( NEXTVAL('TILE_ENTITY_SEQ'), 'USER_INFO', 'User Info', 'User Info', 'TILE', '<user-info><user-info>',
'home', true, false, 1,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) ,
( NEXTVAL('TILE_ENTITY_SEQ'), 'DEMO', 'Demo', 'Demo', 'TILE', '<demo><demo>',
'home', true, false, 2,
'ENGINE', 'ENGINE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

