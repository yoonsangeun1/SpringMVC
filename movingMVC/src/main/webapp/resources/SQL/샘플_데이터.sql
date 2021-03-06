INSERT INTO m_user (id, userid, nickname, email, password, profile_image_url)
VALUES (1, 'admin@moving.com', '관리자', 'admin@moving.com', '912ec803b2ce49e4a541068d495ab570', 'default');
update m_user set profile_image_url='default'

alter table video_post modify (video_file_path varchar2(4000))
alter table SOCIAL_PROFILE modify (nickname varchar2(4000))
/* 코드_유형_마스터 */
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 100, '게시글', 'post', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 200, '프로젝트', 'project', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 300, '영상', 'video', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 500, '회원', 'user', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 800, '부가 기능', 'additional function', sysdate);
SELECT * FROM code_type_master;


/* 코드_마스터 */
--공지사항
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10001,'공지사항', '공지사항','normal_post',sysdate);
--자유게시판
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10002,'자유게시판', '자유게시판','normal_post',sysdate);
--자유게시판 말머리
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000201,'자유게시판', '잡답','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000202,'자유게시판', '영화','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000203,'자유게시판', '스포일러','normal_post',sysdate);
--FAQ, 공모전, 회원프로필, Q&A, 소셜게시글
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10003,'FAQ', 'FAQ','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10004,'공모전', '공모전','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10005,'회원 프로필', '회원 프로필','profile_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10006,'Q&A', 'Q&A','reply_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10007,'소셜 게시글', '소셜 게시글','social_post',sysdate);
--프로젝트 관련
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20001,'프로젝트', '프로젝트','project_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000101,'프로젝트', '프로젝트_범죄/스릴러','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000102,'프로젝트', '프로젝트_액션/어드벤쳐','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000103,'프로젝트', '프로젝트_다큐/드라마/청춘','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000104,'프로젝트', '프로젝트_역사/시대극','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000105,'프로젝트', '프로젝트_판타지/SF','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000106,'프로젝트', '프로젝트_멜로/로맨스','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000107,'프로젝트', '프로젝트_코메디','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000108,'프로젝트', '프로젝트_애니메이션','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 2000109,'프로젝트', '프로젝트_기타','video_post',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20002,'리워드', '리워드','reward',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20003,'주문서', '주문서','order_sheet',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20004,'주문수량', '주문수량','order_entity',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20005,'결제', '결제','payment',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20006,'배송', '배송','delivery',sysdate);
--영화 전체
--INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000,'영화', null,'video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 30001,'영화장르','영화장르','video_post',sysdate);
--영화 장르별
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000101,'영화장르', '영화_범죄/스릴러','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000102,'영화장르', '영화_액션/어드벤쳐','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000103,'영화장르', '영화_다큐/드라마/청춘','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000104,'영화장르', '영화_역사/시대극','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000105,'영화장르', '영화_판타지/SF','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000106,'영화장르', '영화_멜로/로맨스','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000107,'영화장르', '영화_코메디','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000108,'영화장르', '영화_애니메이션','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000109,'영화장르', '영화_기타','video_post',sysdate);
--티저 전체
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 30002,'티저장르', '티저장르','video_post',sysdate);
--티저 장르별
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000201,'티저장르', '티저_범죄/스릴러','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000202,'티저장르', '티저_액션/어드벤쳐','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000203,'티저장르', '티저_다큐/드라마/청춘','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000204,'티저장르', '티저_역사/시대극','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000205,'티저장르', '티저_판타지/SF','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000206,'티저장르', '티저_멜로/로맨스','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000207,'티저장르', '티저_코메디','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000208,'티저장르', '티저_애니메이션','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000209,'티저장르', '티저_기타','video_post',sysdate);

-- 1. 범죄/스릴러 2. 액션/어드벤쳐 3. 다큐/드라마/청춘 4. 역사/시대극 5. 판타지/SF 6. 멜로/로맨스 7. 코메디 8.애니메이션 9. 기타

