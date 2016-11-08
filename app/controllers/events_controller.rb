class EventsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @sliders = Slider.all.limit(4)
    @events = Event.all.order("created_at desc").limit(5)
    @galleries = Event.all.order("created_at desc").limit(9)
    @testimonials = Testimonial.all.order("created_at desc").limit(3)
    @clients = Client.all
    @contact = Contact.new
  end

  def new
    @event = current_user.events.build
    @categories = Category.all.order("name")
    @event.galleries.build
    render layout: "admin"
  end

  def create
    @event = current_user.events.build(params_event)
    if @event.save
      redirect_to event_url(@event)
    else
      render 'new'
    end
  end

  def show
    render layout: "todo"   
  end

  def edit
    @categories = Category.all.order("name")
    render layout: "admin"
  end

  def update
    if @event.update(params_event)
      redirect_to all_event_url
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to all_event_path
  end

  def galleries
    @galleries = Event.all.order("created_at desc")
    render layout: "todo"
  end

  def company
    render layout: "todo"
  end

  def all_gallery
    @galleries = Event.all.order('created_at desc')
    render layout: "todo"
  end

  def all_event
    @events = Event.all.order('created_at desc')
    render layout: "admin"
  end

  private 

  def set_event
    @event = Event.friendly.find(params[:id])
  end

  def params_event
    params.require(:event).permit(:name, :description, :image, :event_date, :category_id, galleries_attributes: [:source])
  end

end
