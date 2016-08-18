class HomeController < ApplicationController
	  before_action :authenticate_user!, except: [:index, :search]

  def index
  
  end

  def search
  	if params[:search].present?
  		@mentors = Mentor.search(params[:search])
  	else
  		@mentors = Mentor.all
  	end
  	
  end
  		
 
end
