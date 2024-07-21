require 'suika'

tagger = Suika ::Tagger.new

text = "すもももももももものうち"

resalt = tagger.parse(text)
resalt.each do |token|
    puts token
end


require 'suika'

tagger = Suika ::Tagger.new

text = "This is simple program."

resalt = tagger.parse(text)
resalt.each do |token|
    puts token
end
