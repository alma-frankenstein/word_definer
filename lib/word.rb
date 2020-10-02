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