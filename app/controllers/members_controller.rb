class MembersController < ApplicationController

 #GET index
    def index 
        members = Member.all 
        render json: members, status: :ok
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


end
