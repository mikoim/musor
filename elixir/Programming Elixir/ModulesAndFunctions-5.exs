defmodule Recursive do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

IO.puts Recursive.gcd(3, 5)
IO.puts Recursive.gcd(3, 6)
