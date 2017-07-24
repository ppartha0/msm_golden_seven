class MoviesController < ApplicationController
    
    def index_directors
        @p = Director.all
        render("/movie_templates/index_directors_template.html.erb")
    end
    
    def show_director
        
        render("/movie_templates/show_director_template.html.erb")
    end
    
end
