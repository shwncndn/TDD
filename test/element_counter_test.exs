defmodule ElementCounterTest do
  use ExUnit.Case

  test "count occurrences in an empty list" do
    assert ElementCounter.count([], 5) == 0
  end

  test "count occurrences of an element not in the list" do
    assert ElementCounter.count([1, 2, 3], 5) == 0
  end

  test "count occurrences of an element that appears once" do
    assert ElementCounter.count([1, 2, 3, 4, 5], 3) == 1
  end

  test "count occurrences of an element that appears multiple times" do
    assert ElementCounter.count([1, 2, 3, 4, 5, 6, 7, 2, 2, 5, 6, 1], 2) == 3
  end
end
