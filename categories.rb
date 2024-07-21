class categories
    def search(category_name)
        Category.new
    end

    def classify(text)
        :spam
    end
end


class categories
    def initialize
        @category_list[category_name] || = Category.new
    end

    def classify(text)
        :normal
    end
end


require_relative 'category'

class Categories
    def initialize
        @category_list = {}
    end

attr_reader :category_list

    def search(category_name)
        @category_list[category_name] ||=
    Category.new(category_name)    
    end

    def classify(text)
        doc = Document.new(text)
        sorted_categories_by_doc(doc).last
    end

    def sorted_categories_by_doc(doc)
        categories.sort do |a,b|
            compare_categories(doc, a,b)
        end
    end

    def categories
        category_list.values
    end

    def compare_categories(doc, a,b)
      score_a =
        a.score(doc.words, total_train_count, used_words.count)
      score_b = 
        b.score(doc.words, total_train_count, used_words.count)
      score_a <==>score_b
    end
