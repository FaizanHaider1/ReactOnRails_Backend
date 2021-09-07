# frozen_string_literal: true

class User::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # skip_before_action :verify_authenticity_token
  
  respond_to :html, :json

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    user = User.find_by_email(params[:email])
    if user && user.valid_password?(params[:password])
      render json: { is_authenticated: true, message: 'Successfully logged in', user: user}
    else
      render json: { is_authenticated: false, message: 'Invalid email/password', user: nil}
    end
  end

  # DELETE /resource/sign_out
  def destroy
    return render :json => {:success => true}
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
