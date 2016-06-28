class Jury
  attr_accessor :members

  @members = []

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def members
    @members
  end

  def cast_votes(finalists)
    votes = {}
    finalists.each { |finalist| votes[finalist] = 0 }
    @members.each do |member|
      vote_for = finalists.sample
      votes[vote_for] += 1
      puts "#{member.to_s.capitalize.pink} votes for #{vote_for.name.capitalize.yellow}"
    end
    return votes
  end

  def report_votes(votes)
    votes.each { |finalist, vote| puts "#{finalist.to_s.capitalize.yellow} gets #{vote.to_s.light_blue} votes" }
  end

  def announce_winner(votes)
    votes.each do |finalist, vote|
      if vote >= 4 then
        puts "Congratulations, #{finalist.name.upcase.red} won!"
        return finalist
      end
    end
  end

end