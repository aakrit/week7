class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year

  has_many :votes

  def director
    return Director.find_by_id(self.director_id)
  end

  def roles
    return Role.where(:movie_id => self.id)
  end
end
