class OrdersController < ApplicationController
    def index
        @users = User.all
    end

    def user
        @user = User.find(params[:id])
    end

    def show
        @merchandise = Merchandise.find(params[:id])
    end

    def new
        @merchandise = Merchandise.find(params[:format])
        @order = Order.new
    end
end
