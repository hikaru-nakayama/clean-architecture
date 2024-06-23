class BaseController
  def initialize(input)
    @params = input
  end

  def params
    {
      user_name: @params
    }
  end
end
