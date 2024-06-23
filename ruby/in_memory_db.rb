require 'singleton'

class InMemoryDB
  include Singleton
  attr_accessor :store
  
  def initialize
    @store = {}
  end
end
