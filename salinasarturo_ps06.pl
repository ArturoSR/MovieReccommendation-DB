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
% User 01
%% User 01 Social Network
friend_of(alex, ben).
friend_of(alex, user04).
friend_of(alex, user05).
friend_of(alex, user06).
friend_of(alex, user10).

%% User 01 Liked Movies
liked(alex, blood_simple).
liked(alex, crimewave).
liked(alex, the_firm).
liked(alex, the_hudsucker_proxy).
liked(alex, the_man_who_wasn_t_there).
liked(alex, mission_impossible).
liked(alex, rumble_fish).
liked(alex, star_wars_episode_i__the_phantom_menace).
liked(alex, the_usual_suspects).
liked(alex, eight_legged_freaks).
liked(alex, ghost_world).

% User 02
%% User 02 Social Network
friend_of(ben, alex).
friend_of(ben, cathy).
friend_of(ben, user05).
friend_of(ben, user07).

%% User 02 Liked Movies
liked(ben, american_beauty).
liked(ben, the_big_lebowski).
liked(ben, blade_runner).
liked(ben, the_cotton_club).
liked(ben, down_from_the_mountain).
liked(ben, fargo).
liked(ben, girl_with_a_pearl_earring).
liked(ben, the_godfather).
liked(ben, the_godfather_part_ii).
liked(ben, the_godfather_part_iii).
liked(ben, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(ben, inside_monkey_zetterland).
liked(ben, the_ladykillers).
liked(ben, lost_in_translation).
liked(ben, no_country_for_old_men).
liked(ben, o_brother_where_art_thou).
liked(ben, peggy_sue_got_married).
liked(ben, raising_arizona).
liked(ben, the_virgin_suicides).
liked(ben, ghost_world).
liked(ben, the_horse_whisperer).
liked(ben, a_love_song_for_bobby_long).
liked(ben, north).
liked(ben, untitled_woody_allen_fall_project_2006).

% User 03
%% User 03 Social Network
friend_of(cathy, ben).
friend_of(cathy, user04).
friend_of(cathy, user06).
friend_of(cathy, user07).
friend_of(cathy, user08).
friend_of(cathy, user10).

%% User 03 Liked Movies
liked(cathy, american_beauty).
liked(cathy, the_big_lebowski).
liked(cathy, blade_runner).
liked(cathy, fargo).
liked(cathy, ghost_busters).
liked(cathy, groundhog_day).
liked(cathy, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(cathy, inside_monkey_zetterland).
liked(cathy, the_ladykillers).
liked(cathy, lost_in_translation).
liked(cathy, mission_impossible).
liked(cathy, no_country_for_old_men).
liked(cathy, o_brother_where_art_thou).
liked(cathy, star_wars_episode_i__the_phantom_menace).
liked(cathy, the_usual_suspects).
liked(cathy, the_virgin_suicides).
liked(cathy, ghost_world).

% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% PROBLEM SET 6 
% X is the User and Y is the movie
% Recommend movies that are higher than a 80 but not liked by the user but liked by their friends. 
% Run with setof(X, Y^recomended_movie(<USER TO GET LIST FOR>, M),_).
% Implement setof or bagof as another predicate to use with rec movie. 
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!


% Movies that their friends have liked but that they themselves have yet to like.
% Make sure that the film has a minimum score of an 80.
reco(X, Y) :-
    (friend_of(X, Friend), 
	liked(Friend, Y), 
	\+ liked(X, Y)),
	(rating(Y, R), R >= 80).
	

recommend_movie(X, Y) :-
	setof(_, reco(X, Y), _).

	
