class ListsController < ApplicationController

    def index
        user = User.find(params[:user_id])
        lists = user.lists
        render json: lists
    end

    def show
        list = List.find(params[:id])
        render json: list
    end

    def create
        byebug
        user = User.find(params[:user_id])
        product = Product.find(params[:product_id])
        list = List.create(list_params)
        render json: list
    end

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
    end

    private

    def list_params
        params.require(:list).permit(:id, :title, :user_id, :product_id)
    end

end
