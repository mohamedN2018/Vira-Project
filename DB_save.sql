--
-- File generated with SQLiteStudio v3.4.17 on Thu Aug 21 11:33:09 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: about_about
CREATE TABLE IF NOT EXISTS "about_about" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL, "AOTitle_1_en" varchar(100) NOT NULL, "AOTitle_1_ar" varchar(100) NOT NULL, "AODescription_1_en" text NOT NULL, "AODescription_1_ar" text NOT NULL, "AOTitle_2_en" varchar(100) NOT NULL, "AOTitle_2_ar" varchar(100) NOT NULL, "AODescription_2_en" text NOT NULL, "AODescription_2_ar" text NOT NULL, "AOTitle_3_en" varchar(100) NOT NULL, "AOTitle_3_ar" varchar(100) NOT NULL, "AODescription_3_en" text NOT NULL, "AODescription_3_ar" text NOT NULL, "AOTitle_4_en" varchar(100) NOT NULL, "AOTitle_4_ar" varchar(100) NOT NULL, "AODescription_4_ar" text NOT NULL, "AODescription_4_en" text NOT NULL);
INSERT INTO about_about (id, image, AOTitle_1_en, AOTitle_1_ar, AODescription_1_en, AODescription_1_ar, AOTitle_2_en, AOTitle_2_ar, AODescription_2_en, AODescription_2_ar, AOTitle_3_en, AOTitle_3_ar, AODescription_3_en, AODescription_3_ar, AOTitle_4_en, AOTitle_4_ar, AODescription_4_ar, AODescription_4_en) VALUES (1, 'About/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'What is Lorem Ipsum?', '????? ????? ?????? ????', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the', '???? ?????? ?????? ???????? ??? ??????? ??? ????? ??? ???? ?? ??????? ???? ??? ?????? ???????? ???????? ??????? ????? ????? ?? ??? ?????? ????????? ???????? ?? ???? ??????? ?? ??? ?????? ?? ????????? ?? ?????????? ??????? ???????.', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', '', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', '', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng');

-- Table: about_all_about_section
CREATE TABLE IF NOT EXISTS "about_all_about_section" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "ASTitle_en" varchar(100) NOT NULL, "ASTitle_ar" varchar(100) NOT NULL, "UsDescription_en" text NOT NULL, "ASTitle_1_en" varchar(50) NOT NULL, "ASTitle_1_ar" varchar(50) NOT NULL, "ASDescription_1_en" text NOT NULL, "ASDescription_1_ar" text NOT NULL, "ASTitle_2_en" varchar(50) NOT NULL, "ASTitle_2_ar" varchar(50) NOT NULL, "ASDescription_2_en" text NOT NULL, "ASDescription_2_ar" text NOT NULL, "ASTitle_3_en" varchar(50) NOT NULL, "ASTitle_3_ar" varchar(50) NOT NULL, "ASDescription_3_en" text NOT NULL, "ASDescription_3_ar" text NOT NULL, "UsDescription_ar" text NOT NULL);
INSERT INTO about_all_about_section (id, ASTitle_en, ASTitle_ar, UsDescription_en, ASTitle_1_en, ASTitle_1_ar, ASDescription_1_en, ASDescription_1_ar, ASTitle_2_en, ASTitle_2_ar, ASDescription_2_en, ASDescription_2_ar, ASTitle_3_en, ASTitle_3_ar, ASDescription_3_en, ASDescription_3_ar, UsDescription_ar) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page whe', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact that a reader will b', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', '', 'It is a long established fact that a reader will b', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', '', 'It is a long established fact that a reader will b', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', '', '');

