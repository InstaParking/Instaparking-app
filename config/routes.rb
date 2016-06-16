Rails.application.routes.draw do
  
  get 'pages/dashboard'

  get 'pages/busqueda'

  get 'pages/opinion'
  
  get 'pages/recibidas'  

  get 'home/search_parking'

  get 'pages/search_parking'
  
  get 'pages/about_us'

  get 'pages/faq'

  get 'pages/contact_us'

  resources :availability_parking_places
  resources :day_of_weeks
  resources :payments
  resources :payment_document_types
  resources :feedbacks
  resources :favorites
  resources :bookings
  resources :booking_statuses
  resources :payment_types
  resources :parking_places
  resources :owner_types
  resources :parking_types
  resources :organization_members
  resources :member_types
  resources :organizations
  resources :profiles, only: [:edit, :update]
  resources :document_types
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  get 'home/index', to: 'home#index', as: 'home'
  

  root 'home#index' 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
