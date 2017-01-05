Lavax::Application.routes.draw do
  root :to => "static_pages#home"

  match "/index.html" => "static_pages#home", :via => :get

  match "/about" => "static_pages#about", :via => :get

  match "/background" => "static_pages#vaginal_dryness_atrophy_cause_treatment", :via => :get

  match "/vaginal_dryness_atrophy_cause_treatment" => "static_pages#vaginal_dryness_atrophy_cause_treatment", :via => :get

  match "/vaginal_odor_cause_treatment" => "static_pages#vaginal_odor_cause_treatment", :via => :get

  match "/bacterial_vaginosis_vaginal_odor" => "static_pages#bacterial_vaginosis", :via => :get

  match "/bv" => "static_pages#bacterial_vaginosis", :via => :get

  match 'contact' => 'contact#new', :via => :get
  match 'contact' => 'contact#create', :via => :post

  match "/comparison" => "static_pages#comparison", :via => :get

  match "/disclaimer" => "static_pages#disclaimer", :via => :get

  match "/faq" => "static_pages#faq", :via => :get

  match "/product" => "static_pages#product", :via => :get

  match "/testimonials" => "static_pages#testimonials", :via => :get

  match "/success" => "static_pages#success", :via => :get

  match "/cream" => "static_pages#cream", :via => :get

  match "/original_price_secret_page" => "static_pages#original_priced_subscription", :via => :get

  match "/libido" => "static_pages#libido", :via => :get

  match '/friends' => 'static_pages#friends', :via => :get

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
