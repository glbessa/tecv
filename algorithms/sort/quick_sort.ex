defmodule Sort.QuickSort do
  def less_than(x, []), do: []
  def less_than(x, [h|t]) do
    cond do
      x > h -> [h] ++ less_than(x, t)
      true  -> less_than(x, t)
    end
  end

  def greater_equal_than(x, []), do: []
  def greater_equal_than(x, [h|t]) do
    cond do
      x <= h -> [h] ++ greater_equal_than(x, t)
      true  -> greater_equal_than(x, t)
    end
  end

  def sort([]), do: []
  def sort([i]), do: [i]
  def sort([h|t]) do
    left = less_than(head, t)
    right = greater_equal_than(head, t)

    sort(left) ++ [head] ++ sort(right)
  end
end
