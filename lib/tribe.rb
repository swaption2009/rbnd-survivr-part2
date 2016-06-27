class Tribe
  attr_accessor :name, :members

  def initialize(options={})
    @name = options[:name]
    @members = options[:members]
    puts "#{@name.to_s.white} has been added with the following members: "
      @members.each { |x| puts x.name.capitalize.pink }
  end

  def to_s
    @name
  end

  def tribal_council(options={})
    immune = options[:immune]
    vulnerable_members = @members.select { |member| member != immune }
    voted_off_member = vulnerable_members.sample
    @members.delete(voted_off_member)
    return voted_off_member
  end

end