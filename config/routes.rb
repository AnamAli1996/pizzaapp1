Rails.application.routes.draw do

  resources :orders
  resources :carts
  resources :lineitems
  get 'search/index'

  get 'shop/index'

  get 'search', :to=>'pizzas#search'
  get 'search4', :to=>'desserts#search'
  get 'search3', :to=>'drinks#search'
  get 'search2', :to=>'sides#search'
  get 'discount', :to => 'pizzas#discount'
  get 'apply_discount', :to => 'pizzas#apply_discount'
  
  get 'discount2', :to => 'sides#discount'
  get 'apply_discount2', :to => 'sides#apply_discount'
  
  get 'discount3', :to => 'desserts#discount'
  get 'apply_discount3', :to => 'desserts#apply_discount'
  
  get 'discount4', :to => 'drinks#discount'
  get 'apply_discount4', :to => 'drinks#apply_discount'


  

  resources :products
  resources :orders
  resources :lineitems
  resources :carts
  resources :lineitems
  resources :carts
  resources :line_items
  resources :reviews
  resources :delivery_employees
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
	get 'login2' => :new2
	post 'login2' => :create2
	get 'logout2'=> :destroy2
	delete 'logout2' => :destroy2
   end
   
  
  
 
  get 'pages/home'

  get 'pages/about'
  
   resources :cart do	
	 resources :lineitems
	end	
	
  resources :customer_orders
  resources :orders
  resources :employees
  resources :drinks
  resources :desserts
  resources :pizzas
  resources :sides
  resources :customers
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

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
