require './controllers/base_controller'
class UserController < BaseController
  def create
    result = Master::UseCases::Interactors::CreateUserInteractor.call(user_name: params[:user_name])
    presenter = CreateUserPresenter.new(result)
    presenter.present
  end
end
