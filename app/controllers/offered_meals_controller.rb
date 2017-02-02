class OfferedMealsController < ApplicationController
  # Example of setting security only for certain actions
  #  before_action :authenticate_user, only: [:create, :update, :destroy]

  before_action :set_offered_meal, only: [:show, :update, :destroy]

  # GET /offered_meals
  def index
    @offered_meals = OfferedMeal.all.joins(:event).merge(Event.future)
  end

  # GET /offered_meals/1
  def show
    render json: @offered_meal
  end

  # POST /offered_meals
  def create
    @offered_meal = OfferedMeal.new(offered_meal_params)

    if @offered_meal.save
      render json: @offered_meal, status: :created, location: @offered_meal
    else
      render json: @offered_meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offered_meals/1
  def update
    if @offered_meal.update(offered_meal_params)
      render json: @offered_meal
    else
      render json: @offered_meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offered_meals/1
  def destroy
    @offered_meal.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_offered_meal
    @offered_meal = OfferedMeal.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def offered_meal_params
    params.fetch(:offered_meal, {})
  end
end
