class CouncilsController < ApplicationController
   #GET index 
    def index 
        council_members = Council.all 
        render json: council_members, status: :ok
    end
end
