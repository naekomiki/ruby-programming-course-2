class WordsSelector
    def initialize
        @@tagger ||= Suika
    end

    def self.split(line)
        array = tagger.parse(text)
        words = array.map do |line|
    end
end


class WordsSelector
    def initialize
        @@tagger ||= Suika::Tagger.new
    end

    def self.split(line)
        array = @@tagger.parse(text)
        words = array.map do |line|
            Word.new(line)
        end
    end
end
