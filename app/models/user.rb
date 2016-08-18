class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :mentor, :dependent => :destroy
  has_many :matieres, dependent: :destroy
  has_many :reservations, dependent: :destroy


  #def online?
  #updated_at > 5.minutes.ago
  #end
  
end
