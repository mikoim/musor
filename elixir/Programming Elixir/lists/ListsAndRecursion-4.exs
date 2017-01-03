defmodule MyList do
  def span(from, to), do: _span [to], from
  defp _span(list = [from | _], from), do: list
  defp _span(list = [head | _], from), do: _span([head - 1 | list], from)

  def span!(from, to), do: Enum.to_list(from..to)
end

MyList.span(300, 305)
MyList.span!(300, 305)
