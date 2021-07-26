require 'pg'

class Peep
  @@all_peeps = []
  def initialize(peepcontent:)
    @peep_content = peepcontent
  end  

  def self.all
    @@all_peeps
  end

  def self.create(peepcontent)
    @@all_peeps << peepcontent
  end

end