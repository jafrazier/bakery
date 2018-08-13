cookies = [['one','good','the best in the world', 9],['two', 'bad', 'the worst in the world', 10]]
class Item
  attr_accessor :img, :name, :description, :price
  def initialize(img,name,description,price)
    @img = img
    @name = name
    @description = description
    @price = price
  end
end

cookies.each do |cookie|
img = cookie[0]
name = cookie[1]
description = cookie[2]
price = cookie[3]
cook = Item.new(img,name,description,price)
p cook
end
