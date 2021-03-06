class ProductsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    # shows all product in the homepage
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    
    
    #creating a product in the db and redirect to the homepage
    def create 
            @product = Product.new(product_params)
             if @product.save
                redirect_to products_path
             else
            flash.now[:alert] = @product.errors.full_messages.join('<br>')
            render 'new'
             end
    end

    #edit product if the user created it
    def edit
        @product = Product.find(params[:id])
    end

    #update product if the user created it
    def update
        begin
        @product = Product.find(params[:id])
        @product.update!(product_params)
            redirect_to products_path
        rescue
            flash.now[:alert] = @product.errors.full_messages.join('<br>')
            render action: :edit
        end
    end

    #delete product if the user created it
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

private

    def product_params
        params.require(:product).permit(:name, :description, :price, :image, :user_id)
    end
end
