defmodule WordFreqCalculator do
  @moduledoc """
  Takes a string of text and returns a map where the keys are individual words
  and the values are the number of times each word appears in the text.

  - Ignore punctuation (you can assume words are separated by spaces)
  - Be case-insensitive (treat "Hello" and "hello" as the same word)
  - Ignore empty strings

  """

  def calculate("") do
    %{}
  end
end
