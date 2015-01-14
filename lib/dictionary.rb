class Term
  @@allterms = []

  define_method(:initialize) do |word, definition|
    @id = @@allterms.length().+(1)
    @word = word
    @definition = definition
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@allterms.push(self)
  end

  define_singleton_method(:all) do
    @@allterms
  end

  define_singleton_method(:search) do |search_term|
    found_term = []
    @@allterms.each do |term|
      if term.word().eql?(search_term)
        found_term = [term.word(),term.definition()]
      end
    end
    found_term
  end

  define_singleton_method(:clear) do
    @@allterms = []
  end

end
