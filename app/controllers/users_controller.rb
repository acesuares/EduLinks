class UsersController < InlineFormsController
  set_tab :user

  before_action :authenticate_user!, except: [:homepage, :page]

  def homepage
    @user = User.find_by(username: request.subdomain)
    redirect_to root_url(:host => request.domain) and return if @user.nil?
    render layout: 'homepage'
  end

  def page
    @user = User.find_by(username: request.subdomain)
    redirect_to root_url(:host => request.domain) and return if @user.nil?
    @group = Group.find_by(slug: params[:group_slug])
    redirect_to root_url(:host => request.domain) and return if @group.nil?
    @topic = Topic.find_by(slug: params[:topic_slug])
    redirect_to root_url(:host => request.domain) and return if @topic.nil?
    @sub_topic = SubTopic.find_by(slug: params[:sub_topic_slug])
    redirect_to root_url(:host => request.domain) and return if @sub_topic.nil?
    @links = @sub_topic.links.where(user: @user)
    render layout: 'homepage'
  end

end
