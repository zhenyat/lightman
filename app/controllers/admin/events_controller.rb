class Admin::EventsController < Admin::BaseController
  before_action :set_event, only: [:show, :edit, :update,:destroy]
  after_action  :remove_cover_dir, only: :destroy
  
  def index
    @events = policy_scope(Event)
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def edit
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    if @event.save
      flash[:success] = t('messages.created', model: @event.class.model_name.human)
      redirect_to [:admin, @event]
    else      
      render :new
    end
  end

  def update
    authorize @event
    if @event.update(event_params)
      flash[:success] = t('messages.updated', model: @event.class.model_name.human)
      redirect_to [:admin, @event]
    else      
      render :edit
    end
  end

  def destroy
    authorize @event
    @event.destroy
    flash[:success] = t('messages.deleted', model: @event.class.model_name.human)
    redirect_to admin_events_path
  end

  private
    # Removes upload cover directory of a destroyed Account
    def remove_cover_dir
      dir = "public/uploads/event/cover/#{@event.id}"
      FileUtils.remove_dir dir if Dir.empty?(dir)
    end

    # Uses callbacks to share common setup or constraints between actions
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allows a trusted parameter 'white list' through
    def event_params
      params.require(:event).permit(:title, :kind, :started_on, :finished_on, :content, :cover, :status, :remove_cover)
    end
end
