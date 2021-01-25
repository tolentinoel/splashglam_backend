class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists
    end

    def show
        list = List.find(params[:id])
        render json: list
    end

    def create
        user = User.find(params[:user_id])
        list = List.new(list_params)
        if list.save
            render json: list
        else
            render json: {error: "Error occured. Please try again."}
        end
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
        params.permit(:id, :title, :user_id)
    end

end
