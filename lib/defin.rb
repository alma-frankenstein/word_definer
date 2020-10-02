class Defin
  attr_reader :id
  attr_accessor :name, :word_id

  @@definss = {}
  @@total_rows = 0

  def initialize(name, word_id, id)
    @name = name
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def ==(defin_to_compare)
    (self.name() == defin_to_compare.name()) && (self.word_id() == defin_to_compare.word_id())
  end

  def self.all
    @@defins.values
  end

  def save
    @@defins[self.id] = Defin.new(self.name, self.word_id, self.id)
  end

 def self.find(id)
    @@defins[id]
  end

  def update(name, word_id)
    self.name = name
    self.word_id = word_id
    @@defins[self.id] = Defin.new(self.name, self.word_id, self.id)
  end

  def delete
    @@defins.delete(self.id)
  end

  def self.clear
    @@defins = {}
  end

end