--부가기능 전체
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 800,'부가기능', '부가기능',null,sysdate);
--댓글, 첨부파일, 무브(좋아요), 메세지, 신고, 추천리스트
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80001,'부가기능', '댓글','m_comment',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80002,'부가기능', '첨부파일','attached_file',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80003,'부가기능', '무브','move',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80004,'부가기능', '메시지','social_message',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80005,'부가기능', '신고글','report',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80006,'부가기능', '추천 리스트','recommend_list',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80007,'부가기능', '팔로우','follow',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80008,'부가기능', '태그','tag',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50001,'회원', '회원','m_user',sysdate);
/* 
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000101,'회원', '일반회원','m_user',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000102,'회원', '제작사 일반회원','m_user',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50003,'회원 등급', null,'grade',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000301,'회원 등급', 'Lv.1','grade',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000302,'회원 등급', 'Lv.2','grade',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000303,'회원 등급', 'Lv.3','grade',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000304,'회원 등급', 'admin','grade',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50004,'회원 상태', null,'status',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000401,'회원 상태', '일반 회원','status',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000402,'회원 상태', '휴면 회원','status',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 5000403,'회원 상태', '탈퇴 회원','status',sysdate);
*/
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50005,'소셜 프로필','소셜 프로필','social_profile',sysdate);

--DELETE FROM code_master;
SELECT * FROM code_master;

/* 회원 */
--관리자
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'admin@gmail.com', '관리자', 'admin@gmail.com', 'admin', null, null, null);
--관리자 회원 회원등급 부여
UPDATE m_user 
SET user_lv = 4
WHERE id=1;
--일반회원
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'moving@gmail.com', '무빙', 'moving@gmail.com', 'moving', null, null, null);
--사업자회원 일반 회원가입
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'business@gmail.com', '제작사', 'business@gmail.com', 'business', null, null, null);
--사업자 회원 사업자 회원 전환
UPDATE m_user 
SET business_name = '사업자명', user_lv = 3,
business_register_no = '154-11-541', business_license_image_path = '/사업자 등록증 경로'
WHERE id=4;

--delete from M_USER;
select * from M_USER;

/* 소셜_프로필 */
INSERT INTO social_profile (id, code_no, user_id, nickname, profile_image_path, follower_count, follow_count,post_count)
VALUES                  (social_profile_seq.nextval, 50005, 1, '박진우', '/경로', 0,0,0);
INSERT INTO social_profile (id, code_no, user_id, nickname, profile_image_path, follower_count, follow_count,post_count)
VALUES                  (social_profile_seq.nextval, 50005, 3, '윤상은', '/경로', 0,0,0);
select * from social_profile;

/* 소셜  메세지*/
INSERT INTO social_message (id,code_no,social_id_from,social_id_to,content,register_date)
VALUES                  (social_message_seq.nextval,80004,2,3,'박진우ㅎㅇ',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,2,3,'ㅂㅎㅇ2',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,3,2,'윤산은',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,3,2,'윤산은2',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,2,3,'ㅂㅎㅇ3',sysdate);
select * from social_message ORDER BY register_date desc;

/* 소셜_게시글 */
--일반 게시글
INSERT INTO social_post(id,code_no,social_id,content,register_date,comment_count,move_count)
VALUES         (social_post_seq.nextval,10007,2,'내용이다',sysdate,0,0);
--프로젝트 홍보 게시글
INSERT INTO social_post(id,code_no,social_id,content,project_id,register_date,comment_count,move_count)
VALUES         (social_post_seq.nextval,10007,2,'프로젝트 홍보하려고',1,sysdate,0,0);

select * from social_post ORDER BY register_date desc;

/* 프로젝트 */
INSERT INTO PROJECT_POST (id, user_id, title, content, business, 
target_price, target_limit)
VALUES (project_post_seq.nextval, 3, '제목이다.', '내용', '슈박스', 10000, sysdate);

select * from PROJECT_POST;

/* 일반_게시글 */
INSERT INTO normal_post (id,                  code_no,user_id,title,content,hit,comment_count,move_count,register_date)
VALUES               (normal_post_seq.nextval,10002,3,'제목이다.','내용',0,0,0,sysdate);
select * from normal_post;

/* 프로필_게시글 */
INSERT INTO profile_post(id,                  code_no,user_id,title,content,hit,register_date, name, sex, birth_date, age, email, height, weight, job, school, specification, website_url)
VALUES               (profile_post_seq.nextval,10005,3,'프로필','프로필',0,sysdate,'박진우','m','1996-02-13', 24, 'rmatjd2003@naver.com', 172, 72, '취업준비생', '울산대학교 수석 입학', '운전면허증 장롱면허 2년차', 'naver.com');
select * from profile_post;

