class ReservationsController < ApplicationController


  def index


    @reservations = Reservation.where("user_id = ? OR mentor_id = ?", current_user.id, current_user.mentor.id)

  end

  def create
  	@mentor = Mentor.find(params[:mentor_id])
  	@reservation = @mentor.reservations.new(reservation_params)
  	@reservation.user = current_user
  	
    	if @reservation.save 
    		redirect_to mentor_reservations_path(@mentor.id)
    	else
    		render 'new'
    	end

  end

  def show
    @reservation = Reservation.find(params[:id])
    @mentor = Mentor.find(params[:mentor_id])
    @mentor_name = Mentor.find(@reservation.mentor_id).FirstName
    @matiere_name = Matiere.find(@reservation.matiere_id).name

  end


  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  	redirect_to mentor_reservations_path, notice: 'Comment was successfully destroyed.'
  end
  
   def set_comment
      @reservation = Reservation.find(params[:id])
    end

  def reservation_params
      params.require(:reservation).permit(:matiere_id, :mentor_id, :user_id, :date)
    end
end
