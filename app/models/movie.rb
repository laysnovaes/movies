class Movie < ActiveRecord::Base
  belongs_to :genre
  ratyrate_rateable "stars"
end
