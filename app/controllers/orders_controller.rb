class OrdersController < ApplicationController


  def index
    #@order = Reservation.all
    @orders = current_user.orders

  end

  def show
  end

  def new
    @order = Order.new

  end

  def edit
  end


  def create
    @order = Order.new(order_params)


    @order.user_id = current_user.id


    if @order.save

      redirect_to @order, notice: 'Order was successfully created.'
    else

      render :new
    end

  end


  def update
      if @order.update(order_params)
        redirect_to @order, notice: 'Order was successfully updated.'
      else
        render :edit
      end
  end


  def destroy
    @order.destroy
      redirect_to orders_url, notice: 'Orders was successfully destroyed.'
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def orders_params
      params.require(:order).permit(:name,:email, :date, :chef_id, :user_id)
    end
end
