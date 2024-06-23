module Domain
  module Models
    class User
      attr_accessor: :id, :user_name

      def initialize(id:, user_name:)
        @id = id
        @user_name = user_name
      end
    end
  end
end
