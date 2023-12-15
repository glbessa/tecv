defmodule Listas.Tuplas do
  def mini(x, y) when x > y, do: y
  def mini(x, y) when x <= y, do: x

  def maxi(x, y) when x < y, do: y
  def maxi(x, y) when x >= y, do: x

  def soma_tuplas({{n1, n2}, {n3, n4}}), do: n1 + n2 + n3 + n4

  def shift({{x, y}, z}), do: {x, {y, z}}

  def min_e_max(x, y, z) do
    {mini(mini(x, y), z), maxi(maxi(x, y), z)}
  end

  def soma_lista_tuplas([]), do: 0
  def soma_lista_tuplas([h|t]) do
    {x, y} = h
    x + y + soma_lista_tuplas(t)
  end

  def zip([], []), do: []
  def zip([], list), do: []
  def zip(list, []), do: []
  def zip([h1|t1], [h2|t2]) do
    [{h1, h2}] ++ zip(t1, t2)
  end

  def zip3([], [], []), do: []
  def zip3([], [], list), do: []
  def zip3([], list, []), do: []
  def zip3(list, [], []), do: []
  def zip3([], list, list), do: []
  def zip3(list, list, []), do: []
  def zip3(list, [], list), do: []
  def zip3([h1|t1], [h2|t2], [h3|t3]) do
    [{h1, h2, h3}] ++ zip3(t1, t2, t3)
  end

  defp unzip_esq([]), do: []
  defp unzip_esq([h|t]) do
    {x, _y} = h
    [x] ++ unzip_esq(t)
  end

  defp unzip_dir([]), do: []
  defp unzip_dir([h|t]) do
    {_x, y} = h
    [y] ++ unzip_dir(t)
  end

  def unzip([]), do: []
  def unzip(list) do
    {unzip_esq(list), unzip_dir(list)}
  end
end