-- Table: about_imagerestaurants
CREATE TABLE IF NOT EXISTS "about_imagerestaurants" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "date" datetime NOT NULL, "image" varchar(100) NOT NULL, "titleImg" varchar(150) NOT NULL);
INSERT INTO about_imagerestaurants (id, date, image, titleImg) VALUES (1, '2025-08-21 08:08:56.698898', 'imageRestaurants/skysports-efl-championship_6982807.jpg', 'Why do we use it?');

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_about', 'Can add about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_about', 'Can change about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_about', 'Can delete about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_about', 'Can view about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_clients', 'Can add clients');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_clients', 'Can change clients');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_clients', 'Can delete clients');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_clients', 'Can view clients');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_faq', 'Can add FAQ  __  ??????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_faq', 'Can change FAQ  __  ??????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_faq', 'Can delete FAQ  __  ??????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_faq', 'Can view FAQ  __  ??????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_homepage', 'Can add Welcome To Homepage  __  ?????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_homepage', 'Can change Welcome To Homepage  __  ?????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_homepage', 'Can delete Welcome To Homepage  __  ?????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_homepage', 'Can view Welcome To Homepage  __  ?????? ????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_media', 'Can add media');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_media', 'Can change media');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_media', 'Can delete media');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_media', 'Can view media');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_navheader', 'Can add NavHeader  __  Logo ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_navheader', 'Can change NavHeader  __  Logo ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_navheader', 'Can delete NavHeader  __  Logo ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_navheader', 'Can view NavHeader  __  Logo ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_owner', 'Can add owner');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_owner', 'Can change owner');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_owner', 'Can delete owner');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_owner', 'Can view owner');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_portfolio', 'Can add portfolio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_portfolio', 'Can change portfolio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_portfolio', 'Can delete portfolio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_portfolio', 'Can view portfolio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_pricing', 'Can add pricing');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_pricing', 'Can change pricing');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_pricing', 'Can delete pricing');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_pricing', 'Can view pricing');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 16, 'add_section_old', 'Can add section_old');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 16, 'change_section_old', 'Can change section_old');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 16, 'delete_section_old', 'Can delete section_old');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 16, 'view_section_old', 'Can view section_old');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (65, 17, 'add_team', 'Can add team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (66, 17, 'change_team', 'Can change team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (67, 17, 'delete_team', 'Can delete team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (68, 17, 'view_team', 'Can view team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (69, 18, 'add_pricing1', 'Can add pricing1');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (70, 18, 'change_pricing1', 'Can change pricing1');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (71, 18, 'delete_pricing1', 'Can delete pricing1');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (72, 18, 'view_pricing1', 'Can view pricing1');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (73, 19, 'add_services', 'Can add services');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (74, 19, 'change_services', 'Can change services');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (75, 19, 'delete_services', 'Can delete services');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (76, 19, 'view_services', 'Can view services');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (77, 20, 'add_info', 'Can add Info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (78, 20, 'change_info', 'Can change Info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (79, 20, 'delete_info', 'Can delete Info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (80, 20, 'view_info', 'Can view Info');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (81, 21, 'add_category_ars', 'Can add category_ars');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (82, 21, 'change_category_ars', 'Can change category_ars');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (83, 21, 'delete_category_ars', 'Can delete category_ars');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (84, 21, 'view_category_ars', 'Can view category_ars');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (85, 22, 'add_category_en', 'Can add category_en');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (86, 22, 'change_category_en', 'Can change category_en');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (87, 22, 'delete_category_en', 'Can delete category_en');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (88, 22, 'view_category_en', 'Can view category_en');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (89, 23, 'add_portfoliolists', 'Can add portfolio lists');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (90, 23, 'change_portfoliolists', 'Can change portfolio lists');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (91, 23, 'delete_portfoliolists', 'Can delete portfolio lists');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (92, 23, 'view_portfoliolists', 'Can view portfolio lists');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (93, 24, 'add_services_t', 'Can add services_t');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (94, 24, 'change_services_t', 'Can change services_t');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (95, 24, 'delete_services_t', 'Can delete services_t');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (96, 24, 'view_services_t', 'Can view services_t');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (97, 25, 'add_urban_design', 'Can add urban_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (98, 25, 'change_urban_design', 'Can change urban_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (99, 25, 'delete_urban_design', 'Can delete urban_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (100, 25, 'view_urban_design', 'Can view urban_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (101, 26, 'add_showdetail', 'Can add show detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (102, 26, 'change_showdetail', 'Can change show detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (103, 26, 'delete_showdetail', 'Can delete show detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (104, 26, 'view_showdetail', 'Can view show detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (105, 27, 'add_landscape', 'Can add land scape');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (106, 27, 'change_landscape', 'Can change land scape');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (107, 27, 'delete_landscape', 'Can delete land scape');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (108, 27, 'view_landscape', 'Can view land scape');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (109, 28, 'add_external_design', 'Can add external_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (110, 28, 'change_external_design', 'Can change external_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (111, 28, 'delete_external_design', 'Can delete external_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (112, 28, 'view_external_design', 'Can view external_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (113, 29, 'add_interior_design', 'Can add interior_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (114, 29, 'change_interior_design', 'Can change interior_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (115, 29, 'delete_interior_design', 'Can delete interior_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (116, 29, 'view_interior_design', 'Can view interior_ design');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (117, 30, 'add_landscapedetail', 'Can add land scape detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (118, 30, 'change_landscapedetail', 'Can change land scape detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (119, 30, 'delete_landscapedetail', 'Can delete land scape detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (120, 30, 'view_landscapedetail', 'Can view land scape detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (121, 31, 'add_externaldesigndetail', 'Can add external design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (122, 31, 'change_externaldesigndetail', 'Can change external design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (123, 31, 'delete_externaldesigndetail', 'Can delete external design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (124, 31, 'view_externaldesigndetail', 'Can view external design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (125, 32, 'add_interior_designdetail', 'Can add interior_ design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (126, 32, 'change_interior_designdetail', 'Can change interior_ design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (127, 32, 'delete_interior_designdetail', 'Can delete interior_ design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (128, 32, 'view_interior_designdetail', 'Can view interior_ design detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (129, 33, 'add_clients', 'Can add Client  __  ??????? ???????? ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (130, 33, 'change_clients', 'Can change Client  __  ??????? ???????? ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (131, 33, 'delete_clients', 'Can delete Client  __  ??????? ???????? ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (132, 33, 'view_clients', 'Can view Client  __  ??????? ???????? ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (133, 34, 'add_owner', 'Can add Owner __ ?????? ?????? ');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (134, 34, 'change_owner', 'Can change Owner __ ?????? ?????? ');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (135, 34, 'delete_owner', 'Can delete Owner __ ?????? ?????? ');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (136, 34, 'view_owner', 'Can view Owner __ ?????? ?????? ');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (137, 35, 'add_team', 'Can add Team __ ?????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (138, 35, 'change_team', 'Can change Team __ ?????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (139, 35, 'delete_team', 'Can delete Team __ ?????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (140, 35, 'view_team', 'Can view Team __ ?????????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (141, 36, 'add_mediateam', 'Can add media team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (142, 36, 'change_mediateam', 'Can change media team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (143, 36, 'delete_mediateam', 'Can delete media team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (144, 36, 'view_mediateam', 'Can view media team');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (145, 37, 'add_about', 'Can add About  __  ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (146, 37, 'change_about', 'Can change About  __  ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (147, 37, 'delete_about', 'Can delete About  __  ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (148, 37, 'view_about', 'Can view About  __  ??? ??????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (149, 38, 'add_imagerestaurants', 'Can add image Restaurants');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (150, 38, 'change_imagerestaurants', 'Can change image Restaurants');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (151, 38, 'delete_imagerestaurants', 'Can delete image Restaurants');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (152, 38, 'view_imagerestaurants', 'Can view image Restaurants');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (153, 39, 'add_about_section', 'Can add About_Section  __  ??? ????????? ???????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (154, 39, 'change_about_section', 'Can change About_Section  __  ??? ????????? ???????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (155, 39, 'delete_about_section', 'Can delete About_Section  __  ??? ????????? ???????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (156, 39, 'view_about_section', 'Can view About_Section  __  ??? ????????? ???????');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (157, 40, 'add_pricing_card', 'Can add Pricing Card Detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (158, 40, 'change_pricing_card', 'Can change Pricing Card Detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (159, 40, 'delete_pricing_card', 'Can delete Pricing Card Detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (160, 40, 'view_pricing_card', 'Can view Pricing Card Detail');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (161, 41, 'add_pricing_t', 'Can add Pricing_Text_Home');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (162, 41, 'change_pricing_t', 'Can change Pricing_Text_Home');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (163, 41, 'delete_pricing_t', 'Can delete Pricing_Text_Home');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (164, 41, 'view_pricing_t', 'Can view Pricing_Text_Home');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (165, 42, 'add_currency_symbol', 'Can add currency_symbol');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (166, 42, 'change_currency_symbol', 'Can change currency_symbol');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (167, 42, 'delete_currency_symbol', 'Can delete currency_symbol');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (168, 42, 'view_currency_symbol', 'Can view currency_symbol');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (169, 43, 'add_spaces', 'Can add spaces');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (170, 43, 'change_spaces', 'Can change spaces');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (171, 43, 'delete_spaces', 'Can delete spaces');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (172, 43, 'view_spaces', 'Can view spaces');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$720000$HpBHp9NPIgFyFSGfwSX6HW$0KNe8ui4tSsKeqsvM+Sqnr+lDXJRdzZd259Q113SXCs=', '2024-07-03 07:39:50.204897', 1, 'admin', '', '', 1, 1, '2024-01-07 02:40:30.917705', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$1000000$T7GRqyahmWxVI1BsLlam3c$CuRXRbsOm80F50qAKCZlv1XrVuNltLTuQhtnCPINC5Q=', '2025-07-04 09:42:59.077786', 1, 'mohamed', '', '', 1, 1, '2025-07-02 19:56:04.060763', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$1000000$h3DexxbDQzRC18dbiropiA$AXIyfoIaJcxl3MgsVD8R5gePeJD7cN33TIWrG5/UFq4=', '2025-08-21 08:06:12.183577', 1, 'mohamedpro', '', '', 1, 1, '2025-08-21 08:06:09.283195', '');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: clients_clients
CREATE TABLE IF NOT EXISTS "clients_clients" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "CLTitle" varchar(50) NOT NULL, "CLimage" varchar(100) NOT NULL);
INSERT INTO clients_clients (id, CLTitle, CLimage) VALUES (1, 'Why do we use it?', 'clients/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp');

-- Table: contact_info
CREATE TABLE IF NOT EXISTS "contact_info" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "place" varchar(30) NOT NULL, "email" varchar(25) NOT NULL, "site" varchar(20) NOT NULL, "PuData" varchar(100) NOT NULL, "email_2" varchar(30) NOT NULL, "phone1_number" varchar(20) NOT NULL, "phone2_number" varchar(20) NOT NULL, "PuData_ar" varchar(100) NOT NULL, "place_ar" varchar(30) NOT NULL, "site_ar" varchar(20) NOT NULL);
INSERT INTO contact_info (id, place, email, site, PuData, email_2, phone1_number, phone2_number, PuData_ar, place_ar, site_ar) VALUES (1, 'Egypt', 'mohamednabilpro@email.com', '???? ???????', 'established fact that a reader will be distracted by the readable content of a page when looking at', 'mohamednabilpro@email.com', '01060273497', '01060273497', '“????? ?????? ????? ??? ???? ,??????????? ?????? ?????? ??????,??? ?? ??????? ??????', '', '');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'ViRa', 1, '[{"added": {}}]', 12, 2, '2025-07-02 19:59:49.319229');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '1', 'Title home page en', 1, '[{"added": {}}]', 10, 2, '2025-07-02 20:00:02.191901');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'xdfgjnghjhjjhg', 1, '[{"added": {}}]', 21, 2, '2025-07-04 09:43:24.596399');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '1', 'ghkhgkbkhjgkhjgkhjg', 1, '[{"added": {}}]', 23, 2, '2025-07-04 09:44:03.732472');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '1', 'What is Lorem Ipsum?', 1, '[{"added": {}}]', 37, 3, '2025-08-21 08:08:42.197677');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '1', 'Why do we use it?', 1, '[{"added": {}}]', 38, 3, '2025-08-21 08:08:56.701902');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '1', 'Why do we use it?', 1, '[{"added": {}}]', 33, 3, '2025-08-21 08:10:01.459153');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '1', 'mohamednabilpro@email.com', 1, '[{"added": {}}]', 20, 3, '2025-08-21 08:10:20.591760');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '1', 'mohamednabilpro@email.com', 2, '[{"changed": {"fields": [" \u0627\u0644\u0645\u0648\u0639\u064a\u062f \u0627\u0644\u0639\u0645\u0644 __ DATA ", " \u0627\u0644\u0645\u0648\u0639\u064a\u062f \u0627\u0644\u0639\u0645\u0644 \u0628\u0627\u0644 \u0639\u0631\u0628\u064a __ DATA "]}}]', 20, 3, '2025-08-21 08:10:37.704271');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '1', 'mohamed', 1, '[{"added": {}}]', 34, 3, '2025-08-21 08:12:02.339713');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '1', 'https://mohamednabilpro.netlify.app/', 1, '[{"added": {}}]', 11, 3, '2025-08-21 08:17:05.070888');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '1', 'https://mohamed', 1, '[{"added": {}}]', 36, 3, '2025-08-21 08:17:45.189222');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '1', 'It is a long established fact that a reader will b', 1, '[{"added": {}}]', 41, 3, '2025-08-21 08:19:13.751225');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '1', 'EGP', 1, '[{"added": {}}]', 42, 3, '2025-08-21 08:19:22.791622');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '1', '200', 1, '[{"added": {}}]', 43, 3, '2025-08-21 08:19:54.909625');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '2', '100', 1, '[{"added": {}}]', 43, 3, '2025-08-21 08:20:00.126684');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '1', 'It is a long establi', 1, '[{"added": {}}]', 40, 3, '2025-08-21 08:20:08.417415');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', 1, '[{"added": {}}]', 39, 3, '2025-08-21 08:21:15.767790');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '1', 'What is Lorem Ipsum?', 2, '[{"changed": {"fields": ["Title 2  __ \u0648\u0633\u0645 ", "Description 2 __ \u0648\u0635\u0641 ", "Title 3  __ \u0648\u0633\u0645 ", "Description 3  __ \u0648\u0635\u0641 ", "Title 4  __ \u0648\u0633\u0645 ", "Description 4  __ \u0648\u0635\u0641 "]}}]', 37, 3, '2025-08-21 08:21:34.144771');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '2', 'It is a long established fact', 1, '[{"added": {}}]', 21, 3, '2025-08-21 08:22:05.527006');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '2', 'It is a long established fact', 1, '[{"added": {}}]', 23, 3, '2025-08-21 08:22:40.528639');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '2', 'It is a long established fact', 2, '[{"changed": {"fields": ["Images 00 carousel"]}}]', 23, 3, '2025-08-21 08:23:13.264724');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 1, '[{"added": {}}]', 31, 3, '2025-08-21 08:24:05.475786');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '1', 'It is a long established fact', 1, '[{"added": {}}]', 28, 3, '2025-08-21 08:24:21.958779');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '1', 'It is a long established fact', 1, '[{"added": {}}]', 29, 3, '2025-08-21 08:24:30.978908');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 1, '[{"added": {}}]', 32, 3, '2025-08-21 08:25:29.242237');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 1, '[{"added": {}}]', 30, 3, '2025-08-21 08:25:54.320917');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '1', 'It is a long established fact', 1, '[{"added": {}}]', 27, 3, '2025-08-21 08:26:14.316023');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page whe', 1, '[{"added": {}}]', 24, 3, '2025-08-21 08:26:22.166471');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 1, '[{"added": {}}]', 26, 3, '2025-08-21 08:26:45.411884');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '1', 'It is a long established', 1, '[{"added": {}}]', 25, 3, '2025-08-21 08:26:56.863696');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '2', 'It is a long es', 1, '[{"added": {}}]', 36, 3, '2025-08-21 08:27:47.195573');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '1', 'It is a long established fact that a reader will b', 2, '[{"changed": {"fields": ["Title home page en __ \u0648\u0633\u0645 \u0627\u0646\u062c\u0644\u0632\u064a ", "Title home page ar __ \u0648\u0633\u0645 \u0639\u0631\u0628\u064a", "Description en __  \u0648\u0635\u0641 \u0627\u0646\u062c\u0644\u0632\u064a", "Description __  \u0648\u0635\u0641 \u0639\u0631\u0628\u064a"]}}]', 10, 3, '2025-08-21 08:28:08.782791');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'vira', 'about');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'vira', 'clients');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'vira', 'faq');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'vira', 'homepage');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'vira', 'media');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'vira', 'navheader');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'vira', 'owner');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'vira', 'portfolio');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'vira', 'pricing');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'vira', 'section_old');
INSERT INTO django_content_type (id, app_label, model) VALUES (17, 'vira', 'team');
INSERT INTO django_content_type (id, app_label, model) VALUES (18, 'vira', 'pricing1');
INSERT INTO django_content_type (id, app_label, model) VALUES (19, 'vira', 'services');
INSERT INTO django_content_type (id, app_label, model) VALUES (20, 'contact', 'info');
INSERT INTO django_content_type (id, app_label, model) VALUES (21, 'Portfolio', 'category_ars');
INSERT INTO django_content_type (id, app_label, model) VALUES (22, 'Portfolio', 'category_en');
INSERT INTO django_content_type (id, app_label, model) VALUES (23, 'Portfolio', 'portfoliolists');
INSERT INTO django_content_type (id, app_label, model) VALUES (24, 'Services', 'services_t');
INSERT INTO django_content_type (id, app_label, model) VALUES (25, 'Services', 'urban_design');
INSERT INTO django_content_type (id, app_label, model) VALUES (26, 'Services', 'showdetail');
INSERT INTO django_content_type (id, app_label, model) VALUES (27, 'Services', 'landscape');
INSERT INTO django_content_type (id, app_label, model) VALUES (28, 'Services', 'external_design');
INSERT INTO django_content_type (id, app_label, model) VALUES (29, 'Services', 'interior_design');
INSERT INTO django_content_type (id, app_label, model) VALUES (30, 'Services', 'landscapedetail');
INSERT INTO django_content_type (id, app_label, model) VALUES (31, 'Services', 'externaldesigndetail');
INSERT INTO django_content_type (id, app_label, model) VALUES (32, 'Services', 'interior_designdetail');
INSERT INTO django_content_type (id, app_label, model) VALUES (33, 'clients', 'clients');
INSERT INTO django_content_type (id, app_label, model) VALUES (34, 'owner', 'owner');
INSERT INTO django_content_type (id, app_label, model) VALUES (35, 'team', 'team');
INSERT INTO django_content_type (id, app_label, model) VALUES (36, 'team', 'mediateam');
INSERT INTO django_content_type (id, app_label, model) VALUES (37, 'about', 'about');
INSERT INTO django_content_type (id, app_label, model) VALUES (38, 'about', 'imagerestaurants');
INSERT INTO django_content_type (id, app_label, model) VALUES (39, 'about_all', 'about_section');
INSERT INTO django_content_type (id, app_label, model) VALUES (40, 'Pricing', 'pricing_card');
INSERT INTO django_content_type (id, app_label, model) VALUES (41, 'Pricing', 'pricing_t');
INSERT INTO django_content_type (id, app_label, model) VALUES (42, 'Pricing', 'currency_symbol');
INSERT INTO django_content_type (id, app_label, model) VALUES (43, 'Pricing', 'spaces');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'Portfolio', '0001_initial', '2024-01-07 02:40:00.837102');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'Portfolio', '0002_portfoliolists', '2024-01-07 02:40:00.848917');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'Portfolio', '0003_auto_20211217_0351', '2024-01-07 02:40:00.859802');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'Portfolio', '0004_remove_portfoliolists_pscategorys_and_more', '2024-01-07 02:40:00.870428');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'Portfolio', '0005_alter_category_ars_options', '2024-01-07 02:40:00.875599');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'Portfolio', '0006_alter_category_ars_options', '2024-01-07 02:40:00.879927');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'Portfolio', '0007_portfoliolists_plcategoryf', '2024-01-07 02:40:00.889174');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'Portfolio', '0008_alter_portfoliolists_psimgup_1', '2024-01-07 02:40:00.895431');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'Portfolio', '0009_alter_portfoliolists_psimgup_2_and_more', '2024-01-07 02:40:00.916941');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'Portfolio', '0010_auto_20211221_2024', '2024-01-07 02:40:00.923358');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'Portfolio', '0011_alter_category_ars_options_and_more', '2024-01-07 02:40:00.929434');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'Pricing', '0001_initial', '2024-01-07 02:40:00.936121');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'Pricing', '0002_auto_20211221_1228', '2024-01-07 02:40:00.943460');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'Pricing', '0003_spaces', '2024-01-07 02:40:00.949920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'Pricing', '0004_pricing_card_prspaces', '2024-01-07 02:40:00.957677');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'Pricing', '0005_auto_20211221_1251', '2024-01-07 02:40:00.965986');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'Pricing', '0006_rename_prpricing_en_pricing_card_prpricing', '2024-01-07 02:40:00.972635');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'Pricing', '0007_auto_20211221_1304', '2024-01-07 02:40:00.988425');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'Pricing', '0008_auto_20211221_1308', '2024-01-07 02:40:00.993694');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'Pricing', '0009_alter_pricing_card_prpricing', '2024-01-07 02:40:01.001806');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'Pricing', '0010_alter_pricing_card_prpricing', '2024-01-07 02:40:01.009544');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'Pricing', '0011_alter_pricing_card_prpricing', '2024-01-07 02:40:01.016919');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'Services', '0001_initial', '2024-01-07 02:40:01.024712');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'Services', '0002_delete_external_design_delete_interior_design_and_more', '2024-01-07 02:40:01.030957');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'Services', '0003_urban_design', '2024-01-07 02:40:01.036196');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'Services', '0004_showdetail', '2024-01-07 02:40:01.040827');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'Services', '0005_landscape', '2024-01-07 02:40:01.045461');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'Services', '0006_external_design', '2024-01-07 02:40:01.051286');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'Services', '0007_interior_design', '2024-01-07 02:40:01.055468');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'Services', '0008_alter_showdetail_sddescriptions_and_more', '2024-01-07 02:40:01.072187');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'Services', '0009_alter_showdetail_sddescriptions_and_more', '2024-01-07 02:40:01.083929');
INSERT INTO django_migrations (id, app, name, applied) VALUES (32, 'Services', '0010_alter_urban_design_udescriptions', '2024-01-07 02:40:01.089582');
INSERT INTO django_migrations (id, app, name, applied) VALUES (33, 'Services', '0011_rename_sddescriptions_3_showdetail_sddescriptions_1_and_more', '2024-01-07 02:40:01.097869');
INSERT INTO django_migrations (id, app, name, applied) VALUES (34, 'Services', '0012_showdetail_image', '2024-01-07 02:40:01.104107');
INSERT INTO django_migrations (id, app, name, applied) VALUES (35, 'Services', '0013_alter_landscape_options_landscape_lsdescription_and_more', '2024-01-07 02:40:01.111857');
INSERT INTO django_migrations (id, app, name, applied) VALUES (36, 'Services', '0014_alter_landscape_lsdescription', '2024-01-07 02:40:01.117623');
INSERT INTO django_migrations (id, app, name, applied) VALUES (37, 'Services', '0015_landscapedetail', '2024-01-07 02:40:01.122253');
INSERT INTO django_migrations (id, app, name, applied) VALUES (38, 'Services', '0016_externaldesigndetail_alter_external_design_options_and_more', '2024-01-07 02:40:01.132317');
INSERT INTO django_migrations (id, app, name, applied) VALUES (39, 'Services', '0017_alter_interior_design_options_and_more', '2024-01-07 02:40:01.141284');
INSERT INTO django_migrations (id, app, name, applied) VALUES (40, 'Services', '0018_interior_designdetail_and_more', '2024-01-07 02:40:01.155720');
INSERT INTO django_migrations (id, app, name, applied) VALUES (41, 'Services', '0019_alter_external_design_options_and_more', '2024-01-07 02:40:01.162160');
INSERT INTO django_migrations (id, app, name, applied) VALUES (42, 'Services', '0020_auto_20211214_2211', '2024-01-07 02:40:01.171111');
INSERT INTO django_migrations (id, app, name, applied) VALUES (43, 'Services', '0021_auto_20211214_2215', '2024-01-07 02:40:01.179343');
INSERT INTO django_migrations (id, app, name, applied) VALUES (44, 'Services', '0022_auto_20211214_2217', '2024-01-07 02:40:01.187104');
INSERT INTO django_migrations (id, app, name, applied) VALUES (45, 'Services', '0023_auto_20211214_2233', '2024-01-07 02:40:01.203487');
INSERT INTO django_migrations (id, app, name, applied) VALUES (46, 'Services', '0024_auto_20211214_2307', '2024-01-07 02:40:01.224912');
INSERT INTO django_migrations (id, app, name, applied) VALUES (47, 'Services', '0025_rename_lsdescriptio_ar_landscape_lsdescription_ar', '2024-01-07 02:40:01.231277');
INSERT INTO django_migrations (id, app, name, applied) VALUES (48, 'Services', '0026_auto_20211214_2330', '2024-01-07 02:40:01.251698');
INSERT INTO django_migrations (id, app, name, applied) VALUES (49, 'Services', '0027_auto_20211214_2333', '2024-01-07 02:40:01.262452');
INSERT INTO django_migrations (id, app, name, applied) VALUES (50, 'Services', '0028_auto_20211214_2345', '2024-01-07 02:40:01.282836');
INSERT INTO django_migrations (id, app, name, applied) VALUES (51, 'Services', '0029_alter_interior_designdetail_idddescriptions_2_ar', '2024-01-07 02:40:01.288521');
INSERT INTO django_migrations (id, app, name, applied) VALUES (52, 'Services', '0030_auto_20211221_1909', '2024-01-07 02:40:01.301640');
INSERT INTO django_migrations (id, app, name, applied) VALUES (53, 'Services', '0031_auto_20211221_1938', '2024-01-07 02:40:01.317113');
INSERT INTO django_migrations (id, app, name, applied) VALUES (54, 'Services', '0032_auto_20211221_1948', '2024-01-07 02:40:01.335005');
INSERT INTO django_migrations (id, app, name, applied) VALUES (55, 'Services', '0033_auto_20211221_1949', '2024-01-07 02:40:01.343983');
INSERT INTO django_migrations (id, app, name, applied) VALUES (56, 'Services', '0034_auto_20211221_2024', '2024-01-07 02:40:01.364995');
INSERT INTO django_migrations (id, app, name, applied) VALUES (57, 'about', '0001_initial', '2024-01-07 02:40:01.371416');
INSERT INTO django_migrations (id, app, name, applied) VALUES (58, 'about', '0002_alter_about_aodescription_1_ar_and_more', '2024-01-07 02:40:01.388765');
INSERT INTO django_migrations (id, app, name, applied) VALUES (59, 'about', '0003_imagerestaurants', '2024-01-07 02:40:01.394344');
INSERT INTO django_migrations (id, app, name, applied) VALUES (60, 'about', '0004_imagerestaurants_titleimg', '2024-01-07 02:40:01.401349');
INSERT INTO django_migrations (id, app, name, applied) VALUES (61, 'about', '0005_alter_about_aodescription_1_ar_and_more', '2024-01-07 02:40:01.426822');
INSERT INTO django_migrations (id, app, name, applied) VALUES (62, 'about_all', '0001_initial', '2024-01-07 02:40:01.432273');
INSERT INTO django_migrations (id, app, name, applied) VALUES (63, 'about_all', '0002_alter_about_section_asdescription_1_ar_and_more', '2024-01-07 02:40:01.448736');
INSERT INTO django_migrations (id, app, name, applied) VALUES (64, 'about_all', '0003_alter_about_section_asdescription_1_ar_and_more', '2024-01-07 02:40:01.474469');
INSERT INTO django_migrations (id, app, name, applied) VALUES (65, 'about_all', '0004_alter_about_section_usdescription_ar', '2024-01-07 02:40:01.482463');
INSERT INTO django_migrations (id, app, name, applied) VALUES (66, 'contenttypes', '0001_initial', '2024-01-07 02:40:01.488905');
INSERT INTO django_migrations (id, app, name, applied) VALUES (67, 'auth', '0001_initial', '2024-01-07 02:40:01.504690');
INSERT INTO django_migrations (id, app, name, applied) VALUES (68, 'admin', '0001_initial', '2024-01-07 02:40:01.517053');
INSERT INTO django_migrations (id, app, name, applied) VALUES (69, 'admin', '0002_logentry_remove_auto_add', '2024-01-07 02:40:01.528182');
INSERT INTO django_migrations (id, app, name, applied) VALUES (70, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-07 02:40:01.535156');
INSERT INTO django_migrations (id, app, name, applied) VALUES (71, 'contenttypes', '0002_remove_content_type_name', '2024-01-07 02:40:01.556973');
INSERT INTO django_migrations (id, app, name, applied) VALUES (72, 'auth', '0002_alter_permission_name_max_length', '2024-01-07 02:40:01.567950');
INSERT INTO django_migrations (id, app, name, applied) VALUES (73, 'auth', '0003_alter_user_email_max_length', '2024-01-07 02:40:01.577767');
INSERT INTO django_migrations (id, app, name, applied) VALUES (74, 'auth', '0004_alter_user_username_opts', '2024-01-07 02:40:01.585478');
INSERT INTO django_migrations (id, app, name, applied) VALUES (75, 'auth', '0005_alter_user_last_login_null', '2024-01-07 02:40:01.597008');
INSERT INTO django_migrations (id, app, name, applied) VALUES (76, 'auth', '0006_require_contenttypes_0002', '2024-01-07 02:40:01.600604');
INSERT INTO django_migrations (id, app, name, applied) VALUES (77, 'auth', '0007_alter_validators_add_error_messages', '2024-01-07 02:40:01.608655');
INSERT INTO django_migrations (id, app, name, applied) VALUES (78, 'auth', '0008_alter_user_username_max_length', '2024-01-07 02:40:01.621282');
INSERT INTO django_migrations (id, app, name, applied) VALUES (79, 'auth', '0009_alter_user_last_name_max_length', '2024-01-07 02:40:01.631586');
INSERT INTO django_migrations (id, app, name, applied) VALUES (80, 'auth', '0010_alter_group_name_max_length', '2024-01-07 02:40:01.641115');
INSERT INTO django_migrations (id, app, name, applied) VALUES (81, 'auth', '0011_update_proxy_permissions', '2024-01-07 02:40:01.653431');
INSERT INTO django_migrations (id, app, name, applied) VALUES (82, 'auth', '0012_alter_user_first_name_max_length', '2024-01-07 02:40:01.664556');
INSERT INTO django_migrations (id, app, name, applied) VALUES (83, 'clients', '0001_initial', '2024-01-07 02:40:01.670694');
INSERT INTO django_migrations (id, app, name, applied) VALUES (84, 'clients', '0002_clients_title', '2024-01-07 02:40:01.678476');
INSERT INTO django_migrations (id, app, name, applied) VALUES (85, 'clients', '0003_auto_20211221_1338', '2024-01-07 02:40:01.691275');
INSERT INTO django_migrations (id, app, name, applied) VALUES (86, 'contact', '0001_initial', '2024-01-07 02:40:01.697991');
INSERT INTO django_migrations (id, app, name, applied) VALUES (87, 'contact', '0002_auto_20211128_1247', '2024-01-07 02:40:01.710164');
INSERT INTO django_migrations (id, app, name, applied) VALUES (88, 'contact', '0003_alter_info_site', '2024-01-07 02:40:01.718354');
INSERT INTO django_migrations (id, app, name, applied) VALUES (89, 'contact', '0004_auto_20211128_1301', '2024-01-07 02:40:01.728029');
INSERT INTO django_migrations (id, app, name, applied) VALUES (90, 'contact', '0005_auto_20211128_1303', '2024-01-07 02:40:01.740300');
INSERT INTO django_migrations (id, app, name, applied) VALUES (91, 'contact', '0006_alter_info_emails', '2024-01-07 02:40:01.748003');
INSERT INTO django_migrations (id, app, name, applied) VALUES (92, 'contact', '0007_auto_20211128_1304', '2024-01-07 02:40:01.770348');
INSERT INTO django_migrations (id, app, name, applied) VALUES (93, 'contact', '0008_alter_info_options_remove_info_emails_and_more', '2024-01-07 02:40:01.793996');
INSERT INTO django_migrations (id, app, name, applied) VALUES (94, 'contact', '0009_alter_info_pudata', '2024-01-07 02:40:01.801686');
INSERT INTO django_migrations (id, app, name, applied) VALUES (95, 'contact', '0010_info_pudata_ar', '2024-01-07 02:40:01.810224');
INSERT INTO django_migrations (id, app, name, applied) VALUES (96, 'contact', '0011_alter_info_email_2_alter_info_place_alter_info_site', '2024-01-07 02:40:01.819778');
INSERT INTO django_migrations (id, app, name, applied) VALUES (97, 'contact', '0012_info_place_ar_info_site_ar', '2024-01-07 02:40:01.830570');
INSERT INTO django_migrations (id, app, name, applied) VALUES (98, 'owner', '0001_initial', '2024-01-07 02:40:01.836829');
INSERT INTO django_migrations (id, app, name, applied) VALUES (99, 'owner', '0002_owner_imgbachome', '2024-01-07 02:40:01.843791');
INSERT INTO django_migrations (id, app, name, applied) VALUES (100, 'sessions', '0001_initial', '2024-01-07 02:40:01.854671');
INSERT INTO django_migrations (id, app, name, applied) VALUES (101, 'team', '0001_initial', '2024-01-07 02:40:01.861126');
INSERT INTO django_migrations (id, app, name, applied) VALUES (102, 'team', '0002_mediateam', '2024-01-07 02:40:01.868715');
INSERT INTO django_migrations (id, app, name, applied) VALUES (103, 'vira', '0001_initial', '2024-01-07 02:40:01.888631');
INSERT INTO django_migrations (id, app, name, applied) VALUES (104, 'vira', '0002_alter_clients_options', '2024-01-07 02:40:01.893869');
INSERT INTO django_migrations (id, app, name, applied) VALUES (105, 'vira', '0003_remove_clients_image', '2024-01-07 02:40:01.902316');
INSERT INTO django_migrations (id, app, name, applied) VALUES (106, 'vira', '0004_alter_owner_options_remove_owner_owdesc_and_more', '2024-01-07 02:40:01.919511');
INSERT INTO django_migrations (id, app, name, applied) VALUES (107, 'vira', '0005_alter_services_options_remove_services_serfor_and_more', '2024-01-07 02:40:01.935515');
INSERT INTO django_migrations (id, app, name, applied) VALUES (108, 'vira', '0006_alter_team_options_remove_team_timg_and_more', '2024-01-07 02:40:01.951435');
INSERT INTO django_migrations (id, app, name, applied) VALUES (109, 'vira', '0007_navheader_nalogo_ar', '2024-01-07 02:40:01.958653');
INSERT INTO django_migrations (id, app, name, applied) VALUES (110, 'vira', '0008_rename_hodescription_homepage_hodescription_ar_and_more', '2024-01-07 02:40:01.977709');
INSERT INTO django_migrations (id, app, name, applied) VALUES (111, 'vira', '0009_alter_section_old_options_and_more', '2024-01-07 02:40:02.008940');
INSERT INTO django_migrations (id, app, name, applied) VALUES (112, 'vira', '0010_alter_portfolio_options', '2024-01-07 02:40:02.014733');
INSERT INTO django_migrations (id, app, name, applied) VALUES (113, 'vira', '0011_alter_about_options_remove_about_ustitle_and_more', '2024-01-07 02:40:02.047607');
INSERT INTO django_migrations (id, app, name, applied) VALUES (114, 'vira', '0012_auto_20211221_1322', '2024-01-07 02:40:02.069346');
INSERT INTO django_migrations (id, app, name, applied) VALUES (115, 'vira', '0013_navheader_navimg', '2024-01-07 02:40:02.075587');
INSERT INTO django_migrations (id, app, name, applied) VALUES (116, 'vira', '0014_alter_navheader_navimg', '2024-01-07 02:40:02.083821');
INSERT INTO django_migrations (id, app, name, applied) VALUES (117, 'vira', '0015_alter_homepage_hotitle_ar_alter_homepage_hotitle_en', '2024-01-07 02:40:02.095273');
INSERT INTO django_migrations (id, app, name, applied) VALUES (118, 'vira', '0016_alter_navheader_navimg', '2024-01-07 02:40:02.100897');
INSERT INTO django_migrations (id, app, name, applied) VALUES (119, 'vira', '0017_rename_insta_media_instagram_and_more', '2024-01-07 02:40:02.138144');
INSERT INTO django_migrations (id, app, name, applied) VALUES (120, 'vira', '0018_media_mtitle', '2024-01-07 02:40:02.146097');
INSERT INTO django_migrations (id, app, name, applied) VALUES (121, 'vira', '0019_media_map', '2024-01-07 02:40:02.153828');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('v0aaecm8ewjwc2n272b2vplz1h5i1lxg', '.eJxVjEEOwiAQRe_C2pAhAwRcuvcMZGAGqZqSlHZlvLs26UK3_733XyrRtra0DVnSxOqsjDr9bpnKQ-Yd8J3mW9elz-syZb0r-qBDXzvL83K4fweNRvvWZGwuENEVWy0hSQG2LsaKAUNA4ExRgucC2QMayt4zVjDiBGIkr94f6lw3-A:1rMJ6V:D2PitjipqCVoQyoagoPyTpx1dsP4uo4XdjXiq2jimss', '2024-01-21 02:41:35.427272');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('px84i6a4i5yb7vi4muaxnxiht7kg9q8u', '.eJxVjEEOwiAQRe_C2pAhAwRcuvcMZGAGqZqSlHZlvLs26UK3_733XyrRtra0DVnSxOqsjDr9bpnKQ-Yd8J3mW9elz-syZb0r-qBDXzvL83K4fweNRvvWZGwuENEVWy0hSQG2LsaKAUNA4ExRgucC2QMayt4zVjDiBGIkr94f6lw3-A:1sOuak:QVX38WJfuxywnd_ERu5cGyt50yzziODMRzfOfN-D6Dc', '2024-07-17 07:39:50.208433');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('19jelufmgu53x7hhhsawkitdtm3xlplp', '.eJxVjEEOwiAQRe_C2hCGAcy4dO8ZCAwgVQNJaVeNd9cmXej2v_f-JnxYl-rXkWc_JXERWpx-txj4mdsO0iO0e5fc2zJPUe6KPOiQt57y63q4fwc1jPqtSWMBzkk7A2ABOWDKQMqCK2cqxWhWipKyCqMhQmuRmJALoAsGnXh_AMIxNq0:1uX3ao:cl0pnuneXKHe4QZX-_xb7bqX_b32VcLKcWnu-6-ELWM', '2025-07-16 19:58:06.879847');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('w6b3vags35emxz95e65780akhtgtvkyo', '.eJxVjEEOwiAQRe_C2hCGAcy4dO8ZCAwgVQNJaVeNd9cmXej2v_f-JnxYl-rXkWc_JXERWpx-txj4mdsO0iO0e5fc2zJPUe6KPOiQt57y63q4fwc1jPqtSWMBzkk7A2ABOWDKQMqCK2cqxWhWipKyCqMhQmuRmJALoAsGnXh_AMIxNq0:1uXcwd:nrg5Ajf7O-b1csbjbbd-ZcQjj3MoBKnjCxrHa4J1TdI', '2025-07-18 09:42:59.085789');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('f1qw78j4j4pv5xwtpy7bc7h4iw4gd6bx', '.eJxVjDsOwjAQBe_iGlleb-IPJT1nsNbrDQ6gRIqTCnF3iJQC2jcz76USbWtNW5MljUWdFarT75aJHzLtoNxpus2a52ldxqx3RR-06etc5Hk53L-DSq1-axPAsTOxgy4AWsNMki2zGchCoNJHU1BKQB9zFOvJC4J30HcyAKKo9wfLbzdl:1up0JI:I2Epj7mp7YhksNJxgpqI8DH8Hs1VmSPBXtB-6Ek1724', '2025-09-04 08:06:12.190603');

-- Table: owner_owner
CREATE TABLE IF NOT EXISTS "owner_owner" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "image" varchar(100) NOT NULL, "OwTitle" varchar(40) NOT NULL, "OwTitle_ar" varchar(40) NOT NULL, "OwExperience" varchar(30) NOT NULL, "OwExperience_ar" varchar(30) NOT NULL, "OwDesc" varchar(150) NOT NULL, "OwDesc_ar" varchar(150) NOT NULL, "ImgBacHome" varchar(100) NOT NULL);
INSERT INTO owner_owner (id, image, OwTitle, OwTitle_ar, OwExperience, OwExperience_ar, OwDesc, OwDesc_ar, ImgBacHome) VALUES (1, 'Owner/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp', 'mohamed', '??????????????? ?????? ?? ????? ????? ??', 'gooood', '????? ?????? ??????? ??????? ?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem', '????? ?????? ??????? ??????? ???? ?? ??????? ??? ??? ??????? ?????????? . ?????', '');

