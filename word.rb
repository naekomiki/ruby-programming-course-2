class Word
    def initialize(line)
        @line = line
    end
    attr_reader :line

    def is_noun?
        attribute_list[0] == '名詞'
    end

    def is_verb?
        attribute_list[0] == '動詞'
    end

    def word
        line.split(/\t/)[0]
    end

    def attributes
        line.split(/\t/)[1]
    end
  
    def original
        attribute_list[6]
    end

    def word
        line.split(/\t/)[0]
    end

    def attributes
        line.split(/\t/)[1]
    end

    def attribute_list
        attributes.split(',')
    end
end

