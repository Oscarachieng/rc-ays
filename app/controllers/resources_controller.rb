class ResourcesController < ApplicationController
    wrap_parameters false

    #GET index 
    def index 
        resources = Resource.all 
        render json: resources, status: :ok
    end

    #GET show /:id
    def show 
        a_resource = find_resource
        render json: a_resource, status: :ok
    end


    private 
    def  find_resource 
        Resource.find(
        params[:id]
        )
    end
end
