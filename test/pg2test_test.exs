defmodule Pg2testTest do
  use ExUnit.Case
  doctest Pg2test

  test "greets the world" do
    assert Pg2test.hello() == :world
  end
end
