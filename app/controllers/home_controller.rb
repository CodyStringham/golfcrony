class HomeController < ApplicationController

  def index
  	@ip_info = Geolocate.find(request.ip)
  end
  
  def account
  end

end
