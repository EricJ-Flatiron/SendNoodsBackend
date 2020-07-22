class OrdersController < ApplicationController
    def show
        @order = Order.find(params[:order][:id])
        render json: @order
    end

    def create
        @order = order.create(order_params)
        if @order.valid?
            render json: {order: @order}, status: :created
        else
            render json: { error: 'failed to create order'}, satus: :not_acceptable
        end
    end
  
    private
    def order_params
        params.require(:order).permit(:cost)
        #show items?
    end
    #user_id?

end
