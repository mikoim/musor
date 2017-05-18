prefix = fn a -> fn b -> "#{a} #{b}" end end

IO.puts prefix.("Elixir").("Rocks")
