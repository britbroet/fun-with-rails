class GuestsController < ApplicationController
  
  def index
  	@guests = Guest.all.order(:last, :first)
    @attending = Guest.where(:rsvp => :'Attending')
    @not_attending = Guest.where(:rsvp => :'Not Attending')
    @unconfirmed = Guest.where(:rsvp => :'Unconfirmed')
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to guests_path
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    g = Guest.find(params[:id])
    g.update(guest_params)
    redirect_to guests_path
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def destroy
    Guest.find(params[:id]).delete
    redirect_to guests_path
  end


  private

  def guest_params 
    params.require(:guest).permit(:first, :last, :address, :city, :state, :zip, :phone, :rsvp)  
  end
end

