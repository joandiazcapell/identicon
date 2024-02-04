defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "List of integers coming from a string into a MD5 coding" do

    %{hex: hex} = Identicon.hash_input("banana")
    assert length(hex) == 16
  end
end
