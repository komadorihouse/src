class OrdersController < ApplicationController
    def index
        @users = User.all
    end

    def user
        @user = User.find(params[:id])
    end

    def show
        @merchandise = Merchandise.find(params[:id])
        if  @merchandise.deadline != nil
            @year = @merchandise.deadline.year
            @month = @merchandise.deadline.month
            @day = @merchandise.deadline.day
        end
    end

    def new
        @merchandise = Merchandise.find(params[:format])
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def order_params
        params.require(:order).permit(:mumber_of_orders, :price).merge(user_id: current_user.id , merchandise_id: @merchandise.id)
    end
end
