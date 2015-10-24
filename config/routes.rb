Library::Application.routes.draw do
  devise_for :users
  get '/home' => 'books#home'
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show', as: :book
  get '/books/:id/edit' => 'books#edit', as: :edit_book
  patch '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  get '/categories' => 'categories#index'
  get '/categories/new' => 'categories#new'
  post '/categories' => 'categories#create'
  get '/categories/:id' => 'categories#show', as: :category
  get '/categories/:id/edit' => 'categories#edit', as: :edit_category
  patch '/categories/:id' => 'categories#update'
  delete '/categories/:id' => 'categories#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'books#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
