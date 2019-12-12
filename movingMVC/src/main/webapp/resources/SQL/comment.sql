--boardcomment 댓글 임시 테이블생성
create table boardcomment(
  rno number(38) primary key--댓글번호
  ,id number(38) default 0 --게시판번호,외래키제약조건
  ,replyer varchar2(50) not null --댓글작성자
  ,replytext varchar2(4000) not null --댓글내용
  ,regdate date --댓글등록날짜
  ,updatedate date --댓글 수정날짜
);

drop table boardcomment;

--외래키제약조건설정
alter table boardcomment add constraint fk_id
foreign key(id) references normal_post(id);

select * from boardcomment order by rno desc;

--댓글번호 시퀀스 생성
create sequence boardcomment_seq -- rno_seq시퀀스 생성
start with 1 --1부터 시작
increment by 1 --1씩증가
nocache;

--시퀀스 번호값 확인
select rno_seq.nextval from dual;










