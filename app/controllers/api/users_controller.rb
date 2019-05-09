class UsersController < ApiController
    before_action :authenticated?	    before_action :authenticated?


    def index	    def index
     users = User.all	      users = User.all
     render json: users, each_serializer: UserSerializer	      render json: users, each_serializer: UserSerializer
   end	    end

     def create
      user = User.new(user_params)
      if user.save
        render json: user
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

     private
    def user_params
      params.require(:user).permit(:name, :email, :password_digest)
    end
  end	  
end	
