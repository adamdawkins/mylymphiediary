class TokensController < ApplicationController
  def show
    @user = User.find_by_login_token(params[:id])
    pp @user
    respond_to do |format|
      if @user.present?
        pp "user present"
        if @user.login_token_expired?
          pp "user token expired"
          format.html { render :new, notice: "That email link has expired, use the button below to get a new one" }
        else
          pp "login the user"
          login_user
          format.html { redirect_to affected_body_parts_path }
        end
      else
        pp "redirect to new token"
        format.html { redirect_to new_token_path }
      end
    end
  end

  def new; end

  def create
    @user = if params[:user_id]
              User.find(params[:user_id])
            else
              User.find_by_email params[:user_email]
            end

    respond_to do |format|
      if @user
        @user.send_login_email
        format.html { redirect_to root_path, notice: "We've sent you a login email, please check your inbox" }
      else
        format.html { redirect_to new_token_path, notice: "We couldn't find that email address, please try again" }
      end
    end
  end

  private

  def login_user
    session[:user_id] = @user.id
    @user.expire_token!
  end
end
