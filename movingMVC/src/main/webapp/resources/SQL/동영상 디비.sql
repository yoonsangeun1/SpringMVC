CREATE TABLE video_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38), /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	genre VARCHAR2(50), /* 장르 */
	title_english VARCHAR2(200), /* 제목_영문 */
	title_korean VARCHAR2(200), /* 제목_한글 */
	director VARCHAR2(50), /* 감독 */
	actor VARCHAR2(50), /* 배우 */ /*크기 50에서 100으로 조정 → 배우 7명 입력 시 크기 초과 에러 발생*/
	release_date DATE, /* 개봉_일 */
	content VARCHAR2(4000), /* 내용 */
	grade NUMBER(38), /* 평점 */
	era_background VARCHAR2(100), /* 시대_배경 */
	video_file_path VARCHAR2(300), /* 영상_파일_경로 */
	video_length NUMBER(38), /* 영상_길이 */
	rate varchar2(5), /* 관람 등급 */
	hit NUMBER(38) DEFAULT 0, /* 조회 수 */
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

select * from VIDEO_POST order by id desc;

INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,30001,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'g'); --영화 - 범죄/스릴러인 경우
INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,3000101,1,'English Title','한글제목','박진우감독','박진우배우',sysdate,'줄거리',5.0,'현재','/경로',120,'g'); --티저-범죄스릴러

INSERT INTO video_post(id, code_no,user_id,title_korean,content,video_file_path,rate)
VALUES (video_post_seq.nextval,3000208,1,'고양이','2층 침대를 선물했어요!','https://www.youtube.com/embed/SqV_37jdXS8','g');
INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,3000108,1,'Cats occupy bunk beds','2층 침대를 점령한 고양이들','크림히어로즈','루루',sysdate,'밖에 나갔다가 돌아왔더니 고양이들이 저의 2층 침대를 점령했어요!<br /><br />[BGM] "Montauk Point" Kevin MacLeod(incompetech.com)',5.0,'2018년 늦봄','https://www.youtube.com/embed/SqV_37jdXS8',9,'g');
INSERT INTO video_post(id,code_no,user_id,title_english,title_korean,director,actor,release_date,content,grade,era_background,video_file_path,video_length,rate)
VALUES (video_post_seq.nextval,3000108,1,'Avengers : Cream Heroes Cat Introduction','어벤져쯔 : 크림히어로즈 고양이 소개','크림히어로즈','루루, 모모, 디디, 라라, 티티, 츄츄, 코코',sysdate,'귀여운 고양이들이 루루의 지휘 아래 뭉쳤습니다.<br />어벤져쯔 고양이들을 소개합니다.<br />다양한 능력을 가지고 있는 고양이들은 거대한 계획을 세우고 있는데요.<br />어떤 계획으로 집사를 놀라게 할지 한번 보시죠!<br />* 7월 31일 라이브 영상입니다.<br /><br />일곱 고양이와 집사의 애정 넘치는 이야기',5.0,'2017년 한여름날','https://www.youtube.com/embed/CNpa9nCy1_0',9,'g');
/**
 * https://www.youtube.com/embed/SqV_37jdXS8
 * Chr(10) : 현재 커서가 위치한 곳에서 아래로 한줄 내리는 기능 → 라인 피드 : new line
 * Chr(13) : 동일한 줄의 첫 번째 자리에 커서를 위치 시킵니다. → 캐리지 리턴 : carriage return
 * 제거 방법 : replace(char, chr(13)||chr(10), '')
 * LINK : https://mymuseum.tistory.com/10
 */

select * from video_post;

drop table video_post; --삭제가 안 됨.
DELETE FROM VIDEO_POST WHERE ID = '1'; --데이터 삭제
UPDATE video_post SET id = '14' WHERE id = '27';
SELECT '밖에 나갔다가 돌아왔더니 고양이들이 저의 2층 침대를 점령했어요!'||chr(10)||'[BGM] "Montauk Point" Kevin MacLeod(incompetech.com)'
AS test FROM DUAL;
UPDATE video_post
SET title_korean = '어벤져쯔 : 크림히어로즈 고양이 소개'
WHERE id=2;
ALTER TABLE video_post MODIFY(actor varchar2(100)); -- ORA-12899: value too large for column "MOVING"."VIDEO_POST"."ACTOR" (actual: 54, maximum: 50)(0 rows affected) 발생해서 100으로 크기 변경시킴