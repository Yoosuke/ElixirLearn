defmodule Cards do

  def new do
    numbers = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    suits = ["Spade", "Clover", "Diamond", "Heart"]
    cards =
    for suit <- suits do
      for num <- numbers do
        "#{num}_of_#{suit}"
      end
    end
    cards
    |> List.flatten
    |> IO.inspect
  end

end

Cards.new
