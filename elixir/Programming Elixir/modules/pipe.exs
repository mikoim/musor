defmodule Kawaisosu do
  def face(), do: "（´・ω・）"
  def nyan(text), do: text <> " ﾆｬｰﾝ"
end

su = Kawaisosu.face
     |> Kawaisosu.nyan

IO.inspect su

