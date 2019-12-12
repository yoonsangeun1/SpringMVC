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
WHERE id=2;
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
VALUES						(social_profile_seq.nextval, 50005, 1, '박진우', '/경로', 0,0,0);
INSERT INTO social_profile (id, code_no, user_id, nickname, profile_image_path, follower_count, follow_count,post_count)
VALUES						(social_profile_seq.nextval, 50005, 2, '윤상은', '/경로', 0,0,0);
select * from social_profile;

/* 소셜  메세지*/
INSERT INTO social_message (id,code_no,social_id_from,social_id_to,content,register_date)
VALUES					   (social_message_seq.nextval,80004,2,3,'박진우ㅎㅇ',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,2,3,'ㅂㅎㅇ2',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,3,2,'윤산은',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,3,2,'윤산은2',sysdate);
INSERT INTO social_message VALUES(social_message_seq.nextval,80004,2,3,'ㅂㅎㅇ3',sysdate);
select * from social_message ORDER BY register_date desc;

/* 소셜_게시글 */
--일반 게시글
INSERT INTO social_post(id,code_no,social_id,content,register_date,comment_count,move_count)
VALUES			(social_post_seq.nextval,10007,2,'내용이다',sysdate,0,0);
--프로젝트 홍보 게시글
INSERT INTO social_post(id,code_no,social_id,content,project_id,register_date,comment_count,move_count)
VALUES			(social_post_seq.nextval,10007,2,'프로젝트 홍보하려고',1,sysdate,0,0);

select * from social_post ORDER BY register_date desc;

/* 프로젝트 */
INSERT INTO PROJECT_POST (id, user_id, title, content, business, 
target_price, target_limit)
VALUES (project_post_seq.nextval, 3, '제목이다.', '내용', '슈박스', 10000, sysdate);

select * from PROJECT_POST;

/* 일반_게시글 */
INSERT INTO normal_post (id,						code_no,user_id,title,content,hit,comment_count,move_count,register_date)
VALUES					(normal_post_seq.nextval,10002,3,'제목이다.','내용',0,0,0,sysdate);
select * from normal_post;

/* 프로필_게시글 */
INSERT INTO profile_post(id,						code_no,user_id,title,content,hit,register_date, name, sex, birth_date, age, email, height, weight, job, school, specification, website_url)
VALUES					(profile_post_seq.nextval,10005,3,'프로필','프로필',0,sysdate,'박진우','m','1996-02-13', 24, 'rmatjd2003@naver.com', 172, 72, '취업준비생', '울산대학교 수석 입학', '운전면허증 장롱면허 2년차', 'naver.com');
select * from profile_post;

/* 계층형_게시글 */
--question
INSERT INTO reply_post(id,						code_no,user_id,title,content,hit,register_date,move_count,reply_id,step,reply_order)
VALUES					(reply_post_seq.nextval,10006,3,'질문있다','내용',0,sysdate,0,reply_post_seq.nextval,0,0);
--answer
INSERT INTO reply_post(id,						code_no,user_id,title,content,hit,register_date,move_count,reply_id,step,reply_order)
VALUES					(reply_post_seq.nextval,10006,3,'답한다','내용',0,sysdate,0,1,1,1);

select * from reply_post;

/* 영상_게시글 */
--영화 - 전체
INSERT INTO video_post(id,						code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate,hit,register_date,comment_count,move_count)
VALUES					(video_post_seq.nextval,30001,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'pg',0,sysdate,0,0);
--영화 - 범죄/스릴러인 경우
INSERT INTO video_post(id,						code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate,hit,register_date,comment_count,move_count)
VALUES					(video_post_seq.nextval,3000101,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'pg',0,sysdate,0,0);
--티저
INSERT INTO video_post(id,						code_no,user_id,title_korean,content,video_file_path,rate,register_date,hit,comment_count,move_count)
VALUES					(video_post_seq.nextval,30002,1,'한글제목','줄거리','/경로','pg',sysdate,0,0,0);

select * from video_post;

/* 무브 */
-- 사람이 사람에게
INSERT INTO move(id,code_no,user_id_from,user_id_to,register_date)
VALUES			(move_seq.nextval,80003,1,2,sysdate);
-- 사람이 프로젝트에
INSERT INTO move(id,code_no,user_id_from,project_id,register_date)
VALUES			(move_seq.nextval,80003,1,1,sysdate);
-- 사람이 영화에게
INSERT INTO move(id,code_no,user_id_from,movie_id,register_date)
VALUES			(move_seq.nextval,80003,1,1,sysdate);
-- SNS프로필이 SNS 게시글에게
INSERT INTO move(id,code_no,social_profile_id,social_post_id,register_date)
VALUES			(move_seq.nextval,80003,2,1,sysdate);


/* 댓글 */
-- 사람이 프로젝트에(추가필요)
-- 사람이 일반게시글에 
INSERT INTO m_comment(id,code_no,user_id,normal_post_id,content,move_count,register_date,comment_id_reply,step,reply_order)
VALUES			(move_seq.nextval,80001,1,1,'뎃글ㄹ네용',0,sysdate,move_seq.nextval,0,0);
-- 사람이 영화에게
INSERT INTO m_comment(id,code_no,user_id,movie_id,content,grade,move_count,register_date,comment_id_reply,step,reply_order)
VALUES			(move_seq.nextval,80001,1,1,'뎃글ㄹ네용',5,0,sysdate,move_seq.nextval,0,0);
-- SNS프로필이 SNS 게시글에게+댓글에 답글
INSERT INTO m_comment(id,code_no,social_profile_id,social_post_id,content,move_count,register_date,comment_id_reply,step,reply_order)
VALUES			(move_seq.nextval,80001,2,2,'뎃글ㄹ네용',0,sysdate,6,0,0);
-- 댓글에 답글
select * from m_comment;




select * from code_master;
--delete from code_master;
select * from CODE_MASTER where category_name is null;



