class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:order_id, :order_amt)
    end
end

