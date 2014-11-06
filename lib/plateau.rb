module Rover
  class Plateau
    def initialize xsize = 10, ysize = 10
      @xsize = xsize; @ysize =ysize
      @coordinates = []
      @xsize.times do |x|
        @ysize.times do |y|
          @coordinates << Coordinate.new(x,y)
        end
      end
      # puts "Building Plateau"
    end

    def coordinates
      @coordinates
    end

    def include? origin
      @coordinates.include?(origin)
    end

    def valid_coordinate? coordinate
      coordinate.valid? &&
      ((0..@xsize).include?(coordinate.x) && (0..@ysize).include?(coordinate.y))
    end

  end
end
