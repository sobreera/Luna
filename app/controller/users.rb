class UsersController < Action
  use_model :User
  def index
    render(:html, 'users/index')
  end

  def show
    @users = User.all
    render(:html, 'users/show')
  end

  def login
    # unless @post[:id].nil?
    #   user = User.find_by(id: @post[:id])
    #   if HalfMoon::Auth.password(@post[:id], @post[:pass]) == user.pass
    #     @session[:user] = user
    #     redirect_to('/index')
    #   end
    # end
    render(:html, 'users/show')
  end
end
