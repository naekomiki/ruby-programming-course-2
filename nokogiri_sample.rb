require 'open-uri'
require 'nokogiri'

html = URI.open('https://bukkyo-u-programming-course.s3.ap-northeast-1.amazonaws.com/c2-1.html').read
puts html

doc = Nokogiri::HTML.parse(html)
puts doc.text

