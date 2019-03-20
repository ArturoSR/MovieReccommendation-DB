:- [movies].

:- discontiguous
        friend_of/2,
        liked/2.

% User 01
%% User 01 Social Network
friend_of(user01, user02).
friend_of(user01, user04).
friend_of(user01, user05).
friend_of(user01, user06).
friend_of(user01, user10).

%% User 01 Liked Movies
liked(user01, blood_simple).
liked(user01, crimewave).
liked(user01, the_firm).
liked(user01, the_hudsucker_proxy).
liked(user01, the_man_who_wasn_t_there).
liked(user01, mission_impossible).
liked(user01, rumble_fish).
liked(user01, star_wars_episode_i__the_phantom_menace).
liked(user01, the_usual_suspects).
liked(user01, eight_legged_freaks).
liked(user01, ghost_world).

% User 02
%% User 02 Social Network
friend_of(user02, user01).
friend_of(user02, user03).
friend_of(user02, user05).
friend_of(user02, user07).

%% User 02 Liked Movies
liked(user02, american_beauty).
liked(user02, the_big_lebowski).
liked(user02, blade_runner).
liked(user02, the_cotton_club).
liked(user02, down_from_the_mountain).
liked(user02, fargo).
liked(user02, girl_with_a_pearl_earring).
liked(user02, the_godfather).
liked(user02, the_godfather_part_ii).
liked(user02, the_godfather_part_iii).
liked(user02, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(user02, inside_monkey_zetterland).
liked(user02, the_ladykillers).
liked(user02, lost_in_translation).
liked(user02, no_country_for_old_men).
liked(user02, o_brother_where_art_thou).
liked(user02, peggy_sue_got_married).
liked(user02, raising_arizona).
liked(user02, the_virgin_suicides).
liked(user02, ghost_world).
liked(user02, the_horse_whisperer).
liked(user02, a_love_song_for_bobby_long).
liked(user02, north).
liked(user02, untitled_woody_allen_fall_project_2006).

% User 03
%% User 03 Social Network
friend_of(user03, user02).
friend_of(user03, user04).
friend_of(user03, user06).
friend_of(user03, user07).
friend_of(user03, user08).
friend_of(user03, user10).

%% User 03 Liked Movies
liked(user03, american_beauty).
liked(user03, the_big_lebowski).
liked(user03, blade_runner).
liked(user03, fargo).
liked(user03, ghost_busters).
liked(user03, groundhog_day).
liked(user03, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(user03, inside_monkey_zetterland).
liked(user03, the_ladykillers).
liked(user03, lost_in_translation).
liked(user03, mission_impossible).
liked(user03, no_country_for_old_men).
liked(user03, o_brother_where_art_thou).
liked(user03, star_wars_episode_i__the_phantom_menace).
liked(user03, the_usual_suspects).
liked(user03, the_virgin_suicides).
liked(user03, ghost_world).

% User 04
%% User 04 Social Network
friend_of(user04, user01).
friend_of(user04, user03).
friend_of(user04, user07).
friend_of(user04, user08).

%% User 04 Liked Movies
liked(user04, american_beauty).
liked(user04, barton_fink).
liked(user04, blood_simple).
liked(user04, down_from_the_mountain).
liked(user04, the_godfather).
liked(user04, the_ladykillers).
liked(user04, spies_like_us).
liked(user04, the_perfect_score).

% User 05
%% User 05 Social Network
friend_of(user05, user01).
friend_of(user05, user02).
friend_of(user05, user06).
friend_of(user05, user09).

%% User 05 Liked Movies
liked(user05, the_big_lebowski).
liked(user05, fargo).
liked(user05, frankenweenie).
liked(user05, ghost_busters).
liked(user05, groundhog_day).
liked(user05, the_ladykillers).
liked(user05, o_brother_where_art_thou).
liked(user05, peggy_sue_got_married).
liked(user05, raising_arizona).
liked(user05, spies_like_us).
liked(user05, star_wars_episode_i__the_phantom_menace).
liked(user05, the_usual_suspects).
liked(user05, the_virgin_suicides).
liked(user05, eight_legged_freaks).
liked(user05, home_alone_3).
liked(user05, manny__lo).
liked(user05, my_brother_the_pig).
liked(user05, the_spongebob_squarepants_movie).

% User 06
%% User 06 Social Network
friend_of(user06, user01).
friend_of(user06, user03).
friend_of(user06, user05).
friend_of(user06, user07).
friend_of(user06, user09).
friend_of(user06, user10).

%% User 06 Liked Movies
liked(user06, american_beauty).
liked(user06, the_cotton_club).
liked(user06, down_from_the_mountain).
liked(user06, fargo).
liked(user06, the_godfather).
liked(user06, the_godfather_part_ii).
liked(user06, the_godfather_part_iii).
liked(user06, hearts_of_darkness_a_filmmaker_s_apocalypse).
liked(user06, intolerable_cruelty).
liked(user06, mission_impossible).
liked(user06, rumble_fish).
liked(user06, spies_like_us).
liked(user06, star_wars_episode_i__the_phantom_menace).
liked(user06, the_usual_suspects).
liked(user06, eight_legged_freaks).
liked(user06, just_cause).
liked(user06, match_point).
liked(user06, a_view_from_the_bridge).

% User 07
%% User 07 Social Network
friend_of(user07, user02).
friend_of(user07, user03).
friend_of(user07, user04).
friend_of(user07, user06).
friend_of(user07, user08).
friend_of(user07, user10).

%% User 07 Liked Movies
liked(user07, cq).
liked(user07, the_firm).
liked(user07, ghost_busters).
liked(user07, hail_caesar).
liked(user07, the_hudsucker_proxy).
liked(user07, lick_the_star).
liked(user07, the_man_who_wasn_t_there).
liked(user07, miller_s_crossing).
liked(user07, mission_impossible).
liked(user07, paris_je_t_aime).
liked(user07, torrance_rises).
liked(user07, the_virgin_suicides).
liked(user07, an_american_rhapsody).
liked(user07, the_black_dahlia).
liked(user07, ghost_world).
liked(user07, a_good_woman).
liked(user07, a_love_song_for_bobby_long).
liked(user07, a_view_from_the_bridge).

% User 08
%% User 08 Social Network
friend_of(user08, user02).
friend_of(user08, user03).
friend_of(user08, user07).
friend_of(user08, user10).

%% User 08 Liked Movies
liked(user08, barton_fink).
liked(user08, blade_runner).
liked(user08, blood_simple).
liked(user08, crimewave).
liked(user08, the_firm).
liked(user08, the_godfather).
liked(user08, hail_caesar).
liked(user08, intolerable_cruelty).
liked(user08, mission_impossible).

% User 09
%% User 09 Social Network
friend_of(user09, user01).
friend_of(user09, user05).
friend_of(user09, user06).
friend_of(user09, user10).

%% User 09 Liked Movies
liked(user09, eight_legged_freaks).
liked(user09, home_alone_3).
liked(user09, the_spongebob_squarepants_movie).

% User 10
%% User 10 Social Network
friend_of(user10, user01).
friend_of(user10, user02).
friend_of(user10, user06).
friend_of(user10, user07).
friend_of(user10, user08).
friend_of(user10, user09).

%% User 10 Liked Movies
liked(user10, anna).
liked(user10, the_firm).
liked(user10, girl_with_a_pearl_earring).
liked(user10, the_hudsucker_proxy).
liked(user10, inside_monkey_zetterland).
liked(user10, lost_in_translation).
liked(user10, the_man_who_wasn_t_there).
liked(user10, marie_antoinette).
liked(user10, miller_s_crossing).
liked(user10, peggy_sue_got_married).
liked(user10, raising_arizona).
liked(user10, spies_like_us).
liked(user10, fall).
liked(user10, the_horse_whisperer).
liked(user10, in_good_company).
liked(user10, the_island).
liked(user10, a_love_song_for_bobby_long).