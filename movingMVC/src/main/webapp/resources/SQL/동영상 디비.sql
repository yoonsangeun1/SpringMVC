CREATE TABLE video_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38), /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	genre VARCHAR2(50), /* 장르 */
	title_english VARCHAR2(200), /* 제목_영문 */
	title_korean VARCHAR2(200), /* 제목_한글 */
	director VARCHAR2(50), /* 감독 */
	actor VARCHAR2(50), /* 배우 */
	release_date DATE, /* 개봉_일 */
	content VARCHAR2(4000), /* 내용 */
	grade NUMBER(38), /* 평점 */
	era_background VARCHAR2(100), /* 시대_배경 */
	video_file_path VARCHAR2(300), /* 영상_파일_경로 */
	video_length NUMBER(38), /* 영상_길이 */
	rate varchar2(5), /* 관람등급 */
	hit NUMBER(38) DEFAULT 0, /* 조회수 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	register_date DATE DEFAULT sysdate /* 등록_일 */
);

CREATE UNIQUE INDEX video_post_id_pk
	ON video_post (
		id ASC
	);

ALTER TABLE video_post
	ADD
		CONSTRAINT PK_video_post
		PRIMARY KEY (
			id
		);

/* 영상_게시글_시퀀스 */
CREATE SEQUENCE video_post_seq 
	INCREMENT BY 1
	START WITH 1;
	
	
/* 회원 */
CREATE TABLE m_user (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 50001, /* 코드_번호 */
	userid VARCHAR2(50) NOT NULL, /* 회원아이디 */
	nickname VARCHAR2(17), /* 닉네임 */
	name VARCHAR2(50), /* 이름 */
	email VARCHAR2(40) NOT NULL, /* 이메일 */
	password VARCHAR2(50) NOT NULL, /* 비밀번호 */
	genre_01 VARCHAR2(50), /* 장르1 */
	genre_02 VARCHAR2(50), /* 장르2 */
	genre_03 VARCHAR2(50), /* 장르3 */
	phone VARCHAR2(11), /* 전화번호 */
	publish_availability NUMBER(1) DEFAULT 1, /* 공개_여부 */
	profile_image_url VARCHAR2(300), /* 프로필_사진_url */
	user_status NUMBER(38) DEFAULT 1, /* 회원_상태 */
	user_type NUMBER(38) DEFAULT 1, /* 회원_유형 */
	user_lv NUMBER(38) DEFAULT 1, /* 회원_등급 */
	user_point NUMBER(38) DEFAULT 500, /* 회원_포인트 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	business_name VARCHAR2(50), /* 사업자이름 */
	business_register_no VARCHAR2(25), /* 사업자등록번호 */
	business_license_image_path VARCHAR2(300), /* 사업자등록증이미지경로 */
	deactivate_date DATE, /* 탈퇴_날짜 */
	deactivate_rerason VARCHAR2(4000) /* 탈퇴_사유 */
);

CREATE UNIQUE INDEX user_id_pk
	ON m_user (
		id ASC
	);

CREATE UNIQUE INDEX user_userid_uix
	ON m_user (
		userid ASC
	);

CREATE UNIQUE INDEX user_nickname_uix
	ON m_user (
		nickname ASC
	);

ALTER TABLE m_user
	ADD
		CONSTRAINT PK_m_user
		PRIMARY KEY (
			id
		);

ALTER TABLE m_user
	ADD
		CONSTRAINT UK_m_user
		UNIQUE (
			userid
		);

ALTER TABLE m_user
	ADD
		CONSTRAINT UK_m_user2
		UNIQUE (
			nickname
		);

select * from VIDEO_POST order by register_date desc;

INSERT INTO video_post(id, code_no,user_id,title_english,title_korean,
director,actor,release_date,content,grade,era_background,
video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,30001,1,'English Title','한글제목',
'박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'g');
--영화 - 범죄/스릴러인 경우
INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,
director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,3000101,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'g');
--티저-범죄스릴러
INSERT INTO video_post(id, code_no,user_id,title_korean,content,video_file_path,rate)
VALUES (video_post_seq.nextval,3000201,1,'한글제목','줄거리','/경로','g');


INSERT INTO video_post(id, code_no,user_id,title_korean,content,video_file_path,rate)
VALUES (video_post_seq.nextval,3000208,1,'고양이','2층 침대를 선물했어요!','https://www.youtube.com/embed/SqV_37jdXS8','g');

INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,
director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,3000108,1,'cat','2층 침대를 선물했어요!','크림히어로즈','루루',sysdate,'고양이의 하루',5.0,'2018년 겨울','https://www.youtube.com/embed/SqV_37jdXS8',5,'g');

https://www.youtube.com/embed/SqV_37jdXS8

select * from video_post;