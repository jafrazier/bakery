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

get '/signup' do
  erb :signup
end
