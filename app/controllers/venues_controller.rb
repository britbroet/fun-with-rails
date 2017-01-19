class VenuesController < ApplicationController
  
  def index
  	@venues = Venue.all.order(:name)
  end

  def new
    @venue = Venue.new
  end

  def create
    Venue.create(venue_params)
    redirect_to venues_path
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    v = Venue.find(params[:id])
    v.update(venue_params)
    redirect_to venues_path
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def destroy
    Venue.find(params[:id]).delete
    redirect_to venues_path
  end


  private

  def venue_params 
    params.require(:venue).permit(:name, :address, :city, :state, :zip, :phone, :contact, :link, :img, :contact_name, :contact_email, :contact_phone, :cost)  
  end

end

