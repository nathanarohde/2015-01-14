require ('rspec')
require ('dictionary')
require ('pry')

describe('Term') do
  before() do
    Term.clear()
  end
end

describe('Term') do

  describe ('#save#id') do
    it('Save an id to new object class term') do
      word = Term.new('carrot','A delicious vegetable.')
      word.save()
      expect(Term.all().at(0).id()).to(eq(1))
    end
  end
  describe ('#save#word') do
    it('Assigns word to @@allterms') do
      word = Term.new('carrot','A delicious vegetable.')
      word.save()
      expect(Term.all().at(1).word()).to(eq('carrot'))
    end
  end
  describe ('#save#definition') do
    it('Assings definition to @@allterms') do
      word = Term.new('carrot','A delicious vegetable.')
      word.save()
      expect(Term.all().at(2).definition()).to(eq('A delicious vegetable.'))
    end
  end

  describe ('.search') do
    it('Searches for a term') do
      Term.clear()
      word = Term.new('carrot','A delicious vegetable.')
      word.save()
      word2 = Term.new('dog','An animal.')
      word2.save()
      expect(Term.search(word.word())).to(eq(['carrot','A delicious vegetable.']))
    end
  end

  describe ('.search') do
    it('Searches for a term') do
      Term.clear()
      word = Term.new('carrot',['A delicious vegetable.',"The first ingredient in my favorite cake."])
      word.save()
      word2 = Term.new('dog','An animal.')
      word2.save()
      expect(Term.search(word.word())).to(eq(['carrot',['A delicious vegetable.',"The first ingredient in my favorite cake."]]))
    end
  end

  describe ('.search') do
    it('Searches for a term') do
      Term.clear()
      word = Term.new(['carrot', 'zanahoria'],['A delicious vegetable.',"The first ingredient in my favorite cake."])
      word.save()
      word2 = Term.new('dog','An animal.')
      word2.save()
      expect(Term.search(word.word())).to(eq([['carrot', 'zanahoria'],['A delicious vegetable.',"The first ingredient in my favorite cake."]]))
    end
  end
end
