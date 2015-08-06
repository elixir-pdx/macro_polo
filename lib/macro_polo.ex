defmodule MacroPolo do
  defmacro make_num(name = {name_atom, _, _}, num) do
    quote do

      defmacro unquote(name) do
        unquote(num)
      end

      defmacro unquote(name_atom)(partial_ast) do
        {method, env, args} = partial_ast
        # IO.inspect partial_ast
        {method, env, [unquote(num) | args]}
      end

    end
  end

  def plus(x,y) do
    x + y
  end

  def minus(x,y) do
    x - y
  end

  defmacro times(a,b) do
    case a do
      1 -> b
      _ ->
        {multiplier, _} = Code.eval_quoted(a)
        quote do
          plus(unquote(b), times(unquote(multiplier - 1), unquote(b)))
        end
    end
  end

  defmacro pow(a,b) do
    {exponent, _} = Code.eval_quoted(Macro.expand(b, __CALLER__))
    case b do
      0 -> 1
      1 -> a
      _ ->
        quote do
          times(unquote(a), pow(unquote(a),
                                unquote(exponent - 1)))
        end
    end
  end

end
