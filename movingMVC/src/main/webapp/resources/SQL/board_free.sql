create table board_free( --임시 테이블
 free_id number(38) primary key --게시판 번호
 ,free_name varchar2(20) not null --글쓴이
 ,free_title varchar2(200) not null --제목
 ,free_cont varchar2(4000) not null --내용
 ,free_hit number(38) default 0 --조회수
 ,free_date date --등록날짜
);

select * from board_free order by free_id desc;

--board_free_seq 시퀀스 생성
create sequence board_free_seq
start with 1  --1부터 시작
increment by 1 -- 1씩 증가
nocache;

select board_free_seq.nextval from dual; --시퀀스 값 확인

--alter sequence board_free_seq
--increment by -1
--minvalue 0; --듀얼로 확인 후 -1로 수정

--alter sequence board_free_seq
--increment by 1
--minvalue 0;  --다시 1로 수정

--임시 값 넣기
insert into board_free(free_id,free_name,free_title,free_cont,free_date)
values(board_free_seq.nextval,'aaaaa','테스트 게시물','테스트입니다.',sysdate);


select count(*) from board_free;

--댓글 개수를 추가할 컬럼 추가
alter table board_free
add(reply_cnt number(38) default 0); --원래는 create에서 해야함.;


alter table board_free
modify(free_name varchar2(200)); --글쓴이 컬럼 크기 변경했음








