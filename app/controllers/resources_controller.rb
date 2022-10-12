class ResourcesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found 
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response
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
    def create 
        new_resource = Resource.create!(resource_params)
        render json: new_resource, status: :created
    end
    


    private 
    def  find_resource 
        Resource.find(
        params[:id]
        )
    end

    def resource_params 
        params.permit(:title,:description,:image_url,:theme)
    end


    def render_record_not_found 
        render json: { error: "Resource Not Found" }, status: :not_found
    end

    def render_record_invalid_response(invalid) 
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
