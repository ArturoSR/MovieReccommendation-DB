:- [social_network].
:- [ratings].
:- multifile 
	friendof/2,
	liked/2.
:- discontiguous
        friend_of/2,
        liked/2.
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Demonstration Users
% !!!!!!!!!!!!!!!!!!!!!!!!!!!


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

	
