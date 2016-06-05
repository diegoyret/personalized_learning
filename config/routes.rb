Rails.application.routes.draw do
  # Routes for the Bloque resource:
  # CREATE
  get "/bloques/new", :controller => "bloques", :action => "new"
  post "/create_bloque", :controller => "bloques", :action => "create"

  # READ
  get "/bloques", :controller => "bloques", :action => "index"
  get "/bloques/:id", :controller => "bloques", :action => "show"

  # UPDATE
  get "/bloques/:id/edit", :controller => "bloques", :action => "edit"
  post "/update_bloque/:id", :controller => "bloques", :action => "update"

  # DELETE
  get "/delete_bloque/:id", :controller => "bloques", :action => "destroy"
  #------------------------------

  root "submissions#index"

  # CREATE
  get "/submissions/new", :controller => "submissions", :action => "new"
  post "/create_submission", :controller => "submissions", :action => "create"

  # READ
  get "/submissions", :controller => "submissions", :action => "index"
  get "/submissions/:id", :controller => "submissions", :action => "show"

  # UPDATE
  get "/submissions/:id/edit", :controller => "submissions", :action => "edit"
  post "/update_submission/:id", :controller => "submissions", :action => "update"

  # DELETE
  get "/delete_submission/:id", :controller => "submissions", :action => "destroy"
  #------------------------------

  # Routes for the Task resource:
  # CREATE
  get "/tasks/new", :controller => "tasks", :action => "new"
  post "/create_task", :controller => "tasks", :action => "create"

  # READ
  get "/tasks", :controller => "tasks", :action => "index"
  get "/tasks/:id", :controller => "tasks", :action => "show"

  # UPDATE
  get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  post "/update_task/:id", :controller => "tasks", :action => "update"

  # DELETE
  get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------

  devise_for :users
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
