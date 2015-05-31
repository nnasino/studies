CREATE OR REPLACE TRIGGER "ACCOUNT_OPENING_TRG" BEFORE INSERT ON "ACCOUNT_OPENING" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
<<COLUMN_SEQUENCES>>
BEGIN
IF INSERTING AND :NEW.ACO_ID IS NULL THEN
SELECT ACCOUNT_OPENING_SEQ.NEXTVAL INTO :NEW.ACO_ID FROM SYS.DUAL;
END IF;
END COLUMN_SEQUENCES;
END;

CREATE OR REPLACE TRIGGER "CONFIG_CONFIG_ID_TRIG" BEFORE INSERT OR UPDATE ON "CONFIG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.config_id IS NULL THEN
SELECT  config_config_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(config_id),0) INTO v_newVal FROM config;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT config_config_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.config_id := v_newVal;
END IF;
END;



CREATE OR REPLACE TRIGGER "DENIED_REQUEST_ID_TRIG" BEFORE INSERT OR UPDATE ON "DENIED_REQUEST" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.id IS NULL THEN
SELECT  denied_request_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(id),0) INTO v_newVal FROM denied_request;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT denied_request_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.id := v_newVal;
END IF;
END;


CREATE OR REPLACE TRIGGER "DEVICES_DEVICE_ID_TRIG" BEFORE INSERT OR UPDATE ON "DEVICES" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.device_id IS NULL THEN
SELECT  devices_device_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(device_id),0) INTO v_newVal FROM devices;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT devices_device_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.device_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "EAUDIT_EAUDIT_ID_TRIG" BEFORE INSERT OR UPDATE ON "EAUDIT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.eaudit_id IS NULL THEN
SELECT  eaudit_eaudit_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(eaudit_id),0) INTO v_newVal FROM eaudit;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT eaudit_eaudit_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.eaudit_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "HOLIDAY_HOLIDAY_ID_TRIG" BEFORE INSERT OR UPDATE ON "HOLIDAY" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.holiday_id IS NULL THEN
SELECT  holiday_holiday_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(holiday_id),0) INTO v_newVal FROM holiday;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT holiday_holiday_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.holiday_id := v_newVal;
END IF;
END;


CREATE OR REPLACE TRIGGER "IAUDIT_IAUDIT_ID_TRIG" BEFORE INSERT OR UPDATE ON "IAUDIT" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.iaudit_id IS NULL THEN
SELECT  iaudit_iaudit_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(iaudit_id),0) INTO v_newVal FROM iaudit;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT iaudit_iaudit_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.iaudit_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "TRAN_REQUEST_TRG" BEFORE INSERT ON "TRAN_REQUEST" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
BEGIN
<<COLUMN_SEQUENCES>>
BEGIN
IF INSERTING AND :NEW.TRAN_REQ_ID IS NULL THEN
SELECT TRAN_REQUEST_SEQ.NEXTVAL INTO :NEW.TRAN_REQ_ID FROM SYS.DUAL;
END IF;
END COLUMN_SEQUENCES;
END;

CREATE OR REPLACE TRIGGER "USER_ACCOUNTS_UACC_ID_TRIG" BEFORE INSERT OR UPDATE ON "USER_ACCOUNTS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.uacc_id IS NULL THEN
SELECT  user_accounts_uacc_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(uacc_id),0) INTO v_newVal FROM user_accounts;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_accounts_uacc_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.uacc_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "USER_GROUPS_UGRP_ID_TRIG" BEFORE INSERT OR UPDATE ON "USER_GROUPS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.ugrp_id IS NULL THEN
SELECT  user_groups_ugrp_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(ugrp_id),0) INTO v_newVal FROM user_groups;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_groups_ugrp_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.ugrp_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "USER_PRIVILEGE_GROUPS_UPR_TRIG" BEFORE INSERT OR UPDATE ON "USER_PRIVILEGE_GROUPS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.upriv_groups_id IS NULL THEN
SELECT  user_privilege_groups_upri_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(upriv_groups_id),0) INTO v_newVal FROM user_privilege_groups;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_privilege_groups_upri_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.upriv_groups_id := v_newVal;

CREATE OR REPLACE TRIGGER "USER_PRIVILEGE_USERS_UPRI_TRIG" BEFORE INSERT OR UPDATE ON "USER_PRIVILEGE_USERS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.upriv_users_id IS NULL THEN
SELECT  user_privilege_users_upriv_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(upriv_users_id),0) INTO v_newVal FROM user_privilege_users;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_privilege_users_upriv_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.upriv_users_id := v_newVal;
END IF;
END;


CREATE OR REPLACE TRIGGER "USER_PRIVILEGES_UPRIV_ID_TRIG" BEFORE INSERT OR UPDATE ON "USER_PRIVILEGES" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.upriv_id IS NULL THEN
SELECT  user_privileges_upriv_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(upriv_id),0) INTO v_newVal FROM user_privileges;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_privileges_upriv_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.upriv_id := v_newVal;
END IF;
END;

CREATE OR REPLACE TRIGGER "USER_PROFILES_UPRO_ID_TRIG" BEFORE INSERT OR UPDATE ON "USER_PROFILES" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
DECLARE 
v_newVal NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
IF INSERTING AND :new.upro_id IS NULL THEN
SELECT  user_profiles_upro_id_SEQ.NEXTVAL INTO v_newVal FROM DUAL;
-- If this is the first time this table have been inserted into (sequence == 1)
IF v_newVal = 1 THEN 
--get the max indentity value from the table
SELECT NVL(max(upro_id),0) INTO v_newVal FROM user_profiles;
v_newVal := v_newVal + 1;
--set the sequence to that value
LOOP
EXIT WHEN v_incval>=v_newVal;
SELECT user_profiles_upro_id_SEQ.nextval INTO v_incval FROM dual;
END LOOP;
END IF;
-- assign the value from the sequence to emulate the identity column
:new.upro_id := v_newVal;
END IF;
END;
END IF;
END;
