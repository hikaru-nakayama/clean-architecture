module Infrastructure
  module Repositories
    class UserRepository

    # @param [String] user_name
    # @return [Domain::User]
    def find_by_user_name(user_name)
      db = InMemoryDB.new
      user = db[:user].find {|u| u.user_name == user_name }
      Domain::User.new(user_name: user[:user_name], id: user[:id])
    end
  end
end
