class EventsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    event_params = params[:event]

    @event = current_user.chef_events.new({
      held_at: Date.parse(event_params[:time]),
      maximum_guest_count: event_params[:seats],
      address: event_params[:address]
    })

    meal = Meal.new({
      chef_user: current_user,
      name: event_params[:dishname],
      ingredients: event_params[:ingredients],
      suggested_price: event_params[:price]
    })

    offer = @event.offered_meals.new({
      meal: meal,
      price: event_params[:price]
    })

    offer.photos.new({
      image: event_params[:image]
    })

    if @event.save
      referer = URI(request.referer)
      # render :show, status: :created, location: @event
      redirect_to URI(%{http://#{referer.host}:#{referer.port}/TopPicks}).to_s
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      render :show, status: :ok, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.fetch(:event, [:address, :held_at, :maximum_guest_count, :image, :time, :price, :dishname, :ingredients, :address, :seats])
  end
end
