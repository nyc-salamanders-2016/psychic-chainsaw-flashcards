class Card
  attr_reader :front, :back

  def initialize(args={})
    @front = args.fetch(:front, "")
    @back = args.fetch(:back, "")
  end

  def answer?(string)
    string == back
  end
end
