module Master
  module Domain
    module Models
      class User
        attr_accessor :id, :name

        def initialize(id:,name:)
          @id = id
          @name = name
        end
      end
    end
  end
end
