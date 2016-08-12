require_relative 'deck'

class Card
  attr_reader :front, :back

  def initialize(args={})
    @front = args.fetch(:front, "")
    @back = args.fetch(:back, "")
  end
end
