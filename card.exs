defmodule Cards do

  def new do
    numbers = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    suits = ["Spade", "Clover", "Diamond", "Heart"]
    for num <- numbers, suit <- suits do
      IO.puts("#{num}_of_#{suit}")
    end
  end

end

Cards.new
