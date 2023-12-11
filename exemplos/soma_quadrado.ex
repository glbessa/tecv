m = [1,2,3,4,5,6]

r = m
|> Enum.map(fn x -> x * x end)
|> Enum.reduce(0,fn x, y -> x + y end)

IO.puts r
