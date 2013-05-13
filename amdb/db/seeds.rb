# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

directors = [
  { :name => "Christopher Nolan", :dob => Date.parse("30/07/1970") },
  { :name => "Francis Ford Coppola", :dob => Date.parse("07/04/1939") },
  { :name => "Frank Darabont", :dob => Date.parse("29/01/1959") }
]

Director.destroy_all
directors.each do |director_hash|
  d = Director.new
  d.name = director_hash[:name]
  d.dob = director_hash[:dob]
  d.save
end

movies = [
  { :title => "The Dark Knight", :year => 2008, :director_id => Director.find_by_name("Christopher Nolan").id },
  { :title => "The Godfather", :year => 1972, :director_id => Director.find_by_name("Francis Ford Coppola").id },
  { :title => "The Godfather: Part II", :year => 1974, :director_id => Director.find_by_name("Francis Ford Coppola").id },
  { :title => "The Shawshank Redemption", :year => 1994, :director_id => Director.find_by_name("Frank Darabont").id }
]

Movie.destroy_all
movies.each do |movie_hash|
  m = Movie.new
  m.title = movie_hash[:title]
  m.year = movie_hash[:year]
  m.director_id = movie_hash[:director_id]
  m.save
end

actors = [
  { :name => "Christian Bale", :dob => Date.parse("30/01/1974") },
  { :name => "Al Pacino", :dob => Date.parse("25/04/1940") },
  { :name => "Tim Robbins", :dob => Date.parse("16/10/1959") },
  { :name => "Morgan Freeman", :dob => Date.parse("01/06/1937") }
]

Actor.destroy_all
actors.each do |actor_hash|
  a = Actor.new
  a.name = actor_hash[:name]
  a.dob = actor_hash[:dob]
  a.save
end

roles = [
  { :character_name => "Bruce Wayne",
    :actor_id => Actor.find_by_name("Christian Bale").id,
    :movie_id => Movie.find_by_title("The Dark Knight").id
  },
  { :character_name => "Michael Corleone",
    :actor_id => Actor.find_by_name("Al Pacino").id,
    :movie_id => Movie.find_by_title("The Godfather").id
  },
  { :character_name => "Michael Corleone",
    :actor_id => Actor.find_by_name("Al Pacino").id,
    :movie_id => Movie.find_by_title("The Godfather: Part II").id
  },
  { :character_name => "Andy Dufresne",
    :actor_id => Actor.find_by_name("Tim Robbins").id,
    :movie_id => Movie.find_by_title("The Shawshank Redemption").id
  },
  { :character_name => "Red Redding",
    :actor_id => Actor.find_by_name("Morgan Freeman").id,
    :movie_id => Movie.find_by_title("The Shawshank Redemption").id
  }
]

Role.destroy_all
Role.create roles
