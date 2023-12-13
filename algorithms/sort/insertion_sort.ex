defmodule Sort.InsertionSort do
  def sort([]) do
    []
  end
  def sort([h|t]) do
    ins(h, sort(t))
  end
  def ins(x, []) do
    [x]
  end
  def ins(x, [h|t]) do
    cond do
      x <= h -> [x] ++ [h|t]
      true   -> [h] ++ ins(x, t)
    end
  end
end
