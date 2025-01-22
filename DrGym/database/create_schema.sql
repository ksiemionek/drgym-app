CREATE sequence TOKEN_SEQUENCE
    /


--TABLES----------------------------------------------------------------------------------------------------------------
CREATE TABLE USERS
(
    USERNAME VARCHAR2(50) NOT NULL PRIMARY KEY,
    NAME VARCHAR2(50) NOT NULL,
    SURNAME VARCHAR2(50) NOT NULL,
    EMAIL VARCHAR2(100) NOT NULL UNIQUE,
    PASSWORD VARCHAR2(100) NOT NULL,
    WEIGHT NUMBER(5, 2),
    HEIGHT NUMBER(5, 2),
    VERIFIED NUMBER(1) default 0,
    FAVORITE_EXERCISE NUMBER(4),
)
    /

CREATE TABLE MUSCLES
(
    MUSCLE_ID NUMBER(4) NOT NULL PRIMARY KEY,
    MUSCLE_NAME VARCHAR2(40) NOT NULL
)
    /

CREATE TABLE EXERCISES
(
    EXERCISE_ID NUMBER(4) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    TYPE        CHAR(1)     default 'S',
    KCAL_BURNED NUMBER(4) default 0,
    NAME        VARCHAR2(40) not null,
    VIDE_ID     VARCHAR2(11)
)
    /

CREATE TABLE EXERCISES_MUSCLES
(
    ID NUMBER(4) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    EXERCISE_ID NUMBER(4) not null,
    MUSCLE_ID   NUMBER(4) not null,
    CONSTRAINT MUSCLE_FK FOREIGN KEY (MUSCLE_ID)
        REFERENCES MUSCLES (MUSCLE_ID),
    CONSTRAINT EXERCISE_FK FOREIGN KEY (EXERCISE_ID)
        REFERENCES EXERCISES (EXERCISE_ID) ON DELETE CASCADE
)
    /

CREATE TABLE ACTIVITIES
(
    ACTIVITY_ID NUMBER(4) NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    EXERCISE_ID NUMBER(4) NOT NULL,
    REPS        NUMBER(4) default 0,
    WEIGHT      NUMBER(4) default 0,
    DURATION    DATE      default TO_DATE('00:00:00', 'HH24:MI:SS')
    CONSTRAINT FK_WORKOUT FOREIGN KEY (WORKOUT_ID)
        REFERENCES WORKOUTS (WORKOUT_ID) ON DELETE CASCADE
    CONSTRAINT FK_EXERCISE FOREIGN KEY (EXERCISE_ID)
        REFERENCES EXERCISES (EXERCISE_ID) ON DELETE CASCADE
)
    /

