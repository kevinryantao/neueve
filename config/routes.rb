Lavax::Application.routes.draw do
  root :to => 'static_pages#home'

  match '/index.html' => 'static_pages#home', :via => :get
  match '/about' => 'static_pages#about', :via => :get
  match '/background' => 'static_pages#vaginal_dryness_atrophy_cause_treatment', :via => :get
  match '/vaginal_dryness_atrophy_cause_treatment' => 'static_pages#vaginal_dryness_atrophy_cause_treatment', :via => :get
  match '/vaginal_odor_cause_treatment' => 'static_pages#vaginal_odor_cause_treatment', :via => :get
  match '/bacterial_vaginosis_vaginal_odor' => 'static_pages#bacterial_vaginosis', :via => :get
  match '/bv' => redirect('/bacterial_vaginosis_vaginal_odor'), :via => :get
  match '/contact' => 'static_pages#about', :via => :get
  match '/comparison' => 'static_pages#comparison', :via => :get
  match '/disclaimer' => 'static_pages#disclaimer', :via => :get
  match '/faq' => 'static_pages#faq', :via => :get
  match '/product' => 'static_pages#product', :via => :get
  match '/testimonials' => 'static_pages#testimonials', :via => :get
  match '/success' => 'static_pages#success', :via => :get
  match '/cream' => 'static_pages#cream', :via => :get
  match '/silk' => 'static_pages#silk', :via => :get
  match '/silver' => 'static_pages#silver', :via => :get
  match '/gold' => 'static_pages#gold', :via => :get
  match '/applicator' => 'static_pages#applicator', :via => :get
  match '/libido' => 'static_pages#libido', :via => :get
  match '/kevin_tao' => 'static_pages#kevin_tao', :via => :get
  match '/bacterial_vaginosis_testimonials' => 'static_pages#bv_testimonials', :via => :get
  get '/blog' => redirect('/blog/')
  match '/dilators' => 'static_pages#dilators', :via => :get
  match '/dmannose' => 'static_pages#dmannose', :via => :get
  match '/reviews' => 'static_pages#reviews', :via => :get
  match '/satisfaction' => 'static_pages#satisfaction', :via => :get

  match '/search' => 'static_pages#search', :via => :get

  # Alternative Paths
  match '/premarin-cream-alternative' => 'alternatives#premarin_cream', :via => :get
  match '/prempro-alternative' => 'alternatives#prempro', :via => :get
  match '/estrace-cream-alternative' => 'alternatives#estrace_cream', :via => :get
  match '/vagifem-alternative' => 'alternatives#vagifem', :via => :get
  match '/yuvafem-alternative' => 'alternatives#yuvafem', :via => :get
  match '/estring-alternative' => 'alternatives#estring', :via => :get

  match '/monalisa-touch-alternative' => 'alternatives#monalisa_touch', :via => :get



  # Immunome Research Paths
  match '/content/1/1/1' => 'immunome_research#1_1_1', :via => :get
  match '/content/1/1/2' => 'immunome_research#1_1_2', :via => :get
  match '/content/1/1/3' => 'immunome_research#1_1_3', :via => :get
  match '/content/1/1/4' => 'immunome_research#1_1_4', :via => :get
  match '/content/1/1/5' => 'immunome_research#1_1_5', :via => :get
  match '/content/1/1/6' => 'immunome_research#1_1_6', :via => :get

  match '/content/2/1/1' => 'immunome_research#2_1_1', :via => :get
  match '/content/2/1/2' => 'immunome_research#2_1_2', :via => :get
  match '/content/2/1/3' => 'immunome_research#2_1_3', :via => :get
  match '/content/2/1/4' => 'immunome_research#2_1_4', :via => :get

  match '/content/3/1/1' => 'immunome_research#3_1_1', :via => :get
  match '/content/3/1/2' => 'immunome_research#3_1_2', :via => :get
  match '/content/3/1/3' => 'immunome_research#3_1_3', :via => :get
  match '/content/3/1/4' => 'immunome_research#3_1_4', :via => :get
  match '/content/3/1/5' => 'immunome_research#3_1_5', :via => :get
  match '/content/3/1/6' => 'immunome_research#3_1_6', :via => :get
  match '/content/3/1/7' => 'immunome_research#3_1_7', :via => :get
  match '/content/3/1/8' => 'immunome_research#3_1_8', :via => :get
  match '/content/3/1/9' => 'immunome_research#3_1_9', :via => :get
  match '/content/3/1/10' => 'immunome_research#3_1_10', :via => :get

  match '/content/4/1/1' => 'immunome_research#4_1_1', :via => :get
  match '/content/4/1/2' => 'immunome_research#4_1_2', :via => :get
  match '/content/4/1/3' => 'immunome_research#4_1_3', :via => :get
  match '/content/4/1/4' => 'immunome_research#4_1_4', :via => :get
  match '/content/4/1/5' => 'immunome_research#4_1_5', :via => :get
  match '/content/4/1/6' => 'immunome_research#4_1_6', :via => :get
  match '/content/4/1/7' => 'immunome_research#4_1_7', :via => :get

  match '/content/5/1/1' => 'immunome_research#5_1_1', :via => :get
  match '/content/5/1/2' => 'immunome_research#5_1_2', :via => :get
  match '/content/5/1/3' => 'immunome_research#5_1_3', :via => :get
  match '/content/5/1/4' => 'immunome_research#5_1_4', :via => :get
  match '/content/5/1/5' => 'immunome_research#5_1_5', :via => :get

  match '/content/6/1/1' => 'immunome_research#6_1_1', :via => :get
  match '/content/6/1/2' => 'immunome_research#6_1_2', :via => :get
  match '/content/6/1/3' => 'immunome_research#6_1_3', :via => :get
  match '/content/6/1/4' => 'immunome_research#6_1_4', :via => :get
  match '/content/6/1/5' => 'immunome_research#6_1_5', :via => :get
  match '/content/6/1/6' => 'immunome_research#6_1_6', :via => :get
  match '/content/6/1/7' => 'immunome_research#6_1_7', :via => :get
  match '/content/6/1/8' => 'immunome_research#6_1_8', :via => :get
  match '/content/6/1/9' => 'immunome_research#6_1_9', :via => :get
  match '/content/6/1/10' => 'immunome_research#6_1_10', :via => :get
  match '/content/6/1/11' => 'immunome_research#6_1_11', :via => :get
  match '/content/6/1/12' => 'immunome_research#6_1_12', :via => :get
  match '/content/6/1/13' => 'immunome_research#6_1_13', :via => :get

  match '/content/6/S1/S1' => 'immunome_research#6_S1_S1', :via => :get
  match '/content/6/S1/S2' => 'immunome_research#6_S1_S2', :via => :get
  match '/content/6/S1/S3' => 'immunome_research#6_S1_S3', :via => :get
  match '/content/6/S1/S4' => 'immunome_research#6_S1_S4', :via => :get
  match '/content/6/S1/S5' => 'immunome_research#6_S1_S5', :via => :get
  match '/content/6/S1/S6' => 'immunome_research#6_S1_S6', :via => :get

  match '/content/6/s1/s1' => 'immunome_research#6_S1_S1', :via => :get
  match '/content/6/s1/s2' => 'immunome_research#6_S1_S2', :via => :get
  match '/content/6/s1/s3' => 'immunome_research#6_S1_S3', :via => :get
  match '/content/6/s1/s4' => 'immunome_research#6_S1_S4', :via => :get
  match '/content/6/s1/s5' => 'immunome_research#6_S1_S5', :via => :get
  match '/content/6/s1/s6' => 'immunome_research#6_S1_S6', :via => :get

  match '/content/6/S2/S1' => 'immunome_research#6_S2_S1', :via => :get
  match '/content/6/S2/S2' => 'immunome_research#6_S2_S2', :via => :get
  match '/content/6/S2/S3' => 'immunome_research#6_S2_S3', :via => :get
  match '/content/6/S2/S4' => 'immunome_research#6_S2_S4', :via => :get
  match '/content/6/S2/S5' => 'immunome_research#6_S2_S5', :via => :get
  match '/content/6/S2/S6' => 'immunome_research#6_S2_S6', :via => :get
  match '/content/6/S2/S7' => 'immunome_research#6_S2_S7', :via => :get

  match '/content/6/s2/s1' => 'immunome_research#6_S2_S1', :via => :get
  match '/content/6/s2/s2' => 'immunome_research#6_S2_S2', :via => :get
  match '/content/6/s2/s3' => 'immunome_research#6_S2_S3', :via => :get
  match '/content/6/s2/s4' => 'immunome_research#6_S2_S4', :via => :get
  match '/content/6/s2/s5' => 'immunome_research#6_S2_S5', :via => :get
  match '/content/6/s2/s6' => 'immunome_research#6_S2_S6', :via => :get
  match '/content/6/s2/s7' => 'immunome_research#6_S2_S7', :via => :get

  match '*path' => redirect('/'), via: :all

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
