require 'nokogiri'

doc = Nokogiri::HTML.parse(html)
puts doc.text