/* 계층형_게시글 */
--question
INSERT INTO reply_post(id,                  code_no,user_id,title,content,hit,register_date,move_count,reply_id,step,reply_order)
VALUES               (reply_post_seq.nextval,10006,3,'질문있다','내용',0,sysdate,0,reply_post_seq.nextval,0,0);
--answer
INSERT INTO reply_post(id,                  code_no,user_id,title,content,hit,register_date,move_count,reply_id,step,reply_order)
VALUES               (reply_post_seq.nextval,10006,3,'답한다','내용',0,sysdate,0,1,1,1);

select * from reply_post;

/* 영상_게시글 */
--영화 - 전체
INSERT INTO video_post(id,                  code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate,hit,register_date,comment_count,move_count)
VALUES               (video_post_seq.nextval,30001,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'pg',0,sysdate,0,0);
--영화 - 범죄/스릴러인 경우
INSERT INTO video_post(id,                  code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate,hit,register_date,comment_count,move_count)
VALUES               (video_post_seq.nextval,3000101,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'pg',0,sysdate,0,0);
--티저
INSERT INTO video_post(id,                  code_no,user_id,title_korean,content,video_file_path,rate,register_date,hit,comment_count,move_count)
VALUES               (video_post_seq.nextval,30002,1,'한글제목','줄거리','/경로','pg',sysdate,0,0,0);

select * from video_post;

/* 무브 */
-- 사람이 사람에게
INSERT INTO move(id,code_no,user_id_from,user_id_to,register_date)
VALUES         (move_seq.nextval,80003,1,2,sysdate);
-- 사람이 프로젝트에
INSERT INTO move(id,code_no,user_id_from,project_id,register_date)
VALUES         (move_seq.nextval,80003,1,1,sysdate);
-- 사람이 영화에게
INSERT INTO move(id,code_no,user_id_from,movie_id,register_date)
VALUES         (move_seq.nextval,80003,1,1,sysdate);
-- SNS프로필이 SNS 게시글에게
INSERT INTO move(id,code_no,social_profile_id,social_post_id,register_date)
VALUES         (move_seq.nextval,80003,2,1,sysdate);


/* 댓글 */
-- 사람이 프로젝트에(추가필요)
-- 사람이 일반게시글에 
INSERT INTO m_comment(id,code_no,user_id,normal_post_id,content,move_count,register_date,comment_id_reply,step,reply_order)
VALUES         (move_seq.nextval,80001,1,1,'뎃글ㄹ네용',0,sysdate,move_seq.nextval,0,0);
-- 사람이 영화에게
INSERT INTO m_comment(id,code_no,user_id,movie_id,content,grade,move_count,register_date,comment_id_reply,step,reply_order)
VALUES         (move_seq.nextval,80001,1,1,'뎃글ㄹ네용',5,0,sysdate,move_seq.nextval,0,0);
-- SNS프로필이 SNS 게시글에게+댓글에 답글
INSERT INTO m_comment(id,code_no,social_profile_id,social_post_id,content,move_count,register_date,comment_id_reply,step,reply_order)
VALUES         (move_seq.nextval,80001,2,2,'뎃글ㄹ네용',0,sysdate,6,0,0);
-- 댓글에 답글
select * from m_comment;

SELECT * FROM
ROWNUM rNum, 
N.ID, N.TITLE,
 U.NICKNAME, N.REGISTER_DATE, N.HIT
FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
ORDER BY N.ID DESC)
WHERE rNum >= 1
AND rNum <= 20;

select * from M_USER;


SELECT * FROM
(SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
N.ID, N.TITLE, U.NICKNAME,
N.REGISTER_DATE, N.HIT
FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
ORDER BY N.ID DESC)
WHERE rNum &gt;= #{startrow}
AND rNum &lt;= #{endrow}

  select
    B.id            as id,
    B.title         as title,
    B.user_id     as user_id,
    A.id            as id,
    A.nickname      as nickname,
    A.email         as email
  from NORMAL_POST B left outer join M_USER A on B.user_id = A.id
  order by B.id desc 
  where rNum >=2 and rNum <=10
  
  select * from m_comment;
  
    select * from
    (select 
  rowNum rNum, N.ID, N.TITLE, U.NICKNAME,
  N.REGISTER_DATE, N.HIT
  from NORMAL_POST N, M_USER U
  where N.USER_ID = U.ID
  order by N.ID desc)
  where rNum >= 2 and rNum <= 20;
  
   SELECT * FROM
