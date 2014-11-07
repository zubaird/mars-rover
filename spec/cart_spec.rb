require 'spec_helper'

describe Rover::Cart do
  before do
    pending('do the coordinate and plateau before doing this one')
  end

  describe 'on initialize' do

    # stretch: how could you move some of this code into a shared test setup
    # space so that there isn't so much duplication

    xit "reports its coordinate" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :north
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)

      expect(cart.coordinate).to be == coordinate
    end

    xit "reports its initial direction" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :north
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)

      expect(cart.direction).to be == :north
    end
  end

  describe "#rotate" do
    xit "will change the direction from :north to :east when provided 'R'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :north
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('R')

      expect(cart.direction).to be == :east
    end

    xit "will change the direction from :east to :south when provided 'R'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :east
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('R')

      expect(cart.direction).to be == :south
    end

    xit "will change the direction from :south to :west when provided 'R'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :south
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('R')

      expect(cart.direction).to be == :west
    end

    xit "will change the direction from :west to :north when provided 'R'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :west
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('R')

      expect(cart.direction).to be == :north
    end

    xit "will change the direction from :north to :west when provided 'L'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :north
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('L')

      expect(cart.direction).to be == :west
    end

    xit "will change the direction from :west to :south when provided 'L'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :west
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('L')

      expect(cart.direction).to be == :south
    end

    xit "will change the direction from :south to :east when provided 'L'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :south
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('L')

      expect(cart.direction).to be == :east
    end

    xit "will change the direction from :east to :north when provided 'L'" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :east
      plateau = Rover::Plateau.new

      cart = Rover::Cart.new(coordinate, direction, plateau)
      cart.rotate('L')

      expect(cart.direction).to be == :north
    end
  end

  describe '#move' do
    xit "will have the coordinate of the eastern next coordinate when pointing east" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :east
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.move
      expect(cart.coordinate).to be == coordinate.east
    end

    xit "will have the coordinate of the northern next coordinate when pointing north" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :north
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.move
      expect(cart.coordinate).to be == coordinate.north
    end

    xit "will have the coordinate of the southern next coordinate when pointing south" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :south
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.move
      expect(cart.coordinate).to be == coordinate.south
    end

    xit "will have the coordinate of the western next coordinate when pointing west" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :west
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.move
      expect(cart.coordinate).to be == coordinate.west
    end

    xit "will return true when successful" do
      coordinate = Rover::Coordinate.new(1,2)
      direction = :west
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      expect(cart.move).to be true
    end

    xit "will stay where xit is if the next coordinate is not valid according to the plateau" do
      coordinate = Rover::Coordinate.new(0,0)
      direction = :south
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.move
      expect(cart.coordinate).to be == Rover::Coordinate.new(0, 0)
    end

    xit "returns false if the next coordinate is not valid according to the plateau" do
      coordinate = Rover::Coordinate.new(0,0)
      direction = :south
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      expect(cart.move).to be == false
    end
  end

  describe "#run_command" do
    xit "will move when provided 'M'" do
      coordinate = Rover::Coordinate.new(5,5)
      direction = :north
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.run_command('M')
      expect(cart.coordinate).to be == coordinate.north
    end

    xit "will rotate to the left when provided 'L'" do
      coordinate = Rover::Coordinate.new(5,5)
      direction = :north
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.run_command('L')
      expect(cart.direction).to be == :west
    end

    xit "will rotate to the right when provided 'R'" do
      coordinate = Rover::Coordinate.new(5,5)
      direction = :north
      plateau = Rover::Plateau.new
      cart = Rover::Cart.new(coordinate, direction, plateau)

      cart.run_command('R')
      expect(cart.direction).to be == :east
    end
  end
end
