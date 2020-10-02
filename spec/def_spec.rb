require('rspec')
require('defin')
require('word')
require('pry')

describe '#Defin' do

  before(:each) do
    # Word.clear()
    # Defin.clear()
    @word = Word.new("linden", nil)
    @word.save()
  end

  describe('#==') do
    it("is checks that definitions are the same if they have the same name") do
      defin1 = Defin.new("a type of tree", @word.id, nil)
      defin2 = Defin.new("a type of tree", @word.id, nil)
      expect(defin1).to(eq(defin2))
    end
  end

  describe('.all') do
    it("returns a list of definitions for a given word") do
      defin1 = Defin.new("a northern mammal", @word.id, nil)
      defin1.save()
      defin2 = Defin.new("first dog on the moon", @word.id, nil)
      defin2.save()
      expect(Defin.all).to(eq([defin1, defin2]))
    end
  end

end