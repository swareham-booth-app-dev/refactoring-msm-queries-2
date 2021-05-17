# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  #def director
   # my_director_id = self.director_id

   # matching_directors = Director.where({ :id => my_director_id })

   # the_director = matching_directors.at(0)

   # return the_director
    
  #end
  # you can leave out foreign key based on the name of the method name
  belongs_to(:director, { :class_name => "Director", :foreign_key => "director_id" })
  has_many(:characters)
end
