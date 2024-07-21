
require_relative 'categories'

categories = Categories.new
puts categories.category_list.inspect

categories.search(:spam)
puts categories.category_list.inspect

categories.search(:normal)
puts categories.category_list.inspect

