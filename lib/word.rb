class Word
  attr_reader :name, :id

  @@words = {}
  @@total_rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  def self.all
    @@words.values
  end
    #    @@stages.values     # [{id:1, name:"lightning"}]   @@stages.values[0].name

  def ==(comparison_word) 
    self.name() == comparison_word.name()
  end 

  def save
    @@words[self.id] = Word.new(self.name, self.id)
  end
end


# class Stage
#   attr_reader :name, :id

#   @@stages = {}
#   @@total_rows = 0

#   def initialize(name, id)
#     @name = name
#     @id = id || @@total_rows += 1
#   end

#   # For Testing
#   def self.clear
#     @@stages = {}
#     @@total_rows = 0
#   end

#    # Read Stages
#   def self.all
#     @@stages.values     # [{id:1, name:"lightning"}]   @@stages.values[0].name
#   end

#   def self.find(id)
#     @@stages[id]
#   end

#   # Create Stage
#   def ==(other_stage) 
#     self.name() == other_stage.name()
#   end 
  
#   def save
#     @@stages[self.id] = Stage.new(self.name, self.id)
#   end
  
#   # Delete Stage
#   def delete
#     @@stages.delete(self.id)
#   end
 
#   # Update Stage
#   def update(name)
#     @name = name
#   end
  
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