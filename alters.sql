ALTER TABLE "ACCOUNT_OPENING" ADD CHECK ("ACO_ID" IS NOT NULL);

ALTER TABLE "ACCOUNT_OPENING" ADD PRIMARY KEY ("ACO_ID");
ALTER TABLE "CI_SESSIONS" ADD CHECK ("SESSION_ID" IS NOT NULL);
ALTER TABLE "CI_SESSIONS" ADD CHECK ("IP_ADDRESS" IS NOT NULL);
ALTER TABLE "CI_SESSIONS" ADD CHECK ("LAST_ACTIVITY" IS NOT NULL);

ALTER TABLE "DEVICES" ADD CHECK ("DEVICE_ID" IS NOT NULL);

ALTER TABLE "CONFIG" ADD CHECK ("CONFIG_ID" IS NOT NULL);

ALTER TABLE "DENIED_REQUEST" ADD CHECK ("ID" IS NOT NULL);

ALTER TABLE "EAUDIT" ADD CHECK ("EAUDIT_ID" IS NOT NULL);

ALTER TABLE "HOLIDAY" ADD CHECK ("HOLIDAY_ID" IS NOT NULL);
ALTER TABLE "IAUDIT" ADD CHECK ("IAUDIT_ID" IS NOT NULL);

ALTER TABLE "LOCATION_REFERENCE" ADD CHECK ("COORDS" IS NOT NULL);

ALTER TABLE "TRAN_COUNT_CUSTOMER" ADD PRIMARY KEY ("ACCOUNT_NUMBER");

ALTER TABLE "TRAN_COUNT_DSA_ARCHIVE" ADD UNIQUE ("DSA", "TRAN_DATE");

ALTER TABLE "TRAN_COUNT_DSA_ARCHIVE" ADD CHECK ("DSA" IS NOT NULL);
ALTER TABLE "TRAN_COUNT_DSA_ARCHIVE" ADD CHECK ("TRAN_DATE" IS NOT NULL);

ALTER TABLE "TRAN_COUNT_DSA_TEMP" ADD CHECK ("DSA" IS NOT NULL);
ALTER TABLE "TRAN_COUNT_DSA_TEMP" ADD CHECK ("TRAN_DATE" IS NOT NULL);

ALTER TABLE "TRAN_COUNT_DSA_TEMP" ADD PRIMARY KEY ("DSA", "TRAN_DATE");

ALTER TABLE "TRAN_REQUEST" ADD CHECK ("TRAN_REQ_ID" IS NOT NULL);

ALTER TABLE "TRAN_REQUEST" ADD PRIMARY KEY ("TRAN_REQ_ID");
ALTER TABLE "USER_ACCOUNTS" ADD UNIQUE ("UACC_EMAIL");
ALTER TABLE "USER_ACCOUNTS" ADD UNIQUE ("UACC_USERNAME");

ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_ID" IS NOT NULL);
ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_GROUP_FK" IS NOT NULL);
ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_EMAIL" IS NOT NULL);
ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_USERNAME" IS NOT NULL);
ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_PASSWORD" IS NOT NULL);
ALTER TABLE "USER_ACCOUNTS" ADD CHECK ("UACC_SUSPEND" IS NOT NULL);

ALTER TABLE "USER_ACCOUNTS" ADD PRIMARY KEY ("UACC_ID");

ALTER TABLE "USER_GROUPS" ADD CHECK ("UGRP_ID" IS NOT NULL);
ALTER TABLE "USER_GROUPS" ADD CHECK ("UGRP_NAME" IS NOT NULL);
ALTER TABLE "USER_GROUPS" ADD CHECK ("UGRP_DESC" IS NOT NULL);
ALTER TABLE "USER_GROUPS" ADD CHECK ("UGRP_ADMIN" IS NOT NULL);


ALTER TABLE "USER_LOGIN_SESSIONS" ADD CHECK ("USESS_UACC_FK" IS NOT NULL);
ALTER TABLE "USER_LOGIN_SESSIONS" ADD CHECK ("USESS_TOKEN" IS NOT NULL);
ALTER TABLE "USER_LOGIN_SESSIONS" ADD CHECK ("USESS_LOGIN_DATE" IS NOT NULL);


ALTER TABLE "USER_PRIVILEGE_GROUPS" ADD CHECK ("UPRIV_GROUPS_ID" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGE_GROUPS" ADD CHECK ("UPRIV_GROUPS_UGRP_FK" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGE_GROUPS" ADD CHECK ("UPRIV_GROUPS_UPRIV_FK" IS NOT NULL);



ALTER TABLE "USER_PRIVILEGE_USERS" ADD CHECK ("UPRIV_USERS_ID" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGE_USERS" ADD CHECK ("UPRIV_USERS_UACC_FK" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGE_USERS" ADD CHECK ("UPRIV_USERS_UPRIV_FK" IS NOT NULL);

ALTER TABLE "USER_PRIVILEGES" ADD CHECK ("UPRIV_ID" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGES" ADD CHECK ("UPRIV_NAME" IS NOT NULL);
ALTER TABLE "USER_PRIVILEGES" ADD CHECK ("UPRIV_DESC" IS NOT NULL);

ALTER TABLE "USER_PROFILES" ADD UNIQUE ("UPRO_STAFF_NO");
ALTER TABLE "USER_PROFILES" ADD UNIQUE ("UPRO_UACC_FK");

ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_ID" IS NOT NULL);
ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_UACC_FK" IS NOT NULL);
ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_FIRST_NAME" IS NOT NULL);
ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_LAST_NAME" IS NOT NULL);
ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_MIDDLE_NAME" IS NOT NULL);
ALTER TABLE "USER_PROFILES" ADD CHECK ("UPRO_STAFF_NO" IS NOT NULL);

ALTER TABLE "TRAN_COUNT_CUSTOMER" ADD CHECK ("ACCOUNT_NUMBER" IS NOT NULL);

