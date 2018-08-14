require 'httparty'

request = HTTParty.get("https://www.eventbriteapi.com/v3/events/search/?q=backing&token=FVT4PYIK2GIOVPU4Z2GN")
req = JSON.parse(request.body)
@event = req['events']
@event.each do |events|
 puts events['logo']['url']
end
