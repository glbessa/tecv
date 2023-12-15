defmodule Listas.Funcoes do
  # funcao que retorne se os quatro argumento sao iguais
  def quatro_iguais(a,b,c,d), do: a == b && b == c && c == d
  def quantos_iguais(a,b,c) do
    cond do
      a == b && b == c -> 3
      a != b && b != c -> 0
      true   -> 2
    end
  end
  def todos_diferentes(a,b,c), do: a != b && b != c && a != c
  # a verificacao a != b && b != c nao esta completa, ja que ainda eh preciso avaliar se a != c
  def tres_iguais(a,b,c), do: a == b && b == c
  def quantos_diferentes(a,b,c) do
    cond do
      todos_diferentes(a,b,c) -> 3
      tres_iguais(a,b,c) -> 0
      true -> 2
    end
  end
  def elevado_dois(n), do: n * n

  def elevado_quatro(n), do: elevado_dois(elevado_dois(n))

  def elevado_n(n, 0) when n != 0, do: 1
  def elevado_n(n, exp), do: n * elevado_n(n, exp - 1)

  def palindromo?(string) do
    String.reverse(string) == string
  end

  def verifica_triangulo(n1, n2, n3) do
    cond do
      n1 + n2 > n3 -> true
      true         -> false
    end
  end

  def sinal(n) do
    cond do
      n > 0 -> 1
      n == 0 -> 0
      n < 0 -> -1
    end
  end

  def menor(x, y) do
    cond do
      x > y -> y
      true  -> x
    end
  end

  def menor3(x, y, z), do: menor(menor(x, y), z)


end
