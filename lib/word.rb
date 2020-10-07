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

  def ==(comparison_word) 
    self.name() == comparison_word.name()
  end 

  def save
    @@words[self.id] = Word.new(self.name, self.id)
  end

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