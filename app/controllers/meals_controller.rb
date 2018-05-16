class MealsController < ApplicationController


  # def top
  #   @meals = Meal.where(stars: 5)
  # end

  # def chef

  # end

  def index
    @meals = Meal.all
  end


  def show
    @meal = Meal.find(params[:id])
    # @meal = Meal.set_meal
  end

  def new
    @meal = Meal.new
  end

#   def edit
#   end


  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal, notice: 'Meal was successfully created.'
    else
      render :new
    end
  end


#   def update
#     if @meal.update(meal_params)
#       redirect_to @meal, notice: 'Meal was successfully updated.'
#     else
#       render :edit
#     end
#   end


#   def destroy
#     @meal.destroy
#     redirect_to meals_url, notice: 'Meal was successfully destroyed.'
#   end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_meal
  #     @meal = Meal.find(params[:id])
  #   end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def meal_params
#       params.require(:meal).permit(:name, :address, :description, :stars)
#     end
# end


end
