Rails.application.routes.draw do
  get 'demo_date/populate_dates'

  resources :demonstrations
  resources :positions
  resources :fa_targets
  resources :targets
  resources :field_assistants
  resources :pocket_crops
  resources :pocket_districts
  resources :pocket_dats
  resources :pocket_infos
  resources :villages
  resources :talukas
  resources :crops
  resources :districts
  resources :pockets
  resources :products
  resources :applications
  resources :pre_demonstrations
  resources :assist_reps
  resources :dealer_visits
  resources :product_prescriptions
  resources :meet_farmers
  resources :fa_activities
  resources :banks
  resources :dealers
  resources :demos
  resources :pockets
  resources :demoresults
  resources :prodsamples
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#index'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated
    end
  end
  resources :users
  resources :states
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :home
  # You can have the root of your site routed with "root"


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
