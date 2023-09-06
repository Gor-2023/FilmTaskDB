-- 1) Return the average duration, for films released in 1994.
-- select avg(duration) as avg_dur
-- from movies
-- where released_date = 1994;

-- 2)Return Top 10 films. (Each film must have the score filed)
-- select m.mov_name, s.score
-- from movies m
-- left join bridge_score bs on m.id = bs.movie_id
-- left join score s on bs.score_id = s.id
-- where s.score is not null
-- order by s.score desc
-- limit 20;


-- 3) Return films that don’t have comments. 
-- select m.mov_name
-- from movies m
-- left join bridge_usercom bu on m.id = bu.movie_id
-- left join comments c on bu.comment_id = c.id
-- where c.comment is null;

-- 4) Return films that have the “Super” word in comments. 
-- select mov_name, comment
-- from movies m
-- left join bridge_usercom bu on m.id = bu.movie_id
-- left join comments c on bu.comment_id = c.id
-- WHERE c.comment iLIKE '%great%';

-- 5) Return 10 the most viewed films with comments.
-- select *
-- from movies m
-- join bridge_usercom bu on m.id = bu.movie_id
-- join comments c on bu.comment_id = c.id
-- where m.id = (select movie_id
-- from views
-- group by movie_id
-- order by count(*) desc limit 1);


-- 6) Return comedian films with comments.
-- select m.mov_name, c.comment
-- from movies m
-- join bridge_usercom bu on m.id = bu.movie_id
-- join comments c on bu.comment_id = c.id
-- join bridge_genres bg on m.id = bg.movie_id
-- join genres g on bg.genre_id = g.id 
-- where g.genre = 'Comedy' and c.comment is not null;

