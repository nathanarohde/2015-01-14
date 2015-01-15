class Definition
  @@alldefinitions=[]

  define_method(:initialize) do |definition|
    @id = @@alldefinitions.length().+(1)
    @definition = definition
  end

  define_method(:id) do
    @id
  end

  define_method(:definition) do
    @definition
  end

  define_method(:save) do
    @@alldefinitions.push(self)
  end

  define_singleton_method(:all)do
    @@alldefinitions
  end

  define_singleton_method(:clear) do
    @@alldefinitions=[]
  end

end
