StarterKit::Application.routes.draw do
  mount RailsAdmin::Engine => '/comu', :as => 'rails_admin'

  devise_for :users, :path => '_comu', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users

  get "/404" => "errors#not_found"
  get "/422" => "errors#unprocessable_entity"
  get "/500" => "errors#internal_server_error"
  
  get 'about' => 'info#about'
  get 'contact' => 'info#contact'
  get 'privacy' => 'info#privacy'
  get 'terms' => 'info#terms'

  get '/search' => 'posts#search', :as=>'post_search'

  get 'latest/(:page)' => 'posts#latest', :as=>'latest'
  get 'hobby' => 'posts#tag_feed', :as=>'tag_feed'
  get 'hobby/:tag(/:page)' => 'posts#feed', :as=>'feed'


  put ':id/share/:key' => 'posts#share', :as=>'post_share'
  get ':id/explore' => 'posts#convert', :as=>'post_convert'
  get ':id(/:display_slug)' => 'posts#show', :as=>'post'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'posts#latest'

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
