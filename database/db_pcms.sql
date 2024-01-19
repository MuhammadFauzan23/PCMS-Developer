/*
 Navicat Premium Data Transfer

 Source Server         : smoe
 Source Server Type    : PostgreSQL
 Source Server Version : 160001 (160001)
 Source Host           : localhost:5432
 Source Catalog        : db_pcms
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160001 (160001)
 File Encoding         : 65001

 Date: 19/01/2024 23:30:47
*/


-- ----------------------------
-- Sequence structure for tblhis
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tblhis";
CREATE SEQUENCE "public"."tblhis" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tblmat
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tblmat";
CREATE SEQUENCE "public"."tblmat" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tblmatdet
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tblmatdet";
CREATE SEQUENCE "public"."tblmatdet" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbltemp
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tbltemp";
CREATE SEQUENCE "public"."tbltemp" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tbuser
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tbuser";
CREATE SEQUENCE "public"."tbuser" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for tbl_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_history";
CREATE TABLE "public"."tbl_history" (
  "id" int4 NOT NULL DEFAULT nextval('tblhis'::regclass),
  "material_number" varchar(32) COLLATE "pg_catalog"."default",
  "username" varchar(32) COLLATE "pg_catalog"."default",
  "action" varchar(255) COLLATE "pg_catalog"."default",
  "before_qty" int4,
  "after_qty" int4,
  "status" int4,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "datetime" date
)
;

