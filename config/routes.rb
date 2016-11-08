Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :events do
    resources :galleries
    collection do 
      get 'galleries'
    end
  end
  resources :users
  resources :password_resets
  resources :sliders
  resources :clients
  resources :contacts, only: [:new, :create]
  resources :testimonials, only: [:new, :create, :edit, :update, :destroy]
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :signout
  get 'company/profile_1/:event_organizer', to: 'events#company', as: :company_event_organizer
  get 'company/profile_2/:corporate_gathering', to: 'events#company', as: :company_corporate_gathering
  get 'company/profile_3/:creative_concept', to: 'events#company', as: :company_creative_concept
  get 'company/profile_4/:audio_visual', to: 'events#company', as: :company_audio_visual
  get 'company/profile_5/:event_equipment', to: 'events#company', as: :company_event_equipment
  get 'company/profile_6/:advertising', to: 'events#company', as: :company_ads
  get 'company/profile_7/:design_graphic_design', to: 'events#company', as: :company_3d_design
  get 'galleries', to: 'events#all_gallery', as: :all_gallery
  get 'admin/dashboard', to: 'admins#dashboard', as: :dashboard
  get 'admin/events', to: 'events#all_event', as: :all_event
  get 'admin/sliders', to: 'sliders#all_slider', as: :all_slider
  get 'admin/testimonials', to: 'testimonials#all_testimonial', as: :all_testimonial
  get 'admin/users/', to: 'users#all_user', as: :all_user
  root 'events#index'

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
