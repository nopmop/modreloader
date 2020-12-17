-module(modreloader).

-export([start/0, 
         start_link/0, 
         stop/0
        ]).

-compile([export_all]).

-define(APPNAME, modreloader).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.
    
start_link() ->
    {ok, Deps} = application:get_key(?APPNAME, applications),
    [ensure_started(Dep) || Dep <- Deps],
    application:start(?APPNAME).

start() ->
    ok = application:load(?APPNAME), 
    {ok, Deps} = application:get_key(?APPNAME, applications),
    [ensure_started(Dep) || Dep <- Deps],
    application:start(?APPNAME).

stop() ->
    application:stop(?APPNAME).

