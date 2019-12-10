/* test */
CREATE SEQUENCE test 
	INCREMENT BY 1
	START WITH 1;

/* 코드_유형_마스터_시퀀스 */
CREATE SEQUENCE code_type_master_seq 
	INCREMENT BY 1
	START WITH 1;

/* 코드_마스터_시퀀스 */
CREATE SEQUENCE code_master_seq 
	INCREMENT BY 1
	START WITH 1;

/* 프로젝트_게시글_시퀀스 */
CREATE SEQUENCE project_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 영상_게시글_시퀀스 */
CREATE SEQUENCE video_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 일반_게시글_시퀀스 */
CREATE SEQUENCE normal_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 프로필_게시글_시퀀스 */
CREATE SEQUENCE profile_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 계층형_게시글_시퀀스 */
CREATE SEQUENCE reply_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 소셜_게시글_시퀀스 */
CREATE SEQUENCE social_post_seq 
	INCREMENT BY 1
	START WITH 1;

/* 댓글_시퀀스 */
CREATE SEQUENCE m_comment_seq 
	INCREMENT BY 1
	START WITH 1;

/* 첨부_파일_시퀀스 */
CREATE SEQUENCE attached_file_seq 
	INCREMENT BY 1
	START WITH 1;

/* 무브_시퀀스 */
CREATE SEQUENCE move_seq 
	INCREMENT BY 1
	START WITH 1;

/* 회원_시퀀스 */
CREATE SEQUENCE m_user_seq 
	INCREMENT BY 1
	START WITH 1;

/* 소셜_프로필_시퀀스 */
CREATE SEQUENCE social_profile_seq 
	INCREMENT BY 1
	START WITH 1;

/* 소셜_메시지_시퀀스 */
CREATE SEQUENCE social_message_seq 
	INCREMENT BY 1
	START WITH 1;

/* 추천_리스트_시퀀스 */
CREATE SEQUENCE recommend_list_seq 
	INCREMENT BY 1
	START WITH 1;

/* 리워드_시퀀스 */
CREATE SEQUENCE reward_seq 
	INCREMENT BY 1
	START WITH 1;

/* 주문_수량_시퀀스 */
CREATE SEQUENCE order_entity_seq 
	INCREMENT BY 1
	START WITH 1;

/* 주문_문서_시퀀스 */
CREATE SEQUENCE order_sheet_seq 
	INCREMENT BY 1
	START WITH 1;

/* 결제_시퀀스 */
CREATE SEQUENCE payment_seq 
	INCREMENT BY 1
	START WITH 1;

/* 배송_시퀀스 */
CREATE SEQUENCE delivery_seq 
	INCREMENT BY 1
	START WITH 1;

/* 태그_시퀀스 */
CREATE SEQUENCE tag_seq 
	INCREMENT BY 1
	START WITH 1;

/* 팔로우_시퀀스 */
CREATE SEQUENCE follow_seq 
	INCREMENT BY 1
	START WITH 1;

/* 코드_마스터 */
CREATE TABLE code_master (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_type_id NUMBER(38), /* 코드_유형_아이디 */
	code_no NUMBER(38), /* 코드_번호 */
	category_name_reference VARCHAR2(50), /* 카테고리_명_참조 */
	category_name VARCHAR2(50), /* 카테고리_명 */
	table_name VARCHAR2(50), /* 테이블_명 */
	register_date DATE /* 등록_날짜 */
);

CREATE UNIQUE INDEX code_master_id_pk
	ON code_master (
		id ASC
	);

CREATE UNIQUE INDEX code_no_uix
	ON code_master (
		code_no ASC
	);

CREATE UNIQUE INDEX UIX_code_master
	ON code_master (
		category_name ASC
	);

ALTER TABLE code_master
	ADD
		CONSTRAINT PK_code_master
		PRIMARY KEY (
			id
		);

ALTER TABLE code_master
	ADD
		CONSTRAINT UK_code_master
		UNIQUE (
			code_no
		);

ALTER TABLE code_master
	ADD
		CONSTRAINT UK_code_master2
		UNIQUE (
			category_name
		);

/* 주문_수량 */
CREATE TABLE order_entity (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 20004, /* 코드_번호 */
	order_sheet_id NUMBER(38), /* 주문_문서_아이디 */
	reward_id NUMBER(38), /* 리워드_아이디 */
	count NUMBER(38) DEFAULT 0, /* 수량 */
	price NUMBER(38), /* 금액 */
	total_price NUMBER(38) /* 총_가격 */
);

