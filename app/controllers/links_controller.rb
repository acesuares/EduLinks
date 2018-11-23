class LinksController < InlineFormsController
  set_tab :link
  before_action :authenticate_user!, except: [:homepage, :page]


  def new
    @object = @Klass.new
    @object.user_id = current_user.id
    super
  end

  def create
    @object = @Klass.new
    @object.user_id = current_user.id
    super
  end

  def homepage
    @links = Link.all
    render layout: 'homepage'
  end

  def page
    @group = Group.find_by(slug: params[:group_slug])
    redirect_to root_url(:host => request.domain) and return if @group.nil?
    @topic = Topic.find_by(slug: params[:topic_slug])
    redirect_to root_url(:host => request.domain) and return if @topic.nil?
    @sub_topic = SubTopic.find_by(slug: params[:sub_topic_slug])
    redirect_to root_url(:host => request.domain) and return if @sub_topic.nil?
    @links = @sub_topic.links
    render layout: 'homepage'
  end

end
