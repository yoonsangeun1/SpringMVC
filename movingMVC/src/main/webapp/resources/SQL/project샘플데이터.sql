UPDATE project_post   
SET comment_count=(   
SELECT COUNT(id)   
FROM m_comment
WHERE project_post_id = 2)   WHERE id= 2

SELECT c.id, c.user_id_from, c.project_post_id, u.nickname
		FROM m_comment c
		LEFT OUTER JOIN m_user u on c.user_id_from = u.id
		WHERE c.project_post_id=2
		ORDER BY c.register_date desc;
--프로젝트 댓글 컬럼 추가
select * from m_comment where project_post_id=2;
--프로젝트 게시글
alter table PROJECT_POST modify (left_limit varchar2(50));
alter table PROJECT_POST add (introduce varchar2(500));

INSERT INTO PROJECT_POST (id, user_id, title, introduce, content, business, 
target_price, target_limit)
VALUES (project_post_seq.nextval, 4, '제목이다.', '내용', '소개입니다아아아아아아아아아아아아', '슈박스', 10000, '2019-12-28');

UPDATE PROJECT_POST set introduce='소개입니다아아아아아아아아아아아아' where id=1;
SELECT * FROM PROJECT_POST;

--첨부파일
INSERT INTO attached_file (id, file_path, thumbnail_path, no, project_post_id)
VALUES (attached_file_seq.nextval, '../images/funding05.PNG', '../images/funding05.PNG', 1, 1);

INSERT INTO attached_file (id, file_path, thumbnail_path, no, project_post_id)
VALUES (attached_file_seq.nextval, '../images/funding05.PNG', '../images/funding05.PNG', 2, 1);
SELECT * FROM ATTACHED_FILE;

--댓글
   INSERT INTO M_COMMENT (ID, USER_ID_FROM, CONTENT, COMMENT_ID_REPLY, PROJECT_POST_ID)
   VALUES (m_comment_seq.nextval, 2, 'eafdssdaffasd',m_comment_seq.nextval, 2);
   INSERT INTO M_COMMENT (ID, USER_ID_FROM, CONTENT, COMMENT_ID_REPLY, PROJECT_POST_ID)
   VALUES (m_comment_seq.nextval, 3, 'eafdssdaffasd',m_comment_seq.nextval, 2);
--답댓글
   INSERT INTO M_COMMENT (ID, USER_ID_FROM, CONTENT, COMMENT_ID_REPLY, PROJECT_POST_ID)
   VALUES (m_comment_seq.nextval, 2, 'eafdssdaffasd',m_comment_seq.nextval, 2);

SELECT TO_DATE(TO_CHAR(SYSDATE, 'YYYYMMDD')) - TO_DATE('20291217') FROM DUAL; 
-- 두 날짜 사이 일수 계산

SELECT TRUNC(TO_CHAR(SELECT TARGET_LIMIT FROM PROJECT_POST where id=2), 'MI')
- TO_DATE('20191122 00:00:00','YYYYMMDD HH24:MI:SS') 
		FROM DUAL
		
SELECT TO_CHAR(SYSDATE-(SELECT TARGET_LIMIT FROM PROJECT_POST where id=2), 'YYYYMMDD HH24:MI:SS') FROM DUAL

SELECT ( TO_DATE('20111228180000','yyyymmddhh24miss') -
         TO_DATE('20111228140000','yyyymmddhh24miss') ) * (24*60*60) AS RemainSecond
FROM DUAL;

SELECT ( TO_TIMESTAMP((SELECT TARGET_LIMIT FROM PROJECT_POST where id=2),'yyyymmddhh24miss') -
         TO_TIMESTAMP(SYSTIMESTAMP,'yyyymmddhh24miss') ) * (24*60*60) AS RemainSecond
FROM DUAL;


SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-11-19 24:00:00', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        TO_DATE ('2006-06-18 14:45:30', 'yyyy-mm-dd hh24:mi:ss') start_date
                   FROM DUAL
                )
       )
       1.이렇게 해도 되고
       SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-12-28', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        TO_DATE ('2019-11-18 14:45:30', 'yyyy-mm-dd hh24:mi:ss') start_date
                   FROM DUAL
                )
       )
       2. 이렇게 해도 됨
       SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-12-28 23:59:59', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        TO_DATE ('2019-11-18 14:45:30', 'yyyy-mm-dd hh24:mi:ss') start_date
                   FROM DUAL
                )
       )
       
              SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-12-28 23:59:59', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        TO_DATE ((SELECT TARGET_LIMIT FROM PROJECT_POST where id=2), 'yyyy-mm-dd hh24:mi:ss') start_date
                   FROM DUAL
                )
       )
       
 SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-12-28 23:59:59', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        (SELECT TARGET_LIMIT FROM PROJECT_POST where id=2) start_date
                   FROM DUAL
                )
       )
       UPDATE PROJECT_POST 
       		SET LEFT_LIMIT = (
        SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'|| SUBSTR (hms, 5, 2)|| '초' day
  FROM (
         SELECT TRUNC (end_date - start_date) dd,
                TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60), 'sssss'), 'hh24miss') hms
           FROM (
                 SELECT TO_DATE ('2019-12-28 23:59:59', 'yyyy-mm-dd hh24:mi:ss') end_date,
                        (SELECT TARGET_LIMIT FROM PROJECT_POST where id=2) start_date
                   FROM DUAL
                )
       ) )
       where id=2;
       select * from project_post
       
       
	SELECT dd|| '일'|| SUBSTR (hms, 1, 2)|| '시'|| SUBSTR (hms, 3, 2)|| '분'||
	SUBSTR (hms, 5, 2)|| '초' day
	FROM (
	SELECT TRUNC (end_date - start_date) dd,
	TO_CHAR (TO_DATE (TRUNC ( MOD(end_date - start_date, 1) * 24 * 60 * 60),
	'sssss'), 'hh24miss') hms
	FROM (
	SELECT (SELECT TARGET_LIMIT FROM PROJECT_POST where id=2) end_date,
	TRUNC(SYSDATE, 'MI') start_date
	FROM DUAL
	)
	)
	
	update project_post set target_limit=TO_DATE ('2019-12-28', 'yyyy-mm-dd hh24:mi:ss')
	where id=2;
	select * from project_post
	
	update project_post set now_price=4000 where id=2;