CREATE UNIQUE INDEX order_entity_id_pk
	ON order_entity (
		id ASC
	);

ALTER TABLE order_entity
	ADD
		CONSTRAINT PK_order_entity
		PRIMARY KEY (
			id
		);

/* 주문_문서 */
CREATE TABLE order_sheet (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 20003, /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	address VARCHAR2(255), /* 주소 */
	total_price NUMBER(38), /* 총_금액 */
	order_date DATE, /* 주문_일 */
	status NUMBER(1) DEFAULT 1 /* 상태 */
);

CREATE UNIQUE INDEX order_sheet_id_pk
	ON order_sheet (
		id ASC
	);

ALTER TABLE order_sheet
	ADD
		CONSTRAINT PK_order_sheet
		PRIMARY KEY (
			id
		);

/* 첨부_파일 */
CREATE TABLE attached_file (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80002, /* 코드_번호 */
	file_path VARCHAR2(300), /* 파일_경로 */
	thumbnail_path VARCHAR2(300), /* 썸네일_경로 */
	no NUMBER(38), /* 순번 */
	register_date DATE DEFAULT sysdate, /* 등록_날짜 */
	profile_post_id NUMBER(38), /* 프로필_게시글_아이디 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	video_post_id NUMBER(38), /* 영상_게시글_아이디 */
	project_post_id NUMBER(38), /* 프로젝트_게시글_아이디 */
	social_post_id NUMBER(38), /* 소셜_게시글_아이디 */
	reply_post_id NUMBER(38) /* 답글_게시글_아이디 */
);

CREATE UNIQUE INDEX file_id_pk
	ON attached_file (
		id ASC
	);

ALTER TABLE attached_file
	ADD
		CONSTRAINT PK_attached_file
		PRIMARY KEY (
			id
		);

/* 답글_게시글 */
CREATE TABLE reply_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 10005, /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	category VARCHAR2(50), /* 분류 */
	title VARCHAR2(200), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	hit NUMBER(38) DEFAULT 0, /* 조회수 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	reply_post_id NUMBER(38), /* 답글_게시글_아이디 */
	reply_step NUMBER(5) DEFAULT 0, /* 답글_계층 */
	reply_order NUMBER(5) DEFAULT 0, /* 답글_정렬순서 */
	publish_availability NUMBER(1) DEFAULT 1 /* 공개_여부 */
);

CREATE UNIQUE INDEX reply_post_id_pk
	ON reply_post (
		id ASC
	);

ALTER TABLE reply_post
	ADD
		CONSTRAINT PK_reply_post
		PRIMARY KEY (
			id
		);

/* 배송 */
CREATE TABLE delivery (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 20006, /* 코드_번호 */
	order_sheet_id NUMBER(38), /* 주문_문서_아이디 */
	delivery_firm VARCHAR2(50), /* 배송_사 */
	billing_no VARCHAR2(25), /* 운송장번호 */
	status NUMBER(1) DEFAULT 1 /* 상태 */
);

CREATE UNIQUE INDEX delivery_id_pk
	ON delivery (
		id ASC
	);

ALTER TABLE delivery
	ADD
		CONSTRAINT PK_delivery
		PRIMARY KEY (
			id
		);

/* 소셜_게시글 */
CREATE TABLE social_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 10007, /* 코드_번호 */
	social_id NUMBER(38), /* 소셜_아이디 */
	content VARCHAR2(4000), /* 내용 */
	project_id NUMBER(38), /* 프로젝트_아이디 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	publish_availability NUMBER(1) DEFAULT 1 /* 공개_여부 */
);

CREATE UNIQUE INDEX social_post_id_pk
	ON social_post (
		id ASC
	);

ALTER TABLE social_post
	ADD
		CONSTRAINT PK_social_post
		PRIMARY KEY (
			id
		);

