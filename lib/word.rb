class Word
  attr_reader :name, :id

  @@words = {}
  @@total_rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  # Read word list:
  def self.all
    @@words.values
  end
    #    @@words.values     # [{id:1, name:"lightning"}]   @@words.values[0].name

  def ==(comparison_word) 
    self.name() == comparison_word.name()
  end 

  def save
    @@words[self.id] = Word.new(self.name, self.id)
  end

#  For testing
  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def update(name)
    @name = name
  end

  def self.find(id)
    @@words[id]
  end

  def delete
    @@words.delete(self.id)
  end

  def defins
    Defin.find_by_word(self.id)
  end


end





  

 
  
#   # Find all artists performing on a stage
#   def artists
#     Artist.find_by_stage(self.id)
#   end
# end
  

  

  # @@stages = {1: {name: stage1, id:1}, 2: {name: stage2, id: 2}}
  # Access stages object
  # Stage.all =[{name: stage1, id:1}, {name: stage2, id: 2}]    for testing
  # @@stages[1].name   getting name of specific stage by key/id
  #Access the albums obj at the name key