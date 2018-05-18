class OrdersController < ApplicationController

  def index
  #   @order = Reservation.all
    @orders = Order.all
  #   current_user.
  #   meals = Meal.all
  end

  def show
    # @meal = Meal.new
    # @order = Order.find(params[:id])
  end

  def new
    # @meal = Meal.find(params[:meal_id])
    @order = Order.new
  end

  def edit
  end


  def create
    @user = current_user
    @meal = Meal.find(params[:id])
    @order = Order.new(orders_params)
    @order.user = @user
    @order.meal = @meal
    # @order.user = User.all.sample


    if @order.save
      redirect_to order_path(@order)
    else
      render :new
      # redirect_to meal_path(Meal.find(params[:id])), alert: "La réservation a échoué"
    end

  end


  # def update
  #     if @order.update(order_params)
  #       redirect_to @order, notice: 'Order was successfully updated.'
  #     else
  #       render :edit
  #     end
  # end


  # def destroy
  #   @order.destroy
  #     redirect_to orders_url, notice: 'Orders was successfully destroyed.'
  # end

  private
    # def set_order
    #   @order = Order.find(params[:id])
    # end

    def orders_params
      params.require(:order).permit(:quantity)
    end
end







