require('rspec')
require('word')

describe('#Word') do

  before(:each) do
    Word.clear()
  end

  describe(".all") do
    it("should be an empty array at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word to word list") do
      coffee = Word.new("coffee", nil)
      coffee.save()
      laundry = Word.new("laundry", nil)
      laundry.save()
      expect(Word.all).to(eq([coffee, laundry]))
    end
  end

  describe('.clear') do
    it("clears all words from list, for testing") do
      coffee = Word.new("coffee", nil)
      coffee.save()
      laundry = Word.new("laundry", nil)
      laundry.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a word by id') do
      coffee = Word.new("coffee", nil)
      coffee.save()
      laundry = Word.new("laundry", nil)
      laundry.save()
      expect(Word.find(laundry.id)).to(eq(laundry))
    end
  end

  describe('#update') do
    it('changes a word') do
      peanut = Word.new("walnut", nil)
      peanut.save()
      peanut.update("peanut")
      expect(peanut.name).to(eq("peanut"))
    end
  end

  describe('.delete') do
    it("deletes a word from the word list") do
      cup = Word.new("cup", nil )
      cup.save()
      grass = Word.new("grass", nil)
      grass.save()
      cup.delete()
      expect(Word.all).to(eq([grass]))
    end
  end

end


#   before(:each) do
#     Stage.clear()
#     Artist.clear()
#   end


#   describe('#artists') do
#     it("returns a stage's artists") do
#       stage = Stage.new("Lightning Stage", nil)
#       stage.save()
#       artist = Artist.new("Naima", stage.id, nil)
#       artist.save()
#       artist2 = Artist.new("Cousin Mary", stage.id, nil)
#       artist2.save()
#       expect(stage.artists).to(eq([artist, artist2]))
#     end
#   end

# end