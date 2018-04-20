require_relative "../lib/position"
require_relative "../lib/direction"

describe "Position" do
  it "Increase the y coordinate in one if it moves to North" do
    @position = Position.new("2", "3", Plateau.new("5 6"))
    @position.change_in(Direction.new("N"))
    expect(@position.y).to eq(4)
  end

  it "Decrease the y coordinate in one if it moves to South" do
    @position = Position.new("2", "3", Plateau.new("5 6"))
    @position.change_in(Direction.new("S"))
    expect(@position.y).to eq(2)
  end

  it "Increase the x coordinate in one if it moves to East" do
    @position = Position.new("2", "3", Plateau.new("5 6"))
    @position.change_in(Direction.new("E"))
    expect(@position.x).to eq(3)
  end

  it "Decrease the x coordinate in one if it moves to West" do
    @position = Position.new("2", "3", Plateau.new("5 6"))
    @position.change_in(Direction.new("W"))
    expect(@position.x).to eq(1)
  end
end
