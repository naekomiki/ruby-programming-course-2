require_relative'spam_filter'

spam_filter = SpamFilter.new
puts spam_filter.is_spam?(ARGV[1])

