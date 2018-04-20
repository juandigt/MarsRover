require_relative "../lib/rover"
require_relative "../lib/plateau"
require_relative "../lib/position"
require_relative "../lib/direction"

describe Rover do

  describe "Rover has initial position and direction" do
    plateau = Plateau.new("6 6")
    rover = Rover.new('2 3 N', plateau)

    it "Has initial coordinates and direction '2 3 N'" do
      actual = rover.position_and_direction
      expected = "2 3 N"
      expect(actual).to eq(expected)
    end
  end

  describe "Rover can explore and move" do
    plateau = Plateau.new("6 6")
    rover = Rover.new('2 3 N', plateau)

    it "Can explore" do
      actual = rover.explore('MML')
      expected = "2 5 W"
      expect(rover.position_and_direction).to eq(expected)
    end

    it "Can move North" do
      rover = Rover.new('2 3 N', plateau)
      actual = rover.explore('M')
      expected = "2 4 N"
      expect(rover.position_and_direction).to eq(expected)
    end

    it "Can move South" do
      rover = Rover.new('2 3 S', plateau)
      actual = rover.explore('M')
      expected = "2 2 S"
      expect(rover.position_and_direction).to eq(expected)
    end

    it "Can move East" do
      rover = Rover.new('2 3 E', plateau)
      actual = rover.explore('M')
      expected = "3 3 E"
      expect(rover.position_and_direction).to eq(expected)
    end

    it "Can move West" do
      rover = Rover.new('2 3 W', plateau)
      actual = rover.explore('M')
      expected = "1 3 W"
      expect(rover.position_and_direction).to eq(expected)
    end
  end

  describe "Rover is able to rotate" do
    plateau = Plateau.new("6 6")

    it "Can rotate left" do
      rover = Rover.new('2 3 N', plateau)
      actual = rover.explore('L')
      expected = "2 3 W"
      expect(rover.position_and_direction).to eq(expected)
    end

    it "Can rotate right" do
      rover = Rover.new('2 3 N', plateau)
      actual = rover.explore('R')
      expected = "2 3 E"
      expect(rover.position_and_direction).to eq(expected)
    end
  end

  describe "Rover can not move outside the plateau" do
    it "Can't be outside the plateau" do
      plateau = Plateau.new("6 6")
      rover = Rover.new('5 5 N', plateau)
      actual = rover.explore('MM')
      expect(rover.movement_impossible?).to be(true)
    end
  end
end
