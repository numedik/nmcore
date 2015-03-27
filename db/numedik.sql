/*
 Navicat Premium Data Transfer

 Source Server         : redmineabs
 Source Server Type    : PostgreSQL
 Source Server Version : 90209
 Source Host           : devt
 Source Database       : numedik_development
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90209
 File Encoding         : utf-8

 Date: 03/27/2015 12:25:35 PM
*/

-- ----------------------------
--  Sequence structure for accounts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_id_seq";
CREATE SEQUENCE "public"."accounts_id_seq" INCREMENT 1 START 1296 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."accounts_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for accounttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounttypes_id_seq";
CREATE SEQUENCE "public"."accounttypes_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."accounttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for admin_notes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."admin_notes_id_seq";
CREATE SEQUENCE "public"."admin_notes_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."admin_notes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for advertisements_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."advertisements_id_seq";
CREATE SEQUENCE "public"."advertisements_id_seq" INCREMENT 1 START 39 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."advertisements_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for appointments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."appointments_id_seq";
CREATE SEQUENCE "public"."appointments_id_seq" INCREMENT 1 START 6288 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."appointments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for appointmentstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."appointmentstats_id_seq";
CREATE SEQUENCE "public"."appointmentstats_id_seq" INCREMENT 1 START 7 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."appointmentstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for appointmenttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."appointmenttypes_id_seq";
CREATE SEQUENCE "public"."appointmenttypes_id_seq" INCREMENT 1 START 28 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."appointmenttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for audittrails_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."audittrails_id_seq";
CREATE SEQUENCE "public"."audittrails_id_seq" INCREMENT 1 START 263752 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."audittrails_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for audittypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."audittypes_id_seq";
CREATE SEQUENCE "public"."audittypes_id_seq" INCREMENT 1 START 38 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."audittypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for billings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."billings_id_seq";
CREATE SEQUENCE "public"."billings_id_seq" INCREMENT 1 START 27594 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."billings_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for billingstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."billingstats_id_seq";
CREATE SEQUENCE "public"."billingstats_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."billingstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for billitems_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."billitems_id_seq";
CREATE SEQUENCE "public"."billitems_id_seq" INCREMENT 1 START 398128 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."billitems_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for billitemstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."billitemstats_id_seq";
CREATE SEQUENCE "public"."billitemstats_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."billitemstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for bloodtypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bloodtypes_id_seq";
CREATE SEQUENCE "public"."bloodtypes_id_seq" INCREMENT 1 START 8 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."bloodtypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for bringforwards_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bringforwards_id_seq";
CREATE SEQUENCE "public"."bringforwards_id_seq" INCREMENT 1 START 2507 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."bringforwards_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for bulkpayments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bulkpayments_id_seq";
CREATE SEQUENCE "public"."bulkpayments_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."bulkpayments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for cashregisters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cashregisters_id_seq";
CREATE SEQUENCE "public"."cashregisters_id_seq" INCREMENT 1 START 19848 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."cashregisters_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for chargegroups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."chargegroups_id_seq";
CREATE SEQUENCE "public"."chargegroups_id_seq" INCREMENT 1 START 101 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."chargegroups_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for chargetypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."chargetypes_id_seq";
CREATE SEQUENCE "public"."chargetypes_id_seq" INCREMENT 1 START 16 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."chargetypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for cities_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cities_id_seq";
CREATE SEQUENCE "public"."cities_id_seq" INCREMENT 1 START 13 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."cities_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for closingbalances_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."closingbalances_id_seq";
CREATE SEQUENCE "public"."closingbalances_id_seq" INCREMENT 1 START 648436 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."closingbalances_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for consultationtemplates_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."consultationtemplates_id_seq";
CREATE SEQUENCE "public"."consultationtemplates_id_seq" INCREMENT 1 START 2 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."consultationtemplates_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for contacts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."contacts_id_seq";
CREATE SEQUENCE "public"."contacts_id_seq" INCREMENT 1 START 92027 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."contacts_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for contactstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."contactstats_id_seq";
CREATE SEQUENCE "public"."contactstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."contactstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for dailyincomes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dailyincomes_id_seq";
CREATE SEQUENCE "public"."dailyincomes_id_seq" INCREMENT 1 START 263 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."dailyincomes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for departments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."departments_id_seq";
CREATE SEQUENCE "public"."departments_id_seq" INCREMENT 1 START 16 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."departments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for designations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."designations_id_seq";
CREATE SEQUENCE "public"."designations_id_seq" INCREMENT 1 START 17 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."designations_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for dischargetypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."dischargetypes_id_seq";
CREATE SEQUENCE "public"."dischargetypes_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."dischargetypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for disciplines_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."disciplines_id_seq";
CREATE SEQUENCE "public"."disciplines_id_seq" INCREMENT 1 START 22 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."disciplines_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for doctortypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."doctortypes_id_seq";
CREATE SEQUENCE "public"."doctortypes_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."doctortypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for documents_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documents_id_seq";
CREATE SEQUENCE "public"."documents_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."documents_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for documentstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documentstats_id_seq";
CREATE SEQUENCE "public"."documentstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."documentstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for documenttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."documenttypes_id_seq";
CREATE SEQUENCE "public"."documenttypes_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."documenttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugcategories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugcategories_id_seq";
CREATE SEQUENCE "public"."drugcategories_id_seq" INCREMENT 1 START 309 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugcategories_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugdosages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugdosages_id_seq";
CREATE SEQUENCE "public"."drugdosages_id_seq" INCREMENT 1 START 46 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugdosages_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugdurations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugdurations_id_seq";
CREATE SEQUENCE "public"."drugdurations_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugdurations_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugfrequencies_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugfrequencies_id_seq";
CREATE SEQUENCE "public"."drugfrequencies_id_seq" INCREMENT 1 START 22 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugfrequencies_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugprns_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugprns_id_seq";
CREATE SEQUENCE "public"."drugprns_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugprns_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugprocedures_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugprocedures_id_seq";
CREATE SEQUENCE "public"."drugprocedures_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugprocedures_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugroutes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugroutes_id_seq";
CREATE SEQUENCE "public"."drugroutes_id_seq" INCREMENT 1 START 34 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugroutes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugstrengths_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugstrengths_id_seq";
CREATE SEQUENCE "public"."drugstrengths_id_seq" INCREMENT 1 START 14 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugstrengths_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for drugtypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."drugtypes_id_seq";
CREATE SEQUENCE "public"."drugtypes_id_seq" INCREMENT 1 START 9 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."drugtypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for floorlevels_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."floorlevels_id_seq";
CREATE SEQUENCE "public"."floorlevels_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."floorlevels_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for genders_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."genders_id_seq";
CREATE SEQUENCE "public"."genders_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."genders_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for general_charges_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."general_charges_id_seq";
CREATE SEQUENCE "public"."general_charges_id_seq" INCREMENT 1 START 1354 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."general_charges_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for hismodules_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."hismodules_id_seq";
CREATE SEQUENCE "public"."hismodules_id_seq" INCREMENT 1 START 24 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."hismodules_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for icds_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."icds_id_seq";
CREATE SEQUENCE "public"."icds_id_seq" INCREMENT 1 START 124500 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."icds_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for icdtypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."icdtypes_id_seq";
CREATE SEQUENCE "public"."icdtypes_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."icdtypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for inpatientrecords_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."inpatientrecords_id_seq";
CREATE SEQUENCE "public"."inpatientrecords_id_seq" INCREMENT 1 START 3370 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."inpatientrecords_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for inpatientroomcategories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."inpatientroomcategories_id_seq";
CREATE SEQUENCE "public"."inpatientroomcategories_id_seq" INCREMENT 1 START 15 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."inpatientroomcategories_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for inpatientstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."inpatientstats_id_seq";
CREATE SEQUENCE "public"."inpatientstats_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."inpatientstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for journalpostings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."journalpostings_id_seq";
CREATE SEQUENCE "public"."journalpostings_id_seq" INCREMENT 1 START 260847 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."journalpostings_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for kbmcexpenses_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."kbmcexpenses_id_seq";
CREATE SEQUENCE "public"."kbmcexpenses_id_seq" INCREMENT 1 START 653 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."kbmcexpenses_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labattachments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labattachments_id_seq";
CREATE SEQUENCE "public"."labattachments_id_seq" INCREMENT 1 START 8 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labattachments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labattachmentstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labattachmentstats_id_seq";
CREATE SEQUENCE "public"."labattachmentstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labattachmentstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labcharges_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labcharges_id_seq";
CREATE SEQUENCE "public"."labcharges_id_seq" INCREMENT 1 START 374 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labcharges_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labitems_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labitems_id_seq";
CREATE SEQUENCE "public"."labitems_id_seq" INCREMENT 1 START 271 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labitems_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labpriorities_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labpriorities_id_seq";
CREATE SEQUENCE "public"."labpriorities_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labpriorities_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labreports_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labreports_id_seq";
CREATE SEQUENCE "public"."labreports_id_seq" INCREMENT 1 START 9347 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labreports_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labresults_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labresults_id_seq";
CREATE SEQUENCE "public"."labresults_id_seq" INCREMENT 1 START 13888 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labresults_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labresultstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labresultstats_id_seq";
CREATE SEQUENCE "public"."labresultstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labresultstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for labtemplates_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."labtemplates_id_seq";
CREATE SEQUENCE "public"."labtemplates_id_seq" INCREMENT 1 START 44 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."labtemplates_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for locationrooms_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."locationrooms_id_seq";
CREATE SEQUENCE "public"."locationrooms_id_seq" INCREMENT 1 START 25 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."locationrooms_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for locationroomstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."locationroomstats_id_seq";
CREATE SEQUENCE "public"."locationroomstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."locationroomstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for lookupinfos_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."lookupinfos_id_seq";
CREATE SEQUENCE "public"."lookupinfos_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."lookupinfos_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for maritals_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."maritals_id_seq";
CREATE SEQUENCE "public"."maritals_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."maritals_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for medications_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."medications_id_seq";
CREATE SEQUENCE "public"."medications_id_seq" INCREMENT 1 START 100167 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."medications_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for medicationstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."medicationstats_id_seq";
CREATE SEQUENCE "public"."medicationstats_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."medicationstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for module_dependencies_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."module_dependencies_id_seq";
CREATE SEQUENCE "public"."module_dependencies_id_seq" INCREMENT 1 START 1116 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."module_dependencies_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for mykad_records_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mykad_records_id_seq";
CREATE SEQUENCE "public"."mykad_records_id_seq" INCREMENT 1 START 3014 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."mykad_records_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for nationalities_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."nationalities_id_seq";
CREATE SEQUENCE "public"."nationalities_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."nationalities_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationgroup_contacts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationgroup_contacts_id_seq";
CREATE SEQUENCE "public"."notificationgroup_contacts_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationgroup_contacts_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationgroups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationgroups_id_seq";
CREATE SEQUENCE "public"."notificationgroups_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationgroups_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationmethods_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationmethods_id_seq";
CREATE SEQUENCE "public"."notificationmethods_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationmethods_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notifications_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notifications_id_seq";
CREATE SEQUENCE "public"."notifications_id_seq" INCREMENT 1 START 5357 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notifications_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationstats_id_seq";
CREATE SEQUENCE "public"."notificationstats_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationtemplates_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationtemplates_id_seq";
CREATE SEQUENCE "public"."notificationtemplates_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationtemplates_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notificationtypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notificationtypes_id_seq";
CREATE SEQUENCE "public"."notificationtypes_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notificationtypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for notifystats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."notifystats_id_seq";
CREATE SEQUENCE "public"."notifystats_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."notifystats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for panels_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."panels_id_seq";
CREATE SEQUENCE "public"."panels_id_seq" INCREMENT 1 START 8 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."panels_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for patientqueues_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."patientqueues_id_seq";
CREATE SEQUENCE "public"."patientqueues_id_seq" INCREMENT 1 START 18884 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."patientqueues_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for patients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."patients_id_seq";
CREATE SEQUENCE "public"."patients_id_seq" INCREMENT 1 START 85322 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."patients_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for patientstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."patientstats_id_seq";
CREATE SEQUENCE "public"."patientstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."patientstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for patienttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."patienttypes_id_seq";
CREATE SEQUENCE "public"."patienttypes_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."patienttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for paymentmethods_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."paymentmethods_id_seq";
CREATE SEQUENCE "public"."paymentmethods_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."paymentmethods_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for payments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."payments_id_seq";
CREATE SEQUENCE "public"."payments_id_seq" INCREMENT 1 START 454 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."payments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for paymenttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."paymenttypes_id_seq";
CREATE SEQUENCE "public"."paymenttypes_id_seq" INCREMENT 1 START 11 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."paymenttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permissions_id_seq";
CREATE SEQUENCE "public"."permissions_id_seq" INCREMENT 1 START 341 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."permissions_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for permissionstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."permissionstats_id_seq";
CREATE SEQUENCE "public"."permissionstats_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."permissionstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for postats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."postats_id_seq";
CREATE SEQUENCE "public"."postats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."postats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for prices_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."prices_id_seq";
CREATE SEQUENCE "public"."prices_id_seq" INCREMENT 1 START 9354 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."prices_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for purchaseorder_items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."purchaseorder_items_id_seq";
CREATE SEQUENCE "public"."purchaseorder_items_id_seq" INCREMENT 1 START 13 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."purchaseorder_items_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for purchaseorders_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."purchaseorders_id_seq";
CREATE SEQUENCE "public"."purchaseorders_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."purchaseorders_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for queuecallings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."queuecallings_id_seq";
CREATE SEQUENCE "public"."queuecallings_id_seq" INCREMENT 1 START 3008 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."queuecallings_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for queuestats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."queuestats_id_seq";
CREATE SEQUENCE "public"."queuestats_id_seq" INCREMENT 1 START 13 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."queuestats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for queuetypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."queuetypes_id_seq";
CREATE SEQUENCE "public"."queuetypes_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."queuetypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for races_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."races_id_seq";
CREATE SEQUENCE "public"."races_id_seq" INCREMENT 1 START 343 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."races_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for religions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."religions_id_seq";
CREATE SEQUENCE "public"."religions_id_seq" INCREMENT 1 START 8 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."religions_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for reportstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."reportstats_id_seq";
CREATE SEQUENCE "public"."reportstats_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."reportstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for reporttypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."reporttypes_id_seq";
CREATE SEQUENCE "public"."reporttypes_id_seq" INCREMENT 1 START 47 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."reporttypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for rnstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rnstats_id_seq";
CREATE SEQUENCE "public"."rnstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."rnstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for rntypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rntypes_id_seq";
CREATE SEQUENCE "public"."rntypes_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."rntypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roles_id_seq";
CREATE SEQUENCE "public"."roles_id_seq" INCREMENT 1 START 10 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."roles_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for roomreservations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roomreservations_id_seq";
CREATE SEQUENCE "public"."roomreservations_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."roomreservations_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for roomreservestats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."roomreservestats_id_seq";
CREATE SEQUENCE "public"."roomreservestats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."roomreservestats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for rooms_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rooms_id_seq";
CREATE SEQUENCE "public"."rooms_id_seq" INCREMENT 1 START 50 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."rooms_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for rssfeeds_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rssfeeds_id_seq";
CREATE SEQUENCE "public"."rssfeeds_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."rssfeeds_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for runningnumbers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."runningnumbers_id_seq";
CREATE SEQUENCE "public"."runningnumbers_id_seq" INCREMENT 1 START 12 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."runningnumbers_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for shifts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."shifts_id_seq";
CREATE SEQUENCE "public"."shifts_id_seq" INCREMENT 1 START 763 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."shifts_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for soundassignations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."soundassignations_id_seq";
CREATE SEQUENCE "public"."soundassignations_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."soundassignations_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for soundevents_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."soundevents_id_seq";
CREATE SEQUENCE "public"."soundevents_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."soundevents_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for sounds_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sounds_id_seq";
CREATE SEQUENCE "public"."sounds_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."sounds_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for states_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."states_id_seq";
CREATE SEQUENCE "public"."states_id_seq" INCREMENT 1 START 31 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."states_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for statusrows_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."statusrows_id_seq";
CREATE SEQUENCE "public"."statusrows_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."statusrows_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for stockstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stockstats_id_seq";
CREATE SEQUENCE "public"."stockstats_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."stockstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for substores_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."substores_id_seq";
CREATE SEQUENCE "public"."substores_id_seq" INCREMENT 1 START 12 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."substores_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for supports_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."supports_id_seq";
CREATE SEQUENCE "public"."supports_id_seq" INCREMENT 1 START 7 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."supports_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for suspendedfolios_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."suspendedfolios_id_seq";
CREATE SEQUENCE "public"."suspendedfolios_id_seq" INCREMENT 1 START 27516 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."suspendedfolios_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for treatmenticds_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."treatmenticds_id_seq";
CREATE SEQUENCE "public"."treatmenticds_id_seq" INCREMENT 1 START 764 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."treatmenticds_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for treatmentrooms_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."treatmentrooms_id_seq";
CREATE SEQUENCE "public"."treatmentrooms_id_seq" INCREMENT 1 START 10 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."treatmentrooms_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for treatments_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."treatments_id_seq";
CREATE SEQUENCE "public"."treatments_id_seq" INCREMENT 1 START 27628 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."treatments_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for treatmentstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."treatmentstats_id_seq";
CREATE SEQUENCE "public"."treatmentstats_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."treatmentstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for unused_runningnumbers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."unused_runningnumbers_id_seq";
CREATE SEQUENCE "public"."unused_runningnumbers_id_seq" INCREMENT 1 START 36 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."unused_runningnumbers_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" INCREMENT 1 START 397 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."users_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for userstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."userstats_id_seq";
CREATE SEQUENCE "public"."userstats_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."userstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for vacantstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vacantstats_id_seq";
CREATE SEQUENCE "public"."vacantstats_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."vacantstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for vendors_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vendors_id_seq";
CREATE SEQUENCE "public"."vendors_id_seq" INCREMENT 1 START 532 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."vendors_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for warehousereqstats_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehousereqstats_id_seq";
CREATE SEQUENCE "public"."warehousereqstats_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."warehousereqstats_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for warehouserequests_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehouserequests_id_seq";
CREATE SEQUENCE "public"."warehouserequests_id_seq" INCREMENT 1 START 3455 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."warehouserequests_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for warehouses_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehouses_id_seq";
CREATE SEQUENCE "public"."warehouses_id_seq" INCREMENT 1 START 3189 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."warehouses_id_seq" OWNER TO "his";

