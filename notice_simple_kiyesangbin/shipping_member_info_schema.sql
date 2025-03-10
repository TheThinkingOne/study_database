USE study_deliver_member_info_kiye;

CREATE TABLE `ADDRESS` (
	`ADDRESS_PK`	VARCHAR(20)	NOT NULL,
	`ADDRESS`	VARCHAR(20)	NULL
);

CREATE TABLE `HOBBY` (
	`HOBBY_PK`	VARCHAR(20)	NOT NULL,
	`HOBBY`	VARCHAR(20)	NULL
);

CREATE TABLE `PHONE` (
	`PHONE_PK`	VARCHAR(20)	NOT NULL,
	`PHONE`	VARCHAR(20)	NULL
);

CREATE TABLE `EMAIL` (
	`EMAIL_PK`	VARCHAR(20)	NOT NULL,
	`EMAIL`	VARCHAR(20)	NULL
);

CREATE TABLE `MEMBER` (
	`MEMBER_PK`	VARCHAR(20)	NOT NULL,
	`EMAIL_FK`	VARCHAR(20)	NOT NULL,
	`PHONE_FK`	VARCHAR(20)	NOT NULL,
	`ADDRESS_FK`	VARCHAR(20)	NOT NULL,
	`NAME`	VARCHAR(20)	NULL,
	`AGE`	VARCHAR(20)	NULL,
	`GENDER`	VARCHAR(20)	NULL
);

CREATE TABLE `MEMBER_SEARCH` (
	`MEMBER_SEARCH_PK`	VARCHAR(20)	NOT NULL,
	`HOBBY_FK`	VARCHAR(20)	NOT NULL,
	`ADDRESS_FK`	VARCHAR(20)	NOT NULL,
	`MEMBER_FK`	VARCHAR(20)	NOT NULL,
	`EMAIL_FK`	VARCHAR(20)	NOT NULL,
	`PHONE_FK`	VARCHAR(20)	NOT NULL
);

ALTER TABLE `ADDRESS` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`ADDRESS_PK`
);

ALTER TABLE `HOBBY` ADD CONSTRAINT `PK_HOBBY` PRIMARY KEY (
	`HOBBY_PK`
);

ALTER TABLE `PHONE` ADD CONSTRAINT `PK_PHONE` PRIMARY KEY (
	`PHONE_PK`
);

ALTER TABLE `EMAIL` ADD CONSTRAINT `PK_EMAIL` PRIMARY KEY (
	`EMAIL_PK`
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`MEMBER_PK`,
	`EMAIL_FK`,
	`PHONE_FK`,
	`ADDRESS_FK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `PK_MEMBER_SEARCH` PRIMARY KEY (
	`MEMBER_SEARCH_PK`,
	`HOBBY_FK`,
	`ADDRESS_FK`,
	`MEMBER_FK`,
	`EMAIL_FK`,
	`PHONE_FK`
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `FK_EMAIL_TO_MEMBER_1` FOREIGN KEY (
	`EMAIL_FK`
)
REFERENCES `EMAIL` (
	`EMAIL_PK`
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `FK_PHONE_TO_MEMBER_1` FOREIGN KEY (
	`PHONE_FK`
)
REFERENCES `PHONE` (
	`PHONE_PK`
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `FK_ADDRESS_TO_MEMBER_1` FOREIGN KEY (
	`ADDRESS_FK`
)
REFERENCES `ADDRESS` (
	`ADDRESS_PK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `FK_HOBBY_TO_MEMBER_SEARCH_1` FOREIGN KEY (
	`HOBBY_FK`
)
REFERENCES `HOBBY` (
	`HOBBY_PK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `FK_ADDRESS_TO_MEMBER_SEARCH_1` FOREIGN KEY (
	`ADDRESS_FK`
)
REFERENCES `ADDRESS` (
	`ADDRESS_PK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `FK_MEMBER_TO_MEMBER_SEARCH_1` FOREIGN KEY (
	`MEMBER_FK`
)
REFERENCES `MEMBER` (
	`MEMBER_PK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `FK_MEMBER_TO_MEMBER_SEARCH_2` FOREIGN KEY (
	`EMAIL_FK`
)
REFERENCES `MEMBER` (
	`EMAIL_FK`
);

ALTER TABLE `MEMBER_SEARCH` ADD CONSTRAINT `FK_MEMBER_TO_MEMBER_SEARCH_3` FOREIGN KEY (
	`PHONE_FK`
)
REFERENCES `MEMBER` (
	`PHONE_FK`
);

