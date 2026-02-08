defmodule LangchainElixirTest do
  use ExUnit.Case
  doctest LangchainElixir

  test "greets the world" do
    assert LangchainElixir.hello() == :world
  end
end