/* 프로젝트_게시글 */
CREATE TABLE project_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	user_id NUMBER(38), /* 회원_아이디 */
	code_no NUMBER(38) DEFAULT 20001, /* 코드_번호 */
	code NUMBER(38), /* 분류번호 */
	title VARCHAR2(200), /* 제목 */
	introduce VARCHAR2(200), /* 소개 */
	content VARCHAR2(4000), /* 내용 */
	business VARCHAR2(50), /* 제작사 */
	target_price NUMBER(38), /* 목표_금액 */
	now_price NUMBER(38), /* 현재_금액 */
	target_limit DATE, /* 목표_기한 */
	left_limit VARCHAR2(500), /* 남은_기한 */
	sponser_count NUMBER(38) DEFAULT 0, /* 후원자_수 */
	hit NUMBER(38) DEFAULT 0, /* 조회수 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	register_date DATE DEFAULT sysdate /* 등록_일 */
);

CREATE UNIQUE INDEX project_post_id_pk
	ON project_post (
		id ASC
	);

ALTER TABLE project_post
	ADD
		CONSTRAINT PK_project_post
		PRIMARY KEY (
			id
		);

/* 추천_리스트 */
CREATE TABLE recommend_list (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80006, /* 코드_번호 */
	social_profile_id NUMBER(38), /* 소셜_프로필_아이디 */
	social_profile_banner_title VARCHAR2(200), /* 소셜_프로필_광고_제목 */
	profile_post_id NUMBER(38), /* 프로필_게시글_아이디 */
	profile_post_banner_title VARCHAR2(200), /* 프로필_게시글_광고_제목 */
	project_post_id NUMBER(38), /* 프로젝트_게시글_아이디 */
	project_banner_title VARCHAR2(200), /* 프로젝트_광고_제목 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	normal_post_banner_title VARCHAR2(200) /* 일반_게시글_광고_제목 */
);

CREATE UNIQUE INDEX recom_list_id_pk
	ON recommend_list (
		id ASC
	);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT PK_recommend_list
		PRIMARY KEY (
			id
		);

/* 영상_게시글 */
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
	rate VARCHAR2(10), /* 관람등급 */
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

/* 소셜_메시지 */
CREATE TABLE social_message (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80004, /* 코드_번호 */
	social_id_from NUMBER(38) NOT NULL, /* 소셜_아이디_보낸이 */
	social_id_to NUMBER(38) NOT NULL, /* 소셜_아이디_받는이 */
	content VARCHAR2(4000), /* 내용 */
	register_date DATE DEFAULT sysdate /* 등록_일 */
);

CREATE UNIQUE INDEX PK_social_message
	ON social_message (
		id ASC
	);

ALTER TABLE social_message
	ADD
		CONSTRAINT PK_social_message
		PRIMARY KEY (
			id
		);

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
	deactivate_reason VARCHAR2(4000) /* 탈퇴 */
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

/* 결제 */
CREATE TABLE payment (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 20005, /* 코드_번호 */
	order_sheet_id NUMBER(38), /* 주문_문서_아이디 */
	payment_method NUMBER(1), /* 결제_방법 */
	status NUMBER(1) DEFAULT 1 /* 상태 */
);

CREATE UNIQUE INDEX payment_id_pk
	ON payment (
		id ASC
	);

ALTER TABLE payment
	ADD
		CONSTRAINT PK_payment
		PRIMARY KEY (
			id
		);

/* 소셜_프로필 */
CREATE TABLE social_profile (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 50005, /* 코드_번호 */
	user_id NUMBER(38) NOT NULL, /* 회원_아이디 */
	nickname VARCHAR2(17), /* 닉네임 */
	background_image_path VARCHAR2(300), /* 배경_이미지_경로 */
	introduce VARCHAR2(4000), /* 소개 */
	user_type NUMBER(1) DEFAULT 1, /* 회원_타입 */
	profile_image_path VARCHAR2(300), /* 프로필_이미지_경로 */
	follower_count NUMBER(38) DEFAULT 0, /* 팔로워_수 */
	follow_count NUMBER(38) DEFAULT 0, /* 팔로우_수 */
	post_count NUMBER(38) DEFAULT 0, /* 게시글_수 */
	my_list_name VARCHAR2(50) /* 내_리스트_명 */
);

CREATE UNIQUE INDEX social_profile_id_pk
	ON social_profile (
		id ASC
	);

ALTER TABLE social_profile
	ADD
		CONSTRAINT PK_social_profile
		PRIMARY KEY (
			id
		);

