class Director < ActiveRecord::Base
  attr_accessible :dob, :name

  def movies
    return Movie.where(:director_id => self.id)
  end
end
