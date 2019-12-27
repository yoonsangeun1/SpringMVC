INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10007,'소셜 게시글', '소셜 게시글','social_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80001,'부가기능', '댓글','m_comment',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80002,'부가기능', '첨부파일','attached_file',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80003,'부가기능', '무브','move',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80004,'부가기능', '메시지','social_message',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80005,'부가기능', '신고글','report',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80006,'부가기능', '추천 리스트','recommend_list',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50001,'회원', '회원','m_user',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50005,'소셜 프로필','소셜 프로필','social_profile',sysdate);

--공지사항
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'admin@gmail.com', '관리자', 'admin@gmail.com', 'admin', null, null, null);
UPDATE m_user 
SET user_lv=4
WHERE id=1;
select * from M_USER where id=5
select * from SOCIAL_PROFILE where id=4
insert into M_COMMENT (id, social_profile_id_from, social_post_id)
values(m_comment_seq.nextval, 4, 77)

update SOCIAL_PROFILE set profile_image_url='default'where id=4
--일반회원
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'moving@gmail.com', '무빙', 'moving@gmail.com', 'moving', null, null, null);
--사업자회원 일반 회원가입
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'business@gmail.com', '제작사', 'business@gmail.com', 'business', null, null, null);
--사업자 회원 사업자 회원 전환
UPDATE m_user 
SET business_name = '사업자명', user_lv=3,
business_register_no = '154-11-541', business_license_image_path = '/사업자 등록증 경로'
WHERE id=3;
SELECT id AS social_profile_id, nickname, background_image_path,introduce, profile_image_path,
		follower_count,follow_count
		from social_profile
		WHERE user_id = 3
select id from SOCIAL_PROFILE where user_id=3
insert into social_post(id, code_no,content, social_id,register_date)
			values (social_post_seq.nextval,10007,'아 잼다',4,sysdate)
	insert into social_profile(id,nickname,user_id,user_type,introduce)
		values (social_profile_seq.nextval,'몰라',3,1,'ㅎㅇ')
--delete from M_USER;
select * from M_USER;
select * from social_profile
/* 소셜_프로필 */
CREATE TABLE social_profile (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 50005, /* 코드_번호 */
	user_id NUMBER(38) NOT NULL, /* 회원_아이디 */
	nickname VARCHAR2(17), /* 닉네임 */
	background_image_path VARCHAR2(300), /* 배경_이미지_경로 */
	introduce VARCHAR2(4000), /* 소개 */
	user_type VARCHAR2(1) DEFAULT 1, /* 회원_타입 */
	profile_image_path VARCHAR2(300), /* 프로필_이미지_경로 */
	follower_count NUMBER(38) DEFAULT 0, /* 팔로워_수 */
	follow_count NUMBER(38) DEFAULT 0, /* 팔로우_수 */
	post_count NUMBER(38) DEFAULT 0, /* 게시글_수 */
	my_list_name VARCHAR2(50) /* 내_리스트_명 */
);

/* 소셜_프로필 */
INSERT INTO social_profile (id, user_id, nickname)
VALUES						(social_profile_seq.nextval, 1, '박진우');
UPDATE social_profile set 
introduce='안녕하세요. 좋은 하루 되세요. '
,profile_image_path='../images/sns_photo17.jpg'
where id=1;

UPDATE social_profile set background_image_path='../resources/images/sns_back2.jpg' where id=1;
INSERT INTO social_profile (id, code_no, user_id, nickname, profile_image_path)
VALUES						(social_profile_seq.nextval, 2, '윤상은', '/경로');
select * from social_profile;

/* 소셜  메세지*/
INSERT INTO social_message (id,code_no,social_id_from,social_id_to,content,register_date)
VALUES					   (social_message_seq.nextval,2,3,'박진우ㅎㅇ',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,2,3,'ㅂㅎㅇ2');
INSERT INTO social_message VALUES(social_message_seq.nextval,3,2,'윤산은');
INSERT INTO social_message VALUES(social_message_seq.nextval,3,2,'윤산은2');
INSERT INTO social_message VALUES(social_message_seq.nextval,2,3,'ㅂㅎㅇ3');
select * from social_message ORDER BY register_date desc;

