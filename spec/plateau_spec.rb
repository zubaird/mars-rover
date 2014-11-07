require 'spec_helper'

describe Rover::Plateau do
  before do
    pending('do the Coordinate first')
  end

  describe 'on initialize' do
    # xit builds a grid of 10 x 10 coordinates
    xit "has 100 coordinates" do
      plateau = Rover::Plateau.new
      expect(plateau.coordinates.size).to be == 100
    end

    xit "has only Coordinate objects" do
      plateau = Rover::Plateau.new
      coordinate_classes = plateau.coordinates.map(&:class).uniq

      expect(coordinate_classes.first).to be == Rover::Coordinate
      expect(coordinate_classes.length).to eq(1)
    end

    # this requires writing the method #include? for our plateau
    xit "includes a coordinate for the origin" do
      plateau = Rover::Plateau.new
      origin = Rover::Coordinate.new(0,0)

      expect( plateau.include?(origin) ).to be == true
    end

    xit "includes a coordinate for last grid location" do
      plateau = Rover::Plateau.new
      last_position = Rover::Coordinate.new(9,9)

      expect( plateau.include?(last_position) ).to be == true
    end
  end

  describe '#valid_coordinate?' do
    xit "will be false if the coordinate itself is not valid" do
      plateau = Rover::Plateau.new
      coordinate = Rover::Coordinate.new(0, -1)

      expect(plateau.valid_coordinate?(coordinate)).to be false
    end

    xit "will be false if the coordinate is not included in coordinates" do
      plateau = Rover::Plateau.new
      coordinate = Rover::Coordinate.new(22,50)

      expect(plateau.valid_coordinate?(coordinate)).to be == false
    end
  end
end
