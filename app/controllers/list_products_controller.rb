class ListProductsController < ApplicationController

    def create
        list = List.find(params[:list_id])
        product = Product.find(params[:product_id]) || nil
        list_product = ListProduct.create(list_product_params)
        # if list_product.save
            render json: list_product
        # else
        #     render json: {error: "Error occured. Please try again."}
        # end
    end

    private

    def list_product_params
        params.permit(:id, :list_id, :product_id)
    end


end
