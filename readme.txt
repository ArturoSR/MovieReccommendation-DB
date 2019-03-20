DATA EXPLORATION
1)
	# users in the social network = 10
	# movies = 64
	# directors (non-unique) = 100
	# actors (non-unique) = 1850
	# actresses (non-unique) = 895
	
	The movies that no-one liked are 'The Outsiders' and 'If Lucy Fell'
	
	The most liked movie is 'Mission Impossible'.
	Other well liked movies are:
	- 'Spies Like Us'
	- 'Star Wars Episode 1: The Phantom Menace'
	- 'The Usual Suspects'
	- 'The Virgin Suicides'
	- 'American Beauty'
	- 'Eight Legged Freaks'
	- 'Fargo'
	- 'The Firm'
	- 'Ghost World'
	- 'The Godfather'
	- 'The Ladykillers'
	
	The least liked films (not counting the ones not liked at all) are:
	- an_american_rhapsody
	- anna
	- the_black_dahlia
	- cq
	- fall
	- frankenweenie
	- a_good_woman
	- in_good_company
	- the_island
	- just_cause
	- lick_the_star 
	- manny__lo
	- marie_antoinette
	- match_point
	- my_brother_the_pig
	- north
	- paris_je_t_aime
	- the_perfect_score
	- torrance_rises
	- untitled_woody_allen_fall_project_2006
	
	The actors that appear in some of the most well liked movies but not much frequency are
	- Tom Cruise: The Firm & Mission Impossible 
	- Frank Oz: Star Wars 1 & spies like us
	- Kevin Spacey: American Beauty and & The Usual Suspects
	- Thora Birch: Ghost World & American Beauty
	
	Actors/Actresses/Directors with more than 5 appearances in movies:
	- Sofia Coppola: popular works are Virgin Suicides & Star Wars 1 & the Godfather
	- Scarlett Johansson: popular works are Eight Legged Freaks & Ghost World
	- Steve Buscemi: popular works are Fargo & Ghost World
	- John Goodman 
	- Roman Coppola
	- Francis Ford Coppola
	- Ethan Coen
	- Joel Coen
	- Frances McDormand
	- Holly Hunter 
	- Bruce Campbell
	- Jon Polito
	

	% TALK ABOUT HOW COMPLETELY IRRELEVANT MOVIES LIKE BARBIE DREAM HOUSE WILL BE AVOIDED BECAUSE OF LOW RATING IN README.

IMPLEMENTATION JUSTIFICATION 
2) I gathered the information on the ratings of all of the movies that were in the movies.pl and added them to a seperate file.
 I did this because I believed that to help the user be more social on the social network but to also not waste their time they
 should be recommended to watch movies that their friends have liked and but that they have yet to see or like. The ratings are in 
 place so that the user is only recommended movies that meet the previous criteria but that are also generally well received. At the
 end of it even if the movie was not to the user's taste having watched a well received movie would give them more to talk about
 and ultimately it would allow them to be more social by giving them a popular thing to talk about and for them to have formed some opinion on.
 The main benefit from this algorithm as you can see is that it encourages the user to be more social and potentially build more connections.
 