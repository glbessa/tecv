defmodule Search.Binary do
  def take_after(n, []), do: []
  def take_after(0, [h|t]), do: t
  def take_after(n, [h|t]), do: take_after(n - 1, t)

  def take_before(n, []), do: []
  def take_before(0, [h|t]), do: [h]
  def take_before(n, [h|t]), do: [h] ++ take_before(n - 1, t)

  def s(_x, _pos, []), do: IO.puts("Couldn't find value!")
  def s(x, pos, [i]) do
    cond do
      x == i -> pos
      true   -> []
    end
  end
  def s(x, _pos, list) do
    n = round(length(list) / 2)
    left = take_before(n, list)
    [hr|tr] = take_after(n, list)

    cond do
      hr == x -> n + 1
      hr > x  -> s(x, n, left)
      true    -> s(x, n + 2, tr)
    end
  end
  def search(x, []), do: IO.puts("Empty list!")
  def search(x, list) do
    s(x, 0, list)
  end
end