-- Table: Portfolio_category_ars
CREATE TABLE IF NOT EXISTS "Portfolio_category_ars" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Titles" varchar(30) NULL);
INSERT INTO Portfolio_category_ars (id, Titles) VALUES (1, 'xdfgjnghjhjjhg');
INSERT INTO Portfolio_category_ars (id, Titles) VALUES (2, 'It is a long established fact');

-- Table: Portfolio_category_en
CREATE TABLE IF NOT EXISTS "Portfolio_category_en" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Title" varchar(30) NULL);

-- Table: Portfolio_portfoliolists
CREATE TABLE IF NOT EXISTS "Portfolio_portfoliolists" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "PSTitle" varchar(30) NULL, "PSTitle_ar" varchar(30) NULL, "PSData" datetime NULL, "PSDescription" text NULL, "PSDescription_ar" text NULL, "PSImg" varchar(100) NOT NULL, "PSImgUp_0" varchar(100) NOT NULL, "PSImgUp_00" varchar(100) NOT NULL, "PSImgUp_1" varchar(100) NULL, "PSImgUp_2" varchar(100) NULL, "PSImgUp_3" varchar(100) NULL, "PSImgUp_4" varchar(100) NULL, "PSImgUp_5" varchar(100) NULL, "PSImgUp_6" varchar(100) NULL, "LSlug" varchar(50) NULL, "PLCategoryf_id" bigint NOT NULL REFERENCES "Portfolio_category_ars" ("id") DEFERRABLE INITIALLY DEFERRED, "PSImgUp_7" varchar(100) NULL);
INSERT INTO Portfolio_portfoliolists (id, PSTitle, PSTitle_ar, PSData, PSDescription, PSDescription_ar, PSImg, PSImgUp_0, PSImgUp_00, PSImgUp_1, PSImgUp_2, PSImgUp_3, PSImgUp_4, PSImgUp_5, PSImgUp_6, LSlug, PLCategoryf_id, PSImgUp_7) VALUES (1, 'ghkhgkbkhjgkhjgkhjg', 'hjgkhjkjhkjh', '2025-07-04 09:43:37', '', '', 'media/Portfolio/services.jpg', 'media/Portfolio/bac6.png', 'media/Portfolio/hero-bg.jpg', 'media/Portfolio/bac6_15pr6gG.png', 'media/Portfolio/profile-img.jpg', 'media/Portfolio/services_AYWKUmm.jpg', 'media/Portfolio/profile-img_ALmBRrU.jpg', 'media/Portfolio/profile-img_G0Vdcfv.jpg', 'media/Portfolio/services_lmHE9q4.jpg', 'ghkhgkbkhjgkhjgkhjg', 1, 'media/Portfolio/bac6_eecyoAL.png');
INSERT INTO Portfolio_portfoliolists (id, PSTitle, PSTitle_ar, PSData, PSDescription, PSDescription_ar, PSImg, PSImgUp_0, PSImgUp_00, PSImgUp_1, PSImgUp_2, PSImgUp_3, PSImgUp_4, PSImgUp_5, PSImgUp_6, LSlug, PLCategoryf_id, PSImgUp_7) VALUES (2, 'It is a long established fact', 'It is a long established fact', '2025-08-21 08:22:16', '', '', 'media/Portfolio/ee622310-7514-11f0-9cb3-2344cd85f55f.jpg.webp', 'media/Portfolio/GGE5ILN4FRPZHMMZ27MFAYJDGM.avif', 'media/Portfolio/skysports-efl-championship_6982807_fztl45b.jpg', 'media/Portfolio/14068e10-7a58-11f0-a34f-318be3fb0481.jpg.webp', 'media/Portfolio/4b0a4160-7a24-11f0-83cc-c5da98c419b8.jpg.webp', 'media/Portfolio/ads-728x90.png', 'media/Portfolio/skysports-efl-championship_6982807.jpg', 'media/Portfolio/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'media/Portfolio/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp', 'it-is-a-long-established-fact', 2, 'media/Portfolio/skysports-efl-championship_6982807_OgGpF6S.jpg');

-- Table: Pricing_currency_symbol
CREATE TABLE IF NOT EXISTS "Pricing_currency_symbol" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "Currency_symbol" varchar(10) NULL);
INSERT INTO Pricing_currency_symbol (id, Currency_symbol) VALUES (1, 'EGP');

