class Treasure2 < Treasure
  include HashInitiator
  attr_accessor :name
  attr_accessor :points

  def initialize(*args)
    args[0].is_a?(Hash) ? hash_initialize(args[0]) : super
  end
end
