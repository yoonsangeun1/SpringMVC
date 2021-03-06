insert into project_post (id) values(0)
insert into profile_post (id) values(0)
insert into normal_post (id) values(0)
select user_id from SOCIAL_PROFILE where id=3
update m_user set profile_image_url = 'default' where profile_image_url is null
update m_user set business_license_image_path = null where id =20 
delete from PROJECT_POST where thumbnail_image is null
select * from m_comment where social_profile_id_from ='홈플러스'
select * from(
SELECT code_no, id, title, register_date, hit
	FROM normal_post
	WHERE user_id = 1
	UNION ALL
SELECT code_no, id, title, register_date, hit
	FROM profile_post
	WHERE user_id = 1
	UNION ALL
SELECT code_no, id, title, register_date, hit
	FROM project_post
	WHERE user_id = 1
) order by register_date desc
update m_user set name='관리자', genre_01 = 'history', phone='010-3429-9141'
select * from PROJECT_POST where id=56
where id=1
select P.id AS p_id, M.user_id_from AS u_id, P.title, P.thumbnail_image, M.register_date AS r_date
FROM project_post P, move M
WHERE P.id = M.project_post_id
AND M.user_id_from = 43
select thumbnail_image from PROJECT_POST order by id desc
alter table move add (project_post_id number(38));
select * from move
select count(id) from move where user_id_from=45 and project_post_id=71
select 
P.id p_id, P.title title, P.register_date, P.user_id
from m_user U, move M, project_post P
where U.id = M.user_id_from
AND M.project_post_id = P.id 
select * from move
delete from move
update reward set PROJECT_POST_id=47
selec
alter table m_user add(report_count number(38))
select P.id p_id, P.title, P.thumbnail_image, M.register_date AS like_date
	FROM project_post P, move M
	WHERE P.id = M.project_post_id 
	AND M.user_id_from = 1
select content from project_post
delete from project_post where thumbnail_image is null

select * from m_user where id=2 or id=1
select * from m_user
		where id = (Select user_id from social_profile where id = 2)

		select * from(
select id i, title t, content cont, register_date rd from project_post
union all
select id i, title t, content cont, register_date rd from reply_post 
)
update project_post set status_code=1
order by rd desc
select * from PROJECT_POST
SELECT * FROM
	 (SELECT ROW_NUMBER() OVER(ORDER BY P.ID DESC) rNum,
	 P.id AS project_post_id, P.title, P.introduce, P.user_id, U.NICKNAME,
	 P.register_date AS project_post_register_date, P.hit
	FROM project_post P 
	 LEFT OUTER JOIN m_user U ON P.USER_ID = U.ID 
	 where U.nickname LIKE '%닉%'
	 ORDER BY project_post_id DESC)
	 WHERE rNum >=1
	 AND rNum <=10

	 SELECT 
	 P.id AS project_post_id, P.title, P.introduce, P.user_id, U.NICKNAME,
	 P.register_date AS project_post_register_date, P.hit, P.move_count,
	 P.target_price, P.now_price, P.target_limit, P.left_limit, P.sponser_count, 
	 P.comment_count
	 FROM project_post P 
	 LEFT OUTER JOIN m_user U ON P.user_id = U.id 
	 WHERE ROWNUM = 1 AND status_code = 1
	 ORDER BY move_count DESC 
	 
	 SELECT RD.* FROM
	 (SELECT 
	 P.id AS project_post_id, P.title, P.introduce, P.user_id, U.NICKNAME,
	 P.register_date AS project_post_register_date, P.hit, P.move_count,
	 P.target_price, P.now_price, P.target_limit, P.left_limit, P.sponser_count, 
	 P.comment_count
	 FROM project_post P 
	 LEFT OUTER JOIN m_user U ON P.user_id = U.id 
	 WHERE status_code = 1
	 ORDER BY dbms_random.value
	 ) RD
	 WHERE rownum <=4
	 
	 
	 alter table PROJECT_POST add (thumbnail_image varchar2(300))
update PROJECT_POST set introduce = '제목젬고' where id=1
update PROJECT_POST set target_price = 50 where id=1
update PROJECT_POST set now_price = 30 where id=1
update PROJECT_POST set move_count = 100 where id=4
update PROJECT_POST set status_code = 1

update m_user set id=1 where nickname='관리자'
select * from PROJECT_POST
select * from m_user
update m_user set profile_image_url='../images/member_profile.png' where id=2
update m_user set profile_image_url='default' where id=3
alter table m_comment drop column content
alter table m_comment modify (content varchar2(1000));
alter table m_comment add (content_tmp varchar2(1000));
update PROJECT_POST set introduce='소개' where id=3 
alter table profile_post add (thumbnail_image varchar2(4000))
alter table profile_post add (etctext varchar2(4000))
select * from project_post
alter table profile_post modify  (sex varchar2(40))
select * from REWARD
SELECT P.id as project_post_id, P.title 
		FROM project_post P
		SELECT P.id, P.title 
		FROM project_post P

SELECT * FROM (
		SELECT rowNum num, A.* 
		FROM (SELECT P.id as PROJECT_POST_id
		FROM project_post P
		ORDER BY P.id DESC) A
		WHERE rowNum <= 3
		)
		WHERE num >= 1


SELECT COUNT(id) FROM project_post
		<where>
			<if test="findField==''"></if><!-- 검색 전 총 레코드 개수 -->
			<if test="findField=='title'">
			title LIKE #{findName}
			</if><!-- 제목으로 검색시 총 레코드 개수 -->
			<if test="findField=='content'">
			content LIKE #{findName}
			</if><!-- 내용으로 검색시 총 레코드 개수 -->
		</where>

SELECT * FROM (
		SELECT rowNum num, A.*  
		FROM (SELECT P.*, U.nickname, U.profile_image_url 
		FROM project_post P, m_user U
		WHERE P.user_id = U.id 
		ORDER BY P.id DESC) A
		WHERE rowNum <= 10
		)
WHERE num >= 1 

select * from project_post

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
update PROJECT_POST set status_code=1
INSERT INTO PROJECT_POST (id, user_id, title, introduce, content, business, 
target_price, target_limit, code_no)
VALUES (project_post_seq.nextval, 1, '제목이다.', '내용', '소개입니다아아아아아아아아아아아아', '슈박스',
10000, '2020-02-28', 2000101);

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
	where id=3;
	select * from project_post
	
	update project_post set now_price=4000 where id=2;
	update project_post set target_limit=TO_DATE ('2020-01-28', 'yyyy-mm-dd hh24:mi:ss')