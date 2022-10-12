class MembersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response

 #GET index
    def index 
        members = Member.all 
        render json: members, status: :ok
    end

  #GET show 
  def show 
    member = find_member 
    render json: member, status: :ok
  end   

#POST create 

#PATCH update 

#DELETE destroy 
   def destroy 
     member_to_delete = find_member;
     member_to_delete.destroy
     head :no_content
   end

   private 

   def find_member 
     Member.find(params[:id])
   end

   def render_record_not_found_response 
     render json: { error: "Record not Found" }, status: :not_found
   end


end
