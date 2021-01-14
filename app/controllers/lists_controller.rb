class ListsController < ApplicationController

    def index
        user = User.find(params[:user_id])
        lists = user.lists
        render json: lists.to_json(
            :include => {
                :products 
            }
        )
    end

    def create
        user = User.find(params[:user_id])
        product = Product.find(params[:product_id])
        list = List.create(list_params)
        render json: list.to_json(
            :include => {
                :product
            }
        )
    end

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list.to_json(
            :include => {
                :product
            }
        )
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