CREATE TABLE WORKOUTS
(
    WORKOUT_ID NUMBER(4) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    START_DATETIME TIMESTAMP(6),
    USERNAME VARCHAR2(50) NOT NULL,
    END_DATETIME TIMESTAMP(6),
    DESCRIPTION VARCHAR2(255),
    CREATED_DATETIME TIMESTAMP(6) default CURRENT_TIMESTAMP,
    IS_POSTED NUMBER(1) DEFAULT 0,
    SCHEDULE NUMBER(1) DEFAULT 0,
    CONSTRAINT FK_WORKOUTS_USERNAME FOREIGN KEY (USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE
)
    /

CREATE TABLE TOKEN
(
    EMAIL VARCHAR2(255) NOT NULL PRIMARY KEY,
    VERIFICATION_TOKEN VARCHAR2(255),
    RESET_TOKEN VARCHAR2(255),
    RESET_EXPIRY TIMESTAMP(6),
    CONSTRAINT EMAIL_FK FOREIGN KEY (EMAIL)
        REFERENCES USERS (EMAIL) ON DELETE CASCADE
)
    /

CREATE TABLE FRIENDSHIPS
(
    ID NUMBER(4) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    FRIEND1_USERNAME VARCHAR2(50) not null,
    FRIEND2_USERNAME VARCHAR2(50) not null,
    CREATED_AT       TIMESTAMP(6) default CURRENT_TIMESTAMP,
    constraint FRIENDSHIP_UNIQUE_PAIR1
        unique (FRIEND1_USERNAME, FRIEND2_USERNAME)
    CONSTRAINT FK_USER1 FOREIGN KEY (FRIEND1_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE,
    CONSTRAINT FK_USER2 FOREIGN KEY (FRIEND2_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE
)
    /

CREATE TABLE FRIENDSHIP_INVITATIONS
(
    ID NUMBER(4) GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    WHO_SEND_USERNAME VARCHAR2(50) not null,
    WHO_RECEIVE_USERNAME VARCHAR2(50) not null
    SEND_TIME TIMESTAMP(6) default CURRENT_TIMESTAMP,
    CONSTRAINT UNIQUE_FRIENDSHIP_INVITATION UNIQUE (WHO_SEND_USERNAME, WHO_RECEIVE_USERNAME),
    CONSTRAINT FK_WHO_RECEIVE FOREIGN KEY (WHO_RECEIVE_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE,
    CONSTRAINT FK_WHO_SEND FOREIGN KEY (WHO_SEND_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE
)
    /

CREATE TABLE POSTS
(
    POST_ID NUMBER(4) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    AUTHOR_USERNAME VARCHAR2(50) NOT NULL,
    POST_DATE TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    TITLE VARCHAR2(100) NOT NULL,
    WORKOUT_ID NUMBER(8),
    CONTENT VARCHAR2(200),
    CONSTRAINT FK_USERNAME FOREIGN KEY (AUTHOR_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE,
    CONSTRAINT FK_WORKOUT_ID FOREIGN KEY (WORKOUT_ID)
        REFERENCES WORKOUTS (WORKOUT_ID) ON DELETE CASCADE
)
    /

CREATE TABLE POST_COMMENTS
(
    POST_COMMENT_ID NUMBER(4) GENERATED ALWAYS AS IDENTITY PRIMARY KEY
    POST_ID NUMBER(4) NOT NULL,
    AUTHOR_USERNAME VARCHAR2(50) NOT NULL,
    CONTENT CLOB,
    POST_COMMENT_DATE TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_POST_ID FOREIGN KEY (POST_ID)
        REFERENCES POSTS (POST_ID),
    CONSTRAINT FK_AUTHOR_USERNAME FOREIGN KEY (AUTHOR_USERNAME)
        REFERENCES USERS (USERNAME)
)
    /

CREATE TABLE POST_REACTIONS
(
    POST_REACTION_ID NUMBER(4) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    POST_ID NUMBER(4) NOT NULL,
    AUTHOR_USERNAME VARCHAR2(40) NOT NULL,
    CONSTRAINT UNIQUE_REACTION_AUTHOR UNIQUE (POST_ID, AUTHOR_USERNAME),
    CONSTRAINT FK_REACTOR_USERNAME FOREIGN KEY (AUTHOR_USERNAME)
        REFERENCES USERS (USERNAME) ON DELETE CASCADE,
    CONSTRAINT FK_REACTION_POST_ID FOREIGN KEY (POST_ID)
        REFERENCES POSTS (POST_ID) ON DELETE CASCADE
)
    /
--TRIGGERS--------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER DELETE_INVITATION_AFTER_FRIENDSHIP
AFTER INSERT ON FRIENDSHIPS
FOR EACH ROW
BEGIN
    DELETE FROM FRIENDSHIP_INVITATIONS
    WHERE (WHO_SEND_USERNAME = :NEW.FRIEND1_USERNAME AND WHO_RECEIVE_USERNAME = :NEW.FRIEND2_USERNAME)
       OR (WHO_SEND_USERNAME = :NEW.FRIEND2_USERNAME AND WHO_RECEIVE_USERNAME = :NEW.FRIEND1_USERNAME);
END;
/

CREATE OR REPLACE TRIGGER UPDATE_IS_POSTED
AFTER INSERT ON POSTS
FOR EACH ROW
BEGIN
    UPDATE WORKOUTS
    SET IS_POSTED = 1
    WHERE WORKOUT_ID = :NEW.WORKOUT_ID;
END;
/

CREATE trigger TG_DELETE_REACTIONS
    after delete
    on POSTS
    for each row
BEGIN
    DELETE FROM POST_REACTIONS
    WHERE POST_ID = :OLD.POST_ID;
END;
/

CREATE trigger TG_DELETE_COMMENTS
    after delete
    on POSTS
    for each row
BEGIN
    DELETE FROM POST_COMMENTS
    WHERE POST_ID = :OLD.POST_ID;
END;
/

CREATE OR REPLACE TRIGGER update_token_on_verified
    AFTER UPDATE OF verified ON USERS
    FOR EACH ROW
    WHEN (NEW.verified = 1)
BEGIN
UPDATE TOKEN
SET VERIFICATION_TOKEN = NULL
WHERE EMAIL = :NEW.EMAIL;
END;
/

CREATE OR REPLACE TRIGGER delete_invitation_after_friendship
    AFTER INSERT ON friendships
    FOR EACH ROW
BEGIN
DELETE FROM friendship_invitations
WHERE (who_send_username = :NEW.friend1_username AND who_receive_username = :NEW.friend2_username)
   OR (who_send_username = :NEW.friend2_username AND who_receive_username = :NEW.friend1_username);
END;
/

CREATE OR REPLACE TRIGGER UPDATE_TOKEN_ON_VERIFIED
AFTER UPDATE OF verified ON USERS
    FOR EACH ROW
    WHEN (NEW.verified = 1)
BEGIN
UPDATE TOKEN
SET VERIFICATION_TOKEN = NULL
WHERE EMAIL = :NEW.EMAIL;
END;
/

CREATE OR REPLACE TRIGGER TG_BLOCK_DUPLICATE_INVITATIONS
    before insert
    on FRIENDSHIP_INVITATIONS
    for each row
DECLARE
invitation_count NUMBER;
BEGIN
SELECT COUNT(*)
INTO invitation_count
FROM FRIENDSHIP_INVITATIONS
WHERE WHO_SEND_USERNAME = :NEW.WHO_RECEIVE_USERNAME
  AND WHO_RECEIVE_USERNAME = :NEW.WHO_SEND_USERNAME;

IF invitation_count > 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'The invitation receiver has already sent the sender an invitation.');
END IF;
END;
/

ALTER TRIGGER TG_BLOCK_DUPLICATE_INVITATIONS ENABLE;
ALTER TRIGGER TG_DELETE_REACTIONS ENABLE;
ALTER TRIGGER UPDATE_IS_POSTED ENABLE;
ALTER TRIGGER UPDATE_TOKEN_ON_VERIFIED ENABLE;
ALTER TRIGGER TG_BLOCK_DUPLICATE_INVITATIONS ENABLE;
ALTER TRIGGER DELETE_INVITATION_AFTER_FRIENDSHIP ENABLE;
ALTER TRIGGER TG_DIFFERENT_USERS_CHECK ENABLE;
ALTER TRIGGER TG_DELETE_COMMENTS ENABLE;
--FUNCTIONS-------------------------------------------------------------------------------------------------------------
CREATE FUNCTION ARE_FRIENDS (
    user1 IN VARCHAR2,
    user2 IN VARCHAR2
) RETURN NUMBER IS
         has_friends NUMBER;
BEGIN
SELECT COUNT(*)
INTO has_friends
FROM FRIENDSHIPS
WHERE (FRIEND1_USERNAME = user1 AND FRIEND2_USERNAME = user2)
   OR (FRIEND1_USERNAME = user2 AND FRIEND2_USERNAME = user1);

RETURN has_friends;
END;
/

CREATE FUNCTION GET_FRIENDS_COUNT (
    username IN VARCHAR2
) RETURN NUMBER IS
         friend_count NUMBER;
BEGIN
SELECT COUNT(*)
INTO friend_count
FROM FRIENDSHIPS
WHERE FRIEND1_USERNAME = username
   OR FRIEND2_USERNAME = username;

RETURN friend_count;
END;
/

CREATE FUNCTION GET_USER_DAILY_EXERCISE_COUNT(
    p_username IN VARCHAR2,
    p_start_date IN VARCHAR2,
    p_end_date IN VARCHAR2
) RETURN CLOB IS
         data_json CLOB;
BEGIN
SELECT JSON_ARRAYAGG(
               JSON_OBJECT(
                       'date' VALUE TO_CHAR(workouts.START_DATETIME, 'YYYY-MM-DD'),
                       'count' VALUE COUNT(*),
                       'level' VALUE CASE
                                             WHEN COUNT(*) <= 0 THEN 0
                                             WHEN COUNT(*) <= 6 THEN 1
                                             WHEN COUNT(*) <= 12 THEN 2
                                             WHEN COUNT(*) <= 18 THEN 2
                                             ELSE 3
                               END
               )
       )
INTO data_json
FROM WORKOUTS workouts
         JOIN ACTIVITIES activities ON activities.WORKOUT_ID = workouts.WORKOUT_ID
WHERE workouts.USERNAME = p_username
  AND workouts.START_DATETIME BETWEEN TO_DATE(p_start_date, 'YYYY-MM-DD') AND TO_DATE(p_end_date, 'YYYY-MM-DD')
GROUP BY TO_CHAR(workouts.START_DATETIME, 'YYYY-MM-DD')
HAVING COUNT(*) > 0;

RETURN data_json;
END;
/

CREATE OR REPLACE FUNCTION GET_USERS_EXERCISES_IN_PERIOD(
    p_username IN VARCHAR2,
    p_start_date IN VARCHAR2,
    p_end_date IN VARCHAR2
) RETURN CLOB IS
         data_json CLOB;
BEGIN
SELECT
    JSON_ARRAYAGG(
            JSON_OBJECT(
                    'name' VALUE exercises.NAME,
                    'muscles' VALUE (
                            SELECT JSON_ARRAYAGG(muscles.MUSCLE_NAME)
                            FROM EXERCISES_MUSCLES exercises_muscles
                                     JOIN MUSCLES muscles ON exercises_muscles.MUSCLE_ID = muscles.MUSCLE_ID
                            WHERE exercises_muscles.EXERCISE_ID = exercises.EXERCISE_ID
                        )
            )
    )
INTO data_json
FROM EXERCISES exercises
         JOIN ACTIVITIES activities ON activities.EXERCISE_ID = exercises.EXERCISE_ID
         JOIN WORKOUTS workouts ON workouts.WORKOUT_ID = activities.WORKOUT_ID
WHERE workouts.USERNAME = p_username
  AND workouts.START_DATETIME BETWEEN TO_DATE(p_start_date, 'YYYY-MM-DD') AND TO_DATE(p_end_date, 'YYYY-MM-DD');

RETURN data_json;
END;
/
--PROCEDURES------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE GET_USER_FRIENDS_WITH_AVATAR (
    p_username IN VARCHAR2,
    p_friends OUT SYS_REFCURSOR
) AS
BEGIN
OPEN p_friends FOR
SELECT
    CASE
        WHEN FRIEND1_USERNAME = p_username THEN FRIEND2_USERNAME
        ELSE FRIEND1_USERNAME
        END AS FRIEND_USERNAME,
    (SELECT AVATAR FROM USERS WHERE USERNAME =
                                    CASE
                                        WHEN FRIEND1_USERNAME = p_username THEN FRIEND2_USERNAME
                                        ELSE FRIEND1_USERNAME
                                        END) AS AVATAR
FROM FRIENDSHIPS
WHERE FRIEND1_USERNAME = p_username OR FRIEND2_USERNAME = p_username;
END;
/

CREATE OR REPLACE PROCEDURE GET_USER_FRIEND_REQUESTS_WITH_AVATAR (
    p_username IN VARCHAR2,
    p_requests OUT SYS_REFCURSOR
) AS
BEGIN
OPEN p_requests FOR
SELECT
    ID,
    WHO_SEND_USERNAME,
    WHO_RECEIVE_USERNAME,
    (SELECT AVATAR FROM USERS WHERE USERNAME = WHO_SEND_USERNAME) AS AVATAR
FROM FRIENDSHIP_INVITATIONS
WHERE WHO_RECEIVE_USERNAME = p_username;
END;
/
--INDEXES---------------------------------------------------------------------------------------------------------------
CREATE INDEX IDX_POST_DATE_ORDER ON POSTS (POST_DATE);

CREATE INDEX IDX_WORKOUT_START_DATE_ORDER ON WORKOUTS (START_DATETIME);

CREATE UNIQUE INDEX UNIQUE_FRIENDSHIP_INVITATION ON FRIENDSHIP_INVITATIONS (WHO_SEND_USERNAME, WHO_RECEIVE_USERNAME);

CREATE UNIQUE INDEX UNIQUE_REACTION_AUTHOR ON POST_REACTIONS (POST_ID, AUTHOR_USERNAME);

CREATE INDEX IDX_WORKOUT_START_DATE_ORDER ON WORKOUTS (START_DATETIME);

CREATE INDEX IDX_POST_DATE_ORDER ON POSTS (POST_DATE);