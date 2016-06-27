class Tribe
  attr_accessor :name, :members

  @members = []
  @@tribes = []

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    @@tribes << self
    puts @@tribes
  end

  def to_s
    @name
  end

  def tribal_council(immune)
    @members.pop if immune
  end
end