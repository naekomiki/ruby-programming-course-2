require_relative 'analyzer'
require_relative 'categories'
require_relative 'category'
require_relative 'doc'

class App
    def initialize
        @analyzer = Analyzer.new
        @grabber = Grabber.new
    end
    attr_reader :analyzer

    def train(text, category)
        analyzer.train(text, category)
    end
    
    def classify(url_or_file)
        text = grabber.grab(url_or_file)
        analyzer.classify(text)
    end
end

