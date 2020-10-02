class Def
  attr_reader :id
  attr_accessor :name, :word_id

  @@defs = {}
  @@total_rows = 0

  def initialize(name, word_id, id)
    @name = name
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def ==(def_to_compare)
    (self.name() == def_to_compare.name()) && (self.word_id() == def_to_compare.word_id())
  end

  def self.all
    @@defs.values
  end

  def save
    @@defs[self.id] = Def.new(self.name, self.word_id, self.id)
  end

 def self.find(id)
    @@defs[id]
  end

  def update(name, word_id)
    self.name = name
    self.word_id = word_id
    @@defs[self.id] = Def.new(self.name, self.word_id, self.id)
  end

  def delete
    @@defs.delete(self.id)
  end

  def self.clear
    @@defs = {}
  end

end