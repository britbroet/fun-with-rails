class GuestsController < ApplicationController
  
  def index
  	@guests = Guest.all.order(:last, :first)
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to guests_path
  end

  def edit
  end

  def show
  end


  private

  def guest_params 
    params.require(:guest).permit(:first, :last, :address, :city, :state, :zip, :phone, :rsvp)  
  end
end

