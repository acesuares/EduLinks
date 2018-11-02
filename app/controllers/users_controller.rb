class UsersController < InlineFormsController
  set_tab :user

  before_action :authenticate_user!, except: :homepage

  def homepage
    @user = User.find_by(username: request.subdomain)
    redirect_to root_url(:host => request.domain) and return if @user.nil?
    render layout: 'homepage'
  end

  def page
    @user = User.find(params[:user_id])
    render layout: 'homepage'

  end

  def fud
  end

end