-- ----------------------------
--  Sequence structure for warehousetypes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."warehousetypes_id_seq";
CREATE SEQUENCE "public"."warehousetypes_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "public"."warehousetypes_id_seq" OWNER TO "his";

-- ----------------------------
--  Function structure for public.rebuilt_sequences()
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."rebuilt_sequences"();
CREATE FUNCTION "public"."rebuilt_sequences"() RETURNS "int4" 
	AS $BODY$
  DECLARE sequencedefs RECORD; c integer ;
  BEGIN
    FOR sequencedefs IN Select
      constraint_column_usage.table_name as tablename,
      constraint_column_usage.table_name as tablename, 
      constraint_column_usage.column_name as columnname,
      replace(replace(columns.column_default,'''::regclass)',''),'nextval(''','') as sequencename
      from information_schema.constraint_column_usage, information_schema.columns
      where constraint_column_usage.table_schema ='public' AND 
      columns.table_schema = 'public' AND columns.table_name=constraint_column_usage.table_name
      AND constraint_column_usage.column_name = columns.column_name
      AND columns.column_default is not null
   LOOP    
      EXECUTE 'select max('||sequencedefs.columnname||') from ' || sequencedefs.tablename INTO c;
      IF c is null THEN c = 0; END IF;
      IF c is not null THEN c = c+ 1; END IF;
      EXECUTE 'alter sequence ' || sequencedefs.sequencename ||' restart  with ' || c;
   END LOOP;

   RETURN 1; END;
$BODY$
	LANGUAGE plpgsql
	COST 100
	CALLED ON NULL INPUT
	SECURITY INVOKER
	VOLATILE;
ALTER FUNCTION "public"."rebuilt_sequences"() OWNER TO "his";

-- ----------------------------
--  Table structure for labresults
-- ----------------------------
DROP TABLE IF EXISTS "public"."labresults";
CREATE TABLE "public"."labresults" (
	"id" int4 NOT NULL DEFAULT nextval('labresults_id_seq'::regclass),
	"labreport_id" int4 NOT NULL,
	"labitem_id" int4 NOT NULL,
	"value1" varchar(255) COLLATE "default",
	"value2" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"labtemplate_id" int4,
	"html" text COLLATE "default",
	"labresultstat_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labresults" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationstats";
CREATE TABLE "public"."notificationstats" (
	"id" int4 NOT NULL DEFAULT nextval('notificationstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationstats" OWNER TO "his";

-- ----------------------------
--  Table structure for billitems
-- ----------------------------
DROP TABLE IF EXISTS "public"."billitems";
CREATE TABLE "public"."billitems" (
	"id" int4 NOT NULL DEFAULT nextval('billitems_id_seq'::regclass),
	"billing_id" int4 NOT NULL,
	"patienttype_id" int4 NOT NULL,
	"price_id" int4 NOT NULL,
	"adjustedprice" float4 DEFAULT 0,
	"quantity" int4 NOT NULL DEFAULT 1,
	"user_id" int4,
	"billitemstat_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"panel_id" int4 NOT NULL,
	"paymenttype_id" int4,
	"doctor_id" int4,
	"doctortype_id" int4,
	"chargegroup_id" int4,
	"account_id" int4,
	"taxpercent" float4,
	"taxvalue" float4,
	"inpackage" bool DEFAULT false,
	"doctordiscipline_id" int4,
	"doctorcommission" numeric DEFAULT 0,
	"editedname" varchar(255) COLLATE "default",
	"debitsn" varchar(255) COLLATE "default",
	"doctorname" varchar(255) COLLATE "default",
	"reversed" bool DEFAULT false,
	"doctorcommissionvalue" numeric,
	"lastediteddate" timestamp(6) NULL,
	"doctorcommissionrelease" bool DEFAULT false,
	"warehouse_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."billitems" OWNER TO "his";

-- ----------------------------
--  Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS "public"."cities";
CREATE TABLE "public"."cities" (
	"id" int4 NOT NULL DEFAULT nextval('cities_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."cities" OWNER TO "his";

-- ----------------------------
--  Table structure for kbmcexpenses
-- ----------------------------
DROP TABLE IF EXISTS "public"."kbmcexpenses";
CREATE TABLE "public"."kbmcexpenses" (
	"id" int4 NOT NULL DEFAULT nextval('kbmcexpenses_id_seq'::regclass),
	"account_id" int4,
	"cashregister_id" int4,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."kbmcexpenses" OWNER TO "his";

-- ----------------------------
--  Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
	"id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
	"username" varchar(255) COLLATE "default",
	"fullname" varchar(255) COLLATE "default",
	"email" varchar(255) COLLATE "default",
	"phone" varchar(255) COLLATE "default",
	"password_digest" varchar(255) COLLATE "default",
	"role_id" int4 NOT NULL,
	"auth_token" varchar(255) COLLATE "default",
	"password_reset_token" varchar(255) COLLATE "default",
	"password_reset_token_sent_at" varchar(255) COLLATE "default",
	"department_id" int4,
	"userstat_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"password_reset_sent_at" timestamp(6) NULL,
	"locationroom_id" int4,
	"discipline_id" int4,
	"last_login_ip" varchar(255) NOT NULL DEFAULT '0.0.0.0'::character varying COLLATE "default",
	"cashregister_reset" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."users" OWNER TO "his";

-- ----------------------------
--  Table structure for sounds
-- ----------------------------
DROP TABLE IF EXISTS "public"."sounds";
CREATE TABLE "public"."sounds" (
	"id" int4 NOT NULL DEFAULT nextval('sounds_id_seq'::regclass),
	"filename" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."sounds" OWNER TO "his";

-- ----------------------------
--  Table structure for drugprocedures
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugprocedures";
CREATE TABLE "public"."drugprocedures" (
	"id" int4 NOT NULL DEFAULT nextval('drugprocedures_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugprocedures" OWNER TO "his";

-- ----------------------------
--  Table structure for appointmenttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."appointmenttypes";
CREATE TABLE "public"."appointmenttypes" (
	"id" int4 NOT NULL DEFAULT nextval('appointmenttypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."appointmenttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for icds
-- ----------------------------
DROP TABLE IF EXISTS "public"."icds";
CREATE TABLE "public"."icds" (
	"id" int4 NOT NULL DEFAULT nextval('icds_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"parent_code" varchar(25) COLLATE "default",
	"level" varchar(255) COLLATE "default",
	"info" text COLLATE "default",
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"icdtype_code" varchar(25) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."icds" OWNER TO "his";

-- ----------------------------
--  Table structure for disciplines
-- ----------------------------
DROP TABLE IF EXISTS "public"."disciplines";
CREATE TABLE "public"."disciplines" (
	"id" int4 NOT NULL DEFAULT nextval('disciplines_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."disciplines" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationmethods
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationmethods";
CREATE TABLE "public"."notificationmethods" (
	"id" int4 NOT NULL DEFAULT nextval('notificationmethods_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationmethods" OWNER TO "his";

-- ----------------------------
--  Table structure for patientstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."patientstats";
CREATE TABLE "public"."patientstats" (
	"id" int4 NOT NULL DEFAULT nextval('patientstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."patientstats" OWNER TO "his";

-- ----------------------------
--  Table structure for contactstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."contactstats";
CREATE TABLE "public"."contactstats" (
	"id" int4 NOT NULL DEFAULT nextval('contactstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."contactstats" OWNER TO "his";

-- ----------------------------
--  Table structure for advertisements
-- ----------------------------
DROP TABLE IF EXISTS "public"."advertisements";
CREATE TABLE "public"."advertisements" (
	"id" int4 NOT NULL DEFAULT nextval('advertisements_id_seq'::regclass),
	"remark" varchar(255) COLLATE "default",
	"weightage" int4,
	"image" varchar(255) COLLATE "default",
	"startdate" date,
	"enddate" date,
	"statusrow_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."advertisements" OWNER TO "his";

-- ----------------------------
--  Table structure for icdtypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."icdtypes";
CREATE TABLE "public"."icdtypes" (
	"id" int4 NOT NULL DEFAULT nextval('icdtypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."icdtypes" OWNER TO "his";

-- ----------------------------
--  Table structure for patienttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."patienttypes";
CREATE TABLE "public"."patienttypes" (
	"id" int4 NOT NULL DEFAULT nextval('patienttypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."patienttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for bringforwards
-- ----------------------------
DROP TABLE IF EXISTS "public"."bringforwards";
CREATE TABLE "public"."bringforwards" (
	"id" int4 NOT NULL DEFAULT nextval('bringforwards_id_seq'::regclass),
	"refnum" varchar(255) COLLATE "default",
	"info" varchar(255) COLLATE "default",
	"balance" float8,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"account_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."bringforwards" OWNER TO "his";

-- ----------------------------
--  Table structure for queuetypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."queuetypes";
CREATE TABLE "public"."queuetypes" (
	"id" int4 NOT NULL DEFAULT nextval('queuetypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queuetypes" OWNER TO "his";

-- ----------------------------
--  Table structure for states
-- ----------------------------
DROP TABLE IF EXISTS "public"."states";
CREATE TABLE "public"."states" (
	"id" int4 NOT NULL DEFAULT nextval('states_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."states" OWNER TO "his";

-- ----------------------------
--  Table structure for journalpostings
-- ----------------------------
DROP TABLE IF EXISTS "public"."journalpostings";
CREATE TABLE "public"."journalpostings" (
	"id" int4 NOT NULL DEFAULT nextval('journalpostings_id_seq'::regclass),
	"treatment_id" int4,
	"chargegroup_id" int4,
	"addon" varchar(255) COLLATE "default",
	"debit" float8,
	"credit" float8,
	"account" varchar(10) COLLATE "default",
	"remark" varchar(255) COLLATE "default",
	"chargecreated" date,
	"journaltime" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."journalpostings" OWNER TO "his";

-- ----------------------------
--  Table structure for bulkpayments
-- ----------------------------
DROP TABLE IF EXISTS "public"."bulkpayments";
CREATE TABLE "public"."bulkpayments" (
	"id" int4 NOT NULL DEFAULT nextval('bulkpayments_id_seq'::regclass),
	"amount" float8,
	"refnum" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."bulkpayments" OWNER TO "his";

-- ----------------------------
--  Table structure for inpatientrecords
-- ----------------------------
DROP TABLE IF EXISTS "public"."inpatientrecords";
CREATE TABLE "public"."inpatientrecords" (
	"id" int4 NOT NULL DEFAULT nextval('inpatientrecords_id_seq'::regclass),
	"treatment_id" int4 NOT NULL,
	"indate" timestamp(6) NULL,
	"dischargedate" timestamp(6) NULL,
	"user_id" int4,
	"bednumber" varchar(255) COLLATE "default",
	"room_id" int4 NOT NULL,
	"contactperson" varchar(255) COLLATE "default",
	"contactphone" varchar(255) COLLATE "default",
	"inpatientstat_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"dischargeremark" varchar(255) COLLATE "default",
	"remark" varchar(255) COLLATE "default",
	"refferedby" varchar(255) COLLATE "default",
	"dischargetype_id" int4,
	"dischargeby_id" int4,
	"reactivatedby_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."inpatientrecords" OWNER TO "his";

-- ----------------------------
--  Table structure for calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."calendars";
CREATE TABLE "public"."calendars" (
	"id" int2 NOT NULL,
	"startdate" date,
	"enddate" date,
	"event" varchar(255) COLLATE "default",
	"state_id" int2
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."calendars" OWNER TO "his";

-- ----------------------------
--  Table structure for rnstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."rnstats";
CREATE TABLE "public"."rnstats" (
	"id" int4 NOT NULL DEFAULT nextval('rnstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."rnstats" OWNER TO "his";

-- ----------------------------
--  Table structure for queuecallings
-- ----------------------------
DROP TABLE IF EXISTS "public"."queuecallings";
CREATE TABLE "public"."queuecallings" (
	"id" int4 NOT NULL DEFAULT nextval('queuecallings_id_seq'::regclass),
	"treatment_id" int4,
	"user_id" int4,
	"locationroom_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"calltime" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queuecallings" OWNER TO "his";

-- ----------------------------
--  Table structure for reporttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."reporttypes";
CREATE TABLE "public"."reporttypes" (
	"id" int4 NOT NULL DEFAULT nextval('reporttypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"price_code" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."reporttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for warehouserequests
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouserequests";
CREATE TABLE "public"."warehouserequests" (
	"id" int4 NOT NULL DEFAULT nextval('warehouserequests_id_seq'::regclass),
	"requser_id" int4,
	"reqwarehouse_id" int4,
	"reqquantity" int4,
	"reqsubstore_id" int4,
	"reqdatetime" timestamp(6) NULL,
	"warehousereqstat_id" int4,
	"apprquantity" int4,
	"appruser_id" int4,
	"apprdatetime" timestamp(6) NULL,
	"apprsubstore_id" int4,
	"remark" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."warehouserequests" OWNER TO "his";

-- ----------------------------
--  Table structure for drugstrengths
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugstrengths";
CREATE TABLE "public"."drugstrengths" (
	"id" int4 NOT NULL DEFAULT nextval('drugstrengths_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugstrengths" OWNER TO "his";

-- ----------------------------
--  Table structure for labpriorities
-- ----------------------------
DROP TABLE IF EXISTS "public"."labpriorities";
CREATE TABLE "public"."labpriorities" (
	"id" int4 NOT NULL DEFAULT nextval('labpriorities_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labpriorities" OWNER TO "his";

-- ----------------------------
--  Table structure for labattachments
-- ----------------------------
DROP TABLE IF EXISTS "public"."labattachments";
CREATE TABLE "public"."labattachments" (
	"id" int4 NOT NULL DEFAULT nextval('labattachments_id_seq'::regclass),
	"labresult_id" int4,
	"filename" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"uploader_id" int4 NOT NULL,
	"labattachmentstat_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labattachments" OWNER TO "his";

-- ----------------------------
--  Table structure for audittrails
-- ----------------------------
DROP TABLE IF EXISTS "public"."audittrails";
CREATE TABLE "public"."audittrails" (
	"id" int4 NOT NULL DEFAULT nextval('audittrails_id_seq'::regclass),
	"audittype_id" int4 NOT NULL,
	"treatment_id" int4,
	"starttime" timestamp(6) NULL,
	"endtime" timestamp(6) NULL,
	"treatmentroom_id" int4,
	"user_id" int4,
	"ipaddress" varchar(255) COLLATE "default",
	"oldroom_id" int4,
	"newroom_id" int4,
	"remark" text COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"patient_id" int4,
	"staff_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."audittrails" OWNER TO "his";

-- ----------------------------
--  Table structure for labtemplates
-- ----------------------------
DROP TABLE IF EXISTS "public"."labtemplates";
CREATE TABLE "public"."labtemplates" (
	"id" int4 NOT NULL DEFAULT nextval('labtemplates_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"html" text COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labtemplates" OWNER TO "his";

-- ----------------------------
--  Table structure for soundevents
-- ----------------------------
DROP TABLE IF EXISTS "public"."soundevents";
CREATE TABLE "public"."soundevents" (
	"id" int4 NOT NULL DEFAULT nextval('soundevents_id_seq'::regclass),
	"eventname" varchar(255) COLLATE "default",
	"eventtype" varchar(255) COLLATE "default",
	"eventattrib" varchar(255) COLLATE "default",
	"syntax" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."soundevents" OWNER TO "his";

-- ----------------------------
--  Table structure for statusrows
-- ----------------------------
DROP TABLE IF EXISTS "public"."statusrows";
CREATE TABLE "public"."statusrows" (
	"id" int4 NOT NULL DEFAULT nextval('statusrows_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."statusrows" OWNER TO "his";

-- ----------------------------
--  Table structure for patientqueues
-- ----------------------------
DROP TABLE IF EXISTS "public"."patientqueues";
CREATE TABLE "public"."patientqueues" (
	"id" int4 NOT NULL DEFAULT nextval('patientqueues_id_seq'::regclass),
	"treatment_id" int4 NOT NULL,
	"qnum" varchar(255) COLLATE "default",
	"qstart" timestamp(6) NULL,
	"qend" timestamp(6) NULL,
	"treatmentroom_id" int4 NOT NULL,
	"callcount" int4,
	"queuetype_id" int4 NOT NULL,
	"queuestat_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."patientqueues" OWNER TO "his";

-- ----------------------------
--  Table structure for paymentmethods
-- ----------------------------
DROP TABLE IF EXISTS "public"."paymentmethods";
CREATE TABLE "public"."paymentmethods" (
	"id" int4 NOT NULL DEFAULT nextval('paymentmethods_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."paymentmethods" OWNER TO "his";

-- ----------------------------
--  Table structure for religions
-- ----------------------------
DROP TABLE IF EXISTS "public"."religions";
CREATE TABLE "public"."religions" (
	"id" int4 NOT NULL DEFAULT nextval('religions_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."religions" OWNER TO "his";

-- ----------------------------
--  Table structure for roomreservestats
-- ----------------------------
DROP TABLE IF EXISTS "public"."roomreservestats";
CREATE TABLE "public"."roomreservestats" (
	"id" int4 NOT NULL DEFAULT nextval('roomreservestats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."roomreservestats" OWNER TO "his";

-- ----------------------------
--  Table structure for stockstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."stockstats";
CREATE TABLE "public"."stockstats" (
	"id" int4 NOT NULL DEFAULT nextval('stockstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."stockstats" OWNER TO "his";

-- ----------------------------
--  Table structure for runningnumbers
-- ----------------------------
DROP TABLE IF EXISTS "public"."runningnumbers";
CREATE TABLE "public"."runningnumbers" (
	"id" int4 NOT NULL DEFAULT nextval('runningnumbers_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"info" varchar(255) COLLATE "default",
	"running" int8,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."runningnumbers" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationtemplates
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationtemplates";
CREATE TABLE "public"."notificationtemplates" (
	"id" int4 NOT NULL DEFAULT nextval('notificationtemplates_id_seq'::regclass),
	"name" varchar(255) COLLATE "default",
	"header" varchar(255) COLLATE "default",
	"body" text COLLATE "default",
	"remark" varchar(255) COLLATE "default",
	"notificationmethod_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationtemplates" OWNER TO "his";

-- ----------------------------
--  Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS "public"."accounts";
CREATE TABLE "public"."accounts" (
	"id" int4 NOT NULL DEFAULT nextval('accounts_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"balance" float8,
	"add1" varchar(255) COLLATE "default",
	"add2" varchar(255) COLLATE "default",
	"add3" varchar(255) COLLATE "default",
	"add4" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"accounttype_id" int4,
	"eligibility" float8,
	"disabled" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."accounts" OWNER TO "his";

-- ----------------------------
--  Table structure for reportstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."reportstats";
CREATE TABLE "public"."reportstats" (
	"id" int4 NOT NULL DEFAULT nextval('reportstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."reportstats" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationgroup_contacts
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationgroup_contacts";
CREATE TABLE "public"."notificationgroup_contacts" (
	"id" int4 NOT NULL DEFAULT nextval('notificationgroup_contacts_id_seq'::regclass),
	"contact_id" int4,
	"notificationgroup_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationgroup_contacts" OWNER TO "his";

-- ----------------------------
--  Table structure for hismodules
-- ----------------------------
DROP TABLE IF EXISTS "public"."hismodules";
CREATE TABLE "public"."hismodules" (
	"id" int4 NOT NULL DEFAULT nextval('hismodules_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."hismodules" OWNER TO "his";

-- ----------------------------
--  Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS "public"."documents";
CREATE TABLE "public"."documents" (
	"id" int4 NOT NULL DEFAULT nextval('documents_id_seq'::regclass),
	"serialnum" varchar(255) COLLATE "default",
	"documenttype_id" int4 NOT NULL,
	"patient_id" int4 NOT NULL,
	"user_id" int4 NOT NULL,
	"mcstart" date,
	"mcend" date,
	"attndate" date,
	"attnfrom" time(6),
	"attnto" time(6),
	"html" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"mcrecheck" date,
	"rldate" date,
	"rladdr" varchar(255) COLLATE "default",
	"rldocname" varchar(255) COLLATE "default",
	"rlhisfind" varchar(255) COLLATE "default",
	"rlinvestreat" varchar(255) COLLATE "default",
	"ordate" date,
	"orreason" varchar(255) COLLATE "default",
	"mcreason" varchar(255) COLLATE "default",
	"documentstat_id" int4 NOT NULL,
	"remark" varchar(255) COLLATE "default",
	"patname" varchar(255) COLLATE "default",
	"patmykadno" varchar(12) COLLATE "default",
	"patdepartment" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."documents" OWNER TO "his";

-- ----------------------------
--  Table structure for chargegroups
-- ----------------------------
DROP TABLE IF EXISTS "public"."chargegroups";
CREATE TABLE "public"."chargegroups" (
	"id" int4 NOT NULL DEFAULT nextval('chargegroups_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."chargegroups" OWNER TO "his";

-- ----------------------------
--  Table structure for soundassignations
-- ----------------------------
DROP TABLE IF EXISTS "public"."soundassignations";
CREATE TABLE "public"."soundassignations" (
	"id" int4 NOT NULL DEFAULT nextval('soundassignations_id_seq'::regclass),
	"soundevent_id" int4,
	"value" varchar(255) COLLATE "default",
	"sound_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."soundassignations" OWNER TO "his";

-- ----------------------------
--  Table structure for permissionstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissionstats";
CREATE TABLE "public"."permissionstats" (
	"id" int4 NOT NULL DEFAULT nextval('permissionstats_id_seq'::regclass),
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."permissionstats" OWNER TO "his";

-- ----------------------------
--  Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS "public"."contacts";
CREATE TABLE "public"."contacts" (
	"id" int4 NOT NULL DEFAULT nextval('contacts_id_seq'::regclass),
	"name" varchar(255) COLLATE "default",
	"phone" varchar(255) COLLATE "default",
	"email" varchar(255) COLLATE "default",
	"patient_id" int4,
	"user_id" int4,
	"gender_id" int4,
	"state_id" int4,
	"panel_id" int4,
	"religion_id" int4,
	"race_id" int4,
	"marital_id" int4,
	"bloodtype_id" int4,
	"contactstat_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."contacts" OWNER TO "his";

-- ----------------------------
--  Table structure for nationalities
-- ----------------------------
DROP TABLE IF EXISTS "public"."nationalities";
CREATE TABLE "public"."nationalities" (
	"id" int4 NOT NULL DEFAULT nextval('nationalities_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."nationalities" OWNER TO "his";

-- ----------------------------
--  Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehouses";
CREATE TABLE "public"."warehouses" (
	"id" int4 NOT NULL DEFAULT nextval('warehouses_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"scientificname" varchar(255) COLLATE "default",
	"drugtype_id" int4,
	"drugcategory_id" int4,
	"minstock" float4 DEFAULT 100,
	"orderstock" float4 DEFAULT 250,
	"maxstock" float4 DEFAULT 1000,
	"strength" float4,
	"drugstrength_id" int4,
	"dosage" int4,
	"drugdosage_id" int4,
	"drugroute_id" int4,
	"drugfrequency_id" int4,
	"duration" int4,
	"drugduration_id" int4,
	"quantity" float4,
	"drugprocedure_id" int4,
	"balancestock" float4 DEFAULT 0.00,
	"price_code" int4,
	"warehousetype_id" int4 NOT NULL,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"drugprn_id" int4,
	"substore_id" int4,
	"stockstat_id" int4,
	"batchnum" varchar(255) COLLATE "default",
	"expireddate" timestamp(6) NULL,
	"vendor_id" int4,
	"account" varchar(20) COLLATE "default",
	"orderunit" varchar(20) COLLATE "default",
	"orderprice" float4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."warehouses" OWNER TO "his";

-- ----------------------------
--  Table structure for treatments
-- ----------------------------
DROP TABLE IF EXISTS "public"."treatments";
CREATE TABLE "public"."treatments" (
	"id" int4 NOT NULL DEFAULT nextval('treatments_id_seq'::regclass),
	"patient_id" int4 NOT NULL,
	"patienttype_id" int4 NOT NULL,
	"treatmentstat_id" int4 NOT NULL,
	"user_id" int4,
	"panel_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"canvas_total" int4 DEFAULT 0,
	"diagnosis" text COLLATE "default",
	"medicalprescription" text COLLATE "default",
	"discipline_id" int4,
	"doctor_id" int4,
	"paymenttype_id" int4,
	"sn" varchar(20) COLLATE "default",
	"doctorname" varchar(100) COLLATE "default",
	"legal" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."treatments" OWNER TO "his";

-- ----------------------------
--  Table structure for consultationtemplates
-- ----------------------------
DROP TABLE IF EXISTS "public"."consultationtemplates";
CREATE TABLE "public"."consultationtemplates" (
	"id" int4 NOT NULL DEFAULT nextval('consultationtemplates_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"html" text COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."consultationtemplates" OWNER TO "his";

-- ----------------------------
--  Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
	"id" int4 NOT NULL DEFAULT nextval('roles_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."roles" OWNER TO "his";

-- ----------------------------
--  Table structure for cashregisters
-- ----------------------------
DROP TABLE IF EXISTS "public"."cashregisters";
CREATE TABLE "public"."cashregisters" (
	"id" int4 NOT NULL DEFAULT nextval('cashregisters_id_seq'::regclass),
	"billing_id" int4 NOT NULL,
	"user_id" int4 NOT NULL,
	"paymenttype_id" int4 NOT NULL,
	"amount" float4 NOT NULL,
	"cardnumber" varchar(100) COLLATE "default",
	"account_id" int4,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"closetime" timestamp(6) NULL,
	"isdeposit" bool NOT NULL DEFAULT false,
	"reversed" bool NOT NULL DEFAULT false,
	"billitem_id" int4,
	"shift_id" int4,
	"reverseddate" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."cashregisters" OWNER TO "his";

-- ----------------------------
--  Table structure for queuestats
-- ----------------------------
DROP TABLE IF EXISTS "public"."queuestats";
CREATE TABLE "public"."queuestats" (
	"id" int4 NOT NULL DEFAULT nextval('queuestats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."queuestats" OWNER TO "his";

-- ----------------------------
--  Table structure for documentstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."documentstats";
CREATE TABLE "public"."documentstats" (
	"id" int4 NOT NULL DEFAULT nextval('documentstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."documentstats" OWNER TO "his";

-- ----------------------------
--  Table structure for labattachmentstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."labattachmentstats";
CREATE TABLE "public"."labattachmentstats" (
	"id" int4 NOT NULL DEFAULT nextval('labattachmentstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labattachmentstats" OWNER TO "his";

-- ----------------------------
--  Table structure for billingstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."billingstats";
CREATE TABLE "public"."billingstats" (
	"id" int4 NOT NULL DEFAULT nextval('billingstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."billingstats" OWNER TO "his";

-- ----------------------------
--  Table structure for drugtypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugtypes";
CREATE TABLE "public"."drugtypes" (
	"id" int4 NOT NULL DEFAULT nextval('drugtypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugtypes" OWNER TO "his";

-- ----------------------------
--  Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS "public"."prices";
CREATE TABLE "public"."prices" (
	"id" int4 NOT NULL DEFAULT nextval('prices_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"panel_id" int4,
	"actualcost" varchar(255) COLLATE "default",
	"recommendedprice" varchar(255) COLLATE "default",
	"pricetype" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"tax" float4 DEFAULT 0,
	"rs_commission" numeric DEFAULT 0,
	"vs_commission" numeric DEFAULT 0,
	"chargegroup_id" int4,
	"reduce" bool DEFAULT true
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."prices" OWNER TO "his";

-- ----------------------------
--  Table structure for patients
-- ----------------------------
DROP TABLE IF EXISTS "public"."patients";
CREATE TABLE "public"."patients" (
	"id" int4 NOT NULL DEFAULT nextval('patients_id_seq'::regclass),
	"mrn" varchar(255) COLLATE "default",
	"mykadno" varchar(255) COLLATE "default",
	"passport" varchar(255) COLLATE "default",
	"birthcert" varchar(255) COLLATE "default",
	"fullname" varchar(255) COLLATE "default",
	"addr1" varchar(255) COLLATE "default",
	"addr2" varchar(255) COLLATE "default",
	"city" varchar(255) COLLATE "default",
	"postcode" varchar(255) COLLATE "default",
	"state_id" int4 DEFAULT 1,
	"phone" varchar(255) COLLATE "default",
	"email" varchar(255) COLLATE "default",
	"panel_id" int4 NOT NULL DEFAULT 1,
	"medicalrecord" varchar(255) COLLATE "default",
	"gender_id" int4 DEFAULT 1,
	"nationality_id" int4 DEFAULT 1,
	"occupation" varchar(255) COLLATE "default",
	"religion_id" int4 DEFAULT 1,
	"marital_id" int4 DEFAULT 1,
	"race_id" int4 DEFAULT 1,
	"info" text COLLATE "default",
	"allergy" text COLLATE "default",
	"bloodtype_id" int4 DEFAULT 1,
	"patientstat_id" int4 NOT NULL DEFAULT 1,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"status" varchar(255) COLLATE "default",
	"medicalhistory" varchar(255) COLLATE "default",
	"familyhistory" varchar(255) COLLATE "default",
	"rnstat_id" int4 DEFAULT 1,
	"designation_id" int4 DEFAULT 1,
	"profession" varchar(255) COLLATE "default",
	"employer" varchar(255) COLLATE "default",
	"relname" varchar(255) COLLATE "default",
	"relrelation" varchar(255) COLLATE "default",
	"reladd1" varchar(255) COLLATE "default",
	"reladd2" varchar(255) COLLATE "default",
	"reltel" varchar(255) COLLATE "default",
	"homephone" varchar(20) COLLATE "default",
	"employerphone" varchar(20) COLLATE "default",
	"dob" date,
	"rntype_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."patients" OWNER TO "his";

-- ----------------------------
--  Table structure for billitemstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."billitemstats";
CREATE TABLE "public"."billitemstats" (
	"id" int4 NOT NULL DEFAULT nextval('billitemstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."billitemstats" OWNER TO "his";

-- ----------------------------
--  Table structure for roomreservations
-- ----------------------------
DROP TABLE IF EXISTS "public"."roomreservations";
CREATE TABLE "public"."roomreservations" (
	"id" int4 NOT NULL DEFAULT nextval('roomreservations_id_seq'::regclass),
	"room_id" int4,
	"from" timestamp(6) NULL,
	"to" timestamp(6) NULL,
	"remark" varchar(255) COLLATE "default",
	"user_id" int4,
	"roomreservestat_id" int4,
	"patient_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."roomreservations" OWNER TO "his";

-- ----------------------------
--  Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS "public"."notifications";
CREATE TABLE "public"."notifications" (
	"id" int4 NOT NULL DEFAULT nextval('notifications_id_seq'::regclass),
	"header" varchar(255) COLLATE "default",
	"body" text COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"notificationtype_id" int4,
	"contact_id" int4,
	"notificationgroup_id" int4,
	"remark" varchar(255) COLLATE "default",
	"notificationstat_id" int4,
	"notificationmethod_id" int4,
	"deliverydatetime" timestamp(6) NULL,
	"user_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notifications" OWNER TO "his";

-- ----------------------------
--  Table structure for warehousereqstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehousereqstats";
CREATE TABLE "public"."warehousereqstats" (
	"id" int4 NOT NULL DEFAULT nextval('warehousereqstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."warehousereqstats" OWNER TO "his";

-- ----------------------------
--  Table structure for closingbalances
-- ----------------------------
DROP TABLE IF EXISTS "public"."closingbalances";
CREATE TABLE "public"."closingbalances" (
	"id" int4 NOT NULL DEFAULT nextval('closingbalances_id_seq'::regclass),
	"account_id" int4,
	"balance" float8,
	"closingdate" timestamp(6) NULL,
	"closingtype" "public"."closingtype",
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."closingbalances" OWNER TO "his";

-- ----------------------------
--  Table structure for locationrooms
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationrooms";
CREATE TABLE "public"."locationrooms" (
	"id" int4 NOT NULL DEFAULT nextval('locationrooms_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"locroomstat_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."locationrooms" OWNER TO "his";

-- ----------------------------
--  Table structure for documenttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."documenttypes";
CREATE TABLE "public"."documenttypes" (
	"id" int4 NOT NULL DEFAULT nextval('documenttypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."documenttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for appointmentstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."appointmentstats";
CREATE TABLE "public"."appointmentstats" (
	"id" int4 NOT NULL DEFAULT nextval('appointmentstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."appointmentstats" OWNER TO "his";

-- ----------------------------
--  Table structure for treatmentrooms
-- ----------------------------
DROP TABLE IF EXISTS "public"."treatmentrooms";
CREATE TABLE "public"."treatmentrooms" (
	"id" int4 NOT NULL DEFAULT nextval('treatmentrooms_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."treatmentrooms" OWNER TO "his";

-- ----------------------------
--  Table structure for genders
-- ----------------------------
DROP TABLE IF EXISTS "public"."genders";
CREATE TABLE "public"."genders" (
	"id" int4 NOT NULL DEFAULT nextval('genders_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."genders" OWNER TO "his";

-- ----------------------------
--  Table structure for supports
-- ----------------------------
DROP TABLE IF EXISTS "public"."supports";
CREATE TABLE "public"."supports" (
	"id" int4 NOT NULL DEFAULT nextval('supports_id_seq'::regclass),
	"name" varchar(255) COLLATE "default",
	"hp" varchar(12) COLLATE "default",
	"email" varchar(255) COLLATE "default",
	"rank" varchar(255) COLLATE "default",
	"image" varchar(255) COLLATE "default",
	"mon" int2,
	"tue" int2,
	"wed" int2,
	"thu" int2,
	"fri" int2,
	"sat" int2,
	"sun" int2
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."supports" OWNER TO "his";

-- ----------------------------
--  Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."schema_migrations";
CREATE TABLE "public"."schema_migrations" (
	"version" varchar(255) NOT NULL COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."schema_migrations" OWNER TO "his";

-- ----------------------------
--  Table structure for drugfrequencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugfrequencies";
CREATE TABLE "public"."drugfrequencies" (
	"id" int4 NOT NULL DEFAULT nextval('drugfrequencies_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"multiply" float4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugfrequencies" OWNER TO "his";

-- ----------------------------
--  Table structure for shifts
-- ----------------------------
DROP TABLE IF EXISTS "public"."shifts";
CREATE TABLE "public"."shifts" (
	"id" int4 NOT NULL DEFAULT nextval('shifts_id_seq'::regclass),
	"shiftid" int4,
	"start" timestamp(6) NULL,
	"end" timestamp(6) NULL,
	"amount" float4 DEFAULT 0,
	"closeby_id" int4,
	"reversed" bool DEFAULT false,
	"role_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."shifts" OWNER TO "his";

-- ----------------------------
--  Table structure for billings
-- ----------------------------
DROP TABLE IF EXISTS "public"."billings";
CREATE TABLE "public"."billings" (
	"id" int4 NOT NULL DEFAULT nextval('billings_id_seq'::regclass),
	"refnum" varchar(255) COLLATE "default",
	"patient_id" int4 NOT NULL,
	"treatment_id" int4 NOT NULL,
	"billingstat_id" int4 NOT NULL,
	"remark" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"deposit" varchar NOT NULL DEFAULT 0 COLLATE "default",
	"discount" varchar DEFAULT 0 COLLATE "default",
	"closetime" timestamp(6) NULL,
	"closeremark" varchar(255) COLLATE "default",
	"closecashier_id" int2,
	"paymentmethod_id" int4,
	"claim" bool DEFAULT false,
	"editedcreated_at" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."billings" OWNER TO "his";

-- ----------------------------
--  Table structure for dailyincomes
-- ----------------------------
DROP TABLE IF EXISTS "public"."dailyincomes";
CREATE TABLE "public"."dailyincomes" (
	"id" int4 NOT NULL DEFAULT nextval('dailyincomes_id_seq'::regclass),
	"date" date,
	"gendate" timestamp(6) NULL,
	"totalae" int4,
	"totalop" int4,
	"ipbf" int4,
	"admitted" int4,
	"discharge" int4,
	"ipmidnight" int4,
	"bor" float4,
	"numocuproom" int4,
	"numocupbed" int4,
	"numavroom" int4,
	"numavbed" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."dailyincomes" OWNER TO "his";

-- ----------------------------
--  Table structure for designations
-- ----------------------------
DROP TABLE IF EXISTS "public"."designations";
CREATE TABLE "public"."designations" (
	"id" int4 NOT NULL DEFAULT nextval('designations_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."designations" OWNER TO "his";

-- ----------------------------
--  Table structure for general_charges
-- ----------------------------
DROP TABLE IF EXISTS "public"."general_charges";
CREATE TABLE "public"."general_charges" (
	"id" int4 NOT NULL DEFAULT nextval('general_charges_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"description" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"chargetype_id" int4,
	"percentage" float8
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."general_charges" OWNER TO "his";

-- ----------------------------
--  Table structure for accounttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."accounttypes";
CREATE TABLE "public"."accounttypes" (
	"id" int4 NOT NULL DEFAULT nextval('accounttypes_id_seq'::regclass),
	"code" varchar COLLATE "default",
	"name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."accounttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for panels
-- ----------------------------
DROP TABLE IF EXISTS "public"."panels";
CREATE TABLE "public"."panels" (
	"id" int4 NOT NULL DEFAULT nextval('panels_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"balance" varchar(255) COLLATE "default",
	"add1" varchar(255) COLLATE "default",
	"add2" varchar(255) COLLATE "default",
	"add3" varchar(255) COLLATE "default",
	"add4" varchar(255) COLLATE "default",
	"disabled" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."panels" OWNER TO "his";

-- ----------------------------
--  Table structure for drugdurations
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugdurations";
CREATE TABLE "public"."drugdurations" (
	"id" int4 NOT NULL DEFAULT nextval('drugdurations_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"multiply" float4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugdurations" OWNER TO "his";

-- ----------------------------
--  Table structure for drugprns
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugprns";
CREATE TABLE "public"."drugprns" (
	"id" int4 NOT NULL DEFAULT nextval('drugprns_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugprns" OWNER TO "his";

-- ----------------------------
--  Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS "public"."vendors";
CREATE TABLE "public"."vendors" (
	"id" int4 NOT NULL DEFAULT nextval('vendors_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"contactname" varchar(255) COLLATE "default",
	"contactphone" varchar(255) COLLATE "default",
	"contactmail" varchar(255) COLLATE "default",
	"roc" varchar(255) COLLATE "default",
	"registeddate" timestamp(6) NULL,
	"remark" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"add1" varchar(255) COLLATE "default",
	"add2" varchar(255) COLLATE "default",
	"add3" varchar(255) COLLATE "default",
	"add4" varchar COLLATE "default",
	"disabled" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."vendors" OWNER TO "his";

-- ----------------------------
--  Table structure for medications
-- ----------------------------
DROP TABLE IF EXISTS "public"."medications";
CREATE TABLE "public"."medications" (
	"id" int4 NOT NULL DEFAULT nextval('medications_id_seq'::regclass),
	"treatment_id" int4 NOT NULL,
	"patienttype_id" int4 NOT NULL,
	"warehouse_id" int4 NOT NULL,
	"user_id" int4 NOT NULL,
	"strength" float4,
	"drugstrength_id" int4 NOT NULL,
	"dosage" int4,
	"drugdosage_id" int4 NOT NULL,
	"drugroute_id" int4 NOT NULL,
	"drugfrequency_id" int4 NOT NULL,
	"duration" int4,
	"drugduration_id" int4 NOT NULL,
	"quantity" int4,
	"drugprocedure_id" int4 NOT NULL,
	"drugprn_id" int4 NOT NULL,
	"instruction" varchar(255) COLLATE "default",
	"remark" varchar(255) COLLATE "default",
	"medicationstat_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"billitem_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."medications" OWNER TO "his";

-- ----------------------------
--  Table structure for purchaseorders
-- ----------------------------
DROP TABLE IF EXISTS "public"."purchaseorders";
CREATE TABLE "public"."purchaseorders" (
	"id" int4 NOT NULL DEFAULT nextval('purchaseorders_id_seq'::regclass),
	"ponumber" varchar(20) NOT NULL COLLATE "default",
	"podate" date NOT NULL,
	"voucherdate" date,
	"voucherpaytype" varchar(20) COLLATE "default",
	"department" varchar(50) COLLATE "default",
	"voucherref" varchar(20) COLLATE "default",
	"voucheraccount" varchar COLLATE "default",
	"orderfrom" varchar COLLATE "default",
	"postat_id" int4,
	"user_id" int4,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"expecteddate" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."purchaseorders" OWNER TO "his";

-- ----------------------------
--  Table structure for medicationstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."medicationstats";
CREATE TABLE "public"."medicationstats" (
	"id" int4 NOT NULL DEFAULT nextval('medicationstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."medicationstats" OWNER TO "his";

-- ----------------------------
--  Table structure for treatmenticds
-- ----------------------------
DROP TABLE IF EXISTS "public"."treatmenticds";
CREATE TABLE "public"."treatmenticds" (
	"id" int4 NOT NULL DEFAULT nextval('treatmenticds_id_seq'::regclass),
	"treatment_id" int4,
	"cause_code" varchar(255) COLLATE "default",
	"precedure_code" varchar(255) COLLATE "default",
	"desease_code" varchar(255) COLLATE "default",
	"remark" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"causeofdeath_code" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."treatmenticds" OWNER TO "his";

-- ----------------------------
--  Table structure for purchaseorder_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."purchaseorder_items";
CREATE TABLE "public"."purchaseorder_items" (
	"id" int4 NOT NULL DEFAULT nextval('purchaseorder_items_id_seq'::regclass),
	"purchaseorder_code" varchar NOT NULL COLLATE "default",
	"warehouse_code" varchar NOT NULL COLLATE "default",
	"quantity" float4,
	"price" float4,
	"account" varchar COLLATE "default",
	"user_id" int4,
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"conversion" float4,
	"partno" varchar(100) COLLATE "default",
	"rate" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."purchaseorder_items" OWNER TO "his";

-- ----------------------------
--  Table structure for drugcategories
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugcategories";
CREATE TABLE "public"."drugcategories" (
	"id" int4 NOT NULL DEFAULT nextval('drugcategories_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugcategories" OWNER TO "his";

-- ----------------------------
--  Table structure for labreports
-- ----------------------------
DROP TABLE IF EXISTS "public"."labreports";
CREATE TABLE "public"."labreports" (
	"id" int4 NOT NULL DEFAULT nextval('labreports_id_seq'::regclass),
	"treatment_id" int4 NOT NULL,
	"requester_id" int4,
	"user_id" int4,
	"labpriority_id" int4,
	"requestdate" timestamp(6) NULL,
	"requestcompleted" timestamp(6) NULL,
	"reporttype_id" int4,
	"reportstat_id" int4,
	"remark" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labreports" OWNER TO "his";

-- ----------------------------
--  Table structure for module_dependencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."module_dependencies";
CREATE TABLE "public"."module_dependencies" (
	"id" int4 NOT NULL DEFAULT nextval('module_dependencies_id_seq'::regclass),
	"module_id" int4,
	"route" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."module_dependencies" OWNER TO "his";

-- ----------------------------
--  Table structure for inpatientstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."inpatientstats";
CREATE TABLE "public"."inpatientstats" (
	"id" int4 NOT NULL DEFAULT nextval('inpatientstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."inpatientstats" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationtypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationtypes";
CREATE TABLE "public"."notificationtypes" (
	"id" int4 NOT NULL DEFAULT nextval('notificationtypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationtypes" OWNER TO "his";

-- ----------------------------
--  Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
	"id" int4 NOT NULL DEFAULT nextval('permissions_id_seq'::regclass),
	"route" varchar(255) COLLATE "default",
	"accessor" varchar(255) COLLATE "default",
	"accessor_id" int4,
	"action" varchar(255) COLLATE "default",
	"permissionstat_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."permissions" OWNER TO "his";

-- ----------------------------
--  Table structure for maritals
-- ----------------------------
DROP TABLE IF EXISTS "public"."maritals";
CREATE TABLE "public"."maritals" (
	"id" int4 NOT NULL DEFAULT nextval('maritals_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."maritals" OWNER TO "his";

-- ----------------------------
--  Table structure for warehousetypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."warehousetypes";
CREATE TABLE "public"."warehousetypes" (
	"id" int4 NOT NULL DEFAULT nextval('warehousetypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."warehousetypes" OWNER TO "his";

-- ----------------------------
--  Table structure for substores
-- ----------------------------
DROP TABLE IF EXISTS "public"."substores";
CREATE TABLE "public"."substores" (
	"id" int4 NOT NULL DEFAULT nextval('substores_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"disabled" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."substores" OWNER TO "his";

-- ----------------------------
--  Table structure for unused_runningnumbers
-- ----------------------------
DROP TABLE IF EXISTS "public"."unused_runningnumbers";
CREATE TABLE "public"."unused_runningnumbers" (
	"id" int4 NOT NULL DEFAULT nextval('unused_runningnumbers_id_seq'::regclass),
	"running" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"used" bool,
	"code" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."unused_runningnumbers" OWNER TO "his";

-- ----------------------------
--  Table structure for labitems
-- ----------------------------
DROP TABLE IF EXISTS "public"."labitems";
CREATE TABLE "public"."labitems" (
	"id" int4 NOT NULL DEFAULT nextval('labitems_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"unit" varchar(255) COLLATE "default",
	"normalvalue" varchar(255) COLLATE "default",
	"reporttype_id" int4 NOT NULL,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"attachment" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labitems" OWNER TO "his";

-- ----------------------------
--  Table structure for floorlevels
-- ----------------------------
DROP TABLE IF EXISTS "public"."floorlevels";
CREATE TABLE "public"."floorlevels" (
	"id" int4 NOT NULL DEFAULT nextval('floorlevels_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."floorlevels" OWNER TO "his";

-- ----------------------------
--  Table structure for suspendedfolios
-- ----------------------------
DROP TABLE IF EXISTS "public"."suspendedfolios";
CREATE TABLE "public"."suspendedfolios" (
	"id" int4 NOT NULL DEFAULT nextval('suspendedfolios_id_seq'::regclass),
	"billing_id" int4,
	"balance" numeric(10,2),
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."suspendedfolios" OWNER TO "his";

-- ----------------------------
--  Table structure for lookupinfos
-- ----------------------------
DROP TABLE IF EXISTS "public"."lookupinfos";
CREATE TABLE "public"."lookupinfos" (
	"id" int4 NOT NULL DEFAULT nextval('lookupinfos_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"title" varchar(255) COLLATE "default",
	"definition" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."lookupinfos" OWNER TO "his";

-- ----------------------------
--  Table structure for notifystats
-- ----------------------------
DROP TABLE IF EXISTS "public"."notifystats";
CREATE TABLE "public"."notifystats" (
	"id" int4 NOT NULL DEFAULT nextval('notifystats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notifystats" OWNER TO "his";

-- ----------------------------
--  Table structure for doctortypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."doctortypes";
CREATE TABLE "public"."doctortypes" (
	"id" int4 NOT NULL DEFAULT nextval('doctortypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."doctortypes" OWNER TO "his";

-- ----------------------------
--  Table structure for vacantstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."vacantstats";
CREATE TABLE "public"."vacantstats" (
	"id" int4 NOT NULL DEFAULT nextval('vacantstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."vacantstats" OWNER TO "his";

-- ----------------------------
--  Table structure for dischargetypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."dischargetypes";
CREATE TABLE "public"."dischargetypes" (
	"id" int4 NOT NULL DEFAULT nextval('dischargetypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."dischargetypes" OWNER TO "his";

-- ----------------------------
--  Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."departments";
CREATE TABLE "public"."departments" (
	"id" int4 NOT NULL DEFAULT nextval('departments_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."departments" OWNER TO "his";

-- ----------------------------
--  Table structure for mykad_records
-- ----------------------------
DROP TABLE IF EXISTS "public"."mykad_records";
CREATE TABLE "public"."mykad_records" (
	"id" int4 NOT NULL DEFAULT nextval('mykad_records_id_seq'::regclass),
	"name" varchar(255) COLLATE "default",
	"nokp" varchar(255) COLLATE "default",
	"gender" varchar(255) COLLATE "default",
	"oldic" varchar(255) COLLATE "default",
	"dob" varchar(255) COLLATE "default",
	"birthplace" varchar(255) COLLATE "default",
	"citizenship" varchar(255) COLLATE "default",
	"race" varchar(255) COLLATE "default",
	"religion" varchar(255) COLLATE "default",
	"address1" varchar(255) COLLATE "default",
	"address2" varchar(255) COLLATE "default",
	"address3" varchar(255) COLLATE "default",
	"postcode" varchar(255) COLLATE "default",
	"city" varchar(255) COLLATE "default",
	"state" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"fathermykad" varchar(12) COLLATE "default",
	"mothermykad" varchar(12) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."mykad_records" OWNER TO "his";

-- ----------------------------
--  Table structure for postats
-- ----------------------------
DROP TABLE IF EXISTS "public"."postats";
CREATE TABLE "public"."postats" (
	"id" int4 NOT NULL DEFAULT nextval('postats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."postats" OWNER TO "his";

-- ----------------------------
--  Table structure for labcharges
-- ----------------------------
DROP TABLE IF EXISTS "public"."labcharges";
CREATE TABLE "public"."labcharges" (
	"id" int4 NOT NULL DEFAULT nextval('labcharges_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labcharges" OWNER TO "his";

-- ----------------------------
--  Table structure for treatmentstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."treatmentstats";
CREATE TABLE "public"."treatmentstats" (
	"id" int4 NOT NULL DEFAULT nextval('treatmentstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."treatmentstats" OWNER TO "his";

-- ----------------------------
--  Table structure for bloodtypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."bloodtypes";
CREATE TABLE "public"."bloodtypes" (
	"id" int4 NOT NULL DEFAULT nextval('bloodtypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."bloodtypes" OWNER TO "his";

-- ----------------------------
--  Table structure for labresultstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."labresultstats";
CREATE TABLE "public"."labresultstats" (
	"id" int4 NOT NULL DEFAULT nextval('labresultstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."labresultstats" OWNER TO "his";

-- ----------------------------
--  Table structure for locationroomstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."locationroomstats";
CREATE TABLE "public"."locationroomstats" (
	"id" int4 NOT NULL DEFAULT nextval('locationroomstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."locationroomstats" OWNER TO "his";

-- ----------------------------
--  Table structure for inpatientroomcategories
-- ----------------------------
DROP TABLE IF EXISTS "public"."inpatientroomcategories";
CREATE TABLE "public"."inpatientroomcategories" (
	"id" int4 NOT NULL DEFAULT nextval('inpatientroomcategories_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"disabled" bool DEFAULT false
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."inpatientroomcategories" OWNER TO "his";

-- ----------------------------
--  Table structure for audittypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."audittypes";
CREATE TABLE "public"."audittypes" (
	"id" int4 NOT NULL DEFAULT nextval('audittypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."audittypes" OWNER TO "his";

-- ----------------------------
--  Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS "public"."rooms";
CREATE TABLE "public"."rooms" (
	"id" int4 NOT NULL DEFAULT nextval('rooms_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"price_code" int4,
	"inpatientroomcategory_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"vacantstat_id" int4,
	"floorlevel_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."rooms" OWNER TO "his";

-- ----------------------------
--  Table structure for paymenttypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."paymenttypes";
CREATE TABLE "public"."paymenttypes" (
	"id" int4 NOT NULL DEFAULT nextval('paymenttypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."paymenttypes" OWNER TO "his";

-- ----------------------------
--  Table structure for rntypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."rntypes";
CREATE TABLE "public"."rntypes" (
	"id" int4 NOT NULL DEFAULT nextval('rntypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."rntypes" OWNER TO "his";

-- ----------------------------
--  Table structure for userstats
-- ----------------------------
DROP TABLE IF EXISTS "public"."userstats";
CREATE TABLE "public"."userstats" (
	"id" int4 NOT NULL DEFAULT nextval('userstats_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."userstats" OWNER TO "his";

-- ----------------------------
--  Table structure for notificationgroups
-- ----------------------------
DROP TABLE IF EXISTS "public"."notificationgroups";
CREATE TABLE "public"."notificationgroups" (
	"id" int4 NOT NULL DEFAULT nextval('notificationgroups_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."notificationgroups" OWNER TO "his";

-- ----------------------------
--  Table structure for drugdosages
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugdosages";
CREATE TABLE "public"."drugdosages" (
	"id" int4 NOT NULL DEFAULT nextval('drugdosages_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugdosages" OWNER TO "his";

-- ----------------------------
--  Table structure for drugroutes
-- ----------------------------
DROP TABLE IF EXISTS "public"."drugroutes";
CREATE TABLE "public"."drugroutes" (
	"id" int4 NOT NULL DEFAULT nextval('drugroutes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."drugroutes" OWNER TO "his";

-- ----------------------------
--  Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS "public"."payments";
CREATE TABLE "public"."payments" (
	"id" int4 NOT NULL DEFAULT nextval('payments_id_seq'::regclass),
	"billing_id" int4,
	"paymentamount" float8,
	"paymentdate" timestamp(6) NULL,
	"user_id" int4,
	"description" varchar(255) COLLATE "default",
	"account_id" int4,
	"paymenttype_id" int4,
	"paymentinfo" varchar(255) COLLATE "default",
	"reference" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NULL,
	"updated_at" timestamp(6) NULL,
	"account" varchar(255) COLLATE "default",
	"bringforward_id" int4,
	"reversed" bool DEFAULT false,
	"bulkpayment_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."payments" OWNER TO "his";

-- ----------------------------
--  Table structure for rssfeeds
-- ----------------------------
DROP TABLE IF EXISTS "public"."rssfeeds";
CREATE TABLE "public"."rssfeeds" (
	"id" int4 NOT NULL DEFAULT nextval('rssfeeds_id_seq'::regclass),
	"url" varchar(255) COLLATE "default",
	"icon" varchar(255) COLLATE "default",
	"numentry" int4,
	"statusrow_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."rssfeeds" OWNER TO "his";

-- ----------------------------
--  Table structure for races
-- ----------------------------
DROP TABLE IF EXISTS "public"."races";
CREATE TABLE "public"."races" (
	"id" int4 NOT NULL DEFAULT nextval('races_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."races" OWNER TO "his";

-- ----------------------------
--  Table structure for chargetypes
-- ----------------------------
DROP TABLE IF EXISTS "public"."chargetypes";
CREATE TABLE "public"."chargetypes" (
	"id" int4 NOT NULL DEFAULT nextval('chargetypes_id_seq'::regclass),
	"code" varchar(255) COLLATE "default",
	"name" varchar(255) COLLATE "default",
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."chargetypes" OWNER TO "his";

-- ----------------------------
--  Table structure for appointments
-- ----------------------------
DROP TABLE IF EXISTS "public"."appointments";
CREATE TABLE "public"."appointments" (
	"id" int4 NOT NULL DEFAULT nextval('appointments_id_seq'::regclass),
	"patient_id" int4 NOT NULL,
	"date" date,
	"timestart" time(6),
	"timeend" time(6),
	"user_id" int4,
	"appointmentstat_id" int4,
	"created_at" timestamp(6) NOT NULL,
	"updated_at" timestamp(6) NOT NULL,
	"remark" varchar COLLATE "default",
	"doctor_id" int4,
	"notifystat_id" int4,
	"appointmenttype_id" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."appointments" OWNER TO "his";


-- ----------------------------
--  Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."abh_admin_users_id_seq" RESTART 5;
ALTER SEQUENCE "public"."accounts_id_seq" RESTART 1297;
ALTER SEQUENCE "public"."accounttypes_id_seq" RESTART 4;
ALTER SEQUENCE "public"."admin_notes_id_seq" RESTART 2;
ALTER SEQUENCE "public"."advertisements_id_seq" RESTART 40;
ALTER SEQUENCE "public"."appointments_id_seq" RESTART 6289;
ALTER SEQUENCE "public"."appointmentstats_id_seq" RESTART 8 OWNED BY "appointmentstats"."id";
ALTER SEQUENCE "public"."appointmenttypes_id_seq" RESTART 29 OWNED BY "appointmenttypes"."id";
ALTER SEQUENCE "public"."audittrails_id_seq" RESTART 263753;
ALTER SEQUENCE "public"."audittypes_id_seq" RESTART 39 OWNED BY "audittypes"."id";
ALTER SEQUENCE "public"."billings_id_seq" RESTART 27595;
ALTER SEQUENCE "public"."billingstats_id_seq" RESTART 6 OWNED BY "billingstats"."id";
ALTER SEQUENCE "public"."billitems_id_seq" RESTART 398129;
ALTER SEQUENCE "public"."billitemstats_id_seq" RESTART 6;
ALTER SEQUENCE "public"."bloodtypes_id_seq" RESTART 9 OWNED BY "bloodtypes"."id";
ALTER SEQUENCE "public"."bringforwards_id_seq" RESTART 2508;
ALTER SEQUENCE "public"."bulkpayments_id_seq" RESTART 2;
ALTER SEQUENCE "public"."cashregisters_id_seq" RESTART 19849;
ALTER SEQUENCE "public"."chargegroups_id_seq" RESTART 102;
ALTER SEQUENCE "public"."chargetypes_id_seq" RESTART 17;
ALTER SEQUENCE "public"."cities_id_seq" RESTART 14 OWNED BY "cities"."id";
ALTER SEQUENCE "public"."closingbalances_id_seq" RESTART 648437;
ALTER SEQUENCE "public"."consultationtemplates_id_seq" RESTART 3;
ALTER SEQUENCE "public"."contacts_id_seq" RESTART 92028;
ALTER SEQUENCE "public"."contactstats_id_seq" RESTART 4 OWNED BY "contactstats"."id";
ALTER SEQUENCE "public"."dailyincomes_id_seq" RESTART 264 OWNED BY "dailyincomes"."id";
ALTER SEQUENCE "public"."departments_id_seq" RESTART 17 OWNED BY "departments"."id";
ALTER SEQUENCE "public"."designations_id_seq" RESTART 18 OWNED BY "designations"."id";
ALTER SEQUENCE "public"."dischargetypes_id_seq" RESTART 7 OWNED BY "dischargetypes"."id";
ALTER SEQUENCE "public"."disciplines_id_seq" RESTART 23;
ALTER SEQUENCE "public"."doctortypes_id_seq" RESTART 4 OWNED BY "doctortypes"."id";
ALTER SEQUENCE "public"."documents_id_seq" RESTART 2;
ALTER SEQUENCE "public"."documentstats_id_seq" RESTART 4 OWNED BY "documentstats"."id";
ALTER SEQUENCE "public"."documenttypes_id_seq" RESTART 5 OWNED BY "documenttypes"."id";
ALTER SEQUENCE "public"."drugcategories_id_seq" RESTART 310;
ALTER SEQUENCE "public"."drugdosages_id_seq" RESTART 47 OWNED BY "drugdosages"."id";
ALTER SEQUENCE "public"."drugdurations_id_seq" RESTART 5 OWNED BY "drugdurations"."id";
ALTER SEQUENCE "public"."drugfrequencies_id_seq" RESTART 23;
ALTER SEQUENCE "public"."drugprns_id_seq" RESTART 4 OWNED BY "drugprns"."id";
ALTER SEQUENCE "public"."drugprocedures_id_seq" RESTART 5;
ALTER SEQUENCE "public"."drugroutes_id_seq" RESTART 35 OWNED BY "drugroutes"."id";
ALTER SEQUENCE "public"."drugstrengths_id_seq" RESTART 15 OWNED BY "drugstrengths"."id";
ALTER SEQUENCE "public"."drugtypes_id_seq" RESTART 10 OWNED BY "drugtypes"."id";
ALTER SEQUENCE "public"."floorlevels_id_seq" RESTART 4 OWNED BY "floorlevels"."id";
ALTER SEQUENCE "public"."genders_id_seq" RESTART 5 OWNED BY "genders"."id";
ALTER SEQUENCE "public"."general_charges_id_seq" RESTART 1355;
ALTER SEQUENCE "public"."hismodules_id_seq" RESTART 25;
ALTER SEQUENCE "public"."icds_id_seq" RESTART 124501;
ALTER SEQUENCE "public"."icdtypes_id_seq" RESTART 5;
ALTER SEQUENCE "public"."inpatientrecords_id_seq" RESTART 3371;
ALTER SEQUENCE "public"."inpatientroomcategories_id_seq" RESTART 16 OWNED BY "inpatientroomcategories"."id";
ALTER SEQUENCE "public"."inpatientstats_id_seq" RESTART 5 OWNED BY "inpatientstats"."id";
ALTER SEQUENCE "public"."journalpostings_id_seq" RESTART 260848 OWNED BY "journalpostings"."id";
ALTER SEQUENCE "public"."kbmcexpenses_id_seq" RESTART 654;
ALTER SEQUENCE "public"."labattachments_id_seq" RESTART 9;
ALTER SEQUENCE "public"."labattachmentstats_id_seq" RESTART 4 OWNED BY "labattachmentstats"."id";
ALTER SEQUENCE "public"."labcharges_id_seq" RESTART 375;
ALTER SEQUENCE "public"."labitems_id_seq" RESTART 272;
ALTER SEQUENCE "public"."labpriorities_id_seq" RESTART 4 OWNED BY "labpriorities"."id";
ALTER SEQUENCE "public"."labreports_id_seq" RESTART 9348;
ALTER SEQUENCE "public"."labresults_id_seq" RESTART 13889;
ALTER SEQUENCE "public"."labresultstats_id_seq" RESTART 4;
ALTER SEQUENCE "public"."labtemplates_id_seq" RESTART 45;
ALTER SEQUENCE "public"."locationrooms_id_seq" RESTART 26;
ALTER SEQUENCE "public"."locationroomstats_id_seq" RESTART 4 OWNED BY "locationroomstats"."id";
ALTER SEQUENCE "public"."lookupinfos_id_seq" RESTART 2 OWNED BY "lookupinfos"."id";
ALTER SEQUENCE "public"."maritals_id_seq" RESTART 7;
ALTER SEQUENCE "public"."medications_id_seq" RESTART 100168;
ALTER SEQUENCE "public"."medicationstats_id_seq" RESTART 6 OWNED BY "medicationstats"."id";
ALTER SEQUENCE "public"."module_dependencies_id_seq" RESTART 1117;
ALTER SEQUENCE "public"."mykad_records_id_seq" RESTART 3015;
ALTER SEQUENCE "public"."nationalities_id_seq" RESTART 6 OWNED BY "nationalities"."id";
ALTER SEQUENCE "public"."notificationgroup_contacts_id_seq" RESTART 2;
ALTER SEQUENCE "public"."notificationgroups_id_seq" RESTART 6;
ALTER SEQUENCE "public"."notificationmethods_id_seq" RESTART 4 OWNED BY "notificationmethods"."id";
ALTER SEQUENCE "public"."notifications_id_seq" RESTART 5358;
ALTER SEQUENCE "public"."notificationstats_id_seq" RESTART 7 OWNED BY "notificationstats"."id";
ALTER SEQUENCE "public"."notificationtemplates_id_seq" RESTART 2 OWNED BY "notificationtemplates"."id";
ALTER SEQUENCE "public"."notificationtypes_id_seq" RESTART 4 OWNED BY "notificationtypes"."id";
ALTER SEQUENCE "public"."notifystats_id_seq" RESTART 5 OWNED BY "notifystats"."id";
ALTER SEQUENCE "public"."panels_id_seq" RESTART 9;
ALTER SEQUENCE "public"."patientqueues_id_seq" RESTART 18885;
ALTER SEQUENCE "public"."patients_id_seq" RESTART 85323;
ALTER SEQUENCE "public"."patientstats_id_seq" RESTART 4 OWNED BY "patientstats"."id";
ALTER SEQUENCE "public"."patienttypes_id_seq" RESTART 6 OWNED BY "patienttypes"."id";
ALTER SEQUENCE "public"."paymentmethods_id_seq" RESTART 4;
ALTER SEQUENCE "public"."payments_id_seq" RESTART 455;
ALTER SEQUENCE "public"."paymenttypes_id_seq" RESTART 12 OWNED BY "paymenttypes"."id";
ALTER SEQUENCE "public"."permissions_id_seq" RESTART 342;
ALTER SEQUENCE "public"."permissionstats_id_seq" RESTART 2;
ALTER SEQUENCE "public"."postats_id_seq" RESTART 4;
ALTER SEQUENCE "public"."prices_id_seq" RESTART 9355;
ALTER SEQUENCE "public"."purchaseorder_items_id_seq" RESTART 14;
ALTER SEQUENCE "public"."purchaseorders_id_seq" RESTART 7;
ALTER SEQUENCE "public"."queuecallings_id_seq" RESTART 3009;
ALTER SEQUENCE "public"."queuestats_id_seq" RESTART 14;
ALTER SEQUENCE "public"."queuetypes_id_seq" RESTART 6 OWNED BY "queuetypes"."id";
ALTER SEQUENCE "public"."races_id_seq" RESTART 344 OWNED BY "races"."id";
ALTER SEQUENCE "public"."religions_id_seq" RESTART 9 OWNED BY "religions"."id";
ALTER SEQUENCE "public"."reportstats_id_seq" RESTART 5 OWNED BY "reportstats"."id";
ALTER SEQUENCE "public"."reporttypes_id_seq" RESTART 48;
ALTER SEQUENCE "public"."rnstats_id_seq" RESTART 4 OWNED BY "rnstats"."id";
ALTER SEQUENCE "public"."rntypes_id_seq" RESTART 4 OWNED BY "rntypes"."id";
ALTER SEQUENCE "public"."roles_id_seq" RESTART 11 OWNED BY "roles"."id";
ALTER SEQUENCE "public"."roomreservations_id_seq" RESTART 2;
ALTER SEQUENCE "public"."roomreservestats_id_seq" RESTART 4 OWNED BY "roomreservestats"."id";
ALTER SEQUENCE "public"."rooms_id_seq" RESTART 51 OWNED BY "rooms"."id";
ALTER SEQUENCE "public"."rssfeeds_id_seq" RESTART 5 OWNED BY "rssfeeds"."id";
ALTER SEQUENCE "public"."runningnumbers_id_seq" RESTART 13 OWNED BY "runningnumbers"."id";
ALTER SEQUENCE "public"."shifts_id_seq" RESTART 764;
ALTER SEQUENCE "public"."soundassignations_id_seq" RESTART 5 OWNED BY "soundassignations"."id";
ALTER SEQUENCE "public"."soundevents_id_seq" RESTART 4 OWNED BY "soundevents"."id";
ALTER SEQUENCE "public"."sounds_id_seq" RESTART 4 OWNED BY "sounds"."id";
ALTER SEQUENCE "public"."states_id_seq" RESTART 32 OWNED BY "states"."id";
ALTER SEQUENCE "public"."statusrows_id_seq" RESTART 4 OWNED BY "statusrows"."id";
ALTER SEQUENCE "public"."stockstats_id_seq" RESTART 4;
ALTER SEQUENCE "public"."substores_id_seq" RESTART 13;
ALTER SEQUENCE "public"."supports_id_seq" RESTART 8;
ALTER SEQUENCE "public"."suspendedfolios_id_seq" RESTART 27517;
ALTER SEQUENCE "public"."treatmenticds_id_seq" RESTART 765;
ALTER SEQUENCE "public"."treatmentrooms_id_seq" RESTART 11 OWNED BY "treatmentrooms"."id";
ALTER SEQUENCE "public"."treatments_id_seq" RESTART 27629;
ALTER SEQUENCE "public"."treatmentstats_id_seq" RESTART 5 OWNED BY "treatmentstats"."id";
ALTER SEQUENCE "public"."unused_runningnumbers_id_seq" RESTART 37 OWNED BY "unused_runningnumbers"."id";
ALTER SEQUENCE "public"."users_id_seq" RESTART 398;
ALTER SEQUENCE "public"."userstats_id_seq" RESTART 6;
ALTER SEQUENCE "public"."vacantstats_id_seq" RESTART 7 OWNED BY "vacantstats"."id";
ALTER SEQUENCE "public"."vendors_id_seq" RESTART 533 OWNED BY "vendors"."id";
ALTER SEQUENCE "public"."warehousereqstats_id_seq" RESTART 7;
ALTER SEQUENCE "public"."warehouserequests_id_seq" RESTART 3456;
ALTER SEQUENCE "public"."warehouses_id_seq" RESTART 3190;
ALTER SEQUENCE "public"."warehousetypes_id_seq" RESTART 5 OWNED BY "warehousetypes"."id";
-- ----------------------------
--  Primary key structure for table labresults
-- ----------------------------
ALTER TABLE "public"."labresults" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationstats
-- ----------------------------
ALTER TABLE "public"."notificationstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table billitems
-- ----------------------------
ALTER TABLE "public"."billitems" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table billitems
-- ----------------------------
CREATE INDEX  "bibilling_id" ON "public"."billitems" USING btree(billing_id ASC NULLS LAST);
CREATE INDEX  "chargegroup_id" ON "public"."billitems" USING btree(chargegroup_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table cities
-- ----------------------------
ALTER TABLE "public"."cities" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table kbmcexpenses
-- ----------------------------
ALTER TABLE "public"."kbmcexpenses" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table kbmcexpenses
-- ----------------------------
CREATE INDEX  "accountidkey" ON "public"."kbmcexpenses" USING btree(account_id ASC NULLS LAST);
CREATE INDEX  "cashregister_idkey" ON "public"."kbmcexpenses" USING btree(cashregister_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table sounds
-- ----------------------------
ALTER TABLE "public"."sounds" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugprocedures
-- ----------------------------
ALTER TABLE "public"."drugprocedures" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table appointmenttypes
-- ----------------------------
ALTER TABLE "public"."appointmenttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table icds
-- ----------------------------
ALTER TABLE "public"."icds" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table icds
-- ----------------------------
CREATE INDEX  "icdcode" ON "public"."icds" USING btree(code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "icdlevel" ON "public"."icds" USING btree("level" COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "icdtype" ON "public"."icds" USING btree(icdtype_code COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table disciplines
-- ----------------------------
ALTER TABLE "public"."disciplines" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationmethods
-- ----------------------------
ALTER TABLE "public"."notificationmethods" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table patientstats
-- ----------------------------
ALTER TABLE "public"."patientstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table contactstats
-- ----------------------------
ALTER TABLE "public"."contactstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table advertisements
-- ----------------------------
ALTER TABLE "public"."advertisements" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table icdtypes
-- ----------------------------
ALTER TABLE "public"."icdtypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table patienttypes
-- ----------------------------
ALTER TABLE "public"."patienttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table bringforwards
-- ----------------------------
ALTER TABLE "public"."bringforwards" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table queuetypes
-- ----------------------------
ALTER TABLE "public"."queuetypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table states
-- ----------------------------
ALTER TABLE "public"."states" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table journalpostings
-- ----------------------------
ALTER TABLE "public"."journalpostings" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table journalpostings
-- ----------------------------
CREATE INDEX  "chargegroup_idkey" ON "public"."journalpostings" USING btree(chargegroup_id ASC NULLS LAST);
CREATE INDEX  "journaltimekey" ON "public"."journalpostings" USING btree(journaltime ASC NULLS LAST);
CREATE INDEX  "treatment_idkey" ON "public"."journalpostings" USING btree(treatment_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table bulkpayments
-- ----------------------------
ALTER TABLE "public"."bulkpayments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table inpatientrecords
-- ----------------------------
ALTER TABLE "public"."inpatientrecords" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table calendars
-- ----------------------------
ALTER TABLE "public"."calendars" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table rnstats
-- ----------------------------
ALTER TABLE "public"."rnstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table queuecallings
-- ----------------------------
ALTER TABLE "public"."queuecallings" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table reporttypes
-- ----------------------------
ALTER TABLE "public"."reporttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table warehouserequests
-- ----------------------------
ALTER TABLE "public"."warehouserequests" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugstrengths
-- ----------------------------
ALTER TABLE "public"."drugstrengths" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labpriorities
-- ----------------------------
ALTER TABLE "public"."labpriorities" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labattachments
-- ----------------------------
ALTER TABLE "public"."labattachments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table audittrails
-- ----------------------------
ALTER TABLE "public"."audittrails" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table audittrails
-- ----------------------------
CREATE INDEX  "audittype_id" ON "public"."audittrails" USING btree(audittype_id ASC NULLS LAST);
CREATE INDEX  "patient_id" ON "public"."audittrails" USING btree(patient_id ASC NULLS LAST);
CREATE INDEX  "staff_id" ON "public"."audittrails" USING btree(staff_id ASC NULLS LAST);
CREATE INDEX  "treatment_id" ON "public"."audittrails" USING btree(treatment_id ASC NULLS LAST);
CREATE INDEX  "user_id" ON "public"."audittrails" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table labtemplates
-- ----------------------------
ALTER TABLE "public"."labtemplates" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table soundevents
-- ----------------------------
ALTER TABLE "public"."soundevents" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table statusrows
-- ----------------------------
ALTER TABLE "public"."statusrows" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table patientqueues
-- ----------------------------
ALTER TABLE "public"."patientqueues" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table paymentmethods
-- ----------------------------
ALTER TABLE "public"."paymentmethods" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table paymentmethods
-- ----------------------------
CREATE INDEX  "paymentmethodcode" ON "public"."paymentmethods" USING btree(code COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table religions
-- ----------------------------
ALTER TABLE "public"."religions" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table roomreservestats
-- ----------------------------
ALTER TABLE "public"."roomreservestats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table stockstats
-- ----------------------------
ALTER TABLE "public"."stockstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table stockstats
-- ----------------------------
CREATE INDEX  "sscode" ON "public"."stockstats" USING btree(code COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table runningnumbers
-- ----------------------------
ALTER TABLE "public"."runningnumbers" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationtemplates
-- ----------------------------
ALTER TABLE "public"."notificationtemplates" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table accounts
-- ----------------------------
ALTER TABLE "public"."accounts" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table accounts
-- ----------------------------
CREATE INDEX  "accounttype_idkey" ON "public"."accounts" USING btree(accounttype_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table reportstats
-- ----------------------------
ALTER TABLE "public"."reportstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationgroup_contacts
-- ----------------------------
ALTER TABLE "public"."notificationgroup_contacts" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table hismodules
-- ----------------------------
ALTER TABLE "public"."hismodules" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table documents
-- ----------------------------
ALTER TABLE "public"."documents" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table chargegroups
-- ----------------------------
ALTER TABLE "public"."chargegroups" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table soundassignations
-- ----------------------------
ALTER TABLE "public"."soundassignations" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table permissionstats
-- ----------------------------
ALTER TABLE "public"."permissionstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table contacts
-- ----------------------------
ALTER TABLE "public"."contacts" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table nationalities
-- ----------------------------
ALTER TABLE "public"."nationalities" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table warehouses
-- ----------------------------
ALTER TABLE "public"."warehouses" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table warehouses
-- ----------------------------
CREATE INDEX  "idx_warehouses" ON "public"."warehouses" USING btree(warehousetype_id ASC NULLS LAST);
CREATE INDEX  "stockstat_id" ON "public"."warehouses" USING btree(stockstat_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table treatments
-- ----------------------------
ALTER TABLE "public"."treatments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table treatments
-- ----------------------------
CREATE INDEX  "patid" ON "public"."treatments" USING btree(patient_id ASC NULLS LAST);
CREATE INDEX  "ptype" ON "public"."treatments" USING btree(patienttype_id ASC NULLS LAST);
CREATE INDEX  "tsn" ON "public"."treatments" USING btree(sn COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table consultationtemplates
-- ----------------------------
ALTER TABLE "public"."consultationtemplates" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table cashregisters
-- ----------------------------
ALTER TABLE "public"."cashregisters" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table queuestats
-- ----------------------------
ALTER TABLE "public"."queuestats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table documentstats
-- ----------------------------
ALTER TABLE "public"."documentstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labattachmentstats
-- ----------------------------
ALTER TABLE "public"."labattachmentstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table billingstats
-- ----------------------------
ALTER TABLE "public"."billingstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugtypes
-- ----------------------------
ALTER TABLE "public"."drugtypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table prices
-- ----------------------------
ALTER TABLE "public"."prices" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table prices
-- ----------------------------
CREATE INDEX  "code" ON "public"."prices" USING btree(code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "panelid" ON "public"."prices" USING btree(panel_id ASC NULLS LAST);
CREATE INDEX  "pricespkey" ON "public"."prices" USING btree("id" ASC NULLS LAST);
CREATE INDEX  "pricetypekey" ON "public"."prices" USING btree(pricetype COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table patients
-- ----------------------------
ALTER TABLE "public"."patients" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table patients
-- ----------------------------
CREATE INDEX  "pfullname" ON "public"."patients" USING btree(fullname COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "pmrn" ON "public"."patients" USING btree(mrn COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "pmykadno" ON "public"."patients" USING btree(mykadno COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table billitemstats
-- ----------------------------
ALTER TABLE "public"."billitemstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table roomreservations
-- ----------------------------
ALTER TABLE "public"."roomreservations" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notifications
-- ----------------------------
ALTER TABLE "public"."notifications" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table warehousereqstats
-- ----------------------------
ALTER TABLE "public"."warehousereqstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table closingbalances
-- ----------------------------
ALTER TABLE "public"."closingbalances" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table closingbalances
-- ----------------------------
CREATE INDEX  "account_idkey" ON "public"."closingbalances" USING btree(account_id ASC NULLS LAST);
CREATE INDEX  "closingdatekey" ON "public"."closingbalances" USING btree(closingdate ASC NULLS LAST);
CREATE INDEX  "closingtypekey" ON "public"."closingbalances" USING btree(closingtype ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table locationrooms
-- ----------------------------
ALTER TABLE "public"."locationrooms" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table documenttypes
-- ----------------------------
ALTER TABLE "public"."documenttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table appointmentstats
-- ----------------------------
ALTER TABLE "public"."appointmentstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table treatmentrooms
-- ----------------------------
ALTER TABLE "public"."treatmentrooms" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table genders
-- ----------------------------
ALTER TABLE "public"."genders" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table supports
-- ----------------------------
ALTER TABLE "public"."supports" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table schema_migrations
-- ----------------------------
CREATE UNIQUE INDEX  "unique_schema_migrations" ON "public"."schema_migrations" USING btree("version" COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table drugfrequencies
-- ----------------------------
ALTER TABLE "public"."drugfrequencies" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table shifts
-- ----------------------------
ALTER TABLE "public"."shifts" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table billings
-- ----------------------------
ALTER TABLE "public"."billings" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table billings
-- ----------------------------
CREATE INDEX  "brefnum" ON "public"."billings" USING btree(refnum COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "paymentmethod_idkey" ON "public"."billings" USING btree(paymentmethod_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table dailyincomes
-- ----------------------------
ALTER TABLE "public"."dailyincomes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table designations
-- ----------------------------
ALTER TABLE "public"."designations" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table general_charges
-- ----------------------------
ALTER TABLE "public"."general_charges" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table accounttypes
-- ----------------------------
ALTER TABLE "public"."accounttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table accounttypes
-- ----------------------------
CREATE INDEX  "codekey" ON "public"."accounttypes" USING btree(code COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table panels
-- ----------------------------
ALTER TABLE "public"."panels" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugdurations
-- ----------------------------
ALTER TABLE "public"."drugdurations" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugprns
-- ----------------------------
ALTER TABLE "public"."drugprns" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table vendors
-- ----------------------------
ALTER TABLE "public"."vendors" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table medications
-- ----------------------------
ALTER TABLE "public"."medications" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table medications
-- ----------------------------
CREATE INDEX  "mbillitem_id" ON "public"."medications" USING btree(billitem_id ASC NULLS LAST);
CREATE INDEX  "mid" ON "public"."medications" USING btree(treatment_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table purchaseorders
-- ----------------------------
ALTER TABLE "public"."purchaseorders" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table purchaseorders
-- ----------------------------
CREATE INDEX  "ponumber" ON "public"."purchaseorders" USING btree(ponumber COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table medicationstats
-- ----------------------------
ALTER TABLE "public"."medicationstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table treatmenticds
-- ----------------------------
ALTER TABLE "public"."treatmenticds" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table treatmenticds
-- ----------------------------
CREATE INDEX  "ticodcode" ON "public"."treatmenticds" USING btree(causeofdeath_code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "ticousecode" ON "public"."treatmenticds" USING btree(cause_code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "tideseasecode" ON "public"."treatmenticds" USING btree(desease_code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "tipsccode" ON "public"."treatmenticds" USING btree(precedure_code COLLATE "default" ASC NULLS LAST);
CREATE INDEX  "titid" ON "public"."treatmenticds" USING btree(treatment_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table purchaseorder_items
-- ----------------------------
ALTER TABLE "public"."purchaseorder_items" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugcategories
-- ----------------------------
ALTER TABLE "public"."drugcategories" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labreports
-- ----------------------------
ALTER TABLE "public"."labreports" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table labreports
-- ----------------------------
CREATE INDEX  "idx_labreports" ON "public"."labreports" USING btree(labpriority_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table module_dependencies
-- ----------------------------
ALTER TABLE "public"."module_dependencies" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table inpatientstats
-- ----------------------------
ALTER TABLE "public"."inpatientstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationtypes
-- ----------------------------
ALTER TABLE "public"."notificationtypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table maritals
-- ----------------------------
ALTER TABLE "public"."maritals" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table warehousetypes
-- ----------------------------
ALTER TABLE "public"."warehousetypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table substores
-- ----------------------------
ALTER TABLE "public"."substores" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table unused_runningnumbers
-- ----------------------------
ALTER TABLE "public"."unused_runningnumbers" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labitems
-- ----------------------------
ALTER TABLE "public"."labitems" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table floorlevels
-- ----------------------------
ALTER TABLE "public"."floorlevels" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table suspendedfolios
-- ----------------------------
ALTER TABLE "public"."suspendedfolios" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table lookupinfos
-- ----------------------------
ALTER TABLE "public"."lookupinfos" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notifystats
-- ----------------------------
ALTER TABLE "public"."notifystats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table doctortypes
-- ----------------------------
ALTER TABLE "public"."doctortypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table vacantstats
-- ----------------------------
ALTER TABLE "public"."vacantstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table dischargetypes
-- ----------------------------
ALTER TABLE "public"."dischargetypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table departments
-- ----------------------------
ALTER TABLE "public"."departments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table mykad_records
-- ----------------------------
ALTER TABLE "public"."mykad_records" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table postats
-- ----------------------------
ALTER TABLE "public"."postats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labcharges
-- ----------------------------
ALTER TABLE "public"."labcharges" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table treatmentstats
-- ----------------------------
ALTER TABLE "public"."treatmentstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table bloodtypes
-- ----------------------------
ALTER TABLE "public"."bloodtypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table labresultstats
-- ----------------------------
ALTER TABLE "public"."labresultstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table locationroomstats
-- ----------------------------
ALTER TABLE "public"."locationroomstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table inpatientroomcategories
-- ----------------------------
ALTER TABLE "public"."inpatientroomcategories" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table audittypes
-- ----------------------------
ALTER TABLE "public"."audittypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table rooms
-- ----------------------------
ALTER TABLE "public"."rooms" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table paymenttypes
-- ----------------------------
ALTER TABLE "public"."paymenttypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table paymenttypes
-- ----------------------------
CREATE INDEX  "paymenttypecode" ON "public"."paymenttypes" USING btree(code COLLATE "default" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table rntypes
-- ----------------------------
ALTER TABLE "public"."rntypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table userstats
-- ----------------------------
ALTER TABLE "public"."userstats" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table notificationgroups
-- ----------------------------
ALTER TABLE "public"."notificationgroups" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugdosages
-- ----------------------------
ALTER TABLE "public"."drugdosages" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table drugroutes
-- ----------------------------
ALTER TABLE "public"."drugroutes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table payments
-- ----------------------------
ALTER TABLE "public"."payments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table payments
-- ----------------------------
CREATE INDEX  "billingidkey" ON "public"."payments" USING btree(billing_id ASC NULLS LAST);
CREATE INDEX  "bringforward_idkey" ON "public"."payments" USING btree(bringforward_id ASC NULLS LAST);
CREATE INDEX  "paymentaccount_idkey" ON "public"."payments" USING btree(account_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table rssfeeds
-- ----------------------------
ALTER TABLE "public"."rssfeeds" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table races
-- ----------------------------
ALTER TABLE "public"."races" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table chargetypes
-- ----------------------------
ALTER TABLE "public"."chargetypes" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table appointments
-- ----------------------------
ALTER TABLE "public"."appointments" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

