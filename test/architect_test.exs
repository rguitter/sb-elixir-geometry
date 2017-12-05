defmodule ArchitectTest do
  use ExUnit.Case
  doctest Architect

  test "greets the world" do
    assert Architect.hello() == :world
  end
end