(SELECT ROW_NUMBER() OVER(ORDER BY ID DESC) rNum,
ID, TITLE, USER_ID,
REGISTER_DATE, HIT
FROM NORMAL_POST 
ORDER BY ID DESC)
WHERE rNum >= 1
AND rNum <= 30

 SELECT * FROM
(SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
N.ID, N.TITLE, U.NICKNAME,
N.REGISTER_DATE, N.HIT
FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
ORDER BY N.ID DESC)
WHERE rNum >= 11
AND rNum <= 20;

 SELECT * FROM
(SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
N.ID AS board_free_id, N.TITLE, U.NICKNAME,
N.REGISTER_DATE AS board_free_registerDate, N.HIT
FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
ORDER BY N.ID DESC)
WHERE rNum >= 1
AND rNum <= 20;

 SELECT * FROM
(SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
N.ID AS board_free_id, N.TITLE, U.NICKNAME,
N.REGISTER_DATE AS board_free_registerDate, N.HIT
FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
ORDER BY N.ID DESC)
WHERE rNum >= 1
AND rNum <= 20;

SELECT COUNT(N.ID) FROM NORMAL_POST N;

SELECT COUNT(*) FROM NORMAL_POST N
WHERE N.USER_ID IN (SELECT U.ID FROM M_USER U
WHERE U.nickname LIKE '관리자');


SELECT COUNT(N.ID) FROM NORMAL_POST N
WHERE (SELECT * FROM M_USER U) N.USER_ID = U.ID

SELECT COUNT(*) FROM NORMAL_POST N
WHERE (SELECT * FROM M_USER U)
N.USER_ID = U.ID
AND U.nickname LIKE '관리자';

  

SELECT COUNT(*) FROM NORMAL_POST where title like '%z%';
SELECT COUNT(*) FROM M_USER where nickname LIKE '관리자';
SELECT COUNT(*) FROM NORMAL_POST N, M_USER U
WHERE N.USER_ID = U.ID
AND U.nickname LIKE '관리자';

  SELECT N.*, M.nickname
  FROM NORMAL_POST N, M_USER M
  WHERE N.USER_ID = M.ID
  AND N.ID=65
  
  SELECT s.id FROM SOCIAL_PROFILE s,m_user u
  WHERE s.user_id = u.id

select * from code_master;
--delete from code_master;
select * from CODE_MASTER where category_name is null;

 SELECT * FROM
 (SELECT 
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id
 N.REGISTER_DATE AS board_free_registerDate, N.HIT 
 FROM NORMAL_POST N
 INNER JOIN m_user U ON N.USER_ID = U.ID
 INNER JOIN SOCIAL_PROFILE S ON N.USER_ID = S.user_id
 where board_free_id=50 
 ORDER BY board_free_id DESC)
 WHERE rNum >=1
 AND rNum <=10
 
 INSERT INTO social_profile (id, code_no, user_id, nickname, profile_image_path, follower_count, follow_count,post_count)
VALUES                  (social_profile_seq.nextval, 50005, 1, '박진우', '/경로', 0,0,0);

  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID AS board_free_id , N.TITLE, U.NICKNAME,S.ID AS social_profile_id,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N, M_USER U, SOCIAL_PROFILE S
 WHERE N.USER_ID = U.ID 
 AND U.ID = S.USER_ID
 ORDER BY board_free_id DESC)
 WHERE rNum >= 1
 AND rNum <= 31                  /*소셜 넣지 안을때 기본 쿼리*/
 
  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY board_free_id DESC) rNum,
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N, M_USER U, SOCIAL_PROFILE S
 
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY board_free_id DESC) rNum,
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N 
 INNER JOIN M_USER U ON N.USER_ID = U.ID AND
 INNER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY board_free_id DESC)
 WHERE rNum >=1
 AND rNum <=20;

  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID , N.TITLE, U.NICKNAME, S.ID,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N, M_USER U, SOCIAL_PROFILE S
 WHERE N.USER_ID = U.ID AND U.ID = S.USER_ID
 ORDER BY N.ID DESC)
 WHERE rNum >= 1
 AND rNum <= 30;

  SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY board_free_id DESC) rNum,
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 U.ID AS m_user_id, N.USER_ID AS board_free_user_id,
 S.USER_ID AS social_profile_user_id,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N, M_USER U, SOCIAL_PROFILE S
 ORDER BY board_free_id DESC)
 WHERE rNum >= 1
 AND rNum <= 30;
 
   SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID AS board_free_id , N.TITLE, U.NICKNAME,S.ID AS social_profile_id,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
 FROM NORMAL_POST N 
 LEFT OUTER JOIN M_USER U ON N.USER_ID = U.ID 
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY board_free_id DESC)
 WHERE rNum >= 1
 AND rNum <= 31 
 
 delete from social_profile where id=3
 
 ALTER TABLE NORMAL_POST ADD(content2 CLOB);
 UPDATE NORMAL_POST SET content2 = content;
 
