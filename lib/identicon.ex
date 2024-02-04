defmodule Identicon do
  @moduledoc """
    Creates an identicon images based on a string.
  """
  def main(input) do
    input
    |> hash_input()
    |> pick_color()
  end

  @doc """
    Returns a list of 16 integers based on a MD5 from a string.

    ## Examples

      iex> Identicon.hash_input("banana")
      %Identicon.Image{hex: [114, 179, 2, 191, 41, 122, 34, 138, 117, 115, 1, 35, 239, 239, 124, 65]}

  """
  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list()

    %Identicon.Image{hex: hex}
  end

  @doc """
    Returns the r,g,b numbers for the identicon's color

    ## Examples

      iex> image = Identicon.hash_input("banana")
      iex> Identicon.pick_color(image)
      [114, 179, 2]

  """
  def pick_color(image) do
    %Identicon.Image{hex: [r,g, b | _tail]} = image

    [r,g,b]
  end

end
