Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'product#list'
  get 'product/list'
  get 'product/delete'
  resources :product
  # get 'product/new'
  # post 'product/create'
  # patch 'product/update'
  # get 'product/list'
  # get 'product/show'
  # get 'product/edit'
  # get 'product/update'

  #resources :products, controller: 'variant'
 # get '/products/:product_id/variants/delete'
 get 'variant/delete'

 resources :products do
    resources :variant
  end


  # get 'product/newVar'
  # get 'product/delVar'
  # post 'product/createVar'
  # get 'variant/list'
  # get 'variant/new'
  # post 'variant/create'
  # patch 'variant/update'
  # get 'variant/list'
  # get 'variant/show'
  # get 'variant/edit'
  # get 'variant/delete'
  # get 'variant/update'

end
