%% This file is part of Twoorl.
%% 
%% Twoorl is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%% 
%% Twoorl is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% along with Twoorl.  If not, see <http://www.gnu.org/licenses/>.

-module(twoorl_sv).
-export([bundle/1]).

bundle(Tag) ->
    case Tag of
	
	language -> <<"svenska">>;
	
	%% layout
	login -> <<"logga in">>;
	register -> <<"registrera">>;
	logged_in_as -> <<"inloggad som">>;
	settings -> <<"inst�llningar">>;
	logout -> <<"logga ut">>;
	get_source ->
	    <<"H�mta <a href=\"http://code.google.com/p/twoorl\">"
	     "k�llkoden</a>">>;
	
	%% navbar
	home -> <<"hem">>;
	replies -> <<"svar">>;
	me -> <<"jag">>;
	everyone -> <<"alla">>;

	%% login page
	login_cap -> <<"Logga in">>;
	username -> <<"anv�ndarnamn">>;
	password -> <<"l�senord">>;
	not_member -> <<"Inte medlem?">>;
	login_submit -> <<"logga in">>;

	%% register page
	% note: 'username', 'password' and 'Login_cap' are taken from
	% login page section
	register_cap -> <<"Registrera">>;
	email -> <<"e-post">>;
	password2 -> <<"upprepa l�senord">>;
	already_member -> <<"Redan medlem?">>;

	%% home page
	upto -> <<"Vad pysslar du med?">>;
	twitter_msg -> <<"Automatisk postning till Twitter aktiverat f�r "
			"icke-svar">>;
	send -> <<"skicka">>;

	%% main page
	public_timeline -> <<"Publik tidslinje">>;

	%% users page
	{no_user, Username} ->
	    [<<"Anv�ndaren '">>, Username, <<"' finns inte">>];
	{timeline_of, Username} ->
	    [Username, <<" tidslinje">>];
	following -> <<"f�ljer">>;
	followers -> <<"f�rf�ljare">>;
	follow -> <<"f�lj">>;
	unfollow -> <<"of�lj">>;

	%% friends page
	{friends_of, Userlink} ->
	    [<<"M�nniskor ">>, Userlink, <<" f�ljer">>];
	{followers_of, Userlink} ->
	    [Userlink, <<" f�rf�ljare">>];
	{no_friends, Username} ->
	    [Username, <<" f�ljer ingen">>];
	{no_followers, Username} ->
	    [Username, <<" har inga f�rf�ljare">>];


	%% settings page
	settings_cap -> <<"Inst�llningar">>;
	use_gravatar -> <<"Anv�nd <a href=\"http://gravatar.com\" "
			 "target=\"_blank\">Gravatar</a>?">>;
	profile_bg -> <<"Profilbakgrund">>;
	profile_bg_help ->
	    <<"Skriv in url.en f�r din profilbakgrundsbild "
	     "(l�mna blankt f�r att anv�nda standardbakgrunden):">>;
	twitter_help ->
	    <<"Du kan tillhandah�lla dina Twitterkontouppgifter f�r att f�"
	     "dina twoorls automatiskt postade till Twitter.<br/><br/>"
	     "Bara twoorls som inte inneh�ller svar (ex."
	     "\"@sergey\") kommer att postas till Twitter">>;
	twitter_username -> <<"Twitter anv�ndarnamn:">>;
	twitter_password -> <<"Twitter l�senord:">>;
	twitter_auto -> <<"Posta automatiskt mina Twoorls till Twitter?">>;
	submit -> <<"skicka">>;
	
	%% error messages
	{missing_field, Field} ->
	    [<<"">>, Field, <<" f�ltet �r obligatoriskt">>];
	{username_taken, Val} ->
	    [<<"Anv�ndarnamnet '">>, Val, <<"' �r taget">>];
	{invalid_username, Val} ->
	    [<<"Anv�ndarnamnet '">>, Val,
	     <<"' �r ogiltigt. Enbart bokst�ver, nummer och understreck ('_') "
	      " �r till�tna">>];
	invalid_login ->
	    <<"Ogiltigt anv�ndarnamn eller l�senord">>;
	{too_short, Field, Min} ->
	    [<<"">>, Field, <<" �r f�r kort (">>, Min,
	     <<" tecken minst)">>];
	password_mismatch ->
	    <<"L�senorden matchade inte">>;
	twitter_unauthorized ->
	    <<"Twitter ratade anv�ndarnamn/l�senords kombinationen du "
	     "tillhandah�ll">>;
	twitter_authorization_error ->
	    <<"Kund einte koppla upp mot Twitter. Var v�nlig f�rs�k igen senare.">>;
	{invalid_url, Field} ->
	    [<<"">>, Field, <<" URL:en m�ste b�rja med 'http://'">>];
	
	%% confirmation messages
	settings_updated ->
	    [<<"Dina inst�llningar har uppdaterats framg�ngsrikt">>];

	%% miscellaneous
	{seconds_ago, Val} -> [Val, <<" sekunder sedan">>];
	{minutes_ago, Val} -> [Val, <<" minuter sedan">>];
	{hours_ago, Val} -> [Val, <<" timmar sedan">>];
	{days_ago, Val} -> [Val, <<" dagar sedan">>]
    end.
