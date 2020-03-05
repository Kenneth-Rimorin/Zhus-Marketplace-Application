Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get '/', to: "pages#index", as: "root"
  get "/", to: "pages#more"


  get "/", to: "listings#index", as: "listings"
  post "/", to: "listings#create"
  get "/new", to: "listings#new", as: "new_listing"
  get "/:id", to: "listings#show", as: "listing"
  put "/:id", to: "listings#update"
  patch "/:id", to: "listings#update"
  delete "/:id", to: "listings#destroy"
  get "/:id/edit", to: "listings#edit", as: "edit_listing"
  get "/manage", to: "listings#manage", as: "manage_listing"


  get "/:path", to: "pages#not_found"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
