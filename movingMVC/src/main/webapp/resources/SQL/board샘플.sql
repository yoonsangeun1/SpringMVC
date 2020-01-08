select * from profile_post;

select * from PROFILE_POST where id=118;

select * from m_user;

 UPDATE PROFILE_POST
 SET  birth_date=to_date(20190303,'yyyy-MM-dd')
 WHERE ID=118

 
  UPDATE PROFILE_POST
 SET CATEGORY='etc', ETCTEXT='gd',EMAIL='ccc@naver.com',
 BIRTH_DATE=to_date(19980301,'yyyy-MM-dd'), HEIGHT=178, SEX='male',
 WEBSITE_URL='naver@naver.com', CONTENT='gdzz'
 WHERE ID=118

 select to_date(register_date,'yyyy-MM-dd') from normal_post; 
 
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
FROM NORMAL_POST N 
 LEFT OUTER JOIN M_USER U ON N.USER_ID = U.ID 
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY board_free_id DESC)
 WHERE rNum >= 1
 AND rNum <= 20
 
  SELECT N.ID AS board_notice_id, N.USER_ID AS board_notice_user_id,
 N.TITLE, N.HIT, N.CONTENT, M.NICKNAME,
 N.register_Date AS board_notice_registerDate
 FROM NORMAL_POST N, M_USER M
 WHERE N.USER_ID = M.ID
 AND N.ID=143
 
 alter table M_comment add (content varchar2(4000 ) )
 
 INSERT INTO m_comment 
		(id, user_id_from, content, COMMENT_ID_REPLY, PROJECT_POST_ID, profile_post_id)
		VALUES 
		(m_comment_seq.nextval, 4,
		'안녕', m_comment_seq.nextval, null, 120)
		
select * from project_post;
		
select * from profile_post where id=1;

insert into profile_post (id) values (0);
select * from profile_post where id=0;

insert into normal_post (id) values (0);
select * from normal_post where id=0;

insert into project_post (id) values (0);
select * from project_post where id=0;

select * from  m_comment;





------------------------------ 2020-01-07------------------------------

select * from reply_Post;

delete from reply_post where id=1;

 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY REPLY_STEP desc, REPLY_ORDER ASC) rNum,
 R.ID AS board_qna_id, R.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 R.REGISTER_DATE AS board_qna_registerDate, R.HIT, R.REPLY_STEP, R.REPLY_ORDER
 FROM REPLY_POST R
 LEFT OUTER JOIN M_USER U ON R.USER_ID = U.ID
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY REPLY_STEP desc, REPLY_ORDER ASC)
 WHERE rNum >= 1
 AND rNum <= 100
 
 
  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY REPLY_STEP desc, REPLY_ORDER ASC) rNum,
 R.ID AS board_qna_id, R.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 R.REGISTER_DATE AS board_qna_registerDate, R.HIT, R.REPLY_ORDER, R.REPLY_STEP
 FROM REPLY_POST R
 LEFT OUTER JOIN M_USER U ON R.USER_ID = U.ID
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY REPLY_STEP desc, REPLY_ORDER ASC)
 WHERE rNum >= 1
 AND rNum <= 100
 
 SELECT * FROM REPLY_POST;
 
 SELECT REPLY_STEP FROM REPLY_POST
 WHERE REPLY_ORDER = 1;
 
  
 SELECT Count(*) FROM REPLY_POST
 WHERE REPLY_ORDER = 1
 AND REPLY_STEP = 1;
 
  SELECT * FROM REPLY_POST
 WHERE REPLY_ORDER = 1
 
SELECT Count(*) FROM REPLY_POST
WHERE REPLY_ORDER =1 
AND id=21;

delete from reply_post;

select * from reply_post;

select * from m_user;

update m_user set user_lv=4 where id=6 /*어드민 권한 주기*/

 select * from PROFILE_POST;
 
 delete from PROFILE_POST where id=0;
 
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY P.ID DESC) rNum,
 P.thumbnail_Image, P.ID AS board_actors_id,
 P.NAME,P.USER_ID
 FROM PROFILE_POST P
WHERE P.CODE_NO = 10005
  ORDER BY board_actors_id DESC)
 WHERE RNUM >= 1
 AND rNum <= 100
 
  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY P.ID DESC) rNum,
 P.thumbnail_Image, P.ID AS board_actors_id,
 P.NAME,P.USER_ID
 FROM PROFILE_POST P
 LEFT OUTER JOIN M_USER U ON P.USER_ID = U.ID
WHERE P.CODE_NO = 10005
  ORDER BY board_actors_id DESC)
 WHERE RNUM >= 1
 AND rNum <= 100
