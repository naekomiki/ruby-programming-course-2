require_relative 'category'

category = Category.new(:spam)
puts category.document.inspect

category.train("hello")

puts category.documents.inspect

