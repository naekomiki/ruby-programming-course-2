require_relative 'word'
require 'suika'

tagger =  Suika::Tagger.new
lines = tagger.parse('わたしは京都にいます。')

word = Word.new(lines[0])
puts word.is_noun? || word.is_verb?
puts word.word.inspect
puts word.attributes.inspect
puts word.attribute_list.inspect

