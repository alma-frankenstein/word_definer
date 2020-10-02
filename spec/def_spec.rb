require('rspec')
require('def')
require('word')
require('pry')

describe '#Def' do

  before(:each) do
    # Word.clear()
    # Def.clear()
    @word = Word.new("linden", nil)
    @word.save()
  end

  describe('#==') do
    it("is checks that definitions are the same if they have the same name") do
      def1 = Def.new("a type of tree", @word.id, nil)
      def2 = Def.new("a type of tree", @word.id, nil)
      expect(def1).to(eq(def2))
    end
  end

end