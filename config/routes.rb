Catalyst2::Application.routes.draw do
  resources :contacts, only: [:index, :create]
  root 'pages#index'
  #match 'contact', to: 'contacts#index', via: 'get'
  #get 'contact', to: 'contacts#index', :as => 'contact'
  #match 'contact', to: 'contacts#index', :as => 'contact'
  #match '/addcontact', to: 'pages#create', via: 'post'
  #match '/contact', to: 'contacts#create', via: 'post', :as => 'contacts'
  get 'pages/about', to: 'pages#about', :as => 'about'
  get 'pages/services', to: 'pages#services', :as => "services"
  get 'pages/register', :as => "register"
  get 'pages/portfolio', :as => "portfolio"
  get 'pages/blog', :as => "blog"
  #get 'pages/contact', :as => "contact"

  get 'pages/gallery', to: 'pages#gallery', :as => 'gallery'


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
