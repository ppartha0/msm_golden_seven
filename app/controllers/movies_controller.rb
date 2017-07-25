class MoviesController < ApplicationController
    
    ##### READ
    ###################################################################
    def index_directors
        @list_of_directors = Director.all
        render("/movie_templates/index_directors_template.html.erb")
    end
    
    def show_director
        @dir = Director.find(params["the_id"])
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
    
    # CREATE
    #################################################################
    def new_dir_form
        render("/movie_templates/new_dir_form.html.erb")
    end
    
    def create_dir
        p = Director.new
        p.image_url = params["the_image"]
        p.name = params["the_name"]
        p.bio = params["the_bio"]
        p.dob = params["the_dob"]
        p.save
        
        redirect_to("/directors")
    end
    
    # UPDATE
    #################################################################
    def edit_dir_form
        @director = Director.find(params["some_id"])
        render("/movie_templates/edit_dir_form_template.html.erb")
    end
    
    def update_dir
        img = params["the_image"]
        name = params["the_name"]
        bio = params["the_bio"]
        dob = params["the_dob"]
        id = params["the_id"]
        
        p = Director.find(id)
        p.image_url = img
        p.name = name
        p.bio = bio
        p.dob = dob
        p.save
        filepath = "/directors/" + id.to_s
        redirect_to(filepath)
        
    end
    
    # DELETE
    #########################################################
    def destroy_director
        did = params["toast_id"]
        p = Director.find(did)
        p.destroy
        redirect_to("/directors")
    end
    
end
