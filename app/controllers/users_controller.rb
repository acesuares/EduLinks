class UsersController < InlineFormsController
  set_tab :user

  def homepage
    @user = User.find(params[:id])
    render layout: 'homepage'

  end

  def page
    @user = User.find(params[:user_id])
    render layout: 'homepage'

  end

end
