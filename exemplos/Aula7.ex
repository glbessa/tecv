# Load module
#   iex Aula7.ex
# Test
#   Aula7.custom_map([1,2,3,4], fn(x) -> x * x end)

defmodule Aula7 do
  def map([], _func), do: []
  def map([h|t], func) do
    [func.(h)] ++ map(t, func)
  end

  # Exercício 1
  def aplica_duas_vezes(func, value) do
    func.(func.(value))
  end

  # Exercício 2
  def iter(_func, 0, value), do: value
  def iter(func, i, value) do
    iter(func, i - 1, func.(value))
  end

  # Exercício 3
  def filter([], _func), do: []
  def filter([h|t], func) do
    cond do
      func.(h) == true -> [h] ++ filter(t, func)
      true -> filter(t, func)
    end
  end

  # Exercício 4
  def foldl([], acc, _func), do: acc
  def foldl([h|t], acc, func) do
    foldl(t, func.(acc, h), func)
  end

  # Exercício 5
  def foldr([], acc, _func), do: acc
  def foldr([h|t], acc, func) do
    func.(foldr(t, acc, func), h)
  end

  # Exercício 6
  def concatenar(list) do
    foldr(list, [], fn(x, y) -> x ++ y end)
  end

  # Exercício 7
  def somar_quadrados_positivos(list) do
    foldl(map(filter(list, fn(x) -> x >= 0 end), fn(x) -> x * x end), 0, fn(x, y) -> x + y end)
  end

  # Exercício 8
  def contar_elementos(list) do
    foldl(map(list, fn(_x) -> 1 end), 0, fn(x, y) -> x + y end)
  end

  # Exercício 9
  def contar_negativos(list) do
    foldl(map(filter(list, fn(x) -> x < 0 end), fn(_x) -> 1 end), 0, fn(x, y) -> x + y end)
  end

  # Exercício 10
  def somar_lista_lista(list) do
    foldl(map(list, fn(x) -> foldl(x, 0, fn(x, y) -> x + y end) end), 0, fn(x, y) -> x + y end)
  end
end
