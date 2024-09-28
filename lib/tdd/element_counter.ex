defmodule ElementCounter do
  @moduledoc """
  Counts the occurrences of a specific element in a list.

  """
  def count(list, element) do
    Enum.count(list, fn x -> x == element end)
  end
end
