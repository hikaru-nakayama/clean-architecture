require './controllers/user_controller'
class ConsoleApp
  def start
    puts "======================================="
    puts "Welcome to sample of clean architecture"
    puts "======================================="
    puts ""
    puts "Enter the name of the new user."
    puts "username:"
    user_name = gets
    controller = UserController.new(user_name)
    res = controller.create
    puts res
  end
end
