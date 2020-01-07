/* 코드_유형_마스터 */
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 100, '게시글', 'post', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 200, '프로젝트', 'project', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 300, '영상', 'video', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 500, '회원', 'user', sysdate);
INSERT INTO code_type_master VALUES (code_type_master_seq.nextval, 800, '부가 기능', 'additional function', sysdate);
SELECT * FROM code_type_master;
select count(*) FRom NORMAL_POST where code_no=10001
select count(N.id as n_id, P.id as p_id, R.id as r_id) FROM normal_post N, profile_post P, reply_post R
where N.code_no=10002
select N.id as n_id, P.id as p_id FROM normal_post N, profile_post P
select id FROM normal_post N

select N.code_no as cno,
P.code_no as cno,
N.title as title,
P.title as title

FROM normal_post N
full outer join profile_post P 
on N.code_no = P.code_no
where P.code_no = 10005

select sum(cnt) sum_count from
(
select  count(id) cnt from normal_post where title like '%1%' or content like  '%1%'
UNION ALL
select  count(id) cnt from profile_post where title like '%1%' or content like  '%1%'
)


select ROWNUM 
(
select code_no, id, title from normal_post
UNION ALL
select code_no, id, title from profile_post
order by id desc
)

Select *, ROW_NUMBER() OVER ( order By id desc  ) AS RowNum   From                                                      
 (           
select code_no, id, title from normal_post
UNION ALL
select  code_no, id, title from profile_post
  )                                                         
order by id desc

       Where RowNum BETWEEN 1 AND 30 
       

       --이거 하면 각각  rowNum 나옴
select row_number() over(order by id desc) rnum, code_no, id, title from normal_post
UNION ALL
select row_number() over(order by id desc) rnum, code_no, id, title from profile_post
order by id desc

	--통합rNum
SELECT * FROM
	(
	SELECT ROW_NUMBER() OVER(ORDER BY id DESC) rNum,
	code_no, id, title, content, user_id, register_date
	FROM 	
		(select code_no, id, title, content, user_id, register_date from normal_post
		UNION ALL
		select code_no, id, title, content, user_id, register_date from profile_post
		order by id desc)
	
		
	)
WHERE rNum >=11
AND rNum <=20 AND code_no like '10001'
	SELECT id FROM m_user where nickname like '%하%'
	
select * from normal_post where id=69;

update normal_post set title='^^', content='아니', code_no='10005' where id=59;
	