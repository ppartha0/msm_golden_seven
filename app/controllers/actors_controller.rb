class ActorsController < ApplicationController
    
    # READ
    ###################################################################
    def index_actors
        @list_of_actors = Actor.all
        render("/actor_templates/index_actors_template.html.erb")
    end
    
    def show_actor
        @act = Actor.find(params["the_id"])
        render("/actor_templates/show_actor_template.html.erb")
    end
    
    # CREATE
    #################################################################
    def new_act_form
        
        render("/actor_templates/new_act_form_template.html.erb")
    end
    
    def create_act
        p = Actor.new
        p.image_url = params["the_image"]
        p.name = params["the_name"]
        p.bio = params["the_bio"]
        p.dob = params["the_dob"]
        p.save
        
        redirect_to("/actors")
    end
    
    # UPDATE
    #################################################################
    def edit_act_form
        @actor = Actor.find(params["some_id"])
        render("/actor_templates/edit_act_form_template.html.erb")
    end
    
    def update_act
        img = params["the_image"]
        name = params["the_name"]
        bio = params["the_bio"]
        dob = params["the_dob"]
        id = params["the_id"]
        
        p = Actor.find(id)
        p.image_url = img
        p.name = name
        p.bio = bio
        p.dob = dob
        p.save
        filepath = "/actors/" + id.to_s
        redirect_to(filepath)
        
    end
    
    # DELETE
    #########################################################
    def destroy_actor
        did = params["toast_id"]
        p = Actor.find(did)
        p.destroy
        redirect_to("/actors")
    end
    
end
