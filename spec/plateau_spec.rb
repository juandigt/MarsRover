require_relative "../lib/plateau"

describe "Plateau" do
  plateau = Plateau.new("6 6")
  it "has  limits" do
    expect(plateau.north_limit).to eq(6)
    expect(plateau.east_limit).to eq(6)
    expect(plateau.south_limit).to eq(0)
    expect(plateau.west_limit).to eq(0)
  end
end

