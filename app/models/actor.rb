# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  #def characters
  #  my_id = self.id

  #  matching_characters = Character.where({ :actor_id => my_id })

  #  return matching_characters
  #end
  has_many(:characters)
  #def filmography
  #  array_of_movie_ids = Array.new

  #  my_characters = self.characters

  #  my_characters.each do |a_character|
  #    the_movie = a_character.movie

  #    array_of_movie_ids.push(the_movie.id)
  #  end

  #  matching_movies = Movie.where({ :id => array_of_movie_ids })

  #  return matching_movies
  #end

 # def cast
 #   join_records = self.characters
 #   other_record_ids = []
 #   join_records.each do |a_record|
 #     other_record_ids.push(a_record.actor_id)
 #   end
 #   return Actor.where({ :id => other_record_ids })
 # end

  has_many(:filmography, { :through => :characters, :source => :movie  } )
end
