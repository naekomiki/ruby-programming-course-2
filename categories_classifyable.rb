module CategoriesClassifyable
    def classify(text)
    doc = Doc.new(text)
    sorted_categories_by_doc(doc).last
    end

private

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
    a.score(doc, total_train_count, used_words.count)
    score_b =
    b.score(doc, total_train_count, used_words.count)
    score_a <=> score_b
    end

    def total_train_count
    categories.map(&:num_trained_docs).sum.to_f
    end

    def used_words
        categories.map do |category|
        category.used_words
       end.inject(&:+)
    end
end
