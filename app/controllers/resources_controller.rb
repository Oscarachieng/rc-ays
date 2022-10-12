class ResourcesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found 
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

    #POST create
    


    private 
    def  find_resource 
        Resource.find(
        params[:id]
        )
    end

    def render_record_not_found 
        render json: { error: "Resource Not Found" }, status: :not_found
    end
end
