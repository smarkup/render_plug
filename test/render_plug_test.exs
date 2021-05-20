defmodule RenderPlugTest do
  use ExUnit.Case
  doctest RenderPlug

  test "greets the world" do
    assert RenderPlug.hello() == :world
  end
end