/* 소셜_게시글 */
--일반 게시글
INSERT INTO social_post(id,social_id,content)
VALUES			(social_post_seq.nextval,1,'내용이다');
--사진게시글
INSERT INTO social_post(id,social_id,content)
VALUES			(social_post_seq.nextval,1,'사진게식글');
INSERT INTO attached_file(id,file_path,no,social_post_id)
VALUES			(attached_file_seq.nextval,'../images/sns_photo1.jpg',1,2);
INSERT INTO attached_file(id,file_path,no,social_post_id)
VALUES			(attached_file_seq.nextval,'../images/sns_photo16.jpg',2,2);
INSERT INTO attached_file(id,file_path,no,social_post_id)
VALUES			(attached_file_seq.nextval,'../images/sns_photo17.jpg',3,2);
INSERT INTO attached_file(id,file_path,no,social_post_id)
VALUES			(attached_file_seq.nextval,'../images/sns_photo18.jpg',4,2);

select * from SOCIAL_POST
select
		
		profile.*,
		post.*, c.*
		from social_profile profile 
		left outer join social_post post on profile.id = post.social_id
		left outer join m_comment c on post.id = c.social_post_id
		
		where profile.id = 1
		order by post.register_date desc

SELECT * FROM M_COMMENT
		WHERE SOCIAL_POST_ID =22
		ORDER BY REGISTER_DATE DESC;
		
select * from m_comment where social_post_id=22;

insert into M_COMMENT 
(id, content, social_profile_id_from, social_post_id, comment_id_reply)
values
(m_comment_seq.nextval,'안녕', 2, 22, M_COMMENT_seq.nextval);

/* 회원프로필 띄울 내용 - 박진우전용 회원게시물 */
select social_profile.nickname,social_profile.profile_image_path,social_post.* 
from social_post,social_profile 
where social_profile.id=1
and social_post.social_id=social_profile.id;

select * from social_post ORDER BY register_date desc;
select * from attached_file where social_post_id = 2 order by no asc;

--사진게시글내용 띄울거+첨부파일
select attached_file.file_path, attached_file.no,social_post.* 
from social_post,attached_file 
where social_post.id=2
and social_post.id=attached_file.social_post_id
ORDER BY social_post.register_date desc, attached_file.no asc;

select * from social_post ORDER BY register_date desc and ;


/* 회원프로필 타임라인에 띄울 이랍ㄴ게싣굴 +사진게시글*/
select social_profile.nickname,social_profile.profile_image_path,
social_post.* , attached_file.file_path, attached_file.no 
from social_post,social_profile,attached_file 
where social_profile.id=1
and social_post.social_id=social_profile.id 
and social_post.id=attached_file.social_post_id
ORDER BY social_post.register_date desc, attached_file.no asc;

select * from social_post ORDER BY register_date desc;
SELECT id AS social_post_id, social_id, content, move_count, register_date,publish_availability
		FROM social_post
		ORDER BY register_date desc
SELECT * FROM social_profile

SELECT * FROM social_profile
WHERE id = 
(SELECT * FROM social_post
WHERE social_id= 1
ORDER BY register_date desc)
WHERE id = 1

select id from social_profile where user_id=1
-- SNS프로필이 SNS 게시글에게+댓글에 답글
INSERT INTO m_comment(id,code_no,social_profile_id,social_post_id,content,move_count,register_date,comment_id_reply,step,reply_order)
VALUES			(move_seq.nextval,80001,2,2,'뎃글ㄹ네용',0,sysdate,6,0,0);


SELECT * FROM SOCIAL_PROFILE
		WHERE id = 1
		
		SELECT * FROM social_post
		WHERE social_id=1
		
SELECT id AS m_comment_social_id, nickname,profile_image_path FROM social_profile
		WHERE id = 1
SELECT id AS social_post_social_id, user_type, nickname, profile_image_path
		FROM social_profile
		WHERE id = 1
SELECT id AS social_post_social_id, user_type, nickname, profile_image_path
		FROM social_profile
		WHERE id = 1		
SELECT id AS social_post_id, social_id, content, move_count, register_date,publish_availability
		FROM social_post
		WHERE social_id=1
		ORDER BY register_date desc
SELECT id AS m_comment_social_id, nickname,profile_image_path FROM social_profile
		WHERE id = 1		
		
		
		
SELECT id AS social_profile_id, nickname, background_image_path,introduce, profile_image_path,
		follower_count,follow_count
		from social_profile
		WHERE id =1; 	
		
SELECT id AS m_comment_id, social_profile_id_from as socialprofileidfrom, content, 
		register_date, move_count, social_post_id FROM m_comment
		WHERE social_post_id =22
		ORDER BY register_date desc	;	
delete from social_post where id=53