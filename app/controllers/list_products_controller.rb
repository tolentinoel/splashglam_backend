class ListProductsController < ApplicationController

    def index
        list_products = ListProduct.all
        render json: list_products
    end

    def update
        list_product = ListProduct.find(params[:id])
        list_product.update(list_product_params)
        render json: list_product
    end
    
    def create
        # byebug
        list = List.find(params[:list_id])
        product = Product.find(params[:product_id]) || nil
        list_product = ListProduct.create(list_product_params)
        render json: list_product

    end

    def destroy
        list_product = ListProduct.find(params[:id])
        list_product.destroy
    end

    private

    def list_product_params
        params.permit(:id, :list_id, :product_id)
    end


end