-- Table: Pricing_pricing_card
CREATE TABLE IF NOT EXISTS "Pricing_pricing_card" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "PrTitle_en" varchar(20) NOT NULL, "PrTitle_ar" varchar(20) NOT NULL, "PrDescription_en" text NOT NULL, "PrDescription_ar" text NOT NULL, "Currency_symbol_id" bigint NOT NULL REFERENCES "Pricing_currency_symbol" ("id") DEFERRABLE INITIALLY DEFERRED, "PRSpaces_id" bigint NOT NULL REFERENCES "Pricing_spaces" ("id") DEFERRABLE INITIALLY DEFERRED, "PrPricing" varchar(7) NOT NULL);
INSERT INTO Pricing_pricing_card (id, PrTitle_en, PrTitle_ar, PrDescription_en, PrDescription_ar, Currency_symbol_id, PRSpaces_id, PrPricing) VALUES (1, 'It is a long establi', '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 1, 1, '20000');

-- Table: Pricing_pricing_t
CREATE TABLE IF NOT EXISTS "Pricing_pricing_t" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "PrTitle_en" varchar(50) NULL, "PrTitle_ar" varchar(50) NULL, "PrDescription_en" text NULL, "PrDescription_ar" text NULL);
INSERT INTO Pricing_pricing_t (id, PrTitle_en, PrTitle_ar, PrDescription_en, PrDescription_ar) VALUES (1, 'It is a long established fact that a reader will b', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', '');

-- Table: Pricing_spaces
CREATE TABLE IF NOT EXISTS "Pricing_spaces" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "SSpaces" varchar(10) NULL);
INSERT INTO Pricing_spaces (id, SSpaces) VALUES (1, '200');
INSERT INTO Pricing_spaces (id, SSpaces) VALUES (2, '100');

