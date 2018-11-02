class LinksController < InlineFormsController
  set_tab :link
  before_action :authenticate_user!, except: :homepage


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

  def pooh
  end

end
