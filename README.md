__elixir-pdx/macro_polo__

---
#Overview

This exercise is designed to be an introduction to Elixir's hygienic macros system which can be used for many things including some rich meta-programming.

The challenge is to create a natural language arithmetic calculator using macros. Such that instead of writing `2 + 2` you would write `two plus two`, or instead of `18 / 3` you'd write `eighteen divided by three`.

###Stretch goals:

- Return results from the expressions in natural language.
- Properly handle order of operations.
- Handle numbers all the way up to Trillions.

**Prerequisites:**
* [elixir](http://elixir-lang.org/install.html)

---

#Getting Started

###Clone this repository.
  
	$ cd ~/Repositories
	$ git clone https://github.com/elixir-pdx/macro_polo.git
	$ cd prime

#Hacking

You may find it helpful to play with your code in Elixir's `iex` interactive console. If you want to do that and autoload the console session with your code then you can do the following from the project root:

	$ iex -S mix

That will make sure that you're running `iex` inside your project's build environment.

#Building

To compile your project simply run this from the project root:

	$ mix compile

#Testing

To run the test suite defined in `test/macro_polo_test.exs` then run this from the project root:

	$ mix test
