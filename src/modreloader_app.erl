%% @author author <author@example.com>

-module(modreloader_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).

start(_Type, _StartArgs) ->
	{ok, Pid} = modreloader_sup:start_link(),
    {ok, Pid}.

stop(_State) ->
    ok.
