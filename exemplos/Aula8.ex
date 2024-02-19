# Load module
#   iex Aula8.ex
# Test
#

defmodule Aula8 do
  # Exercício 1
  def contar_positivos(l) do
    l
    |>
    Enum.filter(fn(x) -> x > 0 end)
    |>
    Enum.map(fn(_x) -> 1 end)
    |>
    Enum.reduce(0, fn(x,y) -> x + y end)
  end

  # Exercício 2
  def estoque_maior_que_5(produtos) do
    produtos
    |>
    Enum.filter(fn({_nome, quant, _preco}) -> quant > 5 end)
    |>
    Enum.map(fn({nome, quant, preco}) -> {nome, quant, preco * 0.9} end)
  end

  # Exercício 3
  def valor_em_estoque(produtos) do
    produtos
    |>
    Enum.map(fn({_nome, quant, preco}) -> quant * preco end)
    |>
    Enum.reduce(0, fn(x,y) -> x + y end)
  end
end
