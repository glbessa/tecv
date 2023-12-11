defmodule Lista1 do
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
  def elevado_dois()
end
