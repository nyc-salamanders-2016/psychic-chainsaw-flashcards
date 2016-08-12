class Card
  attr_reader :front, :back, :sleep

  def initialize(args={})
    @front = args.fetch(:front, "")
    @back = args.fetch(:back, "")
    @sleep = 5
  end

  def answer?(string)
    string == back
  end

  def correct
    @sleep = [@sleep - 2,1].max
  end

  def incorrect
    @sleep = [@sleep + 1,20].min
  end
end
