module Master
  module Infrastructure
    module Repositories
      class UserRepository

      # @param [String] user_name
      # @return [Domain::Models::User]
      def find_by_user_name(user_name:)
        db = InMemoryDB.instance.store
        user = db[:user].find {|u| u.user_name == user_name }
        if user.nil?
          return nil
        end
        Domain::Models::User.new(name: user[:user_name], id: user[:id])
      end

      def create(user_name:)
        db = InMemoryDB.instance.store
        db[:user] << {
          user_name: user_name,
          id: 1
        }
        Domain::Models::User.new(name: user_name, id: 1)
      end
    end
  end
end
