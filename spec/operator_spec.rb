require 'spec_helper'

describe Rover::Operator do
  before do
    pending('do all the other specs first')
  end

  it "setsup up a plateau" do
    operator = Rover::Operator.new('00S')
    expect(operator.plateau).to be_instance_of(Rover::Plateau)
  end

  xit "setsup up a cart with the right original coordinate" do
    operator = Rover::Operator.new('00S')
    cart = operator.cart
    expect(cart.coordinate).to be == Rover::Coordinate.new(0, 0)
  end

  xit "setsup up a cart with the right original coordinate" do
    operator = Rover::Operator.new('00S')
    cart = operator.cart
    expect(cart.direction).to be == :south
  end

  xit "#run runs each of the commands on the cart" do
    operator = Rover::Operator.new('00S')
    operator.run_command("MMLM")
    expect(cart.coordinate).to be == Coordinate.new(1, 2)
  end

  xit "#reset setsup the cart coordinates again" do
    operator = Rover::Operator.new('11S')
    operator.reset('11W')
    cart = operator.cart

    expect(cart.coordinate).to be == Rover::Coordinate.new(1, 1)
  end

  xit "#reset setsup the direction again" do
    operator = Rover::Operator.new('11S')
    operator.reset('11W')
    cart = operator.cart

    expect(cart.direction).to be == :south
  end
end
