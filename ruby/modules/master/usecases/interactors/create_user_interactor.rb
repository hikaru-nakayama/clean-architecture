module Master
  module UseCases
    module Interactors
      class CreateUserInteractor
        class << self
          def call(user_name:)
            duplicate_user = Infrastructure::Repositories::UserRepository.find_by_user_name(user_name: user_name)
            if !duplicate_user.nil?
              raise 'duplicated'
            end
            user = Infrastructure::Repositories::UserRepository.create(user_name: user_name)
            Master::UseCases::Dtos::UserDto.new(
              id: user.id,
              user_name: user.name
            )
          end
        end
      end
    end
  end
end
