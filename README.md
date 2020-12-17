# Modreloader

Automatically reload Erlang modules once they get compiled.

Original module by: Matthew Dempsky <matthew@mochimedia.com>, part of (Mochiweb)[https://github.com/mochi/mochiweb]


<!-- REQUIREMENTS -->
### Requirements

Runtime:

* [Erlang](https://erlang.org)


<!-- GETTING STARTED -->
### Getting Started

1. After having cloned the repo into your applications tree (```_checkouts``` assuming you have ```rebar3```) add it to the boot sequence of your application via ```rebar.config``` like so:
   ```sh
   {relx, [{release, { <your app>, "0.1.0" }, [
			...
			modreloader,
			...
			<your app>
		]},
	    ...
	    ]
}.
```

2. or, in alternative, start it manually:
  ```sh
  applications:start(modreloader).
  ```  

3. recompile some modules and see that they will be reloaded automatically (only works for modules that have been loaded by the Erlang _code server_ at least once).


<!-- LICENSE -->
### License

Same as [Mochiweb](https://github.com/mochi/mochiweb)
