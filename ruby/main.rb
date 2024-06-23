require './in_memory_db'
require './console_app/main'
Dir[File.join('./', '**', '*.rb')].each do |file|
 next if File.directory?(file)
 require file
end
class Initializer
  class << self
    def run
      db = InMemoryDB.instance.store
      db[:user] = []
    end
  end
end


Initializer.run
app = ConsoleApp.new
app.start