-- Table: Services_external_design
CREATE TABLE IF NOT EXISTS "Services_external_design" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "EDDescription" text NOT NULL, "EDName" varchar(30) NOT NULL, "EDImg_1" varchar(100) NULL, "EDDescription_ar" text NOT NULL, "EDName_ar" varchar(30) NOT NULL);
INSERT INTO Services_external_design (id, EDDescription, EDName, EDImg_1, EDDescription_ar, EDName_ar) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact', 'media/External_Design/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact');

-- Table: Services_externaldesigndetail
CREATE TABLE IF NOT EXISTS "Services_externaldesigndetail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "EDDImg_1" varchar(100) NULL, "EDDDescriptions" text NOT NULL, "EDDImg_2" varchar(100) NULL, "EDDTitle_1" varchar(200) NOT NULL, "EDDDescriptions_1" text NOT NULL, "EDDImg_4" varchar(100) NULL, "EDDImg_3" varchar(100) NULL, "EDDTitle_2" varchar(200) NOT NULL, "EDDDescriptions_1_ar" text NOT NULL, "EDDDescriptions_2_ar" text NOT NULL, "EDDDescriptions_ar" text NOT NULL, "EDDTitle_1_ar" varchar(200) NOT NULL, "EDDTitle_2_ar" varchar(200) NOT NULL, "EDDDescriptions_2_en" text NOT NULL);
INSERT INTO Services_externaldesigndetail (id, EDDImg_1, EDDDescriptions, EDDImg_2, EDDTitle_1, EDDDescriptions_1, EDDImg_4, EDDImg_3, EDDTitle_2, EDDDescriptions_1_ar, EDDDescriptions_2_ar, EDDDescriptions_ar, EDDTitle_1_ar, EDDTitle_2_ar, EDDDescriptions_2_en) VALUES (1, 'media/ExternalDesignDetail/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/ExternalDesignDetail/GGE5ILN4FRPZHMMZ27MFAYJDGM.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/ExternalDesignDetail/GGE5ILN4FRPZHMMZ27MFAYJDGM_O466hcr.avif', 'media/ExternalDesignDetail/14068e10-7a58-11f0-a34f-318be3fb0481.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).');

