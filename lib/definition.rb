class Definition
  @@alldefinitions

  define_method(:initialize) do |definition|
    @id = @@alldefinitions.length().+(1)
    @definition
  end

  define_method(:definition) do
    @definition
  end

  define_method(:save) do
    @@alldefinitions.push(self)
  end

  define_method(:clear) do
    @@alldefinitions=[]
  end
