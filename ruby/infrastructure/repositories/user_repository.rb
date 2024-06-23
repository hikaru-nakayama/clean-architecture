module Infrastructure
  module Repositories
    class UserRepository

    # @param [String] user_name
    # @return [Domain::Models::User]
    def find_by_user_name(user_name:)
      db = InMemoryDB.instance.store
      user = db[:user].find {|u| u.user_name == user_name }
      Domain::Models::User.new(user_name: user[:user_name], id: user[:id])
    end
  end
end
