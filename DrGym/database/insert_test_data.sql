INSERT INTO Z13.USERS (USERNAME, NAME, SURNAME, EMAIL, PASSWORD, WEIGHT, HEIGHT, VERIFIED) VALUES ('pedziwiatr', 'Michał', 'Pędziwiatr', 'pedziwiatr@gmail.com', 'gimpson', 92.00, 192.00, 0);
INSERT INTO Z13.USERS (USERNAME, NAME, SURNAME, EMAIL, PASSWORD, WEIGHT, HEIGHT, VERIFIED) VALUES ('epcarbonara', 'Kuba', 'Skibicki', 'epcarbonara@gmail.com', 'gimpson', 70.00, 180.00, 0);
INSERT INTO Z13.USERS (USERNAME, NAME, SURNAME, EMAIL, PASSWORD, WEIGHT, HEIGHT, VERIFIED) VALUES ('szolim', 'Miłosz', 'Andryszczuk', 'szolim@gmail.com', 'gimpson', 70.00, 180.00, 0);
INSERT INTO Z13.USERS (USERNAME, NAME, SURNAME, EMAIL, PASSWORD, WEIGHT, HEIGHT, VERIFIED) VALUES ('skuter', 'Kacper', 'Siemionek', 'siemionek.kacper22@gmail.com', '$2a$10$lHmfb/55L/a4k3l9war96.Fd3zvGcWv/Q88Xo37iWUOnz3zr12.h2', 70.00, 175.00, 1);
INSERT INTO Z13.USERS (USERNAME, NAME, SURNAME, EMAIL, PASSWORD, WEIGHT, HEIGHT, VERIFIED) VALUES ('mandrysz', 'Milosz', 'Andry', 'milosz@vveb.name', '$2a$10$.TXFIsyoTgl7p65uoPhjueFUj.8Cv1jCR3ESnEP/fpDIoMDJTq14u', null, null, 1);
commit;

INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (12, DATE '2024-12-01', 'epcarbonara', DATE '2024-12-07', null, TIMESTAMP '2024-12-03 15:27:59.890602');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (14, DATE '2023-02-01', 'pedziwiatr', DATE '2024-12-07', null, TIMESTAMP '2024-12-03 15:28:00.012175');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (1, TIMESTAMP '2024-11-30 18:00:00', 'pedziwiatr', TIMESTAMP '2024-11-30 19:30:00', 'amazing push day', TIMESTAMP '2024-12-04 01:20:56.984848');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (3, TIMESTAMP '2024-12-03 16:00:00', 'epcarbonara', TIMESTAMP '2024-12-03 17:30:00', 'pumping the guns', TIMESTAMP '2024-12-04 02:05:51.807000');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (4, TIMESTAMP '2024-12-04 20:00:00', 'szolim', TIMESTAMP '2024-12-04 21:30:00', 'grinding the abs', TIMESTAMP '2024-12-04 02:23:26.109198');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (5, TIMESTAMP '1410-07-15 10:00:00', 'pedziwiatr', TIMESTAMP '1410-07-15 12:00:00', 'growing out wings', TIMESTAMP '2024-12-04 17:42:11.194051');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (8, TIMESTAMP '1999-12-31 23:00:00', 'epcarbonara', TIMESTAMP '2000-01-01 01:00:09', 'chest chest chest', TIMESTAMP '2024-12-04 17:59:37.386146');
INSERT INTO Z13.WORKOUTS (WORKOUT_ID, START_DATETIME, USERNAME, END_DATETIME, DESCRIPTION, CREATED_DATETIME) VALUES (9, TIMESTAMP '1918-11-11 04:00:00', 'szolim', TIMESTAMP '1918-11-11 07:00:00', 'tarzan workout', TIMESTAMP '2024-12-04 18:04:48.470592');
commit;

INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (1, 1, 3, 100, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (2, 2, 3, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (3, 1, 1, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (4, 1, 6, 100, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (5, 1, 12, 90, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (6, 4, 12, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (7, 4, 10, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (8, 4, 8, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (9, 6, 12, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (10, 6, 10, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (11, 6, 12, 18, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (12, 8, 12, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (13, 8, 8, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (14, 8, 12, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (15, 5, 12, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (16, 5, 10, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (17, 5, 8, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (18, 39, 12, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (19, 39, 10, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (20, 39, 8, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (21, 49, 12, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (22, 49, 10, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (23, 49, 12, 100, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (24, 75, 12, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (25, 75, 12, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (26, 75, 10, 50, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (27, 76, 12, 85, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (28, 76, 10, 85, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (29, 76, 10, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (30, 69, 0, 0, TIMESTAMP '2024-12-01 01:30:00');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (31, 21, 20, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (32, 21, 16, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (33, 21, 12, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (34, 21, 8, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (35, 21, 5, 40, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (36, 23, 12, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (37, 23, 10, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (38, 23, 8, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (39, 29, 10, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (40, 29, 8, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (41, 29, 2, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (42, 73, 0, 0, TIMESTAMP '2024-12-01 12:34:56');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (43, 57, 12, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (44, 57, 10, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (45, 57, 12, 10, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (46, 57, 14, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (47, 60, 16, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (48, 60, 10, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (49, 60, 6, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (50, 61, 14, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (51, 61, 12, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (52, 61, 16, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (53, 67, 20, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (54, 67, 18, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (55, 67, 14, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (56, 71, 0, 0, TIMESTAMP '2024-12-01 00:05:00');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (64, 29, 10, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (2137, 1, 10, 10, TIMESTAMP '1970-01-01 01:00:00');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (57, 77, 12, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (58, 77, 10, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (59, 77, 10, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (60, 77, 8, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (61, 77, 6, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (62, 77, 10, 70, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (63, 29, 12, 15, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (65, 29, 12, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (66, 29, 10, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (67, 26, 10, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (68, 26, 8, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (69, 26, 6, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (70, 26, 4, 120, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (79, 69, 0, 0, TIMESTAMP '2024-12-04 18:57:32');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (80, 1, 10, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (81, 1, 8, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (82, 1, 6, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (83, 1, 4, 80, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (84, 2, 12, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (85, 2, 10, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (86, 3, 8, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (87, 4, 6, 35, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (88, 7, 12, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (89, 7, 10, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (90, 7, 6, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (91, 15, 30, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (92, 15, 30, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (93, 15, 25, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (94, 29, 20, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (95, 29, 16, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (96, 29, 12, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (97, 29, 8, 20, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (98, 29, 14, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (99, 29, 10, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (100, 7, 18, 10, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (101, 7, 16, 10, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (102, 7, 12, 10, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (103, 7, 8, 10, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (104, 7, 14, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (105, 7, 12, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (106, 7, 8, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (107, 31, 15, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (108, 31, 12, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (109, 31, 8, 0, DATE '2024-12-01');
INSERT INTO Z13.ACTIVITIES (ACTIVITY_ID, EXERCISE_ID, REPS, WEIGHT, DURATION) VALUES (110, 15, 0, 0, TIMESTAMP '2024-12-01 02:15:30');
commit;

INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 1, 1);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 43, 44);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 2, 3);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 3, 4);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 4, 5);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 5, 6);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 6, 7);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 7, 8);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 8, 9);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 9, 10);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 10, 11);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 11, 12);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 12, 13);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 13, 14);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 14, 15);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 15, 16);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 16, 17);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (1, 17, 18);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 31, 32);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 32, 33);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 33, 34);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 34, 35);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 35, 36);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 36, 37);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 37, 38);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 38, 39);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 39, 40);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 40, 41);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 41, 42);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (3, 42, 43);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 44, 45);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 45, 46);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 46, 47);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 47, 48);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 48, 49);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 49, 50);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 50, 51);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 51, 52);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 52, 53);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 53, 54);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 54, 55);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 55, 56);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (4, 56, 57);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 57, 58);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 63, 64);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 58, 59);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 59, 60);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 60, 61);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 61, 62);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 62, 63);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 64, 65);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 65, 66);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 66, 67);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 67, 68);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 68, 69);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 69, 70);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (5, 70, 71);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 80, 81);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 81, 82);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 82, 83);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 83, 84);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 84, 85);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 85, 86);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 86, 87);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 87, 88);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 88, 89);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 89, 90);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 90, 91);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 91, 92);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 92, 93);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (8, 93, 94);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 94, 95);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 95, 96);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 96, 97);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 97, 98);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 98, 99);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 99, 100);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 100, 101);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 101, 102);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 102, 103);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 103, 104);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 104, 105);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 105, 106);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 106, 107);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 107, 108);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 108, 109);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 109, 110);
INSERT INTO Z13.WORKOUT_ACTIVITIES (WORKOUT_ID, ACTIVITY_ID, WORKOUT_ACTIVITY_ID) VALUES (9, 110, 111);
commit;