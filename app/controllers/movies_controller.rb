class MoviesController < ApplicationController
    
    # READ
    ###################################################################
    def index_movies
        @list_of_movies = Movie.all
        render("/movie_templates/index_movies_template.html.erb")
    end
    
    def show_movie
        @mov = Movie.find(params["the_id"])
        render("/movie_templates/show_movie_template.html.erb")
    end
    
    # CREATE
    #################################################################
    def new_mov_form
        render("/movie_templates/new_mov_form.html.erb")
    end
    
    def create_mov
        p = Movie.new
        p.image_url = params["the_image"]
        p.title = params["the_title"]
        p.description = params["the_description"]
        p.year = params["the_year"]
        p.duration = params["the_duration"]
        p.save
        
        redirect_to("/movies")
    end
    
    # UPDATE
    #################################################################
    def edit_mov_form
        @movie = Movie.find(params["some_id"])
        render("/movie_templates/edit_mov_form_template.html.erb")
    end
    
    def update_mov
        img = params["the_image"]
        title = params["the_title"]
        descrip = params["the_description"]
        year = params["the_year"]
        duration = params["the_duration"]
        id = params["the_id"]
        
        p = Movie.find(id)
        p.image_url = img
        p.title = title
        p.description = descrip
        p.year = year
        p.duration = duration
        p.save
        filepath = "/movies/" + id.to_s
        redirect_to(filepath)
        
    end
    
    # DELETE
    #########################################################
    def destroy_movie
        mid = params["toast_id"]
        p = Movie.find(mid)
        p.destroy
        redirect_to("/movies")
    end
    
end
