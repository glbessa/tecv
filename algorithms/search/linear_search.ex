defmodule Search.Linear do
  def s(x, pos, []), do: IO.puts("Couldn't find element!")
  def s(x, pos, [h|t]) do
    cond do
      x == h -> pos
      true   -> s(x, pos + 1, t)
    end
  end

  def search(x, []), do: IO.puts("Empty list!")
  def search(x, list) do
    s(x, 0, list)
  end
end
