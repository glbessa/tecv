defmodule Fat do
  def fat(n) when n <= 0 do
    1
  end
  def fat(n) do
    n * fat(n - 1)
  end
end

defmodule Vendas do
