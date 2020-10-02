require('rspec')
require('defin')
require('word')
require('pry')

describe '#Defin' do

  before(:each) do
    Word.clear()
    Defin.clear()
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

  describe('.clear') do
    it("clears all definitions, for testing") do
      defin1 = Defin.new("a northern mammal", @word.id, nil)
      defin1.save()
      defin2 = Defin.new("first dog on the moon", @word.id, nil)
      defin2.save()
      Defin.clear()
      expect(Defin.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition to a word") do
      defin1 = Defin.new("a northern mammal", @word.id, nil)
      defin1.save()
      expect(Defin.all).to(eq([defin1]))
    end
  end

  describe('#update') do
    it("updates a definition") do
      defin1 = Defin.new("a northern mammal", @word.id, nil)
      defin1.save()
      defin1.update("a southern fish", @word.id)
      expect(defin1.name).to(eq("a southern fish"))
    end
  end

end