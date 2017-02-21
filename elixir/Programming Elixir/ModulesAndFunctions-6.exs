defmodule Chop do
  def guess(actual, a..b), do: guess!(actual, a..b, div(b - a, 2) + a)

  defp guess!(actual, a..b, n) when actual == n do
    IO.puts "Is it #{n}"
    n
  end

  defp guess!(actual, a..b, n) when n > actual do
    IO.puts "Is it #{n} | #{a} ~ #{b} >"
    guess actual, a..n-1
  end

  defp guess!(actual, a..b, n) when n < actual do
    IO.puts "Is it #{n} | #{a} ~ #{b} <"
    guess actual, n+1..b
  end
end

IO.puts Chop.guess(273, 1..1000)
