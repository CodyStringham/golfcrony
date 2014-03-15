class ApplicationController < ActionController::Base
  protect_from_forgery

  @ip_info = Geolocate.find()
  	

end
