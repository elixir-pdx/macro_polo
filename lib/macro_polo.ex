defmodule MacroPolo do
	defmacro eval(ast_fragment) do
		quote do
			unquote(ast_fragment)
		end
	end
end
