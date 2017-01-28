fizz_buzz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,x -> x
end

foobar = fn(n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts foobar.(10)
IO.puts foobar.(11)
IO.puts foobar.(12)
IO.puts foobar.(13)
IO.puts foobar.(14)
IO.puts foobar.(15)
IO.puts foobar.(16)
