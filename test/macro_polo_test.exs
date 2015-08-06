defmodule MacroPoloTest do
  import MacroPolo
  use ExUnit.Case


  make_num(zero      , 0)
  make_num(one       , 1)
  make_num(two       , 2)
  make_num(three     , 3)
  make_num(four      , 4)
  make_num(five      , 5)
  make_num(six       , 6)
  make_num(seven     , 7)
  make_num(eight     , 8)
  make_num(nine      , 9)
  make_num(ten       , 10)
  make_num(eleven    , 11)
  make_num(twelve    , 12)
  make_num(thirteen  , 13)
  make_num(fourteen  , 14)
  make_num(fifteen   , 15)
  make_num(sixteen   , 16)
  make_num(seventeen , 17)
  make_num(eighteen  , 18)
  make_num(nineteen  , 19)

  # test "one" do
  #   x = one plus one
  #   assert x == two
  # end

  # test "two plus two" do
  #   x = two plus two
  #   assert x == four
  # end
  # test "moar math" do
  #   x = five plus eight
  #   assert x == 13
  # end

  # test "moar MOAR math" do
  #   x = two plus two plus two
  #   assert x == 6
  # end

  test "times" do
    # m0 = quote do three times three end
    # m1 =  Macro.expand_once(m0,  __ENV__)
    # m2 =  Macro.expand_once(m1,  __ENV__)
    # m3 =  Macro.expand_once(m2,  __ENV__)

    # IO.inspect m0
    # IO.inspect m1
    # IO.inspect m2
    # IO.inspect m3

    x = three times three
    assert x == 9
  end

  # test "times" do
  #   x = two plus two times three
  #   assert x == 6
  # end
  test "pow" do
    x = two pow three
    assert x == 8
  end



	# test "the macro truth" do
	# 	quoted = quote do 1 - 1 end

	# 	{result, _} = Code.eval_quoted(quoted)
	# 	assert result == 0
	# end

  # test "the macroier truth" do
	# 	quoted = quote do
	# 		number = 1
	# 		number - number 
	# 	end

	# 	{result, _} = Code.eval_quoted(quoted)
	# 	assert result == 0
  # end

	# # test "compile-time errors" do
	# # 	number - number
	# # end

	# test "macro-time party" do
	# 	quoted = quote do number - number end
	# end



end
