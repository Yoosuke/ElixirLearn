defmodule Tetris.Brick do
  defstruct [
    name: :i,
    location: {40, 0}, #{x, y}
    rotation: 0,
    refrection: false
  ]

  def new(), do: __struct__()

  def new_random() do
    %{
      name: random_name(),
      location: {40, 0},
      rotation: random_rotation(),
      refrection: random_refrection()
    }
  end

  def random_name(), do: Enum.random(~w(i l z o t)a)
#    ~w(i l z o t)a
    #|> Enum.shuffle()
    #|> List.first

  def random_rotation, do: Enum.random([0, 90, 180, 270])
  def random_refrection, do: Enum.random([false, true])
end
