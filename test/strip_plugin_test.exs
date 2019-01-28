defmodule StripPluginTest do
  use ExUnit.Case
  doctest StripPlugin

  test "greets the world" do
    assert StripPlugin.hello() == :world
  end
end
