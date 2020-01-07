SELECT profile_image_url, id, userid, nickname, genre_01, genre_02, genre_03, email, phone, publish_availability,
		user_status, user_type, user_lv, business_name, business_register_no FROM M_USER WHERE userid = 'dong148@gamil.com';
		
INSERT INTO m_user (id, userid, nickname, email, password, genre_01, genre_02, genre_03)
VALUES (m_user_seq.nextval, 'mihawk648', '하위^^', 'moving@gmail.com', 'moving1', null, null, null);

SELECT * FROM VIDEO_POST;

SELECT id AS user_ooooo, nickname
		from m_user
		WHERE id = 3
		
		SELECT 
		N.id AS normal_post_id, N.user_id, N.title, N.hit, N.content,
		U.id AS m_user_id, U.nickname
		FROM normal_post N, m_user U
		WHERE N.user_id = U.id AND N.id=3