/* 리워드 */
CREATE TABLE reward (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 20002, /* 코드_번호 */
	project_id NUMBER(38), /* 프로젝트_아이디 */
	title VARCHAR2(200), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	price NUMBER(38), /* 금액 */
	delivery_fee_existence NUMBER(1) DEFAULT 1, /* 배송_비_유무 */
	delivery_expect_date DATE, /* 전달_예정_일 */
	limit_count NUMBER(38) DEFAULT 0, /* 제한_수 */
	select_count NUMBER(38) DEFAULT 0, /* 선택한_수 */
	register_date DATE DEFAULT sysdate /* 등록_날짜 */
);

CREATE UNIQUE INDEX reward_id_pk
	ON reward (
		id ASC
	);

ALTER TABLE reward
	ADD
		CONSTRAINT PK_reward
		PRIMARY KEY (
			id
		);

/* 무브 */
CREATE TABLE move (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80003, /* 코드_번호 */
	register_date DATE DEFAULT sysdate, /* 등록_날짜 */
	user_id_from NUMBER(38), /* 회원_아이디_보낸이 */
	user_id_to NUMBER(38), /* 회원_아이디_받는이 */
	social_profile_id_from NUMBER(38), /* 소셜_프로필_아이디_보낸이 */
	social_profile_id_to NUMBER(38), /* 소셜_프로필_아이디_받는이 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	video_post_id NUMBER(38), /* 영상_게시글_아이디 */
	project_post_id NUMBER(38), /* 프로젝트_게시글_아이디 */
	social_post_id NUMBER(38), /* 소셜_게시글_아이디 */
	reply_post_id NUMBER(38), /* 답글_게시글_아이디 */
	profile_post_id NUMBER(38) /* 프로필_게시글_아이디 */
);

CREATE UNIQUE INDEX move_id_pk
	ON move (
		id ASC
	);

ALTER TABLE move
	ADD
		CONSTRAINT PK_move
		PRIMARY KEY (
			id
		);

/* 코드_유형_마스터 */
CREATE TABLE code_type_master (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_type_id NUMBER(38) NOT NULL, /* 코드_유형_아이디 */
	code_type_name VARCHAR2(50), /* 코드_유형_명 */
	code_type_name_english VARCHAR2(50), /* 코드_유형_명_영문 */
	register_date DATE /* 등록_날짜 */
);

CREATE UNIQUE INDEX code_type_master_id_pk
	ON code_type_master (
		id ASC
	);

CREATE UNIQUE INDEX code_type_id_uix
	ON code_type_master (
		code_type_id ASC
	);

ALTER TABLE code_type_master
	ADD
		CONSTRAINT PK_code_type_master
		PRIMARY KEY (
			id
		);

ALTER TABLE code_type_master
	ADD
		CONSTRAINT UK_code_type_master
		UNIQUE (
			code_type_id
		);

/* 일반_게시글 */
CREATE TABLE normal_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38), /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	user_category VARCHAR2(50), /* 회원_분류 */
	title VARCHAR2(200), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	hit NUMBER(38) DEFAULT 0, /* 조회수 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	limit_date DATE, /* 기한_날짜 */
	question_content VARCHAR2(4000), /* 질문_내용 */
	answer_content VARCHAR2(4000) /* 답변_내용 */
);

CREATE UNIQUE INDEX normal_post_id_pk
	ON normal_post (
		id ASC
	);

ALTER TABLE normal_post
	ADD
		CONSTRAINT PK_normal_post
		PRIMARY KEY (
			id
		);

/* 댓글 */
CREATE TABLE m_comment (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80001, /* 코드_번호 */
	user_id_from NUMBER(38), /* 회원_아이디_보낸이 */
	social_profile_id_from NUMBER(38), /* 소셜_프로필_아이디_보낸이 */
	content VARCHAR2(4000), /* 내용 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	grade NUMBER(38), /* 평점 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	comment_id_reply NUMBER(38), /* 댓글_아이디_답글 */
	reply_step NUMBER(5) DEFAULT 0, /* 답글_계층 */
	reply_order NUMBER(5) DEFAULT 0, /* 답글_정렬순서 */
	video_post_id NUMBER(38), /* 영상_게시글_아이디 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	social_post_id NUMBER(38), /* 소셜_게시글_아이디 */
	profile_post_id NUMBER(38), /* 프로필_게시글_아이디 */
	project_post_id NUMBER(38) /* 프로젝트_게시글_아이디 */
);

CREATE UNIQUE INDEX comment_id_pk
	ON m_comment (
		id ASC
	);

