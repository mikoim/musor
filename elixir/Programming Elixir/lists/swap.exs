defmodule Swapper do
  def swap([]), do: []
  def swap([ a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise "Can’t swap a list with an odd number of elements"
end

IO.puts Swapper.swap 'ab'
IO.puts Swapper.swap 'abcd'

IO.puts Swapper.swap 'abc'
