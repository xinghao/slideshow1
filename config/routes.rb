Yenta::Application.routes.draw do

  get "admin" => "admin#index", as: :user_root
  get "admin/bookings" => "admin#bookings", as: :admin_bookings
  get "admin/enquires" => "admin#enquires", as: :admin_enquires
  devise_for :users, :controllers => { :sessions => 'sessions' }
  resources :bookings

  resources :enquires

  get "contact/index"
  get "health_check/index"
  get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get "who-we-are" => "static#wwr", as: :who_we_are
  get "what-we-do" => "static#wwd", as: :what_we_do
  get "privacy" => "static#privacy", as: :privacy
  get "copyright" => "static#copyright", as: :copyright
  
  get "contact_us" => "contact#index", as: :contact_us
  
  post "create_enquire" => "contact#create_enquire", as: :create_enquire
  post "create_booking" => "contact#create_booking", as: :create_booking
  # You can have the root of your site routed with "root"
  root 'home#index'

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
