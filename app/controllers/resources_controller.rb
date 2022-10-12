class ResourcesController < ApplicationController
    wrap_parameters false

    #GET index 
    def index 
        resources = Resource.all 
        render json: resources, status: :ok
    end
end
