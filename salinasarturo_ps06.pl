:- [social_network].
:- [ratings].
:- multifile 
	friendof/2,
	liked/2.
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Demonstration Users
% !!!!!!!!!!!!!!!!!!!!!!!!!!!
liked(alex, fall).
liked(alex, north).

friendof(alex, ben). 
friendof(alex, cathy).
friendof(alex, dan).



liked(ellie, the_godfather). 

% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% PROBLEM SET 6 
% X is the User and Y is the movie
% Recommend movies that are higher than a 80 but not liked by the user. 
% Run with setof(X, Y^recomended_movie(<USER TO GET LIST FOR>, M),_).
% Implement setof or bagof as another predicate to use with rec movie. 
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!



reco(X, Y) :-
	(friend_of(X, Friend), 
	liked(Friend, Y), 
	\+ liked(X, Y)), 
	rating(Y, R), 
	R >= 80.

recommend_movie(X, Y) :-
%	bagof(X, Y^reco(X, Y), Y).
	reco(X, Y).
