class MealsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    # @order = Order.new
    # @user = User.all
  end

  def new
    @meal = Meal.new
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to meal_path(@meal), notice: 'Meal was successfully created.'
    else
      render :new
    end
  end

  def update
    if @meal.update(meal_params)
      redirect_to @meal, notice: 'Meal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @meal.destroy
    redirect_to meals_url, notice: 'Meal was successfully destroyed.'
  end



      private

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:user, :description, :calories, :photo)
    end

end







  # def top
  #   @meals = Meal.where(stars: 5)
  # end
  # def chef
  # end

