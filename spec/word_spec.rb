require('rspec')
require('word')

describe('#Word') do

  # before(:each) do
  #   Word.clear()
  # end

  describe(".all") do
    it("should be an empty array at first") do
      expect(Word.all()).to(eq([]))
    end
  end

end


#   before(:each) do
#     Stage.clear()
#     Artist.clear()
#   end

#   describe(".all") do
#     it("is empty at first") do
#       expect(Stage.all()).to(eq([]))
#     end
#   end  

#   describe('#save') do
#     it("saves a stage") do
#       lightning_stage = Stage.new("Lightning Stage", nil )
#       lightning_stage.save()
#       fairyland_stage = Stage.new("Fairyland Stage", nil)
#       fairyland_stage.save()
#       expect(Stage.all).to(eq([lightning_stage, fairyland_stage]))
#     end
#   end

#   describe('.clear') do
#     it("clears all stages") do
#       lightning_stage = Stage.new("Lightning Stage", nil )
#       lightning_stage.save()
#       fairyland_stage = Stage.new("Fairyland Stage", nil)
#       fairyland_stage.save()
#       Stage.clear()
#       expect(Stage.all).to(eq([]))
#     end
#   end

#   describe('.delete') do
#     it("deletes a stage by id") do
#       lightning_stage = Stage.new("Lightning Stage", nil )
#       lightning_stage.save()
#       fairyland_stage = Stage.new("Fairyland Stage", nil)
#       fairyland_stage.save()
#       lightning_stage.delete()
#       expect(Stage.all).to(eq([fairyland_stage]))
#     end
#   end

#   describe('#update') do
#     it('updates a stage\'s properties') do
#       lightning_stage = Stage.new("Lightning Stage", nil )
#       lightning_stage.save()
#       lightning_stage.update("Thunder Stage")
#       expect(lightning_stage.name).to(eq("Thunder Stage"))
#     end
#   end

#   describe('.find') do
#     it('finds a stage by id') do
#       lightning_stage = Stage.new("Lightning Stage", nil )
#       lightning_stage.save()
#       fairyland_stage = Stage.new("Fairyland Stage", nil)
#       fairyland_stage.save()
#       expect(Stage.find(lightning_stage.id)).to(eq(lightning_stage))
#     end
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