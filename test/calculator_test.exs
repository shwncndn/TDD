defmodule CalculatorTest do
  use ExUnit.Case

  test "add two positive numbers" do
    assert Calculator.add(2, 3) == 5
  end
end
