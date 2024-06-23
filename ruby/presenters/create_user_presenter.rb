class CreateUserPresenter
  def initialize(output)
    @user = output
  end
  
  def present
    {
      id: @user.id,
      user_name: formatted_name(@user.user_name)
    }
  end

  private

  def formatted_name(name)
    name.upcase
  end
end
