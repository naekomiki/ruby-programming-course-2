class Document
    def initialize(text)
    @text = text
    end
    def text
        @text
    end

    attr_reader :text
end

class Document
    def initialize(text)
    @text = text
    end

    def words
        words.strip.split(/\s+/)
    end
end


class Doc
    def initialize(text)
    @text = text
    end

    attr_reader :text

    def words
        words_selector = WordsSelector.new
    text = "私は京都で働いたことがあります。"
    result = words_selector.parse(text)

        text.strip.split(/\s+/)
    end
end


