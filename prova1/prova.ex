defmodule Prova do
  # Exercício 1
  def contar_neg([]), do: 0
  def contar_neg([h|t]) do
    cond do
      h < 0 -> 1 + contar_neg(t)
      true  -> contar_neg(t)
    end
  end

  # Exercício 2
  def mult_tuplas([]), do: []
  def mult_tuplas([h|t]) do
    {x, y} = h
    [x * y] ++ mult_tuplas(t)
  end

  # Exercício 3
  def drop(_n, []), do: []
  def drop(1, [_h|t]), do: t
  def drop(n, [_h|t]) do
    cond do
      n > 1 -> drop(n - 1, t)
      true  -> t
    end
  end

  # Exercício 4
  def get_item(_idx, []), do: IO.puts("Empty list!")
  def get_item(0, [h|_t]), do: h
  def get_item(idx, [_h|t]) do
    cond do
      idx > 0 -> get_item(idx - 1, t)
      true    -> IO.puts("Index out of bounds")
    end
  end

  # Exercício 5
  def m(x, []), do: x
  def m(x, [h|t]) do
    cond do
      x > h -> m(h, t)
      true  -> m(x, t)
    end
  end
  def menor([]) do
    IO.puts("Empty list!")
  end
  def menor([h|t]) do
    m(h, t)
  end
end
