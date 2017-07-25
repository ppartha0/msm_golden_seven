Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/", {:controller => "movies", :action => "index_movies"})
  
  # CREATE
  ################################################################################
  get("/directors/new", { :controller => "movies", :action => "new_dir_form" })
  get("/create_director", { :controller => "movies", :action => "create_dir" })
  
  # READ
  ################################################################################
  get("/directors", {:controller => "movies", :action => "index_directors"})
  get("/directors/:the_id", {:controller => "movies", :action => "show_director"})
  
  get("/actors", {:controller => "movies", :action => "index_actors"})
  get("/actors/:the_id", {:controller => "movies", :action => "show_actor"})
  
  get("/movies", {:controller => "movies", :action => "index_movies"})
  get("/movies/:the_id", {:controller => "movies", :action => "show_movie"})
  
  # UPDATE
  ################################################################################
  get("/directors/:some_id/edit", { :controller => "movies", :action => "edit_dir_form" })
  get("/update_director/:the_id", { :controller => "movies", :action => "update_dir" })
  
  # DELETE
  ################################################################################
  get("/delete_director/:toast_id", { :controller => "movies", :action => "destroy_director" })
  
  
  
  mount WebGit::Engine, at: "/rails/git"
end
