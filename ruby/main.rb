require './in_memory_db'

class Initializer
  class << self
    def run
      db = InMemoryDB.instance.store
      db[:user] = []
    end
  end
end


Initializer.run
