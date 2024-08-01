class SpamFilter
    def is_spam?(text)
        text.to_s =~/spam/i
    end
end


