class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def new

  end

  def create
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          image: params[:image],
                          description: params[:description]
                          )
    product.save
    flash[:success] = "Toy Successfully Created"
    redirect_to "/products/#{product.id}" #redirects to show action
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              image: params[:image],
                              description: params[:description]
                              )
    product.save
    flash[:success] = "Toy Successfully Updated"
    redirect_to "/products/#{product.id}" #redirects to show action
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "Toy Successfully Destroyed"
    redirect_to "/" #redirects to home page
  end

end
