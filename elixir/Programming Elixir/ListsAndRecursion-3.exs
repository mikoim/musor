defmodule MyList do
  def ceasar(list, n), do: _ceasar(list, n)
  defp _ceasar([], _n), do: []
  defp _ceasar([head | tail], n), do: [97 + mod(7 + n + head, 26) | _ceasar(tail, n)]

  def mod(m, n), do: m - n * div(m, n)
end

IO.puts MyList.ceasar('ryvkve', 13)
