defmodule Sort.MergeSort do

  def merge([h1|t1], [h2|t2]) do
    cond do
      h1 < h2 -> [h1|t1] ++ [h2|t2]
      true    -> [h2|t2] ++ [h1|t1]
    end
  end

  def sort([]), do: []
  def sort([i]), do: [i]
  def sort(list) do
    n = round(length(list) / 2)


end
