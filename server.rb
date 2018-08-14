require 'sinatra'
require 'httparty'
class Item
  attr_accessor :img, :name, :description, :price
  def initialize(img,name,description,price)
    @img = img
    @name = name
    @description = description
    @price = price
  end
end
get '/' do
  erb :home
end

get  '/cake' do
  erb :cake
end

get '/cookie' do
  erb :cookie
end

get '/muffin' do
  erb :muffin
end

get '/events' do
  request = HTTParty.get("https://www.eventbriteapi.com/v3/events/search/?q=baking&sort_by=best&location.address=new+york+city&token=#{ENV['API_TOKEN']}")
  req = JSON.parse(request.body)
  @event = req['events']
  erb :events
end