ALTER TABLE m_comment
	ADD
		CONSTRAINT PK_m_comment
		PRIMARY KEY (
			id
		);

/* 프로필_게시글 */
CREATE TABLE profile_post (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 10005, /* 코드_번호 */
	user_id NUMBER(38), /* 회원_아이디 */
	title VARCHAR2(200), /* 제목 */
	category VARCHAR2(50), /* 카테고리 */
	content VARCHAR2(4000), /* 내용 */
	hit NUMBER(38) DEFAULT 0, /* 조회수 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	comment_count NUMBER(38) DEFAULT 0, /* 댓글_개수 */
	move_count NUMBER(38) DEFAULT 0, /* 무브_개수 */
	name VARCHAR2(50), /* 이름 */
	sex VARCHAR2(1), /* 성별 */
	birth_date DATE, /* 생년월일_일 */
	age NUMBER(38), /* 나이 */
	email VARCHAR2(40), /* 이메일 */
	height NUMBER(38), /* 신장 */
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

/* 신고 */
CREATE TABLE report (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80005, /* 코드_번호 */
	title VARCHAR2(200), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	register_date DATE DEFAULT sysdate, /* 등록_일 */
	user_id_from NUMBER(38), /* 회원_아이디_보낸이 */
	user_id_to NUMBER(38), /* 회원_아이디_받는이 */
	social_profile_id_from NUMBER(38), /* 소셜_프로필_아이디_보낸이 */
	social_profile_id_to NUMBER(38), /* 소셜_프로필_아이디_받는이 */
	comment_id NUMBER(38), /* 댓글_아이디 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	social_message_id NUMBER(38), /* 소셜_메시지_아이디 */
	video_post_id NUMBER(38), /* 영상_게시글_아이디 */
	project_post_id NUMBER(38), /* 프로젝트_게시글_아이디 */
	social_post_id NUMBER(38), /* 소셜_게시글_아이디 */
	profile_post_id NUMBER(38) /* 프로필_게시글_아이디 */
);

CREATE UNIQUE INDEX PK_report
	ON report (
		id ASC
	);

ALTER TABLE report
	ADD
		CONSTRAINT PK_report
		PRIMARY KEY (
			id
		);

/* 팔로우 */
CREATE TABLE follow (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80007, /* 코드_번호 */
	register_date DATE DEFAULT sysdate, /* 등록_날짜 */
	user_id_from NUMBER(38), /* 회원_아이디_보낸이 */
	user_id_to NUMBER(38), /* 회원_아이디_받는이 */
	social_profile_id_from NUMBER(38), /* 소셜_프로필_아이디_보낸이 */
	social_profile_id_to NUMBER(38) /* 소셜_프로필_아이디_받는이 */
);

CREATE UNIQUE INDEX PK_follow
	ON follow (
		id ASC
	);

ALTER TABLE follow
	ADD
		CONSTRAINT PK_follow
		PRIMARY KEY (
			id
		);

/* 태그 */
CREATE TABLE tag (
	id NUMBER(38) NOT NULL, /* 아이디 */
	code_no NUMBER(38) DEFAULT 80008, /* 코드_번호 */
	tag_name VARCHAR2(50), /* 태그_명 */
	register_date DATE DEFAULT sysdate, /* 등록_날짜 */
	normal_post_id NUMBER(38), /* 일반_게시글_아이디 */
	social_post_id NUMBER(38), /* 소셜_게시글_아이디 */
	video_post_id NUMBER(38), /* 영상_게시글_아이디 */
	project_post_id NUMBER(38), /* 프로젝트_게시글_아이디 */
	profile_post_id NUMBER(38), /* 프로필_게시글_아이디 */
	reply_post_id NUMBER(38) /* 답글_게시글_아이디 */
);

CREATE UNIQUE INDEX PK_tag
	ON tag (
		id ASC
	);

ALTER TABLE tag
	ADD
		CONSTRAINT PK_tag
		PRIMARY KEY (
			id
		);

ALTER TABLE code_master
	ADD
		CONSTRAINT code_master_code_type_id_fk
		FOREIGN KEY (
			code_type_id
		)
		REFERENCES code_type_master (
			code_type_id
		);

ALTER TABLE code_master
	ADD
		CONSTRAINT FK_code_master_TO_code_master
		FOREIGN KEY (
			category_name_reference
		)
		REFERENCES code_master (
			category_name
		);

ALTER TABLE order_entity
	ADD
		CONSTRAINT order_entity_order_sheet_id_fk
		FOREIGN KEY (
			order_sheet_id
		)
		REFERENCES order_sheet (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE order_entity
	ADD
		CONSTRAINT order_entity_reward_id_fk
		FOREIGN KEY (
			reward_id
		)
		REFERENCES reward (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE order_entity
	ADD
		CONSTRAINT order_entity_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE order_sheet
	ADD
		CONSTRAINT order_sheet_user_id_fk
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE order_sheet
	ADD
		CONSTRAINT order_sheet_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE attached_file
	ADD
		CONSTRAINT file_social_post_id_fk
		FOREIGN KEY (
			social_post_id
		)
		REFERENCES social_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT file_profile_post_id_fk
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES profile_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT FK_reply_post_TO_attached_file
		FOREIGN KEY (
			reply_post_id
		)
		REFERENCES reply_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT file_normal_post_id_fk
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT FK_video_post_TO_attached_file
		FOREIGN KEY (
			video_post_id
		)
		REFERENCES video_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT FK_project_post_TO_file
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE attached_file
	ADD
		CONSTRAINT file_code_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE reply_post
	ADD
		CONSTRAINT FK_m_user_TO_reply_post
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE reply_post
	ADD
		CONSTRAINT FK_reply_post_TO_reply_post
		FOREIGN KEY (
			reply_post_id
		)
		REFERENCES reply_post (
			id
		);

ALTER TABLE reply_post
	ADD
		CONSTRAINT FK_code_master_TO_reply_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE delivery
	ADD
		CONSTRAINT delivery_order_sheet_if_fk
		FOREIGN KEY (
			order_sheet_id
		)
		REFERENCES order_sheet (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE delivery
	ADD
		CONSTRAINT delivery_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE social_post
	ADD
		CONSTRAINT social_post_social_prof_id_fk
		FOREIGN KEY (
			social_id
		)
		REFERENCES social_profile (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE social_post
	ADD
		CONSTRAINT FK_project_post_TO_social_post
		FOREIGN KEY (
			project_id
		)
		REFERENCES project_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE social_post
	ADD
		CONSTRAINT FK_code_master_TO_social_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE project_post
	ADD
		CONSTRAINT FK_m_user_TO_project_post
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE project_post
	ADD
		CONSTRAINT FK_code_master_TO_project_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT recom_list_social_prof_id_fk
		FOREIGN KEY (
			social_profile_id
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT recom_list_profile_post_id_fk
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES profile_post (
			id
		);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT FK_projct_post_TO_recom_list
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
			id
		);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT recom_list_normal_post_id_fk
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		);

ALTER TABLE recommend_list
	ADD
		CONSTRAINT recom_list_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE video_post
	ADD
		CONSTRAINT FK_m_user_TO_video_post
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE video_post
	ADD
		CONSTRAINT FK_code_master_TO_video_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE social_message
	ADD
		CONSTRAINT FK_scl_profile_TO_scl_msg
		FOREIGN KEY (
			social_id_from
		)
		REFERENCES social_profile (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE social_message
	ADD
		CONSTRAINT FK_scl_profile_TO_scl_msg2
		FOREIGN KEY (
			social_id_to
		)
		REFERENCES social_profile (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE social_message
	ADD
		CONSTRAINT social_message_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE m_user
	ADD
		CONSTRAINT FK_code_master_TO_m_user
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE payment
	ADD
		CONSTRAINT payment_order_sheet_id_fk
		FOREIGN KEY (
			order_sheet_id
		)
		REFERENCES order_sheet (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE payment
	ADD
		CONSTRAINT payment_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE social_profile
	ADD
		CONSTRAINT social_profile_user_id_fk
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE social_profile
	ADD
		CONSTRAINT social_profile_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE reward
	ADD
		CONSTRAINT FK_project_post_TO_reward
		FOREIGN KEY (
			project_id
		)
		REFERENCES project_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE reward
	ADD
		CONSTRAINT reward_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE move
	ADD
		CONSTRAINT move_user_id_from_fk
		FOREIGN KEY (
			user_id_from
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT move_user_id_to_fk
		FOREIGN KEY (
			user_id_to
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT FK_project_post_TO_move
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT FK_video_post_TO_move
		FOREIGN KEY (
			video_post_id
		)
		REFERENCES video_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT move_normal_post_id_fk
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT move_social_profile_id_fk
		FOREIGN KEY (
			social_profile_id_from
		)
		REFERENCES social_profile (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT move_social_post_id_fk
		FOREIGN KEY (
			social_post_id
		)
		REFERENCES social_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE move
	ADD
		CONSTRAINT move_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE move
	ADD
		CONSTRAINT FK_reply_post_TO_move
		FOREIGN KEY (
			reply_post_id
		)
		REFERENCES reply_post (
			id
		);

ALTER TABLE move
	ADD
		CONSTRAINT FK_social_profile_TO_move
		FOREIGN KEY (
			social_profile_id_to
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE move
	ADD
		CONSTRAINT FK_social_profile_TO_move2
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE normal_post
	ADD
		CONSTRAINT normal_post_user_id_hk
		FOREIGN KEY (
			user_id
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE normal_post
	ADD
		CONSTRAINT FK_code_master_TO_normal_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_user_id_fk
		FOREIGN KEY (
			user_id_from
		)
		REFERENCES m_user (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT FK_video_post_TO_m_comment
		FOREIGN KEY (
			video_post_id
		)
		REFERENCES video_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_normal_post_id_fk
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_social_post_id_fk
		FOREIGN KEY (
			social_post_id
		)
		REFERENCES social_post (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_comment_id_fk
		FOREIGN KEY (
			comment_id_reply
		)
		REFERENCES m_comment (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_social_profile_id_fk
		FOREIGN KEY (
			social_profile_id_from
		)
		REFERENCES social_profile (
			id
		)
		ON DELETE SET NULL;

ALTER TABLE m_comment
	ADD
		CONSTRAINT comment_code_no_fk
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE m_comment
	ADD
		CONSTRAINT FK_profile_post_TO_m_comment
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES profile_post (
			id
		);

ALTER TABLE m_comment
	ADD
		CONSTRAINT FK_project_post_TO_m_comment
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
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

ALTER TABLE profile_post
	ADD
		CONSTRAINT FK_code_master_TO_profile_post
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_m_user_TO_report
		FOREIGN KEY (
			user_id_from
		)
		REFERENCES m_user (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_m_user_TO_report2
		FOREIGN KEY (
			user_id_to
		)
		REFERENCES m_user (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_social_profile_TO_report
		FOREIGN KEY (
			social_profile_id_to
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_social_profile_TO_report2
		FOREIGN KEY (
			social_profile_id_from
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_m_comment_TO_report
		FOREIGN KEY (
			comment_id
		)
		REFERENCES m_comment (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_normal_post_TO_report
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_social_message_TO_report
		FOREIGN KEY (
			social_message_id
		)
		REFERENCES social_message (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_video_post_TO_report
		FOREIGN KEY (
			video_post_id
		)
		REFERENCES video_post (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_project_post_TO_report
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_social_post_TO_report
		FOREIGN KEY (
			social_post_id
		)
		REFERENCES social_post (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_profile_post_TO_report
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES profile_post (
			id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_code_master_TO_report
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_m_user_TO_follow
		FOREIGN KEY (
			user_id_from
		)
		REFERENCES m_user (
			id
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_m_user_TO_follow2
		FOREIGN KEY (
			user_id_to
		)
		REFERENCES m_user (
			id
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_social_profile_TO_follow
		FOREIGN KEY (
			social_profile_id_from
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_social_profile_TO_follow2
		FOREIGN KEY (
			social_profile_id_to
		)
		REFERENCES social_profile (
			id
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_code_master_TO_follow
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_code_master_TO_tag
		FOREIGN KEY (
			code_no
		)
		REFERENCES code_master (
			code_no
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_normal_post_TO_tag
		FOREIGN KEY (
			normal_post_id
		)
		REFERENCES normal_post (
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_social_post_TO_tag
		FOREIGN KEY (
			social_post_id
		)
		REFERENCES social_post (
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_video_post_TO_tag
		FOREIGN KEY (
			video_post_id
		)
		REFERENCES video_post (
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_project_post_TO_tag
		FOREIGN KEY (
			project_post_id
		)
		REFERENCES project_post (
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_profile_post_TO_tag
		FOREIGN KEY (
			profile_post_id
		)
		REFERENCES profile_post (
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_reply_post_TO_tag
		FOREIGN KEY (
			reply_post_id
		)
		REFERENCES reply_post (
			id
		);