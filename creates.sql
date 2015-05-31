CREATE TABLE "ACCOUNT_OPENING" (
"ACO_ID" NUMBER NOT NULL ,
"ACO_DATE" DATE DEFAULT SYSDATE  NULL ,
"ACO_INITIATOR" NUMBER NULL ,
"ACO_INITIATOR_DEVICE" VARCHAR2(60 CHAR) NULL ,
"ACO_LOCATION" VARCHAR2(40 CHAR) NULL ,
"ACO_AC_NAME" VARCHAR2(100 CHAR) NULL ,
"ACO_AC_PAN" VARCHAR2(20 CHAR) NULL ,
"ACO_AC_ADDRESS" VARCHAR2(150 CHAR) NULL ,
"ACO_AC_EMAIL" VARCHAR2(20 CHAR) NULL ,
"ACO_AC_MOBILE" VARCHAR2(20 CHAR) NULL ,
"ACO_AC_GENDER" VARCHAR2(1 CHAR) NULL ,
"ACO_AC_SALUTATION" VARCHAR2(10 CHAR) NULL ,
"ACO_AC_DOB" DATE DEFAULT SYSDATE  NULL ,
"ACO_AC_RESP_MSG" VARCHAR2(50 CHAR) NULL ,
"ACO_AC_RESP_CODE" VARCHAR2(5 CHAR) NULL ,
"ACO_AC_RESP_DATE" DATE DEFAULT SYSDATE  NULL ,
"ACO_JOINER" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "CI_SESSIONS" (
"SESSION_ID" VARCHAR2(40 CHAR) NOT NULL ,
"IP_ADDRESS" VARCHAR2(200 CHAR) NOT NULL ,
"USER_AGENT" VARCHAR2(120 CHAR) NULL ,
"LAST_ACTIVITY" NUMBER(10) NOT NULL ,
"USER_DATA" CLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "CONFIG" (
"CONFIG_ID" NUMBER(10) NOT NULL ,
"CONFIG_KEY" VARCHAR2(70 CHAR) NULL ,
"CONFIG_VALUE" NUMBER(10) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "DENIED_REQUEST" (
"ID" NUMBER(10) NOT NULL ,
"REQUEST_BODY" VARCHAR2(4000 CHAR) NULL ,
"REQUEST_INITIATOR" NUMBER(10) NULL ,
"DATE_REQUESTED" DATE DEFAULT SYSDATE  NULL ,
"DENIAL_REASON" VARCHAR2(4000 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "DEVICES" (
"DEVICE_ID" NUMBER(10) NOT NULL ,
"DEVICE_NAME" VARCHAR2(20 CHAR) NULL ,
"DEVICE_TYPE" VARCHAR2(20 CHAR) NULL ,
"DEVICE_OWNER" NUMBER(10) NULL ,
"DEVICE_UPDATED_BY" NUMBER(10) NULL ,
"DEVICE_CREATED_BY" NUMBER(10) NULL ,
"DEVICE_DATE_CREATED" DATE DEFAULT SYSDATE  NULL ,
"DEVICE_STATUS" NUMBER(10) DEFAULT 1  NULL ,
"DEVICE_STATUS_CHANGE_DATE" DATE DEFAULT SYSDATE  NULL ,
"DEVICE_UNIQ_ID" VARCHAR2(60 CHAR) NULL ,
"DEVICE_IS_DELETED" NUMBER(10) DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "EAUDIT" (
"EAUDIT_ID" NUMBER(10) NOT NULL ,
"EAUDIT_EVENT" VARCHAR2(255 CHAR) NULL ,
"EAUDIT_MESSAGE" VARCHAR2(255 CHAR) NULL ,
"EAUDIT_DATE" DATE NULL ,
"EAUDIT_UACC_FK" VARCHAR2(10 BYTE) NULL ,
"EAUDIT_TRAN_FK" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "HOLIDAY" (
"HOLIDAY_ID" NUMBER(10) NOT NULL ,
"HOLIDAY_NAME" VARCHAR2(50 CHAR) NULL ,
"HOLIDAY_START" DATE NULL ,
"HOLIDAY_END" DATE NULL ,
"HOLIDAY_CREATED_AT" DATE DEFAULT SYSDATE  NULL ,
"HOLIDAY_UPDATED_AT" DATE NULL ,
"HOLIDAY_CREATED_BY" NUMBER(10) NULL ,
"HOLIDAY_IS_DELETED" NUMBER(10) DEFAULT 0  NULL ,
"HOLIDAY_UPDATED_BY" NUMBER(10) NULL ,
"HOLIDAY_STATUS" NUMBER(10) DEFAULT 1  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "IAUDIT" (
"IAUDIT_ID" NUMBER(10) NOT NULL ,
"IAUDIT_TABLE_NAME" VARCHAR2(255 CHAR) NULL ,
"IAUDIT_COLUMN" VARCHAR2(255 CHAR) NULL ,
"IAUDIT_ROW" NUMBER(10) NULL ,
"IAUDIT_CHANGED_DATE" DATE DEFAULT SYSDATE  NULL ,
"IAUDIT_CHANGED_BY" NUMBER(10) NULL ,
"IAUDIT_OLD_VALUE" VARCHAR2(255 CHAR) NULL ,
"IAUDIT_NEW_VALUE" VARCHAR2(255 CHAR) NULL ,
"IAUDIT_TYPE" VARCHAR2(10 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "LOCATION_REFERENCE" (
"COORDS" VARCHAR2(25 CHAR) NOT NULL ,
"ADDRESS" VARCHAR2(70 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "TRAN_COUNT_CUSTOMER" (
"ACCOUNT_NUMBER" VARCHAR2(30 BYTE) NOT NULL ,
"NUM_WITHDRAWAL" NUMBER DEFAULT 0  NULL ,
"NUM_DEPOSIT" NUMBER DEFAULT 0  NULL ,
"SUM_WITHDRAWAL" NUMBER DEFAULT 0  NULL ,
"SUM_DEPOSIT" NUMBER DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "TRAN_COUNT_DSA_ARCHIVE" (
"DSA" NUMBER NOT NULL ,
"NUM_WITHDRAWAL" NUMBER NULL ,
"NUM_DEPOSIT" NUMBER NULL ,
"SUM_WITHDRAWAL" NUMBER NULL ,
"SUM_DEPOSIT" NUMBER NULL ,
"TRAN_DATE" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "TRAN_COUNT_DSA_TEMP" (
"DSA" NUMBER NOT NULL ,
"NUM_WITHDRAWAL" NUMBER DEFAULT 0  NULL ,
"NUM_DEPOSIT" NUMBER DEFAULT 0  NULL ,
"SUM_WITHDRAWAL" NUMBER DEFAULT 0  NULL ,
"SUM_DEPOSIT" NUMBER DEFAULT 0  NULL ,
"TRAN_DATE" DATE DEFAULT SYSDATE  NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "TRAN_REQUEST" (
"TRAN_REQ_ID" NUMBER NOT NULL ,
"TRAN_REQ_DATE" DATE DEFAULT SYSDATE  NULL ,
"TRAN_REQ_INITIATOR" NUMBER NULL ,
"TRAN_REQ_INITIATOR_DEVICE" VARCHAR2(60 BYTE) NULL ,
"TRAN_REQ_TYPE" VARCHAR2(20 BYTE) NULL ,
"TRAN_REQ_LOCATION" VARCHAR2(40 BYTE) NULL ,
"TRAN_REQ_CUSTOMER" VARCHAR2(30 BYTE) NULL ,
"TRAN_REQ_AMOUNT" NUMBER NULL ,
"TRAN_REQ_RESP_CODE" VARCHAR2(5 BYTE) NULL ,
"TRAN_REQ_RESP_MSG" VARCHAR2(50 BYTE) NULL ,
"TRAN_REQ_RESP_DATE" DATE DEFAULT SYSDATE  NULL ,
"TRAN_REQ_JOINER" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;


CREATE TABLE "USER_ACCOUNTS" (
"UACC_ID" NUMBER(10) NOT NULL ,
"UACC_GROUP_FK" NUMBER(10) NOT NULL ,
"UACC_EMAIL" VARCHAR2(100 CHAR) NOT NULL ,
"UACC_USERNAME" VARCHAR2(15 CHAR) NOT NULL ,
"UACC_PASSWORD" VARCHAR2(60 CHAR) NOT NULL ,
"UACC_IP_ADDRESS" VARCHAR2(40 CHAR) DEFAULT ''  NULL ,
"UACC_SALT" VARCHAR2(40 CHAR) DEFAULT ''  NULL ,
"UACC_ACTIVATION_TOKEN" VARCHAR2(40 CHAR) DEFAULT ''  NULL ,
"UACC_FORGOTTEN_PASSWORD_TOKEN" VARCHAR2(40 CHAR) DEFAULT ''  NULL ,
"UACC_FORGOTTEN_PASSWORD_EXPIRE" DATE NULL ,
"UACC_UPDATE_EMAIL_TOKEN" VARCHAR2(40 CHAR) DEFAULT ''  NULL ,
"UACC_UPDATE_EMAIL" VARCHAR2(100 CHAR) DEFAULT ''  NULL ,
"UACC_ACTIVE" NUMBER(10) DEFAULT 0  NULL ,
"UACC_SUSPEND" NUMBER(10) NOT NULL ,
"UACC_FAIL_LOGIN_ATTEMPTS" NUMBER(10) DEFAULT 0  NULL ,
"UACC_FAIL_LOGIN_IP_ADDRESS" VARCHAR2(40 CHAR) NULL ,
"UACC_DATE_FAIL_LOGIN_BAN" DATE NULL ,
"UACC_DATE_LAST_LOGIN" DATE NULL ,
"UACC_DATE_ADDED" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "USER_GROUPS" (
"UGRP_ID" NUMBER(10) NOT NULL ,
"UGRP_NAME" VARCHAR2(20 CHAR) NOT NULL ,
"UGRP_DESC" VARCHAR2(100 CHAR) NOT NULL ,
"UGRP_ADMIN" NUMBER(10) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;


CREATE TABLE "USER_LOGIN_SESSIONS" (
"USESS_UACC_FK" NUMBER(10) NOT NULL ,
"USESS_SERIES" VARCHAR2(40 CHAR) NULL ,
"USESS_TOKEN" VARCHAR2(40 CHAR) NOT NULL ,
"USESS_LOGIN_DATE" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "USER_PRIVILEGE_GROUPS" (
"UPRIV_GROUPS_ID" NUMBER(10) NOT NULL ,
"UPRIV_GROUPS_UGRP_FK" NUMBER(10) NOT NULL ,
"UPRIV_GROUPS_UPRIV_FK" NUMBER(10) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "USER_PRIVILEGE_USERS" (
"UPRIV_USERS_ID" NUMBER(10) NOT NULL ,
"UPRIV_USERS_UACC_FK" NUMBER(10) NOT NULL ,
"UPRIV_USERS_UPRIV_FK" NUMBER(10) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "USER_PRIVILEGES" (
"UPRIV_ID" NUMBER(10) NOT NULL ,
"UPRIV_NAME" VARCHAR2(20 CHAR) NOT NULL ,
"UPRIV_DESC" VARCHAR2(100 CHAR) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

CREATE TABLE "USER_PROFILES" (
"UPRO_ID" NUMBER(10) NOT NULL ,
"UPRO_UACC_FK" NUMBER(10) NOT NULL ,
"UPRO_FIRST_NAME" VARCHAR2(50 CHAR) NOT NULL ,
"UPRO_LAST_NAME" VARCHAR2(50 CHAR) NOT NULL ,
"UPRO_MIDDLE_NAME" VARCHAR2(50 CHAR) NOT NULL ,
"UPRO_STAFF_NO" VARCHAR2(25 CHAR) NOT NULL ,
"UPRO_ACCOUNT_NO" VARCHAR2(25 CHAR) NULL ,
"UPRO_BRANCH_ID" VARCHAR2(20 CHAR) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE



CREATE OR REPLACE FORCE VIEW "MOD_ACO" AS 
SELECT
	ACO_ID,
	ACO_DATE,
	ACO_INITIATOR,
	ACO_INITIATOR_DEVICE,
	ACO_LOCATION,
	ACO_AC_NAME,
	ACO_AC_PAN,
	ACO_AC_ADDRESS,
	ACO_AC_EMAIL,
	ACO_AC_MOBILE,
	ACO_AC_GENDER,
	ACO_AC_SALUTATION,
	ACO_AC_DOB,
	ACO_AC_RESP_MSG,
	ACO_AC_RESP_CODE,
	ACO_AC_RESP_DATE,
	USER_ACCOUNTS.UACC_USERNAME AS UACC_USERNAME,
	LOCATION_REFERENCE.ADDRESS AS ACO_LOCATION_ADDRESS
FROM
	ACCOUNT_OPENING
LEFT OUTER JOIN LOCATION_REFERENCE ON ACCOUNT_OPENING.ACO_LOCATION = LOCATION_REFERENCE.COORDS
LEFT OUTER JOIN USER_ACCOUNTS ON ACCOUNT_OPENING.ACO_INITIATOR = USER_ACCOUNTS.UACC_ID
ORDER BY ACCOUNT_OPENING.ACO_ID DESC;



CREATE OR REPLACE FORCE VIEW "MOD_ACO_REPORT_MONTHLY" AS 
SELECT
		COUNT (1) "ACCOUNT_OPENED",
		EXTRACT (
			MONTH
			FROM
				ACCOUNT_OPENING.ACO_DATE
		) "MONTH",
		TO_CHAR (
			ACCOUNT_OPENING.ACO_DATE,
			'Month'
		) "RANK"
	FROM
		ACCOUNT_OPENING
WHERE ACO_AC_RESP_CODE = '00'
	GROUP BY
		EXTRACT (
			MONTH
			FROM
				ACCOUNT_OPENING.ACO_DATE
		),
		TO_CHAR (
			ACCOUNT_OPENING.ACO_DATE,
			'Month'
		);


CREATE OR REPLACE FORCE VIEW "MOD_DEVICES" AS 
select devices.device_id,devices.device_name,devices.device_type, devices.device_owner ,devices.device_uniq_id, devices.device_status, devices.device_date_created, user_accounts.uacc_username from devices  left join user_accounts on devices.device_owner = user_accounts.uacc_id  where device_is_deleted=0  ORDER BY devices.device_id;


CREATE OR REPLACE FORCE VIEW "MOD_IAUDIT" AS 
select iaudit_id, iaudit_table_name, iaudit_column, iaudit_row, iaudit_changed_date, iaudit_changed_by, iaudit_old_value, iaudit_new_value, iaudit_type, user_accounts.uacc_username from iaudit ,user_accounts where iaudit_changed_by = user_accounts.uacc_id;

CREATE OR REPLACE FORCE VIEW "MOD_TRAN_REQUEST" AS 
SELECT
	TRAN_REQ_ID,
	TRAN_REQ_DATE,
	TRAN_REQ_INITIATOR,
	TRAN_REQ_INITIATOR_DEVICE,
	TRAN_REQ_TYPE,
	TRAN_REQ_LOCATION,
	TRAN_REQ_CUSTOMER,
	TRAN_REQ_AMOUNT,
	TRAN_REQ_RESP_CODE,
	TRAN_REQ_RESP_MSG,
	TRAN_REQ_RESP_DATE,
	TRAN_REQ_JOINER ,
USER_ACCOUNTS.UACC_USERNAME AS UACC_USERNAME,
	LOCATION_REFERENCE.ADDRESS AS TRAN_REQ_LOCATION_ADDRESS
FROM
	TRAN_REQUEST
LEFT OUTER JOIN LOCATION_REFERENCE ON TRAN_REQ_LOCATION = LOCATION_REFERENCE.COORDS
LEFT OUTER JOIN USER_ACCOUNTS ON TRAN_REQ_INITIATOR = USER_ACCOUNTS.UACC_ID
ORDER BY
	TRAN_REQ_ID DESC;


CREATE OR REPLACE FORCE VIEW "MOD_TRN_DAILY_REPORT" AS 
select dsa, num_deposit, num_withdrawal, sum_withdrawal, sum_deposit, trn_date, user_accounts.uacc_username   FROM tran_counter_dsa LEFT JOIN user_accounts on  dsa = user_accounts.uacc_id;

CREATE OR REPLACE FORCE VIEW "MOD_TRN_REPORT_MONTHLY" AS 
SELECT
SUM (SUM_DEPOSIT) "SUM_DEPOSIT",
			SUM (SUM_WITHDRAWAL) "SUM_WITHDRAWAL",
			SUM (NUM_WITHDRAWAL) "NUM_WITHDRAWAL",
			SUM (NUM_DEPOSIT) "NUM_DEPOSIT","MONTH","RANK"
	
FROM
	(
		SELECT
			SUM (SUM_DEPOSIT) "SUM_DEPOSIT",
			SUM (SUM_WITHDRAWAL) "SUM_WITHDRAWAL",
			SUM (NUM_WITHDRAWAL) "NUM_WITHDRAWAL",
			SUM (NUM_DEPOSIT) "NUM_DEPOSIT",
			TO_CHAR (
				TRAN_COUNT_DSA_ARCHIVE.TRAN_DATE,
				'Month'
			) "MONTH",
			EXTRACT (
				MONTH
				FROM
					TRAN_COUNT_DSA_ARCHIVE.TRAN_DATE
			) "RANK"
		FROM
			TRAN_COUNT_DSA_ARCHIVE
		WHERE
			EXTRACT (
				YEAR
				FROM
					TRAN_COUNT_DSA_ARCHIVE.TRAN_DATE
			) = EXTRACT (YEAR FROM SYSDATE)
		GROUP BY
			EXTRACT (
				MONTH
				FROM
					TRAN_COUNT_DSA_ARCHIVE.TRAN_DATE
			),
			TO_CHAR (
				TRAN_COUNT_DSA_ARCHIVE.TRAN_DATE,
				'Month'
			)
		UNION
			SELECT
				SUM (SUM_DEPOSIT) "SUM_DEPOSIT",
				SUM (SUM_WITHDRAWAL) "SUM_WITHDRAWAL",
				SUM (NUM_WITHDRAWAL) "NUM_WITHDRAWAL",
				SUM (NUM_DEPOSIT) "NUM_DEPOSIT",
				TO_CHAR (
					TRAN_COUNT_DSA_TEMP.TRAN_DATE,
					'Month'
				),
				EXTRACT (
					MONTH
					FROM
						TRAN_COUNT_DSA_TEMP.TRAN_DATE
				)
			FROM
				TRAN_COUNT_DSA_TEMP
			WHERE
				EXTRACT (
					YEAR
					FROM
						TRAN_COUNT_DSA_TEMP.TRAN_DATE
				) = EXTRACT (YEAR FROM SYSDATE)
			GROUP BY
				EXTRACT (
					MONTH
					FROM
						TRAN_COUNT_DSA_TEMP.TRAN_DATE
				),
				TO_CHAR (
					TRAN_COUNT_DSA_TEMP.TRAN_DATE,
					'Month'
				)
	)GROUP BY "MONTH","RANK" ORDER BY "RANK" ASC;


CREATE OR REPLACE FORCE VIEW "MOD_TRN_REPORT_TODAY" AS 
SELECT
	USER_ACCOUNTS.UACC_USERNAME "USERNAME",
	USER_PROFILES.UPRO_STAFF_NO, 
	NUM_WITHDRAWAL,
	NUM_DEPOSIT,
	SUM_WITHDRAWAL,
	SUM_DEPOSIT
FROM
	(
		SELECT
			N.DSA,
			SUM (N.NUM_WITHDRAWAL) AS NUM_WITHDRAWAL,
			SUM (N.NUM_DEPOSIT) AS NUM_DEPOSIT,
			SUM (N.SUM_WITHDRAWAL) AS SUM_WITHDRAWAL,
			SUM (N.SUM_DEPOSIT) AS SUM_DEPOSIT
		FROM
			(
				SELECT
					DSA,
					NUM_WITHDRAWAL,
					NUM_DEPOSIT,
					SUM_WITHDRAWAL,
					SUM_DEPOSIT
				FROM
					"BANKONMOBILE"."TRAN_COUNT_DSA_TEMP"
				WHERE
					TO_CHAR (TRAN_DATE, 'YYYY-MM-DD') = (
						TO_CHAR (SYSDATE, 'YYYY-MM-DD')
					)
				UNION
					SELECT
						DSA,
						NUM_WITHDRAWAL,
						NUM_DEPOSIT,
						SUM_WITHDRAWAL,
						SUM_DEPOSIT
					FROM
						"BANKONMOBILE"."TRAN_COUNT_DSA_ARCHIVE"
					WHERE
						TO_CHAR (TRAN_DATE, 'YYYY-MM-DD') = (
							TO_CHAR (SYSDATE, 'YYYY-MM-DD')
						)
			) N
		GROUP BY
			N.DSA
	)
LEFT JOIN USER_ACCOUNTS ON DSA = USER_ACCOUNTS.UACC_ID
LEFT JOIN USER_PROFILES ON DSA = USER_PROFILES.UPRO_UACC_FK;


CREATE OR REPLACE FORCE VIEW "MOD_USERS" AS 
SELECT bankonmobile.user_accounts.uacc_id         AS user_id,   bankonmobile.user_profiles.upro_first_name      AS user_fname,   bankonmobile.user_profiles.upro_middle_name     AS user_mname,   bankonmobile.user_profiles.upro_last_name       AS user_lname,   bankonmobile.user_accounts.uacc_username        AS user_username,   bankonmobile.user_accounts.uacc_active          AS user_active,   bankonmobile.user_accounts.uacc_suspend         AS user_suspended,   bankonmobile.user_accounts.uacc_date_last_login AS user_last_login,   bankonmobile.user_profiles.upro_staff_no        AS user_staff_no,   bankonmobile.user_profiles.upro_uacc_fk         AS user_fk_id FROM (bankonmobile.user_accounts LEFT JOIN bankonmobile.user_profiles ON((bankonmobile.user_accounts.uacc_id = bankonmobile.user_profiles.upro_uacc_fk)));


CREATE OR REPLACE FORCE VIEW "MONTH_NUM_REQ" AS 
SELECT EXTRACT(MONTH FROM response.response_date) AS "RANK" ,
  TO_CHAR(response.response_date ,'MONTH')        AS "PERIODS" ,
  COUNT(bankonmobile.response.id)                                       AS num_transaction
FROM bankonmobile.response
WHERE EXTRACT(YEAR FROM response.response_date) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY TO_CHAR(response.response_date ,'MONTH'),
  EXTRACT(MONTH FROM response.response_date)
ORDER BY RANK ASC;






