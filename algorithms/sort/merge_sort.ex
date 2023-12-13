defmodule Sort.MergeSort do
  defp merge([], []), do: []
  defp merge(l, []), do: l
  defp merge([], l), do: l
  #defpmerge([h1|t1], [h2|t2]) when h1 < h2 do
  #  [h1 | merge(t1, [h2|t2])]
  #end
  #defpmerge([h1|t1], [h2|t2]) when h1 >= h2 do
  #  [h2 | merge([h1|t1], t2)]
  #end
  defp merge([h1|t1], [h2|t2]) do
    cond do
      h1 < h2 -> [h1 | merge(t1, [h2|t2])]
      true    -> [h2 | merge([h1|t1], t2)]
    end
  end

  def sort([]), do: []
  def sort([i]), do: [i]
  def sort(list) do
    n = round(length(list) / 2)
    {left, right} = Enum.split(list, n)
    merge(sort(left), sort(right))
  end
end
