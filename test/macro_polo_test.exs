defmodule MacroPoloTest do
  use ExUnit.Case

	test "the macro truth" do
		quoted = quote do 1 - 1 end

		{result, _} = Code.eval_quoted(quoted)
		assert result == 0
	end
	
  test "the macroier truth" do
		quoted = quote do
			number = 1
			number - number 
		end
		
		{result, _} = Code.eval_quoted(quoted)
		assert result == 0
  end

	# test "compile-time errors" do
	# 	number - number
	# end

	test "macro-time party" do
		quoted = quote do number - number end
	end
end
