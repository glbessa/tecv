defmodule Exemplo do
  def maior_de_idade(idade) do
    idade >= 18
  end
  def quadrado(x) do
    x*x
  end
  def menor(x,y) do
    cond do
      x >= y -> y
      y > x -> x
    end
  end
  def eh_par(x) do
    cond do
      rem(x, 2) === 0 -> true
      true -> false
    end
  end
  def eh_par2(x) do
    rem(x, 2) === 0
  end
  def eh_par3(x), do: rem(x, 2) === 0
  def maior(x, y) when x >= y do
    x
  end
  def maior(x, y) when x < y do
    y
  end
  def valor_absoluto(x) do
    cond do
      x < 0 -> -x
      x == 0 -> x
      x > 0 -> x
    end
  end
  def tres_iguais(a,b,c), do: a==b && b ==c
end
