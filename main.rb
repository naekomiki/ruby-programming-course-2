#

require_relative'spam_filter'

sf = SpamFilter.new
if sf.is_spam?(ARGV[0])
    puts "#{ARGV[0]} is spam"
else
    puts "#{ARGV[0]} is spam"
end


puts ARGV[0]

file_name.each do |file_name|
    File.open(file_name) do |file|
        puts file.read
    end
end

puts contents.inspect


puts ARGV[0]

require 'open-uri'

content = URI.open(ARGV[0]).read
puts content


require_relative 'analyzer'
require_relative 'categories'
require_relative 'category'
require_relative 'document'

＃学習
analyzer = Analyzer.new
analyzer.train("SPAM text", :spam)
analyzer.train("not SPAM text", :normal)

＃分類（判定）
analyzer.classify("not SPAM text")
puts result
# => :spam, :normal


require_relative 'analyzer'
require_relative 'categories'
require_relative 'category'
require_relative 'doc'

＃学習
analyzer = Analyzer.new
analyzer.train("これはSPAM文書です。", :spam)
analyzer.train("これは通常の文書です。", :normal)

＃分類（判定）
result = analyzer.classify("text is SPAM")
puts result.name
