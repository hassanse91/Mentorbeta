class Favorite < ActiveRecord::Base
  has_many :matieres
  has_many :mentors
end
