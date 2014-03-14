require 'net/http'
require 'uri'

class Geolocate

	def self.find(ip_address = nil)
		uri = URI("http://ipinfo.io/#{ip_address + '/' if ip_address.present? }json")
		response = Net::HTTP.get(uri)
		JSON.parse(response)
	end


end