-- Table: Services_interior_design
CREATE TABLE IF NOT EXISTS "Services_interior_design" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "IDDescription" text NOT NULL, "IDName" varchar(30) NOT NULL, "IDImg_1" varchar(100) NULL, "IDDescription_ar" text NOT NULL, "IDName_ar" varchar(30) NOT NULL);
INSERT INTO Services_interior_design (id, IDDescription, IDName, IDImg_1, IDDescription_ar, IDName_ar) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact', 'media/Interior_Design/4b0a4160-7a24-11f0-83cc-c5da98c419b8.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact');

-- Table: Services_interior_designdetail
CREATE TABLE IF NOT EXISTS "Services_interior_designdetail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "IDDImg_1" varchar(100) NULL, "IDDDescriptions" text NOT NULL, "IDDImg_2" varchar(100) NULL, "IDDTitle_1" varchar(200) NOT NULL, "IDDDescriptions_1" text NOT NULL, "IDDImg_4" varchar(100) NULL, "IDDImg_3" varchar(100) NULL, "IDDTitle_2" varchar(200) NOT NULL, "IDDDescriptions_2" text NOT NULL, "IDDDescriptions_1_ar" text NOT NULL, "IDDDescriptions_2_ar" text NOT NULL, "IDDDescriptions_ar" text NOT NULL, "IDDTitle_1_ar" varchar(200) NOT NULL, "IDDTitle_2_ar" varchar(200) NOT NULL);
INSERT INTO Services_interior_designdetail (id, IDDImg_1, IDDDescriptions, IDDImg_2, IDDTitle_1, IDDDescriptions_1, IDDImg_4, IDDImg_3, IDDTitle_2, IDDDescriptions_2, IDDDescriptions_1_ar, IDDDescriptions_2_ar, IDDDescriptions_ar, IDDTitle_1_ar, IDDTitle_2_ar) VALUES (1, 'media/Interior_DesignDetail/GGE5ILN4FRPZHMMZ27MFAYJDGM.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/Interior_DesignDetail/14068e10-7a58-11f0-a34f-318be3fb0481.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/Interior_DesignDetail/ee622310-7514-11f0-9cb3-2344cd85f55f.jpg.webp', 'media/Interior_DesignDetail/skysports-efl-championship_6982807.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib');

