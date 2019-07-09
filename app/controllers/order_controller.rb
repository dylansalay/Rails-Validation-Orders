class OrderController < ApplicationController

    def new
        @order = Order.new
        render 'order'
    end

    def create
        @order = Order.create(order_params)
        puts @order.errors.full_messages

        if @order.valid?
            flash.now[:notice] = "Order created successfully."
        end

        render 'order'
    end

    private

    def order_params
        params.require(:order).permit(:account_id, :product_name, :quantity, :shipment_date)
    end

end