ALTER TABLE NORMAL_POST RENAME COLUMN content TO content3;
ALTER TABLE NORMAL_POST RENAME COLUMN content2 TO content;
ALTER TABLE NORMAL_POST DROP COLUMN content3;

  SELECT N.*, M.nickname
  FROM NORMAL_POST N, M_USER M
  WHERE N.USER_ID = M.ID
  AND N.ID=67

  SELECT * FROM M_USER;
  
   SELECT N.ID AS board_notice_id, N.USER_ID AS board_notice_user_id,
 N.TITLE, N.HIT, N.CONTENT, M.NICKNAME
 FROM NORMAL_POST N, M_USER M
 WHERE N.USER_ID = M.ID
 AND N.ID=13

  SELECT * FROM NORMAL_POST;
  
   SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID AS board_notice_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 N.REGISTER_DATE AS board_notice_registerDate, N.HIT
 FROM NORMAL_POST N
 LEFT OUTER JOIN M_USER U ON N.USER_ID = U.ID
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 WHERE N.CODE_NO = 10001
 ORDER BY board_notice_id DESC)
 WHERE rNum >= 1
 AND rNum <= 20

SELECT COUNT(*) FROM NORMAL_POST N
WHERE N.CODE_NO = 10001
 
ALTER TABLE Profile_Post add(thumbnail_image varchar2(4000));
ALTER TABLE Profile_Post drop column img;

ALTER TABLE Profile_Post add(etctext varchar2(4000));

select * from normal_post;
select * from m_user;
select * from profile_post;

INSERT INTO profile_post(id,code_no,user_id,thumbnail_image,title,content,
hit,register_date, name, sex, birth_date,
age, email, height, weight,
job, school, specification,
website_url)
VALUES (profile_post_seq.nextval,10005,3,
'<img src="/moving.com/resources/photo_upload/201912\20191226111240bcd7375f-3220-4e39-b342-323426820106.jpg" title="hotel.jpg" width="900px;"><br style="clear:both;">',
'프로필','프로필',0,sysdate,'박진우','m',
'1996-02-13', 24, 'rmatjd2003@naver.com', 172, 72,
'취업준비생', '울산대학교 수석 입학', '운전면허증 장롱면허 2년차',
'naver.com');

SELECT rownum rnum,P.* FROM profile_post P ;

 SELECT ROWNUM RNUM,P.*,U.NICKNAME
 FROM PROFILE_POST P, M_USER U
 WHERE RNUM >= 1
 AND rNum <= 10
 ORDER BY P.id DESC
 
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY P.ID DESC) rNum,
 P.thumbnail_Image, P.ID AS board_actors_id, U.NICKNAME,
 P.NAME
 FROM PROFILE_POST P
 LEFT OUTER JOIN M_USER U ON P.USER_ID = U.ID
 WHERE P.CODE_NO = 10005
 ORDER BY board_actors_id DESC)
 WHERE rNum >= 2
 AND rNum <= 20;
 
  INSERT INTO PROFILE_POST (ID,CODE_NO,USER_ID,
 THUMBNAIL_IMAGE,CATEGORY,EMAIL,
 BIRTH_DATE,HEIGHT,SEX,
 WEBSITE_URL,CONTENT,REGISTER_DATE) 
 VALUES(profile_post_seq.nextval,10005,3,
 '','','',
 to_date('19980301','yyyyMMdd'),176,'male',
 '','zzz',sysdate)
 
 select * from m_user;
 select * from profile_post;
 
 
 alter table profile_post modify(sex varchar(50))
 alter table profile_post modify(height default 0)
 
 insert into profile_post ( id,code_no,user_id,
 thumbnail_image,category,email,
 birth_date,height,sex,
 website_url,content,register_date)
 values(profile_post_seq.nextval,10005,3,
 '','','aa@naver.com',
 980101,178,sysdate)
 
 
 select * from profile_post;
 
 INSERT INTO profile_post(id,code_no,user_id,
 content,hit,
 register_date, name, sex,
 birth_date, age, email,
 height, weight,
  website_url)