-- Table: Services_landscape
CREATE TABLE IF NOT EXISTS "Services_landscape" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "LSDescription" text NOT NULL, "LSName" varchar(30) NOT NULL, "LSImg_1" varchar(100) NULL, "LSDescription_ar" text NOT NULL, "LSName_ar" varchar(30) NOT NULL);
INSERT INTO Services_landscape (id, LSDescription, LSName, LSImg_1, LSDescription_ar, LSName_ar) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact', 'media/LandScape/GGE5ILN4FRPZHMMZ27MFAYJDGM.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established fact');

-- Table: Services_landscapedetail
CREATE TABLE IF NOT EXISTS "Services_landscapedetail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "LSImg_1" varchar(100) NULL, "LSDescriptions" text NOT NULL, "LSImg_2" varchar(100) NULL, "LSTitle_1" varchar(200) NOT NULL, "LSDescriptions_1" text NOT NULL, "LSImg_4" varchar(100) NULL, "LSImg_3" varchar(100) NULL, "LSTitle_2" varchar(200) NOT NULL, "LSDescriptions_2" text NOT NULL, "LSDescriptions_1_ar" text NOT NULL, "LSDescriptions_2_ar" text NOT NULL, "LSDescriptions_ar" text NOT NULL, "LSTitle_1_ar" varchar(200) NOT NULL, "LSTitle_2_ar" varchar(200) NOT NULL);
INSERT INTO Services_landscapedetail (id, LSImg_1, LSDescriptions, LSImg_2, LSTitle_1, LSDescriptions_1, LSImg_4, LSImg_3, LSTitle_2, LSDescriptions_2, LSDescriptions_1_ar, LSDescriptions_2_ar, LSDescriptions_ar, LSTitle_1_ar, LSTitle_2_ar) VALUES (1, 'media/LandScapeDetail/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/LandScapeDetail/GGE5ILN4FRPZHMMZ27MFAYJDGM.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/LandScapeDetail/d20ca870-739d-11f0-856a-e3e76ccaf044_zmSgwng.jpg.webp', 'media/LandScapeDetail/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib');

