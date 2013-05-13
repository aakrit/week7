class AddDirectorIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director_id, :integer
    remove_column :movies, :director
  end
end
