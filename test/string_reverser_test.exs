defmodule StringReverserTest do
  use ExUnit.Case

  test "reverse string is empty" do
    assert StringReverser.reverse("") == ""
  end

  test "reverse string successfully reverses" do
    assert StringReverser.reverse("elixir") == "rixile"
  end

  test "reverse single character" do
    assert StringReverser.reverse("e") == "e"
  end

  test "reverse a string with spaces" do
    assert StringReverser.reverse("hello world") == "dlrow olleh"
  end

  test "reverse a string with punctuation" do
    assert StringReverser.reverse("Hello, World!") == "!dlroW ,olleH"
  end
end
