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

-module(twoorl_spa).
-export([bundle/1]).

bundle(Tag) ->
    case Tag of
	%% layout
	login -> <<"acceder">>;
	register -> <<"crear una cuenta">>;
	logged_in_as -> <<"conectado como">>;
	settings -> <<"configuraci�n">>;
	logout -> <<"salir">>;
	get_source ->
	    <<"Obtener el <a href=\"http://code.google.com/p/twoorl\">"
	     "c�digo fuente</a>">>;

	%% navbar
	home -> <<"inicio">>;
	replies -> <<"respuestas">>;
	me -> <<"yo">>;
	everyone -> <<"todos">>;

	%% login page
	login_cap -> <<"Acceder">>;
	username -> <<"nombre de usuario">>;
	password -> <<"contrase�a">>;
	not_member -> <<"No dispone de una cuenta?">>;
	login_submit -> <<"acceder">>;

	%% register page
	register_cap -> <<"Crear una cuenta">>;
	email -> <<"direcci�n de correo electr�nico">>;
	password2 -> <<"vuelve a introducir la contrase�a">>;
	already_member -> <<"Ya dispone de una cuenta?">>;

	%% home page
	upto -> <<"Qu� est�s haciendo?">>;
	twitter_msg -> <<"Env�o autom�tico a Twitter activado para "
			"mensajes sin respuestas">>;

	%% main page
	public_timeline -> <<"Cronograma p�blico">>;

	%% users page
	{no_user, Username} ->
	    [<<"El usuario '">>, Username, <<"' no existe">>];
	{timeline_of, Username} ->
	    [<<"Cronograma de">>, Username];
	following -> <<"siguiendo">>;
	followers -> <<"seguidores">>;
	follow -> <<"seguir">>;
	unfollow -> <<"no seguir m�s">>;

	%% friends page
	{friends_of, Userlink} ->
	    [<<"Gente que ">>, Userlink, <<" sigue">>];
	{followers_of, Userlink} ->
	    [<<"Seguidores de">>, Userlink];
	{no_friends, Username} ->
	    [Username, <<" no sigue a nadie">>];
	{no_followers, Username} ->
	    [Username, <<" no es seguido por nadie">>];


	%% settings page
	settings_cap -> <<"Configuraci�n">>; %% jdilelle says: can also be "Par�metros".
	use_gravatar -> <<"Usar un <a href=\"http://gravatar.com\" "
			 "target=\"_blank\">Gravatar</a>?">>;
	profile_bg -> <<"Fondo de pantalla de tu perfil">>;
	profile_bg_help ->
	    <<"Proporcione el URL de la im�gen de fondo de pantalla "
	     "(dejar vac�o para usar el fondo de pantalla por defecto):">>;
	twitter_help ->
	    <<"Puedes proporcionar los detalles de tu cuenta Twitter para que tus "
	     "twoorls sean enviados autom�ticamente a Twitter.<br/><br/>"
	     "S�lo los twoorls sin respuestas (por ejemplo"
	     "\"@sergey\") ser�n enviados a Twitter.">>;
	twitter_username -> <<"Nombre de usuario Twitter:">>;
	twitter_password -> <<"Contrase�a Twitter:">>;
	twitter_auto -> <<"Enviar autom�ticamente mis Twoorls a Twitter?">>; %% jdilelle says: 'Twools' vs 'twools' ?
	submit -> <<"enviar">>;
	
	%% error messages
	{missing_field, Field} ->
	    [<<"El campo ">>, Field, <<" es requerido">>];
	{username, Val} ->
	    [<<"En nombre de usuario '">>, Val, <<"' no est� disponible">>];
	{invalid_username, Val} ->
	    [<<"El nombre de usuatio '">>, Val,
	     <<"' no es v�lido. Se aceptan solo letras, n�meros y rayita de subrayado ('_') ">>];
	invalid_login ->
	    <<"Nombre de usuario o contrase�a inv�lidas">>;
	{too_short, Field, Min} ->
	    [<<"El campo ">>, Field, <<" es demasiado corto (">>, Min,
	     <<" chars minimum)">>];
	password_mismatch ->
	    <<"Las contrase�as no coinciden">>;
	twitter_unauthorized ->
	    <<"Twitter no ha aceptado el nombre de usuario y contrase�a que "
	     "has proporcionado">>;
	twitter_authorization_error ->
	    <<"Fallo conectandose a Twitter. Por favor vuelva a intentar m�s tarde.">>;
	{invalid_url, Field} ->
	    [<<"El campo URL ">>, Field, <<" debe comenzar con 'http://'">>];
	
	%% confirmation messages
	settings_updated ->
	    [<<"Su configuraci�n ha sido aplicada">>]
    end.
