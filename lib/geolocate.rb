require 'net/http'
require 'uri'

class Geolocate

	def self.find(ip_address)
		uri = URI("http://ipinfo.io/#{ip_address}/json")
		Net::HTTP.get(uri)
	end


end