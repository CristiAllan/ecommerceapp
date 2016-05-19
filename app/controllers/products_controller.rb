class ProductsController < ApplicationController
    skip_before_filter :authenticate_user!, only: [:index, :show]

    def index
        @products = Product.all
        if params[:search]
            @products =Product.search(params[:search]).order("created_at DESC")
        else
            @produtcs = Product.all.order('created_at DESC')
        end
    end

    def show

    end
end