require_relative 'categories'
require_relative 'category'

class Analyzer
    def train(text, category_name)
        categories = Categories.new
        category = categories.search(category_name)
        category.train(text)
    end

    def classify(text)
        categories = Categories.new
        categories.classify(text)
    end
end

