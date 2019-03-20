:- [social_network].
:- [ratings].
:- multifile 
	friend_of/2,
	liked/2.
:- discontiguous
        friend_of/2,
        liked/2.
		
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Demonstration Users 
% !!!!!!!!!!!!!!!!!!!!!!!!!!!
% Alex has no friends but will still be recommended highly rated movies.
% Hopefully having an opinion on highly rated movies will help them make connections on the social media. 
liked(alex, fall).
liked(alex, north).
liked(alex, the_firm).
liked(alex, hail_ceasar).
liked(alex, the_godfather_part_ii).

% Ben is friends with all of the members of the network except Alex.
friend_of(ben, cathy).
friend_of(ben, dan).
friend_of(ben, ellie).

liked(ben, frankenweenie).
liked(ben, anna).
liked(ben, ghost_busters).
liked(ben, the_godfather).
liked(ben, the_godfather_part_ii).
liked(ben, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(ben, lost_in_translation).
liked(ben, rumble_fish).
liked(ben, the_outsiders).
liked(ben, a_view_from_the_bridge).
liked(ben, untitled_woody_allen_fall_project_2006).

% Cathy only has Ben as a friend and she has liked some movies that Ben has liked and some that he hasn't but are highly rated.
friend_of(cathy, ben).

liked(cathy, ghost_busters).
liked(cathy, the_godfather).
liked(cathy, the_godfather_part_ii).
liked(cathy, the_godfather_part_iii).
liked(cathy, paris_je_t_aime).
liked(cathy, star_wars_episode_i__the_phantom_menace).
liked(cathy, ghost_world).
liked(cathy, a_love_song_for_bobby_long).
liked(cathy, the_spongebob_squarepants_movie).


% Dan has both Ellie and Ben as friends but he only likes movies that are poorly received so his likes are not recommended to his friends.
% However, Dan does get recommendations of good movies his friends liked.
friend_of(dan, ben).
friend_of(dan, ellie).

liked(dan, north).
liked(dan, my_brother_the_pig).
liked(dan, manny__lo).
liked(dan, lick_the_star).
liked(dan, hail_ceasar).
liked(dan, intolerable_cruelty).
liked(dan, the_ladykillers).

% Ellie has liked all of the movies that Ben and Dan have liked except for 1.
% She will then only ever be recommended that movie.
friend_of(ellie, ben).
friend_of(ellie, dan).

liked(ellie, north).
liked(ellie, my_brother_the_pig).
liked(ellie, manny__lo).
liked(ellie, lick_the_star).
liked(ellie, hail_ceasar).
liked(ellie, intolerable_cruelty).
liked(ellie, the_ladykillers).
liked(ellie, anna).
liked(ellie, ghost_busters).
liked(ellie, the_godfather).
liked(ellie, the_godfather_part_ii).
liked(ellie, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(ellie, lost_in_translation).
liked(ellie, rumble_fish).
liked(ellie, the_outsiders).
liked(ellie, a_view_from_the_bridge).
liked(ellie, untitled_woody_allen_fall_project_2006).


% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% PROBLEM SET 6 
% X is the User and Y is the movie
% If the user has friends in the social network recommend movies that their friends have liked and 
% that are well recievedbut that they themselves have yet to like.
% If the user does not have any friends then simply recommend the very well received movies that they have yet to like.
% Bagof or setof can be used to make sure that the student does not get 
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!


good_recs(X, Y) :-
	(rating(Y, R), 
	R >= 80, 
	\+ liked(X, Y)).
	
% Movies that their friends have liked but that they themselves have yet to like.
% Make sure that the film has a minimum score of an .
reco(X, Y) :-
    ((friend_of(X, Friend))) ->  
	((liked(Friend, Y), 
	\+ liked(X, Y)),
	(rating(Y, R), R >= 70)) ;
	good_recs(X, Y).
	

	
recommend_movie(X, Y) :-
	setof(_, reco(X, Y), _).

	
