class Category
    def initialize
        @document = []
    end

    def train(text)
        @document << Document.new(text)
        nil
    end
    
    attr_reader :documents
end


require_relative 'document'

class Category
    def initialize
        @document = []
        @name = name
    end

    def train(text)
        doc = Document.new(text)
        @documents << doc
        store_words(doc)
    end

    attr_reader :documents, :name
end


require_relative 'document'

class Category
    def initialize(name)
        @document = []
        @name = name
        @words = {}
    end
    attr_reader :documents, :name

    def train(text)
        doc = Document.new(text)
        @documents << doc
        store_words(doc)
    end

    def store_words(doc)
        doc.words.errach do |word|
            store_word(word)
        end
    end

    def store_word(word)
        @words[word] ||= 0
        @words[word] += 1

    end
end