-- Table: Services_services_t
CREATE TABLE IF NOT EXISTS "Services_services_t" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "TiTitle" varchar(100) NOT NULL, "TiDesc" varchar(200) NOT NULL, "TiDesc_ar" varchar(200) NOT NULL, "TiTitle_ar" varchar(100) NOT NULL);
INSERT INTO Services_services_t (id, TiTitle, TiDesc, TiDesc_ar, TiTitle_ar) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page whe', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page whe');

-- Table: Services_showdetail
CREATE TABLE IF NOT EXISTS "Services_showdetail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "SDImg_1" varchar(100) NULL, "SDImg_2" varchar(100) NULL, "SDTitle_1" varchar(200) NOT NULL, "SDDescriptions" text NOT NULL, "SDImg_3" varchar(100) NULL, "SDTitle_2" varchar(200) NOT NULL, "SDDescriptions_2" text NOT NULL, "SDImg_4" varchar(100) NULL, "SDDescriptions_1" text NOT NULL, "SDDescriptions_1_ar" text NOT NULL, "SDDescriptions_2_ar" text NOT NULL, "SDDescriptions_ar" text NOT NULL, "SDTitle_1_ar" varchar(200) NOT NULL, "SDTitle_2_ar" varchar(200) NOT NULL);
INSERT INTO Services_showdetail (id, SDImg_1, SDImg_2, SDTitle_1, SDDescriptions, SDImg_3, SDTitle_2, SDDescriptions_2, SDImg_4, SDDescriptions_1, SDDescriptions_1_ar, SDDescriptions_2_ar, SDDescriptions_ar, SDTitle_1_ar, SDTitle_2_ar) VALUES (1, 'media/ShowDetail/DOQHHAJPVZNLNERQIKGY2MBT4E.avif', 'media/ShowDetail/4b0a4160-7a24-11f0-83cc-c5da98c419b8.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/ShowDetail/ee622310-7514-11f0-9cb3-2344cd85f55f.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'media/ShowDetail/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib');

-- Table: Services_urban_design
CREATE TABLE IF NOT EXISTS "Services_urban_design" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "UName" varchar(25) NOT NULL, "UDescriptions" varchar(300) NOT NULL, "UDImg_1" varchar(100) NULL, "UDescriptions_ar" varchar(300) NOT NULL, "UName_ar" varchar(25) NOT NULL);
INSERT INTO Services_urban_design (id, UName, UDescriptions, UDImg_1, UDescriptions_ar, UName_ar) VALUES (1, 'It is a long established', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'media/Urban Design/4b0a4160-7a24-11f0-83cc-c5da98c419b8.jpg.webp', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable Eng', 'It is a long established');

-- Table: team_mediateam
CREATE TABLE IF NOT EXISTS "team_mediateam" ("team_ptr_id" bigint NOT NULL PRIMARY KEY REFERENCES "team_team" ("id") DEFERRABLE INITIALLY DEFERRED, "Fac" varchar(200) NOT NULL, "Insta" varchar(200) NOT NULL, "Lin" varchar(200) NOT NULL, "beh" varchar(200) NOT NULL);
INSERT INTO team_mediateam (team_ptr_id, Fac, Insta, Lin, beh) VALUES (1, '', '', '', '');
INSERT INTO team_mediateam (team_ptr_id, Fac, Insta, Lin, beh) VALUES (2, '', '', '', '');

-- Table: team_team
CREATE TABLE IF NOT EXISTS "team_team" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "TImg" varchar(100) NOT NULL, "TeTitle" varchar(15) NOT NULL, "TeTitle_ar" varchar(15) NOT NULL, "TeExperience" varchar(20) NOT NULL, "TeExperience_ar" varchar(20) NOT NULL);
INSERT INTO team_team (id, TImg, TeTitle, TeTitle_ar, TeExperience, TeExperience_ar) VALUES (1, 'Team/skysports-efl-championship_6982807.jpg', 'https://mohamed', 'https://mohamed', 'https://mohamednabil', 'https://mohamednabil');
INSERT INTO team_team (id, TImg, TeTitle, TeTitle_ar, TeExperience, TeExperience_ar) VALUES (2, 'Team/d20ca870-739d-11f0-856a-e3e76ccaf044.jpg.webp', 'It is a long es', 'It is a long es', 'It is a long establi', 'It is a long establi');

-- Table: vira_about
CREATE TABLE IF NOT EXISTS "vira_about" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_clients
CREATE TABLE IF NOT EXISTS "vira_clients" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_faq
CREATE TABLE IF NOT EXISTS "vira_faq" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "FaqName" varchar(30) NOT NULL, "FaqTitle" varchar(100) NOT NULL, "FaqNameOne" varchar(100) NOT NULL, "FaqDescription" text NOT NULL);

-- Table: vira_homepage
CREATE TABLE IF NOT EXISTS "vira_homepage" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "HoDescription_ar" text NOT NULL, "HoTitle_ar" varchar(50) NOT NULL, "HoDescription_en" text NOT NULL, "HoTitle_en" varchar(50) NOT NULL);
INSERT INTO vira_homepage (id, HoDescription_ar, HoTitle_ar, HoDescription_en, HoTitle_en) VALUES (1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will b', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 'It is a long established fact that a reader will b');

-- Table: vira_media
CREATE TABLE IF NOT EXISTS "vira_media" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "instagram" varchar(200) NOT NULL, "twitter" varchar(200) NOT NULL, "whatsapp" varchar(200) NOT NULL, "snapchat" varchar(200) NOT NULL, "tiktok" varchar(200) NOT NULL, "MTitle" varchar(200) NOT NULL, "map" varchar(200) NOT NULL);
INSERT INTO vira_media (id, instagram, twitter, whatsapp, snapchat, tiktok, MTitle, map) VALUES (1, 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/', 'https://mohamednabilpro.netlify.app/');

-- Table: vira_navheader
CREATE TABLE IF NOT EXISTS "vira_navheader" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "NaLogo" varchar(15) NOT NULL, "NaLogo_ar" varchar(15) NOT NULL, "NavImg" varchar(100) NOT NULL);
INSERT INTO vira_navheader (id, NaLogo, NaLogo_ar, NavImg) VALUES (1, 'ViRa', '???', 'media/header/logo.jpg');

-- Table: vira_owner
CREATE TABLE IF NOT EXISTS "vira_owner" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_portfolio
CREATE TABLE IF NOT EXISTS "vira_portfolio" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_pricing
CREATE TABLE IF NOT EXISTS "vira_pricing" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_pricing1
CREATE TABLE IF NOT EXISTS "vira_pricing1" ("pricing_ptr_id" bigint NOT NULL PRIMARY KEY REFERENCES "vira_pricing" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: vira_section_old
CREATE TABLE IF NOT EXISTS "vira_section_old" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_services
CREATE TABLE IF NOT EXISTS "vira_services" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Table: vira_team
CREATE TABLE IF NOT EXISTS "vira_team" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: Portfolio_portfoliolists_LSlug_a312f39c
CREATE INDEX IF NOT EXISTS "Portfolio_portfoliolists_LSlug_a312f39c" ON "Portfolio_portfoliolists" ("LSlug");

-- Index: Portfolio_portfoliolists_PLCategoryf_id_81cfd462
CREATE INDEX IF NOT EXISTS "Portfolio_portfoliolists_PLCategoryf_id_81cfd462" ON "Portfolio_portfoliolists" ("PLCategoryf_id");

-- Index: Pricing_pricing_card_Currency_symbol_id_c1e924cd
CREATE INDEX IF NOT EXISTS "Pricing_pricing_card_Currency_symbol_id_c1e924cd" ON "Pricing_pricing_card" ("Currency_symbol_id");

-- Index: Pricing_pricing_card_PRSpaces_id_debdc520
CREATE INDEX IF NOT EXISTS "Pricing_pricing_card_PRSpaces_id_debdc520" ON "Pricing_pricing_card" ("PRSpaces_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
