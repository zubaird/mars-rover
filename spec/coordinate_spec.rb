require 'spec_helper'


describe Rover::Coordinate do

  describe 'after initialization' do
    xit "has an x coordinate" do
      coordinate = Rover::Coordinate.new(1, 3)
      expect(coordinate.x).to be == 1
    end

    xit "has an y coordinate" do
      coordinate = Rover::Coordinate.new(1, 3)
      expect(coordinate.y).to be == 3
    end
  end

  describe '#valid?' do
    xit "is true when the x and y are greater than or equal to 0" do
      coordinate = Rover::Coordinate.new(1, 1)
      expect(coordinate.valid?).to be true
    end

    xit "is false when the x coordinate is less than 0" do
      coordinate = Rover::Coordinate.new(-1, 1)
      expect(coordinate.valid?).to be false
    end

    xit "is false when the y coordinate is less than 0" do
      coordinate = Rover::Coordinate.new(1, -1)
      expect(coordinate.valid?).to be false
    end
  end

  xit "#east will return a new coordinate with the same y, but an x that is one greater" do
    coordinate = Rover::Coordinate.new(3,3)
    eastern_coordinate = coordinate.east
    expect(eastern_coordinate.x).to be == 4
    expect(eastern_coordinate.y).to be == 3
  end

  xit "#west will return a new coordinate with the same y, but an x that is one less" do
    coordinate = Rover::Coordinate.new(3,3)
    eastern_coordinate = coordinate.west
    expect(eastern_coordinate.x).to be == 2
    expect(eastern_coordinate.y).to be == 3
  end

  xit "#south will return a new coordinate with one less in the y direction, but an x is same" do
    coordinate = Rover::Coordinate.new(3,3)
    eastern_coordinate = coordinate.south
    expect(eastern_coordinate.x).to be == 3
    expect(eastern_coordinate.y).to be == 2
  end

  xit "#north will return a new coordinate with one greater in the y direction, but an x is same" do
    coordinate = Rover::Coordinate.new(3,3)
    eastern_coordinate = coordinate.north
    expect(eastern_coordinate.x).to be == 3
    expect(eastern_coordinate.y).to be == 4
  end

  describe '#==' do
    # look at tests for Card and try to reproduce == tests
  end
end
