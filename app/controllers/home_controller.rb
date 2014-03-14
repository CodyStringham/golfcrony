class HomeController < ApplicationController

  def index
  	@ip_info = Geolocate.find
  end
  
  def account
  end

end
