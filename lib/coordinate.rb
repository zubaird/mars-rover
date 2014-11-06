module Rover
  class Coordinate
<<<<<<< HEAD
=======
    def initialize(x, y)
      @x, @y = x, y
      # puts "Building Coordinate"
    end

    def valid?
      (@x >= 0 && @y >= 0)
    end

    def south
      Coordinate.new(@x,@y-1)
    end

    def north
      Coordinate.new(@x,@y+1)
    end

    def east
      Coordinate.new(@x+1,@y)
    end

    def west
      Coordinate.new(@x-1,@y)
    end

    def == second_coord
      (@x == second_coord.x && @y == second_coord.y)
    end


    def x
      @x
    end

    def y
      @y
    end

>>>>>>> ac06a1d8c70854e26ef18122c089945a6dc525e8
  end
end
