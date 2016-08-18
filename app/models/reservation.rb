class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :mentor
  belongs_to :matiere
end
