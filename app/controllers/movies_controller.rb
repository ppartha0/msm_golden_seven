class MoviesController < ApplicationController
    
    def index_directors
        render("/movie_templates/index_directors_template.html.erb")
    end
    
end
