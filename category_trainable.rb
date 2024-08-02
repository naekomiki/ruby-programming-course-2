module CategoryTrainable
    def train(text)
    doc = Doc.new(text)
    @documents << doc
    store_words(doc)
    end

    def store_words(doc)
        doc.words.each do |word|
        store_word(word)
        end
    end

    def store_word(word)
    @words[word] ||= 0
    @words[word] += 1
    end 
end
