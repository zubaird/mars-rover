module Rover
  class Operator
    def initialize location
      @xpos, @ypos, face = location.split("")

      @plateau = Plateau.new

      direction = {'N' => :north, 'E' => :east, 'S' => :south, 'W' => :west}[face]
      coordinate = Coordinate.new(@xpos.to_i, @ypos.to_i)
      @cart = Cart.new(coordinate, direction, @plateau)
    end

    def plateau
      @plateau
    end

    def cart
      @cart
    end

    def run_command cmd
      cmd.each_char do |char|
        @cart.run_command(char)
      end
    end

    def reset location
      Operator.new(location)
    end

  end
end
