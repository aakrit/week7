class Actor < ActiveRecord::Base
  attr_accessible :dob, :name

  def roles
    return Role.where(:actor_id => self.id)
  end
end
