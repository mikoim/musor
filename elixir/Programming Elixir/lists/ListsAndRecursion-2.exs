defmodule MyList do
  def max([head | tail]), do: _max(tail, head)
  defp _max([], n), do: n
  defp _max([head | tail], n) when head >= n, do: _max(tail, head)
  defp _max([_head | tail], n), do: _max(tail, n)
end

IO.puts MyList.max [63, 38, 53, 45, 21, 14, 18, 4, 65, 96]
