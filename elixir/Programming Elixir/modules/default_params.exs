defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

Example.func 1, 1, 1, 1
Example.func 8, 8
Example.func 7, 7, 7

