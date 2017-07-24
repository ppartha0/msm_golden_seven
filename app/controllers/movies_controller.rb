class MoviesController < ApplicationController
    
    ##### READ
    def index_directors
        @list_of_directors = Director.all
        render("/movie_templates/index_directors_template.html.erb")
    end
    
    def show_director
        
        render("/movie_templates/show_director_template.html.erb")
    end
    
    def index_actors
        @list_of_actors = Actor.all
        render("/movie_templates/index_actors_template.html.erb")
    end
    
    def show_actor
        
        render("/movie_templates/show_actor_template.html.erb")
    end
    
    def index_movies
        @list_of_movies = Movie.all
        render("/movie_templates/index_movies_template.html.erb")
    end
    
    def show_movie
        
        render("/movie_templates/show_movie_template.html.erb")
    end
    
end
