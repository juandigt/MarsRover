require_relative "../lib/direction"

describe "Direction" do

  it "Has a direction North" do
    d = Direction.new('N')
    expect(d.north?).to be(true)
  end

   it "Has a direction South" do
    d = Direction.new('S')
    expect(d.south?).to be(true)
  end

   it "Has a direction East" do
    d = Direction.new('E')
    expect(d.east?).to be(true)
  end

   it "Has a direction West" do
    d = Direction.new('W')
    expect(d.west?).to be(true)
  end

  describe "Can turn left" do

    it "Turn left change direction from N to W" do
      d = Direction.new('N')
      d.turn_left
      expect(d.dir).to eq("W")
    end

     it "Turn left change direction from E to N" do
      d = Direction.new('E')
      d.turn_left
      expect(d.dir).to eq("N")
    end

     it "Turn left change direction from S to E" do
      d = Direction.new('S')
      d.turn_left
      expect(d.dir).to eq("E")
    end

     it "Turn left change direction from W to S" do
      d = Direction.new('W')
      d.turn_left
      expect(d.dir).to eq("S")
    end
  end

  describe "Can turn right" do

    it "Turn right change direction from N to E" do
      d = Direction.new('N')
      d.turn_right
      expect(d.dir).to eq("E")
    end

     it "Turn right change direction from E to S" do
      d = Direction.new('E')
      d.turn_right
      expect(d.dir).to eq("S")
    end

     it "Turn right change direction from S to W" do
      d = Direction.new('S')
      d.turn_right
      expect(d.dir).to eq("W")
    end

     it "Turn right change direction from W to N" do
      d = Direction.new('W')
      d.turn_right
      expect(d.dir).to eq("N")
    end
  end
end
