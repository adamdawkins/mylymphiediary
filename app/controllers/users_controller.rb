class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
     
    respond_to do |format|
      if @user.save
        session[:body_part_ids].each do |id|
          @user.affected_body_parts.create(body_part_id: id)
        end
        format.html { redirect_to user_affected_body_parts_path(@user) }
      else
        format.html { render :new }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end

