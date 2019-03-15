class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:signout]


  def signout
    redirect_to new_user_session_path, notice: 'ログインアウトしました'
  end


  def registration_select
    if user_signed_in?
    redirect_to root_path, notice: '既にログイン済みです。'
    end
  end

end
