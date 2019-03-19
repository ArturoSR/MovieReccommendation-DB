:- [social_network].
:- [ratings].


% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Demonstration Users
% !!!!!!!!!!!!!!!!!!!!!!!!!!!

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

rec_movie(X, Y) :-
%	bagof(Y, Y^reco(X, Y), Y).
	reco(X, Y).
