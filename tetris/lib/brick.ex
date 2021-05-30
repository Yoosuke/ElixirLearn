defmodule Tetris.Brick do
  defstruct [
    name: :i,
    location: {40, 0}, #{x, y}
    rotation: 0,
    refrection: false
  ]

  def new(), do: __struct__()

  def new_random() do
    %__MODULE__{
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


  def down(brick) do
    %{brick | location: point_down(brick.location)}
  end

  def point_down({x, y})do
    {x, y + 1}
  end

  def right(brick) do
    %{brick | location: point_right(brick.location)}
  end

  def point_right({x, y})do
    { x + 1 , y}
  end
  def left(brick) do
    %{brick | location: point_left(brick.location)}
  end

  def point_left({x, y})do
    {x - 1, y}
  end

  def spin_90(brick) do
    %{brick| rotation: rotate(brick.rotation)}
  end

  def rotate(270), do: 0
  def rotate(degrees), do: degrees + 90


end
