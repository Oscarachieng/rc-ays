class CouncilsController < ApplicationController

    wrap_parameters false
   #GET index 
    def index 
        council_members = Council.all 
        render json: council_members, status: :ok
    end

    #GET show 
    def show 
        council_member = find_council_member
        render json: council_member, status: :ok
    end

    private 
    def find_council_member 
        Council.find(params[:id])
    end

end
