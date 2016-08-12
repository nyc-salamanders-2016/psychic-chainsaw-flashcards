class Card
  include Comparable
  attr_reader :front, :back, :sleep

  def initialize(args={})
    @front = args.fetch(:front, "")
    @back = args.fetch(:back, "")
    @sleep = 2
  end

  def answer?(string)
    string == back
  end

  def correct
    @sleep = [@sleep + 1,5].min
  end

  def incorrect
    @sleep = [@sleep - 1,1].max
  end

  def <=> other
    self.sleep <=> other.sleep
  end
end
