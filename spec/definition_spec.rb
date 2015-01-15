require ('rspec')
require ('definition')
require ('pry')

describe('word') do

  describe ('#save#id') do
    it('Save an id to new object class word') do
      definition = Definition.new('A delicious vegetable.')
      definition.save()
      expect(Definition.all().at(0).id()).to(eq(1))
    end
  end
  describe ('#save#word') do
    it('Assigns word to @@allwords') do
      definition = Definition.new('A delicious vegetable.')
      definition.save()
      expect(Definition.all().at(1).definition()).to(eq('A delicious vegetable.'))
    end
  end

end
