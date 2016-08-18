class Matiere < ActiveRecord::Base
  belongs_to :mentor
  belongs_to :favorite
  belongs_to :user
  has_many :reservations

  scope :find_by_id, ->(id) do 
  	where("user_id =?", id)
	end
end
