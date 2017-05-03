class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render 'nostalgic_toys.html.erb'
  end
end
