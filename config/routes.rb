Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/", {:controller => "directors", :action => "index_directors"})
  
  # CREATE DIRECTOR
  ################################################################################
  get("/directors/new", { :controller => "directors", :action => "new_dir_form" })
  get("/create_director", { :controller => "directors", :action => "create_dir" })
  
  # READ DIRECTOR
  ################################################################################
  get("/directors", {:controller => "directors", :action => "index_directors"})
  get("/directors/:the_id", {:controller => "directors", :action => "show_director"})
  
  # UPDATE DIRECTOR
  ################################################################################
  get("/directors/:some_id/edit", { :controller => "directors", :action => "edit_dir_form" })
  get("/update_director/:the_id", { :controller => "directors", :action => "update_dir" })
   
  # DELETE DIRECTOR
  ################################################################################
  get("/delete_director/:toast_id", { :controller => "directors", :action => "destroy_director" })
  
  ##############################################################################################
  
  
  # CREATE MOVIE
  ################################################################################
  get("/movies/new", { :controller => "movies", :action => "new_mov_form" })
  get("/create_movie", { :controller => "movies", :action => "create_mov" })
  
  # READ MOVIE
  #################################################################################
  get("/movies", {:controller => "movies", :action => "index_movies"})
  get("/movies/:the_id", {:controller => "movies", :action => "show_movie"})
  
  # UPDATE MOVIE
  ################################################################################
  get("/movies/:some_id/edit", { :controller => "movies", :action => "edit_mov_form" })
  get("/update_movie/:the_id", { :controller => "movies", :action => "update_mov" })
  
  # DELETE MOVIE
  ################################################################################
  get("/delete_movie/:toast_id", { :controller => "movies", :action => "destroy_movie" })
  
  
  
  
  
  
  
  ##############################################################################################
  
  # READ ACTOR
  #################################################################################
  get("/actors", {:controller => "actors", :action => "index_actors"})
  get("/actors/:the_id", {:controller => "actors", :action => "show_actor"})
  
  mount WebGit::Engine, at: "/rails/git"
end
