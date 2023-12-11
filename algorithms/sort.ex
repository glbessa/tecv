defmodule Sort do
  def insertion_sort([]) do
    []
  end
  def insertion_sort([h|t]) do
    ins(h, insertion_sort(t))
  end
  def ins(x, []) do
    [x]
  end
  def ins(x, [h|t]) do
    cond do
      x <= h -> [x|[h|t]]
      true   -> [h|ins(x,t)]
    end
  end

  def quick_sort([]) do
    []
  end
  def quick_sort([h|t]) do
  end

  def merge_sort([]) do
    []
  end
  def merge_sort([h|t]) do
  end
  def merge_step() do
  end
end
