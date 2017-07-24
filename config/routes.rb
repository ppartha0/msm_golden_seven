Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get("/directors", {:controller => "movies", :action => "index_directors"})
  get("/directors/:the_id", {:controller => "movies", :action => "show_director"})
  
  mount WebGit::Engine, at: "/rails/git"
end
