class Word
  @@allwords = []

  define_method(:initialize) do |word, language|
    @id = @@allwords.length().+(1)
    @word = word
    @language = language
  end

  define_method(:id) do
    @id
  end

  define_method(:word) do
    @word
  end

  define_method(:language) do
    @language
  end

  define_method(:save) do
    @@allwords.push(self)
  end

  define_singleton_method(:all) do
    @@allwords
  end

  define_singleton_method(:clear) do
    @@allwords = []
  end

end
