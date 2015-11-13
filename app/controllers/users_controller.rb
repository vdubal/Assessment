class UsersController < ApplicationController

def index
    @users = User.all
    @user = User.new
    
    render "index" 
end



    def create
         user = User.new(user_params)
    
    # User.create(
    #  firstname: params[:user][:firstname],
     # lastname: params[:user][:lastname],
      #username:  params[:user][:username], 
      # role: params[:user][:role]
        #)
        user.save
        
        if user.valid? 
            redirect_to "/users"
        else
            flash[:error] = "Form validation failed" 
            redirect_to "/users"
        end
    end


def edit 
        @user = User.find(params[:id])
    end


def update
    user = User.find(params[:id])
    user.update_attributes(user_params)
    redirect_to "/users"
end
    
def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/users"
end


private
    def user_params
        params.require(:user).permit(:firstname, :lastname, :username, :role)
    end

end

