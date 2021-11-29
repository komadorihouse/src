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
end
