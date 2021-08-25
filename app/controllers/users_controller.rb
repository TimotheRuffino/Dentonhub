class UsersController < ApplicationController
  def new

  end

  def create
    # Create the user from params
    @user = User.new(user_params)
    if @user.save
      # Deliver the signup email
      UserMailer.send_welcome(@user).deliver_now

      flash[:notice] = 'Votre demande a été envoyée!'
    else

      flash[:notice] = 'Un problème est survenu lors de la création de votre profil.'
    end



  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
