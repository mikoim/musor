defmodule MyList do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)
end

IO.puts MyList.len([1,2,3,4,5])
IO.puts MyList.map([1,2,3,4,5], &(&1 + &1))
IO.puts MyList.sum([1,2,3,4,5])