VALUES(profile_post_seq.nextval,10005,3,
'프로필',0,
sysdate,'박진우','m',
'1996-02-13', 24, 'rmatjd2003@naver.com',
172, 72,
 'naver.com');
 

 ALTER TABLE profile_post
   DROP
      CONSTRAINT profile_post_user_id_fk
      CASCADE;

ALTER TABLE profile_post
   DROP
      CONSTRAINT FK_code_master_TO_profile_post
      CASCADE;
      
      ALTER TABLE profile_post
   DROP
      PRIMARY KEY
      CASCADE
      KEEP INDEX;
      
drop table profile_post;

CREATE TABLE profile_post (
   id NUMBER(38) NOT NULL, /* 아이디 */
   code_no NUMBER(38) DEFAULT 10005, /* 코드_번호 */
   user_id NUMBER(38), /* 회원_아이디 */
   title VARCHAR2(200), /* 제목 */
   category VARCHAR2(50), /* 카테고리 */
   content CLOB, /* 내용 */
   hit NUMBER(38) DEFAULT 0, /* 조회수 */
   register_date DATE DEFAULT sysdate, /* 등록_일 */
   comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
   move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
   thumbnail_image VARCHAR2(4000), /* 썸네일_이미지 */
   name VARCHAR2(50), /* 이름 */
   sex VARCHAR2(1), /* 성별 */
   birth_date DATE, /* 생년월일_일 */
   age NUMBER(38), /* 나이 */
   email VARCHAR2(40), /* 이메일 */
   height NUMBER(38) DEFAULT 0, /* 신장 */
   weight NUMBER(38), /* 몸무게 */
   job VARCHAR2(1000), /* 직업 */
   school VARCHAR2(1000), /* 학력 */
   specification VARCHAR2(1000), /* 경력 */
   website_url VARCHAR2(300) /* 홈페이지_url */
);

CREATE UNIQUE INDEX profile_post_id_pk
   ON profile_post (
      id ASC
   );

ALTER TABLE profile_post
   ADD
      CONSTRAINT PK_profile_post
      PRIMARY KEY (
         id
      );

      
      ALTER TABLE profile_post
   ADD
      CONSTRAINT profile_post_user_id_fk
      FOREIGN KEY (
         user_id
      )
      REFERENCES m_user (
         id
      )
      ON DELETE SET NULL;

tcALTER TABLE profile_post
   ADD
      CONSTRAINT FK_code_master_TO_profile_post
      FOREIGN KEY (
         code_no
      )
      REFERENCES code_master (
         code_no
      );
      
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY P.ID DESC) rNum,
 P.thumbnail_Image, P.ID AS board_actors_id,
 P.NAME,P.USER_ID
 FROM PROFILE_POST P
  ORDER BY board_actors_id DESC)
 WHERE RNUM >= 1
 AND rNum <= 10
 
 SELECT * FROM
 (SELECT ROW_NUMBER() OVER(ORDER BY N.ID DESC) rNum,
 N.ID AS board_free_id, N.TITLE, U.NICKNAME, S.ID AS social_profile_id,
 N.REGISTER_DATE AS board_free_registerDate, N.HIT
FROM NORMAL_POST N 
 LEFT OUTER JOIN M_USER U ON N.USER_ID = U.ID 
 LEFT OUTER JOIN SOCIAL_PROFILE S ON U.ID = S.USER_ID
 ORDER BY board_free_id DESC)
 WHERE rNum >= 1
 AND rNum <= 10
 
 SELECT P.ID AS board_actors_id, P.USER_ID AS board_actors_user_id,
 P.HIT,THUMBNAIL_IMAGE,CATEGORY,
 EMAIL,BIRTH_DATE,HEIGHT,
 SEX,WEBSITE_URL,CONTENT,REGISTER_DATE AS board_actors_registerDate,
 NAME,ETCTEXT
 FROM PROFILE_POST P
 WHERE P.ID=110
 