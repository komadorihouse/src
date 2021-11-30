class PostsController < ApplicationController
    def index
        if user_signed_in?
            @merchandise = Merchandise.all
            @order = Order.where(user: current_user.id)
        end
    end

    def new
        @merchandise = Merchandise.new
    end

    def create
        @merchandise = Merchandise.new(merchandise_params)
        if @merchandise.save
            redirect_to root_path
        else
            render :new
        end
    end    

    def show
        @merchandise = Merchandise.find(params[:id])
    end

    def edit
        @merchandise = Merchandise.find(params[:id])
    end

    def update
        @merchandise = Merchandise.find(params[:id])
        if @merchandise.update(merchandise_params)
            redirect_to root_path
          else
            render :edit
          end
    end

    private

    def merchandise_params
        params.require(:merchandise).permit(:merchandise_name, :explanation, :price, :limit, :quantity, :deadline).merge(user_id: current_user.id)
    end
end
