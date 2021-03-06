class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def ensure_normal_user
    email = resource&.email || params[:user][:email].downcase
    if email == "guest@example.com"
      redirect_to root_path, alert: "ゲストユーザーの変更・削除はできません。"
    end
  end
end
