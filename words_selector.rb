require 'suika'

class WordsSelector
    def initialize
        @tagger = Suika ::Tagger.new
    end
    attr_reader :tagger

    def parse(text)

      text.strip.split(/\s+/)
    end
end


class WordsSelector
    def initialize
        @tagger = Suika ::Tagger.new
    end
    attr_reader :tagger

    def parse(text)
        tagger.parse(text)
    end
end


class WordsSelector
    def initialize
        @tagger = Suika ::Tagger.new
    end
    attr_reader :tagger

    def parse(text)
        array = tagger.parse(text)

        word_lines = select(array)
        word_lines.map do |line|
            word,attributes = line.split(/\t/)
            attribute_list = attributes.split(/,/)
            attribute_list[6]
        end
    end

    private
    def select(array)
        array.select do |line|
            word,attributes = line.split(/\t/)
            attribute_list = attributes.split(/,/)
            attribute_list[0] == '名詞' || attribute_list[0] == '動詞'
        end
    end
end


class WordsSelector
    def initialize
        @tagger = Suika ::Tagger.new
    end
    attr_reader :tagger

    def parse(text)
        tagger.parse(text)
    end
end


class WordsSelector
    def initialize
        @tagger = Suika ::Tagger.new
    end
    attr_reader :tagger

    def self.select(words)
      words.select do |word|
        word.is_noun? || word.is_verb?
    end

    def parse(text)
        array = tagger.parse(text)
        words = array.map do |line|
            Word.new(line)
        end
        target_words = words.select do |word|
            word.is_noun? || word.is_verb?
        end
        target_words.map do |word|
        end
    end
end
