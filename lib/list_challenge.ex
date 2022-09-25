defmodule ListChallenge do
  def call(list) do
    list
    |> Enum.filter(fn x ->
      if is_number(x),
        do: rem(x, 2) != 0,
        else: false
    end)
    |> Enum.count()
  end
end
