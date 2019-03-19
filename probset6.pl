:- [social_network].
:- [ratings].

	
% Whether two movies (M1, M2) were released in the same year.

same_year(M1, M2) :-
	movie(M1, Year1), movie(M2, Year2),  Year1 == Year2, M1 \= M2. 
	
	
% The movie was released after year Y1 but before Y2 (inclusive).

released_between(Y1, Y2, M) :-
	movie(M, YearM), YearM >= Y1, YearM =< Y2.

% Person A has performed as role R. 

roles(A, R):-
	actor(_, A, R); actress(_, A, R).

% Person A was an actor, actress, or director in movie M

worked_on(A, M):-
	actor(M, A, _); actress(M, A,_); director(M, A).

% The actor or actress are in the same movie. Hint: A1 andl A2 should not be equal

co_star(A1, A2) :-
	actor(M, A1, _), actor(M, A2, _), A1 \= A2;
	actor(M, A1, _), actress(M, A2, _), A1\= A2;
	actress(M, A1, _), actor(M, A2, _), A1 \= A2;
	actress(M, A1, _), actress(M, A2, _), A1 \= A2.
	
% Person X has been in a movie directed by Y. Hint: you can re-use your worked_on predicate

directed_by(X, Y) :-
	worked_on(X, M), director(M, Y).

% !!!!!!!!!!!!!!!!!!!!!!!!!!!!
% PROBLEM SET 7 STUFF BELOW
% X is the User and Y is the movie
% Recommend movies that are higher than a 80 but not liked by the user. 
% Run with setof(X, Y^recomended_movie(<USER TO GET LIST FOR>, M),_).
% Implement setof as another predicate to use with rec movie. 
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!




rec_movie(X, Y) :-
	(friend_of(X, Friend), 
	liked(Friend, Y), 
	\+ liked(X, Y)), 
	rating(Y, R), 
	R >= 80.
	
% If they have a director / actor that appears more than once in their liked lists then recommend them movies that were directed or have that actor. Also consider
% using the movies that their friends liked with a specific actor 