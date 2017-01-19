class HomeController < ApplicationController

	before_action :require_authentication!
	
  def index
  	@guests = Guest.all
  end
end
