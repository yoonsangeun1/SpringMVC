/* 코드_유형_마스터 */
INSERT INTO code_type_master values (code_type_master_seq.nextval, 100, '게시글', 'post', sysdate);
INSERT INTO code_type_master values (code_type_master_seq.nextval, 200, '프로젝트', 'project', sysdate);
INSERT INTO code_type_master values (code_type_master_seq.nextval, 300, '영상', 'video', sysdate);
INSERT INTO code_type_master values (code_type_master_seq.nextval, 500, '회원', 'user', sysdate);
INSERT INTO code_type_master values (code_type_master_seq.nextval, 800, '부가 기능', 'additional function', sysdate);
select * from code_type_master;


/* 코드_마스터 */
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10001,'공지사항', null,'normal_post',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10002,'자유게시판', null,'normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000201,'자유게시판', '잡답','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000202,'자유게시판', '영화','normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 1000203,'자유게시판', '스포일러','normal_post',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10003,'FAQ', null,'normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10004,'공모전', null,'normal_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10005,'회원 프로필', null,'profile_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10006,'Q&A', null,'reply_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 100, 10007,'소셜 게시글', null,'social_post',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20001,'프로젝트', null,'project_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20002,'리워드', null,'reward',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20003,'주문서', null,'order_sheet',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20004,'주문수량', null,'order_entity',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20005,'결제', null,'payment',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 200, 20006,'배송', null,'delivery',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 30001,'영화장르', '전체','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000101,'영화장르', '범죄/스릴러','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000102,'영화장르', '액션/어드벤쳐','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000103,'영화장르', '다큐/드라마/청춘','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000104,'영화장르', '역사/시대극','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000105,'영화장르', '판타지/SF','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000106,'영화장르', '멜로/로맨스','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000107,'영화장르', '코메디','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000108,'영화장르', '애니메이션','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 3000109,'영화장르', '기타','video_post',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 300, 30002,'영화장르', '티저','video_post',sysdate);
-- 1. 범죄/스릴러 2. 액션/어드벤쳐 3. 다큐/드라마/청춘 4. 역사/시대극 5. 판타지/SF 6. 멜로/로맨스 7. 코메디 8.애니메이션 9. 기타

INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80001,'부가기능', '댓글','m_comment',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80002,'부가기능', '첨부파일','attached_file',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80003,'부가기능', '무브','move',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80004,'부가기능', '메세지','social_message',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80005,'부가기능', '신고글','report',sysdate);
INSERT INTO code_master VALUES (code_master_seq.nextval, 800, 80006,'부가기능', '추천 리스트','recommend_list',sysdate);

INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50001,'회원', null,'m_user',sysdate);
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
INSERT INTO code_master VALUES (code_master_seq.nextval, 500, 50005,'소셜 프로필',null,'social_profile',sysdate);


/* 회원 */
--관리자
INSERT INTO M_USER (id,user_status,		user_type, user_lv, 
userid, nickname, email, password, genre_01, genre_02, genre_03, user_pointpoint, register_date)
VALUES (m_user_seq.nextval, 1, 1, 4, 'admin', 'admin', 
'admin@gmail.com', 'admin', null, null, null, 500, sysdate);
--일반회원
INSERT INTO M_USER (id,user_status,		user_type, user_lv, 
userid, nickname, email, password, genre_01, genre_02, genre_03, user_pointpoint, register_date)
VALUES (m_user_seq.nextval, 1, 1, 1, 'moving', 'moving', 
'moving@gmail.com', 'moving', null, null, null, 500, sysdate);
--사업자회원
INSERT INTO M_USER (id,user_status,		user_type, user_lv, 
userid, nickname, email, password, genre_01, genre_02, genre_03, user_pointpoint, register_date)
VALUES (m_user_seq.nextval, 1, 1, 3, 'business', 'business', 
'business@gmail.com', 'business', null, null, null, 500, sysdate);

--delete from M_USER;
select * from M_USER;

/* 프로젝트 */
INSERT INTO PROJECT_POST (id,					   code_no,user_id,title,content,business,target_price,target_limit,register_date)
VALUES 					 (project_post_seq.nextval,20001,3,'제목이다.','내용','슈박스',10000,sysdate,sysdate);
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
INSERT INTO video_post(id,						code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,genre,era_background,video_file_path,video_length,,,,,,,,,)
VALUES					(video_post_seq.nextval,3000101,1,'답한다','내용',0,sysdate,0,1,1,1);

select * from video_post;















select * from code_master;
--delete from code_master;
select * from CODE_MASTER where category_name is null;



