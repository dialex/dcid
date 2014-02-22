class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "A partir de agora, é você que dcid."
      redirect_to @user  #user's show page
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :citizen_number, :password, :password_confirmation)
    end

end