-- ----------------------------
-- Records of tbl_history
-- ----------------------------
INSERT INTO "public"."tbl_history" VALUES (17, '1', 'Fauzan', 'Menambahkan request material', 0, 0, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (18, '2', 'Fauzan', 'Menambahkan request material', 0, 0, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (19, '3', 'Fauzan', 'Menambahkan request material', 0, 0, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (20, '1', 'Suci', 'Melakukan ubah material Sapu', 0, 120, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (21, '1', 'Suci', 'Melakukan approval material', 0, 0, 1, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (22, '3', 'Suci', 'Melakukan reject material', 0, 0, 2, 'Not Good ', '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (23, '3', 'Fauzan', 'Melakukan ubah material Baja', 123, 67, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (24, '3', 'Suci', 'Melakukan approval material', 0, 0, 1, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (25, '4', 'Fauzan', 'Menambahkan request material', 0, 0, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (26, '4', 'Suci', 'Melakukan approval material', 0, 0, 1, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (27, '5', 'Fauzan', 'Menambahkan request material', 0, 0, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (28, '5', 'Suci', 'Melakukan reject material', 0, 0, 2, 'asd', '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (29, '5', 'Fauzan', 'Melakukan ubah material Material-3', 12, 120, 0, NULL, '2024-01-19');
INSERT INTO "public"."tbl_history" VALUES (30, '5', 'Suci', 'Melakukan approval material', 0, 0, 1, NULL, '2024-01-19');

-- ----------------------------
-- Table structure for tbl_material
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_material";
CREATE TABLE "public"."tbl_material" (
  "material_number" varchar(32) COLLATE "pg_catalog"."default" DEFAULT nextval('tblmat'::regclass),
  "status" int4,
  "username" varchar(32) COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "approved_by" varchar(255) COLLATE "pg_catalog"."default",
  "approved_date" date,
  "datetime" date
)
;

-- ----------------------------
-- Records of tbl_material
-- ----------------------------
INSERT INTO "public"."tbl_material" VALUES ('2', 0, 'Fauzan', NULL, NULL, NULL, '2024-01-19');
INSERT INTO "public"."tbl_material" VALUES ('1', 1, 'Fauzan', NULL, 'Suci', '2024-01-19', '2024-01-19');
INSERT INTO "public"."tbl_material" VALUES ('3', 1, 'Fauzan', 'Not Good ', 'Suci', '2024-01-19', '2024-01-19');
INSERT INTO "public"."tbl_material" VALUES ('4', 1, 'Fauzan', NULL, 'Suci', '2024-01-19', '2024-01-19');
INSERT INTO "public"."tbl_material" VALUES ('5', 1, 'Fauzan', 'asd', 'Suci', '2024-01-19', '2024-01-19');

-- ----------------------------
-- Table structure for tbl_material_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_material_detail";
CREATE TABLE "public"."tbl_material_detail" (
  "id" int4 NOT NULL DEFAULT nextval('tblmatdet'::regclass),
  "material_number" varchar(32) COLLATE "pg_catalog"."default",
  "material_name" varchar(255) COLLATE "pg_catalog"."default",
  "requested_quantity" int4,
  "description_usage" varchar(255) COLLATE "pg_catalog"."default",
  "status" int4,
  "updated_by" varchar(255) COLLATE "pg_catalog"."default",
  "updated_date" date,
  "approved_by" varchar(255) COLLATE "pg_catalog"."default",
  "approved_date" date,
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "created_date" date
)
;

-- ----------------------------
-- Records of tbl_material_detail
-- ----------------------------
INSERT INTO "public"."tbl_material_detail" VALUES (18, '2', 'Sapu', 12, 'Nothing', NULL, NULL, NULL, NULL, NULL, 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (19, '2', 'Serokan', 100, 'Nothing', NULL, NULL, NULL, NULL, NULL, 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (17, '1', 'Sapu', 1000, 'Nothing', 1, NULL, NULL, 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (16, '1', 'Sapu', 120, 'Nothing', 1, 'Suci', '2024-01-19', 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (20, '3', 'Kayu', 100, 'Nothing', 1, NULL, NULL, 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (21, '3', 'Baja', 67, 'material 233', 1, 'Fauzan', '2024-01-19', 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (22, '4', 'Material-3', 100, 'Nothing', 1, NULL, NULL, 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (23, '4', 'Material-2', 120, 'Nothing', 1, NULL, NULL, 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');
INSERT INTO "public"."tbl_material_detail" VALUES (24, '5', 'Material-3', 120, 'Nothing', 1, 'Fauzan', '2024-01-19', 'Suci', '2024-01-19', 'Fauzan', '2024-01-19');

-- ----------------------------
-- Table structure for tbl_temporary
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_temporary";
CREATE TABLE "public"."tbl_temporary" (
  "id" int4 NOT NULL DEFAULT nextval('tbltemp'::regclass),
  "material_name" varchar(255) COLLATE "pg_catalog"."default",
  "requested_quantity" int4,
  "description_usage" varchar(255) COLLATE "pg_catalog"."default",
  "created_date" date,
  "created_by" varchar(255) COLLATE "pg_catalog"."default",
  "updated_date" date,
  "updated_by" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tbl_temporary
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."tbl_user";
CREATE TABLE "public"."tbl_user" (
  "id" int4 NOT NULL DEFAULT nextval('tbuser'::regclass),
  "fullname" varchar(255) COLLATE "pg_catalog"."default",
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "is_active" int4,
  "role" varchar(255) COLLATE "pg_catalog"."default",
  "created_date" date
)
;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO "public"."tbl_user" VALUES (1, 'Muhammad Fauzan', 'Fauzan', 'b727b5ea41c6cd6b5a1b7e095f3973e443eef159', 1, 'Production', '2024-01-19');
INSERT INTO "public"."tbl_user" VALUES (2, 'Suci Athika Sari', 'Suci', '53e8d1d5550426aa403890c03e4ccc8a79986105', 1, 'Warehouse', '2024-01-19');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tblhis"
OWNED BY "public"."tbl_history"."id";
SELECT setval('"public"."tblhis"', 30, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tblmat"
OWNED BY "public"."tbl_material"."material_number";
SELECT setval('"public"."tblmat"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tblmatdet"
OWNED BY "public"."tbl_material_detail"."id";
SELECT setval('"public"."tblmatdet"', 24, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tbltemp"
OWNED BY "public"."tbl_temporary"."id";
SELECT setval('"public"."tbltemp"', 25, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tbuser"
OWNED BY "public"."tbl_user"."id";
SELECT setval('"public"."tbuser"', 2, true);

-- ----------------------------
-- Primary Key structure for table tbl_history
-- ----------------------------
ALTER TABLE "public"."tbl_history" ADD CONSTRAINT "tbl_history_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbl_material_detail
-- ----------------------------
ALTER TABLE "public"."tbl_material_detail" ADD CONSTRAINT "tbl_material_detail_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbl_temporary
-- ----------------------------
ALTER TABLE "public"."tbl_temporary" ADD CONSTRAINT "tbl_temporary_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tbl_user
-- ----------------------------
ALTER TABLE "public"."tbl_user" ADD CONSTRAINT "tbl_user_pkey" PRIMARY KEY ("id");
