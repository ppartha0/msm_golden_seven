Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #get("/", { :controller => "pictures", :action => "index"})
  
  # CREATE
  get("/directors/new",     { :controller => "movies", :action => "new_dir_form" })
  #get("/create_photo", { :controller => "pictures", :action => "create_row" })

  # READ
  get("/directors",         { :controller => "movies", :action => "index_directors" })
  get("/directors/:the_id", { :controller => "movies", :action => "show_director" })

  # UPDATE
  #get("/photos/:an_id/edit", { :controller => "pictures", :action => "edit_form" })
  #get("/update_photo/:some_id", { :controller => "pictures", :action => "update_row" })

  # DELETE
  #get("/delete_photo/:toast_id", { :controller => "pictures", :action => "destroy_row" })
  
  
  
  mount WebGit::Engine, at: "/rails/git"
end
