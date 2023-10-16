Rails.application.routes.draw do
  resources :books
  # Routes for the Movie resource:

  get("/movies/new", { :controller => "movies", :action => "new"})
  get("/movies/:path_id/edit", { :controller => "movies", :action => "edit" })

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })
          
  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  
  # UPDATE
  
  patch("/movies/:path_id", { :controller => "movies", :action => "update" })
  
  # DELETE
  delete("/movies/:path_id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
