Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/product' => 'products#all_products'
  get '/products' => 'products#all_products'
end
