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
