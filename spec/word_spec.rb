require ('rspec')
require ('word')
require ('pry')

describe('word') do

  describe ('#save#id') do
    it('Save an id to new object class word') do
      word = Word.new('carrot','english')
      word.save()
      expect(Word.all().at(0).id()).to(eq(1))
    end
  end
  describe ('#save#word') do
    it('Assigns word to @@allwords') do
      word = Word.new('carrot','english')
      word.save()
      expect(Word.all().at(1).word()).to(eq('carrot'))
    end
  end
  describe ('#save#language') do
    it('Assings word and langauge to @@allwords') do
      word = Word.new('carrot','english')
      word.save()
      expect(Word.all().at(2).language()).to(eq('english'))
    end
  end
end
